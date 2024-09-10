# address

<include from="Snippets-PaylinkAPI.md" element-id="snippet-header" />

> This is an internal endpoint for address handling in paylinks.
> {style="warning"}

{type="narrow"}
Endpoint
: /

Method
: GET

This endpoint will display the address of the customer for this paylink.

If the query parameter `edit` is set to "1" then the address will be editable.

Please note that this endpoint is only available for internal use. Trying to access it directly might cause unexpected behavior.

If the paylink has been cancelled, the user will be sent to the [canceled page](paylink-canceled.md).

{type="narrow"}
Method
: POST


