# go_to

<include from="Snippets-CheckoutAPI.md" element-id="snippet-header" />

## Event direction
Received from Checkout.

## Description

This event is used to redirect the user to a URL (app). JSON data includes the URL for the redirection. Expect iframe parent to do the redirection to provided URL.

<code-block lang="json">
{
    "event": "go_to",
    "data": "https://www.qvickly.io/"
}
</code-block>