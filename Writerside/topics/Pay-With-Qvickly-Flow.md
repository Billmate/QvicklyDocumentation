# Pay With Qvickly Flow

Pay With Qvickly is one of the payment options a consumer can pick inside the Qvickly Checkout on a merchant's site. Picking it opens the MyQvickly payment page in a popup, where the consumer confirms who they are with BankID and finishes the payment by invoice, part payment, Swish, or card. The final outcome is returned to the checkout, and to the merchant if they have a callback configured.

The diagram below walks through each step.

```plantuml
@startuml
skinparam defaultFontSize 11
skinparam shadowing false
skinparam ArrowColor #555555
skinparam ArrowFontColor #333333

skinparam rectangle {
    FontColor #1A1A1A
    BorderColor #6A5ACD
    BackgroundColor #E8E3FF
}

' Main backbone
rectangle "<b>1a. BankID QR Code</b>\nConsumer scans QR\nwith BankID app." as step1a
rectangle "<b>1b. Waiting for BankID</b>\nConsumer confirms\nidentity in BankID app." as step1b
rectangle "<b>1c. Identified</b>\nConsumer is logged in." as step1c #D8F0D8
rectangle "<b>2. Order Validated</b>\nOrder checked,\ninvoice prepared." as step2
rectangle "<b>3. Payment Methods Shown</b>\nInvoice, Part Pay, Swish, Card." as step3
rectangle "<b>4a. Invoice / Part Pay</b>\nConsumer confirms payment\n(no new BankID step)." as step4a
rectangle "<b>4b. Swish</b>\nConsumer confirms\nin the Swish app." as step4b
rectangle "<b>4c. Card</b>\nConsumer pays on the\nSwedbankPay page." as step4c
rectangle "<b>5. Payment Result</b>\nFinal status depends on\nmethod + merchant setup.\n(see notes for matrix)" as step5
rectangle "<b>6. Done</b>\nConsumer sees confirmation." as step6 #D8F0D8

' Side branches (yellow)
rectangle "<b>Already Settled?</b>\nIf the invoice was\nalready paid, we return\nthat immediately.\nNo double payment." as step2a #FFF4CC
rectangle "<b>Contact Update</b>\n(optional)\nConsumer can update\nphone or email." as step3a #FFF4CC
rectangle "<b>Visible in MyQvickly</b>\nConsumer sees the invoice\nin their MyQvickly account\n(persons only, not companies)." as myq #FFF4CC

' Warning
rectangle "<b>Pending Credit Check</b>\nInvoice / Part Pay may need\nQvickly's approval before the\nmerchant can activate it.\n(see notes)" as step5_note #FFD6D6

' Callbacks (side effects, detail in notes)
rectangle "<b>Callback 1</b>\n<i>UserSignedWithBankID</i>\n(see notes)" as step2_callback #FDE4B8
rectangle "<b>Callback 2</b>\nFinal payment status\n(see notes)" as step6_callback #FDE4B8

' Main vertical chain
step1a -down-> step1b : scanned
step1b -down-> step1c : complete
step1c -down-> step2
step2 -down-> step3 : invoice ready
step3 -down-> step4a : Invoice / Part Pay
step3 -down-> step4b : Swish
step3 -down-> step4c : Card
step4a -down-> step5
step4b -down-> step5
step4c -down-> step5
step5 -down-> step6

' Sideways branches and side effects
step2 -left-> step2a : already paid
step2 .right.> step2_callback : if from Checkout
step3 -left-> step3a
step3a -right-> step3 : saved
step5 -left-> myq : persons only
step4a .left.> step5_note : credit pending
step5 .right.> step6_callback : settled

@enduml
```

## Notes

### Step 5: Payment Result statuses

The status returned depends on the chosen method and the **autoactivate** setting on the checkout session. Autoactivate decides whether an approved payment is marked as completed immediately, or held as `Created` until the merchant activates it manually.

| Method | Autoactivate | Credit check | Status |
|---|---|---|---|
| Swish | n/a | n/a | `Paid` |
| Card | on | n/a | `Paid` |
| Card | off | n/a | `Created` (held) |
| Invoice | on | approved | `Factoring` |
| Invoice | on | pending | `Pending` |
| Invoice | off | n/a | `Created` |
| Part Pay | on | approved | `Partpayment` |
| Part Pay | on | pending | `Pending` |
| Part Pay | off | n/a | `Created` |

### Pending Credit Check

For Invoice and Part Pay, a credit check can return `Pending` regardless of the autoactivate setting. The order's status becomes `Pending` and the merchant cannot activate it until Qvickly approves it.

### Visible in MyQvickly

MyQvickly is for persons only, not companies. Within MyQvickly:

- **Pågående** (ongoing): `Created`, `Pending`. No actions available yet.
- **Genomförda** (completed): `Paid`, `Factoring`, `Handling`, `Partpayment`. Full actions available (extend, return, pay with Swish).

### Callback #1: `UserSignedWithBankID`

This callback fires after BankID authentication, **not** after payment. The consumer is still on the payment-method-selection screen. Treat it as a "consumer arrived at the payment step," not as a confirmation.

To receive it, the merchant must have `callbackurl` set on the order. It then fires when **all** of these are true:

- A new invoice was just created (not a returning visit)
- The merchant has `callbackurl` configured

Payload:

```json
{
  "number": "1088",
  "status": "UserSignedWithBankID",
  "orderid": "134639567929",
  "url": "https://invoice.qvickly.io/..."
}
```

| Field | Meaning |
|---|---|
| `number` | Qvickly's invoice number for this order. |
| `status` | Always `UserSignedWithBankID` for this callback. |
| `orderid` | The merchant's own order reference, the same value the merchant sent when creating the order. |
| `url` | Link to the invoice in Qvickly. The merchant can show it to staff or attach it in their own system. |

The callback is not re-sent on returning visits.

### Callback #2: Final settlement status

This is the standard post-payment callback. It fires after the consumer completes payment inside the PWQ popup.

The payload uses the same `orderid` and `number` as Callback #1 but with the final `status` (`Paid`, `Created`, `Pending`, `Factoring`, `Partpayment`, etc.) matching the Step 5 matrix.

Callback #2 also fires for the other Qvickly Checkout payment methods, not just PWQ.

### Order method 2048

Internally, PWQ orders are identified by method `2048`. Step 2 rejects anything that isn't a method-2048 order. This is mostly relevant for integrators inspecting the API payload.
