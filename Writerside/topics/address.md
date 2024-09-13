# address

<include from="Snippets-AuthAPI.md" element-id="snippet-header" />

Get the physical address of the user. This will require the token to contain a Swedish personal number.

{type="narrow"}
Endpoint
: ```/me/address```

Method
: GET

## Request

### Headers

| Header       | Required | Type   | Description |
|--------------|----------|--------|-------------|
| x-auth-token | yes      | string | Auth token  |


## Response

| Parameter | Type   | Description |
|-----------|--------|-------------|
| firstname | string | First name  |
| lastname  | string | Last name   |
| street    | string | Street      |
| zip       | string | Zip code    |
| city      | string | City        |
| country   | string | Country     |
| phone     | string | Phone       |
| email     | string | Email       |
| type      | string | Type        |



```json
{
  "firstname": "Tess T",
  "lastname": "Person",
  "street": "Testvägen 1",
  "zip": "12345",
  "city": "Testinge",
  "country": "SE",
  "phone": "0700000000",
  "email": "tess.t.person@example.com",
  "type": "person"
}

```
For an example see [here](Auth-Example-address.md)

