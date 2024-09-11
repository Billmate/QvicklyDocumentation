# token

<include from="Snippets-AuthAPI.md" element-id="snippet-header" />

Internal login function for getting a JWT token.

{type="narrow"}
Endpoint
: ```/login/token```

Method
: POST

## Request

### Headers

| Header       | Required | Type   | Description    |
|--------------|----------|--------|----------------|
| x-auth-token | yes      | string | Security token |

### Parameters

| Parameter       | Required | Type   | Description                              |
|-----------------|----------|--------|------------------------------------------|
| time            | yes      | int    | Timestamp used for creating x-auth-token |
| username        | yes      | string | Username                                 |
| password_hashed | yes      | string | Hashed password                          |

### Request example

```json
{
    "time": 1631533200,
    "username": "test",
    "password_hashed": "142567cdfe3678942de90ba8e9142567cdfe3678"
}
```

## Response

| Parameter | Type   | Description |
|-----------|--------|-------------|
| token     | string | JWT token   |

```json
{
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0aGlzIjoiaXMiLCJub3QiOiJhIiwicHJvcGVyIjoiSldUIiwidG9rZW4iOiJ0aGF0IiwiY2FuIjoiYmUiLCJ1c2VkIjoiZm9yIiwidGhlIjoiQXV0aEFQSSJ9.GwHMQeIZjg76zweuLLvPeZBKHwOzB3kxdH7ojyxFehk"
}
```

