# updatePaymentMethod

<include from="Snippets-CheckoutAPI.md" element-id="snippet-header" />

> This is an internal function used by the checkout
{style="warning"}

An example of how to use this function can be found [here](CheckoutAPI-Example-updatePayemntMethod.md)

{type="narrow"}
Endpoint
: /public/ajax.php?updatePaymentMethod

Method
: POST

## Request

| Property | Type   | Description                               |
|----------|--------|-------------------------------------------|
| hash     | string | The hash for the order.                   |
| method   | string | The payment method used for the purchase. |

## Repsonse

| Property | Type   | Description                           |
|----------|--------|---------------------------------------|
| number   | string | The payments number                   |
| orderid  | string | The orderid supplied in the payload   |
| status   | object | The current status of the checkout    |
| url      | string | The url for this checkout             |
| pno      | string | The personal number for the customer. |

```json
{
    "number": "1234567",
    "orderid": "OrderID-1234567",
    "status": "Step2Loaded",
    "url": "https:\/\/checkout.billmate.se\/%MERCHANT_ID%\/20240602123456789123456789",
    "pno": "%EXAMPLE_PNO%"
}
```