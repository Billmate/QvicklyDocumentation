# Errors

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

| Property | Type   | Description                                                                                                                                       |
|----------|--------|---------------------------------------------------------------------------------------------------------------------------------------------------|
| code     | int    | “Code” is the error code according to table below.                                                                                                |
| message  | string | “Message” is the error message according to table below. The language of the message will be same language as set in your %brand% Online account. |

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