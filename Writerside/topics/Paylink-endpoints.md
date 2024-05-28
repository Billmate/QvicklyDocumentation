# Endpoints

<include from="Snippets-PaylinkAPI.md" element-id="snippet-header" />

It all begins with a call to [addPayment](addPayment.md) in the Payment API with method 256. This call will return a link to continue the payment process.

If the paylink is created from within the portal, then either a mail will be sent out with a link to process the payment or a QR code will be displayed for the customer to continue the payment process.

Depending on how much information is available in the paylink, different endpoints will be used to continue the payment process.

The paylink can be initiated both with and without billing information. If the paylink is initiated without billing information, the customer will be asked to enter the billing information in with the [nin](paylink-nin.md) endpoint before the payment can be completed. If the billing information is present then the next step will be either [pay](paylink-pay.md) or [bankid](paylink-bankid.md) depending on the selected or available payment method.