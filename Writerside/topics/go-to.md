# go_to

Receive from Checkout.

This event is used to redirect the user to a URL (app). JSON data includes the URL for the redirection. Expect iframe parent to do the redirection to provided URL.

<code-block lang="json">
{
    "event": "go_to",
    "data": "https://www.qvickly.io/"
}
</code-block>