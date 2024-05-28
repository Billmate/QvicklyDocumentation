# Callbacks and links

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

There are two types of links that can be defined in the PaymentData part of the payload.
This can be done with addPayment, updatePayment, initCheckout and updateCheckout.

Two of these links, `accepturl` and `cancelurl`, are used for the customer to be redirected to after the payment is completed or cancelled.

The other, `callbackurl`, is used for Qvickly to send information about the payment to the merchant.

## Method for sending URLs
The method for sending `accepturl` and `cancelurl` can be defined by setting `returnmethod` to either `GET` or `POST`. If no value is defined for `returnmethod`, the default value is `GET`. Both `accepturl` and `cancelurl` will use the same method defined in `returnmethod`.

The method for sending `callbackurl` is always `POST`.