# Request payload

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

The request payload is a JSON object that contains the credentials, data and function to call for the request. The credentials are used to authenticate the request, the data is used to send the actual data for the request and function is used to call the correct function on the server side.

```json
{
  "credentials": {
    "id": "%MERCHANT_ID%",
    "hash": "d12fffb30cc76ebf7ba5c5bc496188cea46c1cf09ebaa4421391f9571bd4df6920223222e87b6bf0dcb7fa8867410851e148f84f9dec6d94b1fddf9f66dc1307",
    "version": "%PAYMENT_API_VERSION%",
    "client": "%PAYMENT_API_CLIENT_NAME%",
    "language": "sv",
    "test": "true"
  },
  "data": {
    "pno": "550101-1018",
    "country": "SE"
  },
  "function": "getAddress"
}
```

## Credentials

| Property   | Required | Type    | Description                                                                                                                                                                                                                                                                        |
|------------|----------|---------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id         | true     | int     | The store ID from Qvickly.                                                                                                                                                                                                                                                         |
| hash       | true     | string  | Hash key using the HMAC method with SHA-512. This is used for verifying that the request is correct and fom a valid server. <br/>Key - Qvickly key.<br/>Argument Data - array as json encoded string.                                                                              |
| version    | false    | string  | Version of the Qvickly API. Latest version is at the time of writing %PAYMENT_API_VERSION%. Please consult technical [support](mailto:%DEVELOPER_MAIL_ADDRESS%) for latest version if you need to use this. Not mandatory, but helps when debugging in logs.                               |
| client     | false    | string  | A unique name to identify client and version of client. Can be set by a plugin developer.                                                                                                                                                                                          |
| language   | true     | string  | This is the language of the api, this will decide what language we will return for example error messages. Language codes used according to ISO 639-1, Currently supported sv, en.                                                                                                 |
| serverdata | false    | string  | Web shop server data. For example user agent of the customer browser. Very useful for debugging.                                                                                                                                                                                   |
| time       | false    | decimal | Time when request was submitted. Time format is “PHP microtime”, which is seconds since the Unix Epoch (00000 January 1, 1970 GMT). If used, then logs will show “client time”, which is the time it takes for the request to reach Qvickly servers. Good for debugging of delays. |
| test       | false    | boolean | If test mode, a real credit check will not be made. Default is false.                                                                                                                                                                                                              |

**key** The secret key from Qvickly. Is being used for generating the hash key.

### Generate hash key
<tabs>
  <tab title="%code-php%">
    <code-block lang="php">
      $hash = hash_hmac('sha512', json_encode($data), $key);
    </code-block>
  </tab>

  <tab title="%code-python%">
    <code-block lang="python">
      dataString = simplejson.dumps(data, separators=(',', ':'))
      dataString = dataString.replace('/', '\\/')
      secret = bytes(secret, 'utf-8')
      hash = hmac.new(secret, dataString.encode(), digestmod=hashlib.sha512).hexdigest()
    </code-block>
    <note>
        Using simplejson to encode the data to a string. Making sure that comma and colons are used and that the forward slash is escaped.
    </note>
  </tab>

</tabs>

## Data
The data in the payload can be different depending on which method is being called. See the documentation for each method for more information.

> **Note:** The data in the payload is mandatory and can NOT be empty. If there is no data to send, send a timestamp or any other undefined property (such as 'dummy').
> {style="warning"}

Read about the different data types and limitations in languages [here](Data-types.md).

## Function
Please see [Functions](Functions.md) for more information about the different functions.





