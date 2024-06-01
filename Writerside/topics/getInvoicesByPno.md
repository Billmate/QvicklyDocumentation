# getInvoicesByPno

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

Get invoices filtered by personal identification number.

*An example can be found here [Get invoices by pno example](Get-invoices-by-pno.md)*

## Request

### Data

| Property | Required | Type   | Description                                                                                   |
|----------|----------|--------|-----------------------------------------------------------------------------------------------|
| pno      | true     | string | The personal identification number of the customer.                                           |
| status   | true     | string | The only allowed statuses are Sent and Sent,Paid. All other will result in an 7022 exception. |

#### Status

| Status    | Description                                                                                                 |
|-----------|-------------------------------------------------------------------------------------------------------------|
| Sent      | Sent invoices. The distributor status has to be either `Created` or `Sent`                                  |
| Sent,Paid | Sent and paid invoices. Either the distributor status has to be `Paid` or the status has to be `Cancelled`. |

### Function

| Property | Required | Type   | Description                                                       |
|----------|----------|--------|-------------------------------------------------------------------|
| function | true     | string | The function name to be used, for this page it’s getInvoicesByPno |

```json
{
  "data":{
    "pno":"1234567890",
    "status":"Sent"
  },
  "credentials":{
    "hash":"adf499d1605f213363f52d9ad0ecf7c4809d0f2cb0384f2e959e6cbb0dc84e5a4443a259d76bf6893e37e8212b5f3c9852377be1cd0d7fb472adc0b2f2618796",
    "id":"%MERCHANT_ID%",
    "version":"%PAYMENT_API_VERSION%",
    "client":"%PAYMENT_API_CLIENT_NAME%",
    "language":"sv",
    "test":false
  },
  "function":"getInvoicesByPno"
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
