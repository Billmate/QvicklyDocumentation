# :orderRef

<include from="Snippets-AuthAPI.md" element-id="snippet-header" />


## GET /bankidV6/:orderRef

{type="narrow"}
Endpoint
: ```/bankidV6/:orderRef```

Method
: GET

Verify the BankID authentication.

## Request collect

| Parameter  | Required | Type   | Description          |
|------------|----------|--------|----------------------|
| orderRef   | yes      | string | The order reference  |

## Response collect

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
```

## DELETE /bankidV6/:orderRef

{type="narrow"}
Method
: DELETE

Cancel the current BankID authentication.

### Request cancel

| Parameter  | Required | Type   | Description         |
|------------|----------|--------|---------------------|
| orderRef   | yes      | string | The order reference |

### Response cancel

```json
{
    "orderRef": "1c644915-a30d-4b4c-8429-5bdbe0d24de5",
    "status": "deleted"
}
```

For an example see [here](Auth-Example-bankidLogin.md)
