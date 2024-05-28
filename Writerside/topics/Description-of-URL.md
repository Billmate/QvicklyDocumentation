# Description of URL

<include from="Snippets-PaylinkAPI.md" element-id="snippet-header" />

The URL consists of the following parts:

1. **Protocol**: The protocol is the first part of the URL. It is the method used to access the resource. The only protocol that is used in the URL is `https`.
2. **Domain**: The domain is the second part of the URL. It is the address of the website. The current active address is `pay.qvickly.io`. There are currently no old addresses.
3. **merchantId**: The merchantId is the third part of the URL. It is the unique identifier of the merchant. The merchantId is a numerical string of 3-8 characters. The merchantId is unique for each merchant.
4. **hash**: The hash is the fourth part of the URL. It is the unique identifier of the payment. The hash is a string of up to 255 characters. Currently the normal size is 40 characters. The hash is unique for each payment.
5. **action**: The action is the fifth part of the URL. It is the action that the user wants to perform. The action is a string of 1-20 characters. The action is unique for each action.

Example URL:
```
https://pay.qvickly.io/12345/20240510abcdef0123456789abcdef0123456789/pay
```

## Actions

### address

Enter address information.

More information about the address action can be found in the [address](paylink-address.md) topic.

### nin

**N**o **in**formation is available. Add address information.

More information about the nin action can be found in the [nin](paylink-nin.md) topic.

### pay

Begin payment process.

More information about the pay action can be found in the [pay](paylink-pay.md) topic.

### bankid

Authenticate with BankID.

More information about the bankid action can be found in the [bankid](paylink-bankid.md) topic.

### swish-cancel

Cancel swish payment.

More information about the swish-cancel action can be found in the [swish-cancel](paylink-swish-cancel.md) topic.

### swish-status

Get swish status.

More information about the swish-status action can be found in the [swish-status](paylink-swish-status.md) topic.

### swish-pay

Begin swish payment.

More information about the swish-pay action can be found in the [swish-pay](paylink-swish-pay.md) topic.

### swedbankpay-cancel

Cancel SwedbankPay card payment.

More information about the swedbankpay-cancel action can be found in the [swedbankpay-cancel](paylink-swedbankpay-cancel.md) topic.

### swedbankpay-pay

Begin SwedbankPay card payment.

More information about the swedbankpay-pay action can be found in the [swedbankpay-pay](paylink-swedbankpay-pay.md) topic.

### thankyou

Show thank you page.

More information about the thankyou action can be found in the [thankyou](paylink-thankyou.md) topic.

### canceled

Show canceled page.

More information about the canceled action can be found in the [canceled](paylink-canceled.md) topic.

