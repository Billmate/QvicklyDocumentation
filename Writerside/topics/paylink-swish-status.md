# swish-status

<include from="Snippets-PaylinkAPI.md" element-id="snippet-header" />

> This is an internal endpoint for swish status.
> {style="warning"}

{type="narrow"}
Endpoint
: /swish-status

Method
: GET

### Cancelled paylink
If the paylink has been cancelled, an JSON error message will be returned.

```json
{
  "status":"THIS ORDER IS CANCELLED",
  "payload":{
    "credentials":{
      "hash":"7586363a9fe4adb09db2b074b07f39a63cf64feaf59fb074b07f3c347586363a9fe4adb09db2d31671e721dba347f274264d27ae713e0cfe4490ae2f8958a469"
    },
    "data":{
      "number":12345,
      "orderid":"123456",
      "status":"Cancelled",
      "url":""
    }
  }
}
```