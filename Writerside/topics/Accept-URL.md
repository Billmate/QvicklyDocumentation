# Accept URL

<include from="Snippets-CheckoutAPI.md" element-id="snippet-header" />

User is redirected to provided acceptUrl after completing the payment in Qvickly Checkout including the same data that will be sent to provided callbackurl.

It is important to know that when the user is redirected to the acceptUrl, the payment is not yet completed. It mearly means that the user has completed the actions in Qvickly Checkout. The payment is completed when the server issues a call to the [Callback URL](Callback-URL.md) with a status that confirms the payment.
