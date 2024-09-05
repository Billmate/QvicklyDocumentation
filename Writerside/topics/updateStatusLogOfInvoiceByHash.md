# updateStatusLogOfInvoiceByHash

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

This function is used to update the status log of an invoice by hash.

The hash is a unique identifier for the invoice. It is generated when the invoice is created and is used to identify the invoice.

*An example can be found here [Update Status Log Of Invoice By Hash example](Update-Status-Log-Of-Invoice-By-Hash.md)*

## Request

### Data
| Parameter | Required | Type   | Description                             |
|-----------|----------|--------|-----------------------------------------|
| hash      | true     | string | The hash of the invoice.                |
| body      | true     | object | The body of the request.                |

#### Body

| Property | Required | Type   | Description                                            |
|----------|----------|--------|--------------------------------------------------------|
| text     | true     | string | The text to be added to the status log of the invoice. |

### Function

| Property | Required | Type   | Description                                                                     |
|----------|----------|--------|---------------------------------------------------------------------------------|
| function | true     | string | The function name to be used, for this page it’s updateStatusLogOfInvoiceByHash |


```json
{
  "credentials": {
    "hash": "adf499d1605f213363f52d9ad0ecf7c4809d0f2cb0384f2e959e6cbb0dc84e5a4443a259d76bf6893e37e8212b5f3c9852377be1cd0d7fb472adc0b2f2618796",
    "id": "%MERCHANT_ID%",
    "version": "%PAYMENT_API_VERSION%",
    "client": "%PAYMENT_API_CLIENT_NAME%",
    "language": "sv",
    "test": false
  },
  "data": {
    "hash": "20240510123456789abcdef123456789abcdef123456789abcdef123456789abcdef",
    "body": {
      "text": "The status log of the invoice has been updated."
    },
    "time": 1713773251761
  },
  "function": "updateStatusLogOfInvoiceByHash"
}
```


## Response

| Property | Type   | Description                                                    |
|----------|--------|----------------------------------------------------------------|
| result   | string | The result of this call. Currently this function returns "OK"  |


```json
{
  "credentials" : {
    "hash" : "b95e87999849300d1059d64b81f259cc8f65897169262e26e1983acd69810dbbebad6df43bd9663e06d609bff9b5128fa03e20073e5c4148d8f63e2a0b8f50af",
    "logid" : 1234567
  },
  "data" : {
    "result" : "OK"
  }
}
```