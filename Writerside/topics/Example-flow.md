# Example flow

<include from="Snippets-CheckoutAPI.md" element-id="snippet-header" />

Based on the current client implementation of the checkout, the following flow is used. The flow is based on the client (server) making requests to the Qvickly Checkout API and the client (browser) receiving JS events.

<list type="decimal">
  <li>Client (server) makes a initCheckout request</li>
  <li>Qvickly replies with a number and url.
    <list type="alpha-lower">
      <li>Keep track of the url, note that this number is temporary and not the final transaction id.</li>
      <li>URL is the URL to the Checkout window to be passed to the IFRAME.</li>
    </list>
  </li>
  <li>User gets identified using the Checkout.</li>
  <li>Client (browser) receives a JS event with customer data such as address, zip, email and phone number.
    <list type="alpha-lower">
      <li>Now the client can handle the data received and might perform a updateCheckout for example if shipping cost should be updated.
        <list type="decimal">
          <li>Before performing updateCheckout send JS event <code>lock</code> to lock the Checkout.</li>
          <li>updateCheckout - Request</li>
          <li>updateCheckout - Response</li>
          <li>Send update Javascript event. Note that there is no unlock event required to be sent after the update JS event. The Checkout handles this by itself.</li>
        </list>
      </li>
    </list>
  </li>
  <li>User change shipping method, articles or any other order information on the hosting iframe hosting system. Client should perform the same events as in 4.a if you need to update the Checkout.</li>
  <li>User selects a different shipping address. Hosting system should perform the same events as in 4.a if you need to update the Checkout.</li>
  <li>User confirms order, third party application might be needed to confirm the order. Checkout sends JS event to client (browser) to open a specific url (app). Example: BankID or Swish. Note: If user is redirected to a third-party app or website and cancels the order they could be redirected to the provided cancelURL.</li>
  <li>Order is confirmed
    <list type="alpha-lower">
      <li>Accepturl User is redirected to the provided acceptURL using the requested return method. Client should perform necessary actions to fulfill the order.</li>
      <li>CallbackClient (server) receives a request from Qvickly Checkout API with the order status. Client should perform necessary actions to fulfill the order.</li>
    </list>
  </li>
</list>

> Important notes regarding order is confirmed.
> 
> Best practice is to perform a getPaymentinfo to validate the order with Billmate API. There is no guarantee that the user will reach the accepturl. Callback could in theory reach the client before the user gets redirected to the accepturl.

## Role definitions
**Client** The complete system who integrates Qvickly Checkout.

**Client (server)** Back-end who communicates with the Qvickly Checkout API.

**Client (browser)** The clients browser (front-end). Will perform and receive JS events.

**User** The end-user who is making a purchase in Qvickly Checkout.