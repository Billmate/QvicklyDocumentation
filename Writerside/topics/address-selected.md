# address_selected

<include from="Snippets-CheckoutAPI.md" element-id="snippet-header" />

## Event direction
Received from Checkout.

## Description

For keeping track on which address that are selected.

<code-block lang="json">
{
    "Customer": {
        "Billing": {
            "firstname": "Testperson",
            "lastname": "Approved",
            "street": "Teststreet",
            "zip": "12345",
            "city": "Testcity",
            "country": "SE",
            "phone": "0700123456",
            "email": "test@teststore.com",
            "type": "person"
        },
        "Shipping": {
            "firstname": "Shippingperson",
            "lastname": "Otheradress",
            "street": "Teststreet",
            "zip": "56789",
            "city": "Testcity",
            "country": "SE",
            "phone": "0790567123",
            "email": "test@shippingme.com",
            "type": "person"
        }
    }
}
</code-block>