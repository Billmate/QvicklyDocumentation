# getCityFromZipcode

> This is an internal function used by the checkout
{style="warning"}

{type="narrow"}
Endpoint
: /ajax.php?getCityFromZipcode

Method
: POST

## Request

| Property | Required | Type   | Description |
|----------|----------|--------|-------------|
| zipcode  | true     | string | Zipcode     |
| hash     | true     | string | Orderhash   |
| version  | true     | string | Version     |

```json
{
    "zipcode": "12345",
    "hash": "5456d68e73a1a070b28788b56d1ecc2f597894a4d5e38167eeb3952b2858bcc743bb557ed76783e80cfbdd9e70a477eeac70b895bff2b1ba7856c70e5d999755",
    "version": "1.7.26"
}
```

## Response

| Property | Type   | Description |
|----------|--------|-------------|
| -        | string | City        |

```text
Stockholm
```