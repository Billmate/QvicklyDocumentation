# validate

<include from="Snippets-CheckoutAPI.md" element-id="snippet-header" />

> This is an internal function used by the checkout
{style="warning"}

The validate function does more or less everything that the [confirm](confirm.md) function does except that there is no invoice created. This is more or less a dry-run of the [confirm](confirm.md) function.

An example of how to use this function can be found [here](CheckoutAPI-Example-validate.md)

{type="narrow"}
Endpoint
: /public/ajax.php?validate

Method
: POST

## Request

| Property    | Required | Type   | Description             |
|-------------|----------|--------|-------------------------|
| hash        | Yes      | string | The hash for the order. |

In addition to the hash, the same parameters as returned from the [get](get.md) function should be used as request parameters.

## Response

| Property | Type   | Description                          |
|----------|--------|--------------------------------------|
| number   | int    | Order/invoice number                 |
| status   | string | The current status of the payment    |
| result   | string | The result of the payment            |
| orderid  | string | The order-id supplied in the payload |
| url      | string | The URL to use for the client        |

Depending on the status and result, the url can be used to redirect the client to the correct page. The status and result can be one of the following:
- status is *WaitingForPurchase* - The client should be redirected to the URL supplied in the response.
- status is *WaitingForSwish* - The client should be redirected to the URL supplied in the response.
- result is *BankID* - The client should be redirected to the URL supplied in the response.