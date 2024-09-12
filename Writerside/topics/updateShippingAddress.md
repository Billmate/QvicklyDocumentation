# updateShippingAddress

<include from="Snippets-CheckoutAPI.md" element-id="snippet-header" />

> This is an internal function used by the checkout
{style="warning"}

An example of how to use this function can be found [here](CheckoutAPI-Example-updateShippingAddress.md)

{type="narrow"}
Endpoint
: /public/ajax.php?updateShippingAddress

Method
: POST

## Request

| Property  | Type   | Description                         |
|-----------|--------|-------------------------------------|
| firstname | string | The first name of the customer.     |
| lastname  | string | The last name of the customer.      |
| street    | string | The street address of the customer. |
| zip       | string | The zip code of the customer.       |
| city      | string | The city of the customer.           |
| country   | string | The country of the customer.        |
| phone     | string | The phone number of the customer.   |
| email     | string | The email of the customer.          |
| type      | string | The type of the customer.           |

## Response

| Property | Type   | Description                          |
|----------|--------|--------------------------------------|
| number   | int    | Order/invoice number                 |
| orderid  | string | The order-id supplied in the payload |
| url      | string | The URL to use for the client        |
| status   | string | The current status of the payment    |