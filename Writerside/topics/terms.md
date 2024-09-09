# terms

<include from="Snippets-CheckoutAPI.md" element-id="snippet-header" />

> This is an internal function used by the checkout
{style="warning"}

An example of how to use this function can be found [here](CheckoutAPI-Example-terms.md)

{type="narrow"}
Endpoint
: /public/ajax.php?terms

Method
: POST

## Request

| Property      | Type   | Required | Description                                                                            |
|---------------|--------|----------|----------------------------------------------------------------------------------------|
| hash          | string | Yes      | The hash for the order.                                                                |
| amount        | cent   | No       | The amount for the order.                                                              |
| method        | int    | No       | The payment method for the order.                                                      |
| methodoptions | int    | No       | The payment method options for the order. FOr part payments this is the paymentplanid. |


## Response

The return from this will either be the html text for the terms and conditions or an error message.

The error message will come in the form of a text string.

If the payment method isn't available for the order then the error message will be:
```html
CODE: <b>7030</b>
<br/>
MESSAGE: <b>Betalmetoden existerar ej, var vänlig kontrollera anropet.</b>
```
