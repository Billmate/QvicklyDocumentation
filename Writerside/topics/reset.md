# reset

<include from="Snippets-CheckoutAPI.md" element-id="snippet-header" />

> This is an internal function used by the checkout
{style="warning"}

Reset the current session on the server.

An example of how to use this function can be found [here](CheckoutAPI-Example-reset.md)

{type="narrow"}
Endpoint
: ```/{eid}/{hash}/reset```
: ```/{eid}/{hash}/test/reset``` (Test mode)

Method
: GET


## Response

No response will be returned, but the session on the server will be reset.
