# collect/:orderRef

<include from="Snippets-AuthAPI.md" element-id="snippet-header" />


## GET /bankidV6/sign/collect/:orderRef

{type="narrow"}
Endpoint
: ```/bankidV6/sign/collect/:orderRef```

Method
: GET

Collect the signature from the sign with BankID.

## Request sign

### Headers

| Header          | Required | Type   | Description |
|-----------------|----------|--------|-------------|
| x-auth-token    | yes      | string | JWT token   |

### Query parameters

| Parameter | Required | Type   | Description                |
|-----------|----------|--------|----------------------------|
| orderRef  | yes      | string | The orderRef from the sign |


## Response sign

| Parameter  | Type   | Description                       |
|------------|--------|-----------------------------------|
| orderRef   | string | The order reference               |
| status     | string | The status of the authentication  |
| token      | string | The token of the authentication   |

```json
{
  "orderRef": "1c644915-a30d-4b4c-8429-5bdbe0d24de5",
  "status": "complete",
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0aGlzIjoiaXMiLCJub3QiOiJhIiwicHJvcGVyIjoiSldUIiwidG9rZW4iOiJ0aGF0IiwiY2FuIjoiYmUiLCJ1c2VkIjoiZm9yIiwidGhlIjoiQXV0aEFQSSJ9.GwHMQeIZjg76zweuLLvPeZBKHwOzB3kxdH7ojyxFehk"
}
```


For an example see [here](Auth-Example-bankidSign.md)
