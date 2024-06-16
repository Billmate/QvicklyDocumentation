# Root (/)

<include from="Snippets-PaylinkAPI.md" element-id="snippet-header" />

## GET

### Cancelled paylink
If the paylink has been cancelled, the user will be sent to the [canceled page](paylink-canceled.md).

### Already paid
If the paylink has already been paid, the user will be sent to the [thank you page](paylink-thankyou.md).

### Address not complete
If the address is not complete, the user will be sent to the [nin page](paylink-nin.md).

### Address complete
If the address is complete, the user will be sent to the [pay page](paylink-pay.md).