# Status

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

There is one status fields on a invoice record that indicated where in the payment process this payment is.

## status

| Status      | Payment Method       | 	Description                                            |
|-------------|----------------------|---------------------------------------------------------|
| Created     | Invoice/Card         | Orders created but not activated.                       |
| Paid        | Swish/Bank/Card      | Activated / debited payment order                       |
| Pending     | Invoice/Part Payment | Invoice under credit review                             |
| Factoring   | Invoice              | Invoice that is activated and sent to the customer      |
| PartPayment | Part Payment         | Part payment that is activated and sent to the customer |
| Handling    | Invoice Handling     | Handling invoice created not activated                  |

| Status      | Description |
|-------------|-------------|
| Created     |             |
| Approved    |             |
| Sent        |             |
| Paid        |             |
| Cancelled   |             |
| Factoring   |             |
| Handling    |             |
| E-brev      |             |
| E-brevsent  |             |
| Partpayment |             |

For ths function [`GetPaymentInfo`](getPaymentinfo.md), if the status is `Created` and the method used is `1` (Invoice) or `4` (Partpayment) then the status will be replaced with the [creditcheck](#creditcheck) status described below.

## distributor_status

distributor_status indicates the status between Qvickly and the merchant.

This is an enum field with the following values possible

| Status            | Description |
|-------------------|-------------|
| Ready             |             |
| CreditDecision    |             |
| UnderControl      |             |
| FinalDecision     |             |
| Created           |             |
| Approved          |             |
| Sent              |             |
| Paid              |             |
| Cancelled         |             |
| eFakturaSent      |             |
| eFakturaConfirmed |             |
| eFakturaFailed    |             |

distributor_status is not a required field so it might contain null or empty

## creditcheck

creditcheck is the status for a credit check. Not all payments will have this since it's not applicable to direct payments such as Swish and card.

This is an text field with the following values defined

| Status                  | Description |
|-------------------------|-------------|
| Approved                |             |
| Pending                 |             |
| FactoringWithRegress    |             |
| FactoringWithoutRegress |             |
| Handling                |             |
| Rejected                |             |
| Manual                  |             |

creditcheck is not a required field so it might contain null or empty
