# getAPICredentials

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

> This method can only be used by accredited merchants.

getAPICredentials is used to fetch the credentials needed to use the Payment API.

*An example can be found here [Get API credentials example](Get-API-Credentials.md)*

## Request

### Data

| Property | Required | Type   | Description                            |
|----------|----------|--------|----------------------------------------|
| eid      | true     | int    | The merchant id                        |
| hash     | true     | string | The hash for the a order or an invoice |


### Function

| Property | Required | Type   | Description                                                        |
|----------|----------|--------|--------------------------------------------------------------------|
| function | true     | string | The function name to be used, for this page it’s getAPICredentials |

```json
{
  "credentials": {
    "id": "%MERCHANT_ID%",
    "hash": "d12fffb30cc76ebf7ba5c5bc496188cea46c1cf09ebaa4421391f9571bd4df6920223222e87b6bf0dcb7fa8867410851e148f84f9dec6d94b1fddf9f66dc1307",
    "version": "%PAYMENT_API_VERSION%",
    "client": "%PAYMENT_API_CLIENT_NAME%",
    "language": "sv",
    "serverdata": {"HTTP_HOST":"developer.qvickly.io","HTTP_CONNECTION":"keep-alive","HTTP_CACHE_CONTROL":"max-age=0","HTTP_ACCEPT":"text\/html,application\/xhtml+xml,application\/xml;q=0.9,image\/webp,*\/*;q=0.8","HTTP_USER_AGENT":"Mozilla\/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit\/537.36 (KHTML, like Gecko) Chrome\/39.0.2171.95 Safari\/537.36","HTTP_ACCEPT_ENCODING":"gzip, deflate, sdch","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.8","PATH":"\/sbin:\/usr\/sbin:\/bin:\/usr\/bin","SERVER_SOFTWARE":"Apache\/2.2.26 (Amazon)","SERVER_NAME":"developer.qvickly.io","SERVER_ADDR":"172.31.22.88","SERVER_PORT":"80","REMOTE_ADDR":"2.71.114.219","REMOTE_PORT":"53241","GATEWAY_INTERFACE":"CGI\/1.1","SERVER_PROTOCOL":"HTTP\/1.1","REQUEST_METHOD":"GET","QUERY_STRING":"","REQUEST_TIME":1421313644},
    "time": "1417004339.9291",
    "test": "true"
  },
  "data": {
    "eid": "%MERCHANT_ID%",
    "hash": "6136d5ef469f8089890e908b890890a765436f4e3d"
  },
  "function": "getAPICredentials"
}
```

## Response

| Property      | Type   | Description                                                   |
|---------------|--------|---------------------------------------------------------------|
| eid           | int    | The merchant id                                               |
| mm3servicesid | int    | THe service id                                                |
| mexcModulesid | int    | The modules id                                                |
| secret        | string | The secret for the merchant                                   |
| hashtype      | string | The type of object the hash matched. Either invoice or order. |
| language      | string | The language code used by the order or invoice.               |

```json
{
    "credentials": {
        "hash": "54c3928bd58ea07eec2b82b6f3075df85f9bc5846f737feee5e497dcf96df26097258b30447df4627f97fcd4100fa86f7dbe9dd4a753da29939d34c9afae013f"
    },
    "data": {
        "eid": "12345",
        "mm3servicesid": "12345",
        "mexcModulesid": "12345",
        "secret": "abcdefghijklmnopqrstuvxyz1234567890",
        "hashtype": "invoice",
        "language": "sv"
    }
}