# Invoices

## search

## rangeByDate

| Property | Required | Default value | Description         |
|----------|----------|---------------|---------------------|
| from     | Yes      |               | From date to search |
| to       | Yes      |               | To date to search   |

```
/invoices/?filter=rangeByDate&from=2024-01-01&to=2024-12-31
```


## rangeByDeliveryDate

| Property         | Required | Default value | Description         |
|------------------|----------|---------------|---------------------|
| deliverydatefrom | Yes      |               | From date to search |
| deliverydateto   | Yes      |               | To date to search   |

```
/invoices/?filter=rangeByDeliveryDate&deliverydatefrom=2024-01-01&deliverydateto=2024-12-31
```

## rangeByDueDate

| Property      | Required | Default value | Description         |
|---------------|----------|---------------|---------------------|
| duedatefrom   | Yes      |               | From date to search |
| duedateto     | Yes      |               | To date to search   |

```
/invoices/?filter=rangeByDueDate&duedatefrom=2024-01-01&duedateto=2024-12-31
```

## rangeByInvoiceDate

| Property         | Required | Default value | Description         |
|------------------|----------|---------------|---------------------|
| invoicedatefrom  | Yes      |               | From date to search |
| invoicedateto    | Yes      |               | To date to search   |

```
/invoices/?filter=rangeByInvoiceDate&invoicedatefrom=2024-01-01&invoicedateto=2024-12-31
```

## rangeByDatePaid

| Property      | Required | Default value | Description         |
|---------------|----------|---------------|---------------------|
| paiddatefrom  | Yes      |               | From date to search |
| paiddateto    | Yes      |               | To date to search   |

```
/invoices/?filter=rangeByDatePaid&paiddatefrom=2024-01-01&paiddateto=2024-12-31
```

## rangeByDateSent

| Property      | Required | Default value | Description         |
|---------------|----------|---------------|---------------------|
| sentdatefrom  | Yes      |               | From date to search |
| sentdateto    | Yes      |               | To date to search   |

```
/invoices/?filter=rangeByDateSent&sentdatefrom=2024-01-01&sentdateto=2024-12-31
```

## isCard

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

| Property      | Required | Default value | Description                                    |
|---------------|----------|---------------|------------------------------------------------|
| isPartPayment | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=isPartPayment
```

## isInvoice

| Property   | Required | Default value | Description                                    |
|------------|----------|---------------|------------------------------------------------|
| isInvoice  | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=isInvoice
```

## isPayment

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

| Property  | Required | Default value | Description                                    |
|-----------|----------|---------------|------------------------------------------------|
| hasCredit | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=hasCredit
```

## creditCheckApproved

| Property             | Required | Default value | Description                                    |
|----------------------|----------|---------------|------------------------------------------------|
| creditCheckApproved  | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=creditCheckApproved
```

## creditCheckPending

| Property           | Required | Default value | Description                                    |
|--------------------|----------|---------------|------------------------------------------------|
| creditCheckPending | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=creditCheckPending
```

## creditCheckRejected

| Property             | Required | Default value | Description                                    |
|----------------------|----------|---------------|------------------------------------------------|
| creditCheckRejected  | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=creditCheckRejected
```

## creditCheckDenied

| Property          | Required | Default value | Description                                    |
|-------------------|----------|---------------|------------------------------------------------|
| creditCheckDenied | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=creditCheckDenied
```

## creditCheckManual

| Property          | Required | Default value | Description                                    |
|-------------------|----------|---------------|------------------------------------------------|
| creditCheckManual | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=creditCheckManual
```

## creditCheckFactoringWithoutRegress

| Property                           | Required | Default value | Description                                    |
|------------------------------------|----------|---------------|------------------------------------------------|
| creditCheckFactoringWithoutRegress | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=creditCheckFactoringWithoutRegress
```

## creditCheckFactoringWithRegress

| Property                        | Required | Default value | Description                                    |
|---------------------------------|----------|---------------|------------------------------------------------|
| creditCheckFactoringWithRegress | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=creditCheckFactoringWithRegress
```

## creditCheckEmpty

| Property         | Required | Default value | Description                                    |
|------------------|----------|---------------|------------------------------------------------|
| creditCheckEmpty | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=creditCheckEmpty
```

## creditCheckNull

| Property        | Required | Default value | Description                                    |
|-----------------|----------|---------------|------------------------------------------------|
| creditCheckNull | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |


```
/invoices/?filter=creditCheckNull
```

## creditCheck

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

| Property   | Required | Default value | Description                |
|------------|----------|---------------|----------------------------|
| customerno | Yes      |               | Search for customer number |


```
/invoices/?filter=customerNo&customerno=123456
```

## invoiceType

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

| Property     | Required | Default value | Description                     |
|--------------|----------|---------------|---------------------------------|
| paymentterms | Yes      |               | Payment terms in number of days |


```
/invoices/?filter=paymentterms&paymentterms=14
```

## isPaymentType

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

| Property       | Required | Default value | Description                                    |
|----------------|----------|---------------|------------------------------------------------|
| isService      | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |

```
/invoices/?filter=isService
```

## isFactoring

| Property    | Required | Default value | Description                                    |
|-------------|----------|---------------|------------------------------------------------|
| isFactoring | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |

```
/invoices/?filter=isFactoring
```

## isDirect

| Property  | Required | Default value | Description                                    |
|-----------|----------|---------------|------------------------------------------------|
| isDirect  | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |

```
/invoices/?filter=isDirect
```

## isOwnAgreement

| Property       | Required | Default value | Description                                    |
|----------------|----------|---------------|------------------------------------------------|
| isOwnAgreement | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |

```
/invoices/?filter=isOwnAgreement
```

## isConverted

| Property       | Required | Default value | Description                                    |
|----------------|----------|---------------|------------------------------------------------|
| isConverted | No       | 1             | Activate this filter. (1 = activate, 0 = skip) |

```
/invoices/?filter=isConverted
```

## status

| Property | Required | Default value | Description      |
|----------|----------|---------------|------------------|
| status   | Yes      |               | Status to filter |

```
/invoices/?filter=status&status=Paid
```

## distributor_status

| Property           | Required | Default value | Description      |
|--------------------|----------|---------------|------------------|
| distributor_status | Yes      |               | Status to filter |

```
/invoices/?filter=distributor_status&distributor_status=Paid
```

## statusCreated

| Property           | Required | Default value | Description      |
|--------------------|----------|---------------|------------------|

This filter does not have any parameters.

```
/invoices/?filter=statusCreated
```

## statusActivated

| Property           | Required | Default value | Description      |
|--------------------|----------|---------------|------------------|

This filter does not have any parameters.

```
/invoices/?filter=statusActivated
```

## statusNotCreated

| Property           | Required | Default value | Description      |
|--------------------|----------|---------------|------------------|

This filter does not have any parameters.

```
/invoices/?filter=statusNotCreated
```

## country

| Property | Required | Default value | Description       |
|----------|----------|---------------|-------------------|
| country  | Yes      |               | Country to filter |


```
/invoices/?filter=country&country=SE
```

## flags

## flagsOR

## payoutPaid

## payoutNextPayout

## payoutUnpaid

## payoutOverdue

## payoutCredited

## payouts

## isTypeInvoice

## isTypePaylink

## paylinkPaid

## paylinkUnpaid

