# pay

<include from="Snippets-PaylinkAPI.md" element-id="snippet-header" />

THe `pay` endpoint will let the user select the payment method for the paylink and finalize the payment.

{type="narrow"}
Endpoint
: /pay

Method
: GET

Shows a form where the customer can select payment method for this paylink.

> Note that if the customer is sent to the `pay` endpoint without complete information, then the customer will end up on a page that can't be edited.
> {style="warning"}

If the paylink has been cancelled, the user will be sent to the [canceled page](paylink-canceled.md).

{type="narrow"}
Method
: POST
