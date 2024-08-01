# Status

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

There is one status fields on a invoice record that indicated where in the payment process this payment is.

## status - field

The following statuses are possible for a payment.

### Created (status)

Invoice/Card
Orders created but not activated.

### Paid (status)

Swish/Bank/Card
Activated / debited payment order

### Factoring (status)

Invoice
Invoice that is activated and sent to the customer

### PartPayment (status)

Part Payment
Part payment that is activated and sent to the customer

### Handling (status)

Invoice Handling
Handling invoice created not activated

## Status from GetPaymentInfo - function call

When calling the function [`GetPaymentInfo`](getPaymentinfo.md) the status will be replaced with the [creditcheck](#creditcheck-field) status described below.

### Created (GetPaymentInfo)

`Created` is the status for a payment that has been created but not yet activated. This is the initial status for all payments.


### Approved (GetPaymentInfo)

Credit check has been approved.

### FactoringWithRegress (GetPaymentInfo)


### FactoringWithoutRegress (GetPaymentInfo)


### Rejected (GetPaymentInfo)

Credit check has been rejected.

### Manual (GetPaymentInfo)

Credit check requires manual handling.

### Pending (GetPaymentInfo)

Credit check is pending. This means that the credit check is still ongoing but needs manual handling.

### Paid (GetPaymentInfo)

The payment has been activated and the customer has been debited.

### Cancelled (GetPaymentInfo)

The payment has been cancelled.

### Factoring (GetPaymentInfo)

The payment has been activated and sent to the customer as factoring invoice.

### Handling (GetPaymentInfo)

The payment has been activated and sent to the customer as handling invoice.

### E-brev (GetPaymentInfo) (obsolete)

### E-brevsent (GetPaymentInfo) (obsolete)

### Partpayment (GetPaymentInfo)

The payment has been activated and sent to the customer as part payment.

## distributor_status - field

distributor_status indicates the status between Qvickly and the customer.

distributor_status is not a required field so it might contain null or empty

This is an enum field with the values below are possible


### Ready (distributor_status)

### CreditDecision (distributor_status)

### UnderControl (distributor_status)

### FinalDecision (distributor_status)

### Created (distributor_status)

### Approved (distributor_status)

### Sent (distributor_status)

### Paid (distributor_status)

### Cancelled (distributor_status)

### eFakturaSent (distributor_status)

### eFakturaConfirmed (distributor_status)

### eFakturaFailed (distributor_status)


## creditcheck - field

creditcheck is the status for a credit check. Not all payments will have this since it's not applicable to direct payments such as Swish and card.

This is an text field with the below values defined

creditcheck is not a required field so it might contain null or empty

### Approved (creditcheck)

### Pending (creditcheck)

### FactoringWithRegress (creditcheck)

### FactoringWithoutRegress (creditcheck)

### Handling (creditcheck)

### Rejected (creditcheck)

### Manual (creditcheck)


## Combinations of statuses

| status      | distributor_status                  | creditcheck                      | description                                                                                                                                                                                                                     |
|-------------|-------------------------------------|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Created     | - [<sup>1</sup>](#1-status-created) | empty or null                    | The payment is created but has not yet been finalized.<br/>(This is not yet considered a completed payment)                                                                                                                     |
| Created     | - [<sup>1</sup>](#1-status-created) | Approved                         | The payment is created but has not yet been finalized.<br/>The result of the credit check is `Approved`<br/>(This is not yet considered a completed payment)                                                                    |
| Created     | - [<sup>1</sup>](#1-status-created) | Pending                          | The payment is created but has not yet been finalized.<br/>The result of the credit check is `Pending`<br/>(This is not yet considered a completed payment)                                                                     |
| Created     | - [<sup>1</sup>](#1-status-created) | FactoringWithRegress             | The payment is created but has not yet been finalized.<br/>The result of the credit check is `FactoringWithRegress`<br/>(This is not yet considered a completed payment)                                                        |
| Created     | - [<sup>1</sup>](#1-status-created) | FactoringWithoutRegress          | The payment is created but has not yet been finalized.<br/>The result of the credit check is `FactoringWithoutRegress`<br/>(This is not yet considered a completed payment)                                                     |
| Created     | - [<sup>1</sup>](#1-status-created) | Handling                         | The payment is created but has not yet been finalized.<br/>The result of the credit check is `Handling`<br/>(This is not yet considered a completed payment)                                                                    |
| Created     | - [<sup>1</sup>](#1-status-created) | Rejected                         | The payment is created but has not yet been finalized.<br/>The result of the credit check is `Rejected`<br/>(This is not yet considered a completed payment)                                                                    |
| Created     | - [<sup>1</sup>](#1-status-created) | Manual                           | The payment is created but has not yet been finalized.<br/>The result of the credit check is `Manual`<br/>(This is not yet considered a completed payment)                                                                      |
| Paid        | Created                             | - [<sup>2</sup>](#2-creditcheck) | Payment has not been exported to backend system.<br/>This is also what might occur if the invoice is credited before it is paid.                                                                                                |
| Paid        | Sent                                | - [<sup>2</sup>](#2-creditcheck) | The payment is finalized by the customer but has not yet been paid.<br/>The payment has been exported to the backend system.                                                                                                    |
| Paid        | Paid                                | - [<sup>2</sup>](#2-creditcheck) | The payment is sent to the backend system and has been paid by the customer.                                                                                                                                                    |
| Factoring   | Created                             | - [<sup>2</sup>](#2-creditcheck) | Invoice has not been exported to backend system.                                                                                                                                                                                |
| Factoring   | Ready                               | - [<sup>2</sup>](#2-creditcheck) | Invoice that has been registered with our system but exported to an external system for further handling.                                                                                                                       |
| Factoring   | Sent                                | - [<sup>2</sup>](#2-creditcheck) |                                                                                                                                                                                                                                 |
| Factoring   | Paid                                | - [<sup>2</sup>](#2-creditcheck) |                                                                                                                                                                                                                                 |
| Handling    | Created                             | - [<sup>2</sup>](#2-creditcheck) | Invoice has not been exported to backend system.                                                                                                                                                                                |
| Handling    | Sent                                | - [<sup>2</sup>](#2-creditcheck) |                                                                                                                                                                                                                                 |
| Handling    | Paid                                | - [<sup>2</sup>](#2-creditcheck) |                                                                                                                                                                                                                                 |
| Handling    | null                                | - [<sup>2</sup>](#2-creditcheck) | Special case where the payment is created with status `Created` and thus not exported to the backend system but then converted to a handling invoice that will be exported to the backend system but has not yet been exported. |
| PartPayment | Created                             | - [<sup>2</sup>](#2-creditcheck) |                                                                                                                                                                                                                                 |
| PartPayment | Sent                                | - [<sup>2</sup>](#2-creditcheck) |                                                                                                                                                                                                                                 |
| PartPayment | Paid                                | - [<sup>2</sup>](#2-creditcheck) |                                                                                                                                                                                                                                 |

### Export to backend system

Payments are exported to the backend system periodically and not immediately when the payment is made. This means that the distributor_status will not be updated immediately after a payment has been made.

### Payments paid by the customer but not exported to the backend system

There is a possibility for the payment to be cancelled after the payment has been made by the customer but before the payment has been exported to the backend system. This means that the distributor_status will be `Created` and the status will be `Paid`.

This can occur if the payment has `autocancel` set and the payment is started externally before the `autocancel` kicks in. This might be the case for Swish and card payments if the payment starts just before it gets cancelled and is finalized after the cancel.

The main reason for this to happen is if there is a delay in the communication between the payment provider and our system. This is not a common scenario but it can happen. Especially if the payment provider has a operational disturbance.

### Explanations

#### 1 - status created

If the `status` is `Created`then the `distributor_status` is irrelevant since then payment isn't finished yet and therefore it can't be sent to the backend system.

#### 2 - creditcheck

If the `status` is other that `Created` then the `creditcheck` status is irrelevant other than for historical purposes.