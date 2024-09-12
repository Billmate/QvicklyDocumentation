# getBankIdKeyFromAuthToken

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>


getBankIdKeyFromAuthToken is used to fetch the bankidKey from an auth token.

*An example can be found [here](Get-BankIdKey-From-AuthToken.md)*

## Request

### Data

| Property | Required | Type   | Description                            |
|----------|----------|--------|----------------------------------------|
| token    | true     | string | Auth token                             |
| hash     | true     | string | The hash for the a order or an invoice |


### Function

| Property | Required | Type   | Description                                                                 |
|----------|----------|--------|-----------------------------------------------------------------------------|
| function | true     | string | The function name to be used, for this page it’s getBankIdKeyFromAuthToken  |

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
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c",
    "hash": "6136d5ef469f8089890e908b890890a765436f4e3d"
  },
  "function": "getBankIdKeyFromAuthToken"
}
```

## Response

| Property      | Type   | Description                    |
|---------------|--------|--------------------------------|
| bankidKey     | string | The bankIdKey for this payment |

<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "hash": "fbbd7c1edf87cd38d689ea694c94bc0d54cc227152f025b3cb4327b0eb4899850ec4ee7cc7058c8cc93917db114814e3e187fb7a054d5ab465c48ec7de18cb7b",
        "logid": 1234567
    },
    "data": {
        "bankidKey": "abcdefghijklmnopqrstuvxyz1234567890"
    }
}
]]>
</code-block>