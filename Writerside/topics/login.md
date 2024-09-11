# Login

<include from="Snippets-AuthAPI.md" element-id="snippet-header" />

Login to the AuthAPI to get a JWT token.

{type="narrow"}
Endpoint
: ```/login```

Method
: POST

## Request

| Parameter                 | Required | Type   | Description                   |
|---------------------------|----------|--------|-------------------------------|
| username                  | yes      | string | Username                      |
| password                  | yes      | string | Password                      |
| password_hashed_encrypted | no       | string | Hashed and encrypted password |
| Merchant                  | no       | object | Merchant object               |

### Merchant object

| Parameter | Required | Type | Description |
|-----------|----------|------|-------------|
| id        | yes      | int  | Merchant id |

### Request example

```json
{
    "username": "test",
    "password": "test",
}
```

## Response

| Parameter | Type   | Description |
|-----------|--------|-------------|
| token     | string | JWT token   |

### Response example

```json
{
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0aGlzIjoiaXMiLCJub3QiOiJhIiwicHJvcGVyIjoiSldUIiwidG9rZW4iOiJ0aGF0IiwiY2FuIjoiYmUiLCJ1c2VkIjoiZm9yIiwidGhlIjoiQXV0aEFQSSJ9.GwHMQeIZjg76zweuLLvPeZBKHwOzB3kxdH7ojyxFehk"
}
```

For an example see [here](Auth-Example-Login.md)


