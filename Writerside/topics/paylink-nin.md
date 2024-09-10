# nin

<include from="Snippets-PaylinkAPI.md" element-id="snippet-header" />

The `nin` endpoint handles paylinks there the customer information is not yet complete. The user will be sent to the nin page to enter customer information.

{type="narrow"}
Endpoint
: /nin

Method
: GET

Show the NIN (**n**o **in**formation) for the customer to enter customer information and then select payment method for this paylink.


If the paylink has been cancelled, the user will be sent to the [canceled page](paylink-canceled.md).

{type="narrow"}
Method
: GET
