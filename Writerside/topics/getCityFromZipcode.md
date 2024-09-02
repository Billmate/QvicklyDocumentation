# getCityFromZipcode

<include from="Snippets-CheckoutAPI.md" element-id="snippet-header" />

> This is an internal function used by the checkout
> {style="warning"}

> Please note that this function does not do any external lookups which means that it can return an empty string for valid zipcodes.
> {style="warning"}

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

```json
{
    "zipcode": "12345",
    "hash": "5456d68e73a1a070b28788b56d1ecc2f597894a4d5e38167eeb3952b2858bcc743bb557ed76783e80cfbdd9e70a477eeac70b895bff2b1ba7856c70e5d999755"
}
```

## Response

| Property | Type   | Description |
|----------|--------|-------------|
| -        | string | City        |

```text
Stockholm
```

