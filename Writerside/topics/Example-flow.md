# Example flow

<include from="Snippets-CheckoutAPI.md" element-id="snippet-header" />

* Client (server) makes a initCheckout request
* Qvickly replies with a number and url.
  - Keep track of the url, note that this number is temporary and not the final transaction id.
  - URL is the URL to the Checkout window to be passed to the IFRAME.
* User gets identified using the Checkout.
* Client (browser) receives a JS event with customer data such as address, zip, email and phone number.
  - Now the client can handle the data received and might perform a updateCheckout for example if shipping cost should be updated.
    * Before performing updateCheckout send JS event "lock" to lock the Checkout.
    * updateCheckout - Request
    * updateCheckout - Response
    * Send update Javascript event. Note that no unlock event is required to be sent after the update JS event. The Checkout handles this by itself.
* User change shipping method, articles or any other order information on the hosting iframe hosting system. Client should perform the same events as in 4.a if you need to update the Checkout.
* User selects a different shipping address. Hosting system should perform the same events as in 4.a if you need to update the Checkout.
* User confirms order, third party application might be needed to confirm the order. Checkout sends JS event to client (browser) to open a specific url (app). Example: BankID or Swish. Note: If user is redirected to a third-party app or website and cancels the order they could be redirected to the provided cancelURL.
* Order is confirmed
  - Accepturl User is redirected to the provided acceptURL using the requested return method. Client should perform necessary actions to fulfill the order.
  - CallbackClient (server) receives a request from Qvickly Checkout API with the order status. Client should perform necessary actions to fulfill the order.

> Important notes regarding order is confirmed.
> 
> Best practice is to perform a getPaymentinfo to validate the order with Billmate API. There is no guarantee that the user will reach the accepturl. Callback could in theory reach the client before the user gets redirected to the accepturl.

## Role definitions
**Client** The complete system who integrates Qvickly Checkout.

**Client (server)** Back-end who communicates with the Qvickly Checkout API.

**Client (browser)** The clients browser (front-end). Will perform and receive JS events.

**User** The end-user who is making a purchase in Qvickly Checkout.