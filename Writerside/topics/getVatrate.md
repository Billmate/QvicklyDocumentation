# getVatrate

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

Get the VAT rate for a specific country.

> Please note that this function will return the main VAT rate for the country. The VAT rate may differ depending on the type of goods or services.

*An example can be found here [Get VAT rate example](Get-vat-rate.md)*

## Request

### Data
| Property | Required | Type   | Description                                                                         |
|----------|----------|--------|-------------------------------------------------------------------------------------|
| country  | true     | string | The country code according to ISO-3166-1. Both 2 and 3 character codes can be used. |

### Function

| Property | Required | Type   | Description                                                  |
|----------|----------|--------|--------------------------------------------------------------|
| function | true     | string | The function name to be used, for this page it’s getVatrates |

```json
{
  "data":{
    "country":"SE"
  },
  "credentials":{
    "hash":"adf499d1605f213363f52d9ad0ecf7c4809d0f2cb0384f2e959e6cbb0dc84e5a4443a259d76bf6893e37e8212b5f3c9852377be1cd0d7fb472adc0b2f2618796",
    "id":"%MERCHANT_ID%",
    "version":"%PAYMENT_API_VERSION%",
    "client":"%PAYMENT_API_CLIENT_NAME%",
    "language":"sv",
    "test":false
  },
  "function":"getVatrate"
}
```

## Response

| Property | Type | Description                        |
|----------|------|------------------------------------|
| result   | int  | The main VAT rate for the country. |

```json
{
  "credentials": {
    "hash": "e3fc29845c718e6db3b5f73fa956364efede85917c6995cd1645fcd6033d75a6f9b5c10f2022cd13fe122b6ba72367f5b2ef312d303edbb4a2dbfccd53dd139e",
    "logid": 853022
  },
  "data": {
    "result": "25"
  }
}
```