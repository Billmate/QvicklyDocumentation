# Callback URL

<include from="Snippets-CheckoutAPI.md" element-id="snippet-header" />

URL to which callback data is sent after the customer has successfully completed a payment. This is the only guaranteed request from Qvickly Checkout regarding competed orders. Data returned is same as initCheckout and for accepturl.

Callback is made at the same time as accepturl, thus it can’t be assumed that callback data will arrive before accepturl data.

No response is required for a callback request, the data just has to be received successfully with an appropriate http status code. If the callback failed:

Qvickly will try to send the callback again once a minute the first 10 minutes, once an hour the first 10 hours, once a day the first 7 days, then finally once a month for the next 3 months.