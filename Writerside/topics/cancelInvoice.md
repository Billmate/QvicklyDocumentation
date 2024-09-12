# cancelInvoice

<include from="Snippets-CheckoutAPI.md" element-id="snippet-header" />

> This is an internal function used by the checkout
{style="warning"}

An example of how to use this function can be found [here](CheckoutAPI-Example-cancelInvoice.md)

{type="narrow"}
Endpoint
: /public/ajax.php?cancelInvoice

Method
: POST

Cancel the ongoing payment

## Request

| Property | Type   | Description |
|----------|--------|-------------|
| hash     | string | Orderhash   |

```json
{
    "hash": "5456d68e73a1a070b28788b56d1ecc2f597894a4d5e38167eeb3952b2858bcc743bb557ed76783e80cfbdd9e70a477eeac70b895bff2b1ba7856c70e5d999755"
}
```

## Response
