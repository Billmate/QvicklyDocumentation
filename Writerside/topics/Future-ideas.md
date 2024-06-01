# Future ideas

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

## Feature flags in header

Enable or disable features by sending a header with the request. This would allow for a more dynamic way of enabling and disabling features.

```json
{
  "credentials": {
    "id": "%MERCHANT_ID%",
    "hash": "d12fffb30cc76ebf7ba5c5bc496188cea46c1cf09ebaa4421391f9571bd4df6920223222e87b6bf0dcb7fa8867410851e148f84f9dec6d94b1fddf9f66dc1307",
    "version": "%PAYMENT_API_VERSION%",
    "feature": {
      "accept": "16",
      "deny": "2"
    },
    "client": "%PAYMENT_API_CLIENT_NAME%",
    "language": "sv",
    "test": "true"
  },
  "data": {
    "dummyArg": "abc124"
  },
  "function": "dummyFunction"
}
```

## Dynamic keys in urls

Allow for dynamic keys in urls. This would allow for a more dynamic way of handling urls and easier to pass vital information back without the need to parse the payload.

```json
{
  "data": {
    "PaymentData": {
      "method": "1",
      "paymentplanid": "",
      "currency": "SEK",
      "language": "sv",
      "country": "SE",
      "autoactivate": "0",
      "orderid": "P123456789",
      "logo": "Logo2.jpg",
      "accepturl": "https://www.mystore.se/completedpayment?invoiceno={{invoiceno}}",
      "cancelurl": "https://www.mystore.se/failedpayment?orderno={{orderno}}",
      "returnmethod": "GET",
      "callbackurl": "https://www.mystore.se/callback.php?invoiceno={{invoiceno}}"
    }
  }
}
```