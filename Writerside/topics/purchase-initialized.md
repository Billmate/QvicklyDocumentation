# purchase_initialized

<include from="Snippets-CheckoutAPI.md" element-id="snippet-header" />

Sends an event when a purchase have been initialized, which is when an end user clicks on the "Purchase button". To activate this option there is a need to add the following GET parameter &activateJsEvents=1 to the Checkout url.

This will then add a login screen which is present until the event purchase_complete have been called then the purchase flow continues to the next step.