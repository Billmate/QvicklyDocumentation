# content_height

<include from="Snippets-CheckoutAPI.md" element-id="snippet-header" />

Receive from Checkout.

This event is used to send the updated height of the iframe. JSON data includes a integer of the content_height in pixels that should be used when resizing iframe height.

<code-block lang="json">
{
    "event": "content_height",
    "data": 841
}
</code-block>