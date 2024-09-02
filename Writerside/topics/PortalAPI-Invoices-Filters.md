# Invoices

<include from="Snippets-PortalAPI.md" element-id="snippet-header" />

## search

Search for an invoice by its invoice ID, customer name, customer number, street, postal code, city, your reference, our reference, project name, organization number, address 2, email, phone number, or OCR number.

| Property | Required | Default value | Description        |
|----------|----------|---------------|--------------------|
| search   | Yes      |               | Text to search for |

```
/invoices/?filter=search&search=test
```

The search filter includes these fields in a fragment search:
- invoiceid_real
- yourorder
- customername
- customerno
- street
- postalcode
- city
- yourreference
- ourreference
- projectname
- orgnum
- address2
- email
- phonenumber
- ocr

## rangeByDate

Search for invoices by the date they were last updated.

| Property | Required | Default value | Description         |
|----------|----------|---------------|---------------------|
| from     | Yes      |               | From date to search |
| to       | Yes      |               | To date to search   |

```
/invoices/?filter=rangeByDate&from=2024-01-01&to=2024-12-31
```


## rangeByDeliveryDate

Search for invoices by the delivery date.

| Property         | Required | Default value | Description         |
|------------------|----------|---------------|---------------------|
| deliverydatefrom | Yes      |               | From date to search |
| deliverydateto   | Yes      |               | To date to search   |

```
/invoices/?filter=rangeByDeliveryDate&deliverydatefrom=2024-01-01&deliverydateto=2024-12-31
```

## rangeByDueDate

Search for invoices by the due date.

| Property      | Required | Default value | Description         |
|---------------|----------|---------------|---------------------|
| duedatefrom   | Yes      |               | From date to search |
| duedateto     | Yes      |               | To date to search   |

```
/invoices/?filter=rangeByDueDate&duedatefrom=2024-01-01&duedateto=2024-12-31
```

## rangeByInvoiceDate

Search for invoices by the invoice date.

| Property         | Required | Default value | Description         |
|------------------|----------|---------------|---------------------|
| invoicedatefrom  | Yes      |               | From date to search |
| invoicedateto    | Yes      |               | To date to search   |

```
/invoices/?filter=rangeByInvoiceDate&invoicedatefrom=2024-01-01&invoicedateto=2024-12-31
```

## rangeByDatePaid

Search for invoices by the date they were paid.

| Property      | Required | Default value | Description         |
|---------------|----------|---------------|---------------------|
| paiddatefrom  | Yes      |               | From date to search |
| paiddateto    | Yes      |               | To date to search   |

```
/invoices/?filter=rangeByDatePaid&paiddatefrom=2024-01-01&paiddateto=2024-12-31
```

## rangeByDateSent

Search for invoices by the date they were sent.

| Property      | Required | Default value | Description         |
|---------------|----------|---------------|---------------------|
| sentdatefrom  | Yes      |               | From date to search |
| sentdateto    | Yes      |               | To date to search   |

```
/invoices/?filter=rangeByDateSent&sentdatefrom=2024-01-01&sentdateto=2024-12-31
```

## isCard

Search for card payments.

| Property       | Required | Default value | Description                                    |
|----------------|----------|---------------|------------------------------------------------|
| isDirect       | No       | 1             | Find payments without own agreement            |
| isOwnAgreement | No       | 1             | Find own agreements                            |
| isCard         | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |

```
/invoices/?filter=isCard
```

If either `isDirect` or `isOwnAgreement` is set to 0, the search will return all card payments where these are omitted.

## isSwish

Search for swish payments.

| Property       | Required | Default value | Description                                    |
|----------------|----------|---------------|------------------------------------------------|
| isDirect       | No       | 1             | Find payments without own agreement            |
| isOwnAgreement | No       | 1             | Find own agreements                            |
| isSwish        | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |

```
/invoices/?filter=isSwish
```

If either `isDirect` or `isOwnAgreement` is set to 0, the search will return all swish payments where these are omitted.

## isBank

Search for bank payments.

| Property       | Required | Default value | Description                                    |
|----------------|----------|---------------|------------------------------------------------|
| isDirect       | No       | 1             | Find payments without own agreement            |
| isOwnAgreement | No       | 1             | Find own agreements                            |
| isBank         | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |

```
/invoices/?filter=isBank
```

If either `isDirect` or `isOwnAgreement` is set to 0, the search will return all bank payments where these are omitted.

## isCash

Search for cash payments.

| Property       | Required | Default value | Description                                    |
|----------------|----------|---------------|------------------------------------------------|
| isDirect       | No       | 1             | Find payments without own agreement            |
| isOwnAgreement | No       | 1             | Find own agreements                            |
| isCash         | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |

```
/invoices/?filter=isCash
```

If either `isDirect` or `isOwnAgreement` is set to 0, the search will return all cash payments where these are omitted.

## isPartPayment

Search for part payments.

| Property      | Required | Default value | Description                                    |
|---------------|----------|---------------|------------------------------------------------|
| isPartPayment | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=isPartPayment
```

## isInvoice

Search for invoices.

| Property   | Required | Default value | Description                                    |
|------------|----------|---------------|------------------------------------------------|
| isInvoice  | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=isInvoice
```

## isPayment

Search for payments.

| Property       | Required | Default value | Description                         |
|----------------|----------|---------------|-------------------------------------|
| isCard         | No       | 0             | Find card payments                  |
| isSwish        | No       | 0             | Find swish payments                 |
| isBank         | No       | 0             | Find bank payments                  |
| isCash         | No       | 0             | Find cash payments                  |
| isPartPayment  | No       | 0             | Find part payments                  |
| isInvoice      | No       | 0             | Find invoices                       |

```
/invoices/?filter=isPayment&isCard=1&isSwish=1&isBank=1&isCash=1&isPartPayment=1&isInvoice=1
```

This is a combined filter that can be used to search for payments based on their type. The parameters `isCard`, `isSwish`, `isBank`, `isCash`, `isPartPayment`, and `isInvoice` can be used to filter payments based on their type. The value of each parameter can be either `0` or `1`. The sub-filters are combined with an `OR` operator.

## hasCredit

Search for invoices that has an credit invoice.

| Property  | Required | Default value | Description                                    |
|-----------|----------|---------------|------------------------------------------------|
| hasCredit | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=hasCredit
```

## creditCheckApproved

Search for invoices that has been approved by a credit check.

| Property             | Required | Default value | Description                                    |
|----------------------|----------|---------------|------------------------------------------------|
| creditCheckApproved  | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=creditCheckApproved
```

## creditCheckPending

Search for invoices that has a pending credit check.

| Property           | Required | Default value | Description                                    |
|--------------------|----------|---------------|------------------------------------------------|
| creditCheckPending | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=creditCheckPending
```

## creditCheckRejected

Search for invoices that has been rejected by a credit check.

| Property             | Required | Default value | Description                                    |
|----------------------|----------|---------------|------------------------------------------------|
| creditCheckRejected  | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=creditCheckRejected
```

## creditCheckDenied

Search for invoices that has been denied by a credit check.

| Property          | Required | Default value | Description                                    |
|-------------------|----------|---------------|------------------------------------------------|
| creditCheckDenied | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=creditCheckDenied
```

## creditCheckManual

Search for invoices that has a manual credit check.

| Property          | Required | Default value | Description                                    |
|-------------------|----------|---------------|------------------------------------------------|
| creditCheckManual | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=creditCheckManual
```

## creditCheckFactoringWithoutRegress

Search for invoices that has factoring without regress.

| Property                           | Required | Default value | Description                                    |
|------------------------------------|----------|---------------|------------------------------------------------|
| creditCheckFactoringWithoutRegress | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=creditCheckFactoringWithoutRegress
```

## creditCheckFactoringWithRegress

Search for invoices that has factoring with regress.

| Property                        | Required | Default value | Description                                    |
|---------------------------------|----------|---------------|------------------------------------------------|
| creditCheckFactoringWithRegress | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=creditCheckFactoringWithRegress
```

## creditCheckEmpty

Search for invoices that has an empty credit check.

| Property         | Required | Default value | Description                                    |
|------------------|----------|---------------|------------------------------------------------|
| creditCheckEmpty | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=creditCheckEmpty
```

## creditCheckNull

Search for invoices that has a null credit check.

| Property        | Required | Default value | Description                                    |
|-----------------|----------|---------------|------------------------------------------------|
| creditCheckNull | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=creditCheckNull
```

## creditCheck

Search for invoices based on their credit check status.

| Property                           | Required | Default value | Description                                    |
|------------------------------------|----------|---------------|------------------------------------------------|
| creditCheckApproved                | No       | 0             | Activate this filter. (1 = activate, 0 = skip) |
| creditCheckPending                 | No       | 0             | Activate this filter. (1 = activate, 0 = skip) |
| creditCheckRejected                | No       | 0             | Activate this filter. (1 = activate, 0 = skip) |
| creditCheckDenied                  | No       | 0             | Activate this filter. (1 = activate, 0 = skip) |
| creditCheckManual                  | No       | 0             | Activate this filter. (1 = activate, 0 = skip) |
| creditCheckFactoringWithoutRegress | No       | 0             | Activate this filter. (1 = activate, 0 = skip) |
| creditCheckFactoringWithRegress    | No       | 0             | Activate this filter. (1 = activate, 0 = skip) |
| creditCheckEmpty                   | No       | 0             | Activate this filter. (1 = activate, 0 = skip) |
| creditCheckNull                    | No       | 0             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=creditCheck&creditCheckApproved=1&creditCheckPending=1&creditCheckRejected=1&creditCheckDenied=1&creditCheckManual=1&creditCheckFactoringWithoutRegress=1&creditCheckFactoringWithRegress=1&creditCheckEmpty=1&creditCheckNull=1
```

This is a combined filter that can be used to search for invoices based on their credit check status. The parameters `creditCheckApproved`, `creditCheckPending`, `creditCheckRejected`, `creditCheckDenied`, `creditCheckManual`, `creditCheckFactoringWithoutRegress`, `creditCheckFactoringWithRegress`, `creditCheckEmpty`, and `creditCheckNull` can be used to filter invoices based on their credit check status. The value of each parameter can be either `0` or `1`. The sub-filters are combined with an `OR` operator.

## customerNo

Search for invoices by customer number.

| Property   | Required | Default value | Description                |
|------------|----------|---------------|----------------------------|
| customerno | Yes      |               | Search for customer number |


```
/invoices/?filter=customerNo&customerno=123456
```

## invoiceType

Search for invoices by invoice type.

| Property    | Required | Default value | Description     |
|-------------|----------|---------------|-----------------|
| invoicetype | Yes      |               | Type of invoice |

Valid values are:
- F (Invoice)
- K (Credit)
- KN (Cash note)
- RF (Interest invoice)

```
/invoices/?filter=invoiceType&invoicetype=F
```

## paymentterms

Search for invoices by payment terms.

| Property     | Required | Default value | Description                     |
|--------------|----------|---------------|---------------------------------|
| paymentterms | Yes      |               | Payment terms in number of days |


```
/invoices/?filter=paymentterms&paymentterms=14
```

## isPaymentType

Search for invoices based on their payment type.

| Property       | Required | Default value | Description                                    |
|----------------|----------|---------------|------------------------------------------------|
| isService      | No       | 0             | Activate this filter. (1 = activate, 0 = skip) |
| isFactoring    | No       | 0             | Activate this filter. (1 = activate, 0 = skip) |
| isDirect       | No       | 0             | Activate this filter. (1 = activate, 0 = skip) |
| isOwnAgreement | No       | 0             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=isPaymentType&isService=1&isFactoring=1&isDirect=1&isOwnAgreement=1
```

This is a combined filter that can be used to search for invoices based on their payment type. The parameters `isService`, `isFactoring`, `isDirect`, and `isOwnAgreement` can be used to filter invoices based on their payment type. The value of each parameter can be either `0` or `1`. The sub-filters are combined with an `OR` operator.


## isService

Search for service invoices.

| Property       | Required | Default value | Description                                    |
|----------------|----------|---------------|------------------------------------------------|
| isService      | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |

```
/invoices/?filter=isService
```

## isFactoring

Search for factoring invoices.

| Property    | Required | Default value | Description                                    |
|-------------|----------|---------------|------------------------------------------------|
| isFactoring | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |

```
/invoices/?filter=isFactoring
```

## isDirect

Search for direct invoices.

| Property  | Required | Default value | Description                                    |
|-----------|----------|---------------|------------------------------------------------|
| isDirect  | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |

```
/invoices/?filter=isDirect
```

## isOwnAgreement

Search for invoices with own agreement.

| Property       | Required | Default value | Description                                    |
|----------------|----------|---------------|------------------------------------------------|
| isOwnAgreement | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |

```
/invoices/?filter=isOwnAgreement
```

## isConverted

Search for converted invoices.

| Property    | Required | Default value | Description                                    |
|-------------|----------|---------------|------------------------------------------------|
| isConverted | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |

```
/invoices/?filter=isConverted
```

## status

Search for invoices by status.

| Property | Required | Default value | Description      |
|----------|----------|---------------|------------------|
| status   | Yes      |               | Status to filter |

```
/invoices/?filter=status&status=Paid
```

## distributor_status

Search for invoices by distributor status.

| Property           | Required | Default value | Description      |
|--------------------|----------|---------------|------------------|
| distributor_status | Yes      |               | Status to filter |

```
/invoices/?filter=distributor_status&distributor_status=Paid
```

## statusCreated

Search for invoices that are created.

| Property           | Required | Default value | Description      |
|--------------------|----------|---------------|------------------|

This filter does not have any parameters.

```
/invoices/?filter=statusCreated
```

## statusActivated

Search for invoices that are activated.

| Property           | Required | Default value | Description      |
|--------------------|----------|---------------|------------------|

This filter does not have any parameters.

```
/invoices/?filter=statusActivated
```

## statusNotCreated

Search for invoices that are not created.

| Property           | Required | Default value | Description      |
|--------------------|----------|---------------|------------------|

This filter does not have any parameters.

```
/invoices/?filter=statusNotCreated
```

## country

Search for invoices by country.

| Property | Required | Default value | Description       |
|----------|----------|---------------|-------------------|
| country  | Yes      |               | Country to filter |


```
/invoices/?filter=country&country=SE
```

## flags

Search for invoices by flag. If this filter occurs more than once, the flags are combined with an `AND` operator.

| Property | Required | Default value | Description          |
|----------|----------|---------------|----------------------|
| flag     | Yes      |               | Flag value to filter |


```
/invoices/?filter=flags&flag=128
```

## flagsOR

Search for invoices by flag. If this filter occurs more than once, the flags are combined with an `OR` operator.

| Property | Required | Default value | Description          |
|----------|----------|---------------|----------------------|
| flagOR   | Yes      |               | Flag value to filter |


```
/invoices/?filter=flagsOR&flagOR=128
```

## payoutPaid

Search for invoices that has been paid out.

| Property   | Required | Default value | Description                             |
|------------|----------|---------------|-----------------------------------------|
| payoutPaid | No       | 1             | Filter invoices that has been paid out. |


```
/invoices/?filter=payoutPaid&payoutPaid=1
```

## payoutNextPayout

Search for invoices that will be paid out next pay out.

| Property         | Required | Default value | Description                                         |
|------------------|----------|---------------|-----------------------------------------------------|
| payoutNextPayout | No       | 1             | Filter invoices that will be paid out next pay out. |


```
/invoices/?filter=payoutNextPayout&payoutNextPayout=1
```

## payoutUnpaid

Search for invoices that has not been paid out.

| Property     | Required | Default value | Description                                 |
|--------------|----------|---------------|---------------------------------------------|
| payoutUnpaid | No       | 1             | Filter invoices that has not been paid out. |


```
/invoices/?filter=payoutUnpaid&payoutUnpaid=1
```

## payoutOverdue

Search for invoices that are overdue for pay out.

| Property      | Required | Default value | Description                                   |
|---------------|----------|---------------|-----------------------------------------------|
| payoutOverdue | No       | 1             | Filter invoices that are overdue for pay out. |


```
/invoices/?filter=payoutOverdue&payoutOverdue=1
```

## payoutCredited

Search for invoices that has been credited.

| Property       | Required | Default value | Description                             |
|----------------|----------|---------------|-----------------------------------------|
| payoutCredited | No       | 1             | Filter invoices that has been credited. |


```
/invoices/?filter=payoutCredited&payoutCredited=1
```

## payouts

Search for invoices based on their payout status.

| Property         | Required | Default value | Description                                         |
|------------------|----------|---------------|-----------------------------------------------------|
| payoutPaid       | No       | 0             | Filter invoices that has been paid out.             |
| payoutNextPayout | No       | 0             | Filter invoices that will be paid out next pay out. |
| payoutUnpaid     | No       | 0             | Filter invoices that has not been paid out.         |
| payoutOverdue    | No       | 0             | Filter invoices that are overdue for pay out.       |
| payoutCredited   | No       | 0             | Filter invoices that has been credited.             |


```
/invoices/?filter=payouts&payoutPaid=1&payoutNextPayout=1&payoutUnpaid=1&payoutOverdue=1&payoutCredited=1
```

This is a combined filter that can be used to search for payouts. The parameters `payoutPaid`, `payoutNextPayout`, `payoutUnpaid`, `payoutOverdue` and `payoutCredited` can be used to filter payout status for invoices. The value of each parameter can be either `0` or `1`. The sub-filters are combined with an `OR` operator.

## isTypeInvoice

Search for invoices that are of type invoice.

| Property           | Required | Default value | Description      |
|--------------------|----------|---------------|------------------|

This filter does not have any parameters.

```
/invoices/?filter=isTypeInvoice
```

## isTypePaylink

Search for invoices that are of type paylink.

| Property           | Required | Default value | Description      |
|--------------------|----------|---------------|------------------|

This filter does not have any parameters.

```
/invoices/?filter=isTypePaylink
```

## paylinkPaid

Search for paylink invoices that has been paid.

| Property           | Required | Default value | Description      |
|--------------------|----------|---------------|------------------|

This filter does not have any parameters.

```
/invoices/?filter=paylinkPaid
```

## paylinkUnpaid

Search for paylink invoices that has not been paid.

| Property           | Required | Default value | Description      |
|--------------------|----------|---------------|------------------|

This filter does not have any parameters.

```
/invoices/?filter=paylinkUnpaid
```

## show2048

Show invoices with method 2048.

| Property           | Required | Default value | Description      |
|--------------------|----------|---------------|------------------|

This filter does not have any parameters.

```
/invoices/?filter=show2048
```

## hide2048

Hide invoices with method 2048.

| Property           | Required | Default value | Description      |
|--------------------|----------|---------------|------------------|

This filter does not have any parameters.

```
/invoices/?filter=hide2048
```

