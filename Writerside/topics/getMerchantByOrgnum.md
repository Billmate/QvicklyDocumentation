# getMerchantByOrgnum

Get merchants filtered by organization number.

This function only allows you to filter out merchants that are connected to your account.

## Request

| Property | Required | Type   | Description                                                                                                                           |
|----------|----------|--------|---------------------------------------------------------------------------------------------------------------------------------------|
| orgnum   | false    | string | The organization number of the merchant. The organization number may be partial.                                                      |
| all      | false    | int    | If set to 1, all merchants connected to your account will be returned. If not set, only the first matching merchant will be returned. |

```json
{
  "data":{
    "orgnum":"1234567890"
  },
  "credentials":{
    "hash":"adf499d1605f213363f52d9ad0ecf7c4809d0f2cb0384f2e959e6cbb0dc84e5a4443a259d76bf6893e37e8212b5f3c9852377be1cd0d7fb472adc0b2f2618796",
    "id":"%MERCHANT_ID%",
    "version":"%API_VERSION%",
    "client":"%CLIENT_NAME%",
    "language":"sv",
    "test":false
  },
  "function":"getMerchantByOrgnum"
}
```

## Response

| Property | Type   | Description                                                                                                                |
