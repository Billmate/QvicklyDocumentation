# Test

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

There is no separate test account for the PaymentAPI. The test account is the same as the production account. The test account is used for both testing and production but are separated by the `test` parameter in the request and does not interfere with each other.

A payment that is created with the `test` parameter set to `true` will not be processed by the bank. The payment will be created and the response will be the same as if the payment was created with the `test` parameter set to `false`. The payment will be visible in the merchant portal but will not be processed as a production payment.

Some API calls will return a static response when the `test` parameter is set to `true`. This is to make it easier to test the API without having to create a payment. These calls will not go through the same process as a production call and will not be processed.