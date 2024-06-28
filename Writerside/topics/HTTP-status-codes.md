# HTTP status codes

The PaymentAPI is not based on HTTP status codes.
The PaymentAPI will always return a `200 OK` status code.
The status of the request is instead returned in the response body.

If the response is missing the field `code` and `message` the request was successful.

## Success

```json
{
    "credentials": {
        "hash":"0b2d1c4d31228a6dc845a16d57b782b97a5e111db2348324be42f5a91e88c8bd35fa62f0e6240b5680e17da03bb9301c5bd0ed755db7fa62ba6054ee21cdde88"
    },
    "data": {
        "number":"12345",
        "status":"Created",
        "orderid":"P123456789",
        "url":"https://api.qvickly.io/invoice/140544658153c38f1cdf279"
    }
}
```

## Failure

```json
{
  "credentials": {
    "hash": "edbbb1411422ac0d1cbc5e3a1b8948d01edaa4553ea7a78c1aad823db9f49acbc0b6f9d02769cae8975fe5f44bba13050a5b9c2e19f0f488b9faa7df66029520"
  },
  "data": {
    "code": "2401",
    "message": "Firstname does not match",
    "logid": "123456789"
  }
}
```