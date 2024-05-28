# getInvoicesByCustomer

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

Get invoices by customer.

This function allows you to get all invoices for a specific customer.

This is basically a [GetPaymentInfo](getPaymentinfo.md) call based on all invoices for a customers.

*An example can be found here [Get invoices by customer example](Get-invoices-by-customer.md)*

## Request

### Data
| Property   | Required | Type   | Description                                                                                                                                                      |
|------------|----------|--------|------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| customerno | true     | string | The customer number of the customer. The organization number will also be tested. The match for customer number and/or organization number must be a full match. |

### Function

| Property | Required | Type   | Description                                                            |
|----------|----------|--------|------------------------------------------------------------------------|
| function | true     | string | The function name to be used, for this page it’s getInvoicesByCustomer |

```json
{
  "data":{
    "customerno":"12345"
  },
  "credentials":{
    "hash":"adf499d1605f213363f52d9ad0ecf7c4809d0f2cb0384f2e959e6cbb0dc84e5a4443a259d76bf6893e37e8212b5f3c9852377be1cd0d7fb472adc0b2f2618796",
    "id":"%MERCHANT_ID%",
    "version":"%API_VERSION%",
    "client":"%CLIENT_NAME%",
    "language":"sv",
    "test":false
  },
  "function":"getInvoicesByCustomer"
}
```
## Response
The response will contain an array of invoices.

### Invoice properties
| Property               | Type   | Description                                                                                                                                        |
|------------------------|--------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| status                 | string | Status                                                                                                                                             |
| name                   | string | Customer name                                                                                                                                      |
| invoicedate            | string | Invoice date                                                                                                                                       |
| duedate                | string | Due date                                                                                                                                           |
| topay                  | string | Amount to pay. Will be negative for credit invoices.                                                                                               |
| invoiceid_real         | int    | Invoice number                                                                                                                                     |
| fileurl                | string | File URL. The fileurl is not always present. The url might also point to a non-existing address due to changes over time.                          |
| balancedue             | int    | Balance due for this payment                                                                                                                       |
| invoicetype            | string | Type of invoice. F = Invoice (Faktura) , K = Credit invoice (Kreditfaktura), KN = Cash invoice (Kontantnota), RF = Interest invoice (Räntefaktura) |
| distributor_status     | string | Distributor status.                                                                                                                                |
| creditinvoiceid        | int    | Invoice id for credit invoice if not empty                                                                                                         |
| hash                   | string | Hash value for the invoice                                                                                                                         |
| mm3servicesid          | int    | Internal service id                                                                                                                                |
| mexcModulesid          | int    | Internal module id                                                                                                                                 |
| mexcCustomerinvoicesid | int    | Invoice id                                                                                                                                         |


```json
{
    "credentials": {
        "hash": "54c3928bd58ea07eec2b82b6f3075df85f9bc5846f737feee5e497dcf96df26097258b30447df4627f97fcd4100fa86f7dbe9dd4a753da29939d34c9afae013f",
        "logid": "12345"
    },
    "data": [
        {
            "status": "Sent",
            "name": "Test Testsson",
            "invoicedate": "2019-01-01",
            "duedate": "2019-01-31",
            "topay": "1000.00",
            "invoiceid_real": 123456,
            "fileurl": "https://example.com/invoice.pdf",
            "balancedue": 1000,
            "invoicetype": "F",
            "distributor_status": "Sent",
            "creditinvoiceid": 0,
            "hash": "1234567890",
            "mm3servicesid": 123456,
            "mexcModulesid": 123456,
            "mexcCustomerinvoicesid": 123456
        }
    ]
}
```
