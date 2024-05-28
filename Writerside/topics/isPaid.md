# isPaid

<include from="Snippets-CheckoutAPI.md" element-id="snippet-header" />

> This is an internal function used by the checkout
{style="warning"}

Check if Checkout order is paid and when paid, return status is_paid with callback data
so checkout can simulate a callback to the store
return by echo JSON string.

{type="narrow"}
Endpoint
: /ajax.php?isPaid

Method
: GET

## Repsonse

| Property               | Type   | Description                                          |
|------------------------|--------|------------------------------------------------------|
| method                 | string | The payment method used for the purchase.            |
| code                   | string | Returns 'is_paid' if successful                      |
| data                   | object | Order data                                           |
| credentials.hash       | string | The hash for the order.                              |
| accepturl.returnmethod | string | The method used for the return. (Either GET or POST) |
| accepturl.url          | string | The complete url used in accessurl.                  |
| accepturl.baseurl      | string | The base url of the accessurl.                       |
| accepturl.params       | object | Parameters for the accessurl.                        |
