# Create a paylink

<include from="Snippets-PaylinkAPI.md" element-id="snippet-header" />

## Create a paylink in the portal
![PortalNewPaylink.png](PortalNewPaylink.png)

In the upper right corner, click on the **New paylink** (**Skapa betallänk**) button.

![PortalCreatePaylink.png](PortalCreatePaylink.png)

Select the method you want to use for the paylink. In this example, we use **QR Code**.

Using **E-mail** will send the paylink to the customer's e-mail address.

Using **QR Code** will generate a QR code that the customer can scan immediately.

![PortalQRCodePaylink.png](PortalQRCodePaylink.png)

In the next step here you may change for how long the paylink is valid, the currency and the language.

![PortalPaylinkWithoutCustomer.png](PortalPaylinkWithoutCustomer.png)

The next step is about what kind of customer information you want to include in the paylink. We can select **private person**, **company** or **no information** (**Utan kunduppgifter**) and just let the customer add the information themselves.

In this example we choose **no information** (**Utan kunduppgifter**).

![PortalArticlesInPaylink.png](PortalArticlesInPaylink.png)

In the next step, you can add articles to the paylink. In this example, we add one article from the register. But we can also add new articles if needed.

![PortalPaylinkSummary.png](PortalPaylinkSummary.png)

Now we can see a summary of the paylink. If everything looks good, click on the **Generate QR Code** (**Generera QR-kod**) button.

![PortalPaylinkQRCode.png](PortalPaylinkQRCode.png)

Now we have reached the end of the first part where we let the customer scan the QR code. The customer will be redirected to the `nin` page where can add their information and complete the purchase.


## Create a paylink through the API

### Step 1 - Create a paylink

<tabs>

<tab title="With customer information">
<code-block lang="json">
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "ece9e930c57be0c24ffa0d2a5425569d45a9af0202b752a54a2392d57cb1e18ca1ae5049c2f526a10607bbdade373991ce392fe350abfdd16b0bbb10b6ec74d1",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
        "language": "sv",
        "test": "false"
    },
    "function": "addPayment",
    "data": {
        "PaymentData": {
            "method": "256",
            "currency": "SEK",
            "language": "sv",
            "country": "SE",
            "orderid": "1234567890-a1",
            "bankid": "true",
            "autocancel": "2880",
            "accepturl": "https://example.com/accept",
            "cancelurl": "https://example.com/cancel",
            "callbackurl": "https://example.com/callback"
        },
        "Customer": {
            "pno": "19550101-1018",
            "Billing": {
                "firstname": "Testperson",
                "lastname": "Approved",
                "street": "Testgatan 1",
                "zip": "12345",
                "city": "Teststad",
                "country": "SE",
                "email": "test@example.com",
                "phone": "0700000000"
            },
            "Shipping": {
                "firstname": "Testperson ",
                "lastname": "Approved",
                "street": "Testgatan 1",
                "zip": "12345",
                "city": "Teststad",
                "country": "SE",
            }
        },
        "Cart": {
            "Total": {
                "withouttax": 20000,
                "tax": 5000,
                "rounding": 0,
                "withtax": 25000
            }
        },
        "Articles": [
            {
                "artnr": "123456789",
                "title": "Testprodukt",
                "quantity": 1,
                "aprice": 10000,
                "taxrate": 25,
                "withouttax": 10000
            },
            {
                "artnr": "123456790",
                "title": "Testprodukt 2",
                "quantity": 1,
                "aprice": 10000,
                "taxrate": 25,
                "withouttax": 10000
            }
        ]
    }
}
</code-block>

[Here](Create-paylink-with-all-information.md) is an example of how to create a paylink with customer information.

</tab>
<tab title="Without customer information">
<code-block lang="json">
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "ece9e930c57be0c24ffa0d2a5425569d45a9af0202b752a54a2392d57cb1e18ca1ae5049c2f526a10607bbdade373991ce392fe350abfdd16b0bbb10b6ec74d1",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
        "language": "sv",
        "test": "false"
    },
    "function": "addPayment",
    "data": {
        "PaymentData": {
            "method": "256",
            "currency": "SEK",
            "language": "sv",
            "country": "SE",
            "orderid": "1234567890-a2",
            "bankid": "true",
            "autocancel": "2880",
            "returnmethod": "POST",
            "accepturl": "https://example.com/accept",
            "cancelurl": "https://example.com/cancel",
            "callbackurl": "https://example.com/callback",
        },
        "Customer": {
            "dummy": "true",
        },
        "Articles": [
            {
                "artnr": "1",
                "title": "Test",
                "aprice": "10000",
                "taxrate": "25",
                "quantity": "1",
                "withouttax": "10000",
            }
        ],
        "Cart": {
            "Total": {
                "withouttax": "10000",
                "tax": "2500",
                "withtax": "12500",
            },
        },            
    },
}
</code-block>

[Here](Create-paylink-without-personal-information.md) is an example of how to create a paylink with customer information.

</tab>
</tabs>

#### Method 256

The `method` parameter is set to 256 which means that the payment method will ba a paylink.

#### Autocancel

The `autocancel` parameter is the number of minutes before the paylink is automatically cancelled. Normally the default value is 2880 minutes (48 hours) but since we more or less just create a payment we have to set the value ourselves.

### Response with paylink
<code-block lang="json">
{
   {
    "credentials": {
        "hash": "fd7584f217a48dd101006bd85f3660f4e04ef72604838c3efd54b3b1af75317c8e519995a12ef5b279bf26cb23414b2df287db8f9b5e21b7b15d10187e6fb7c3",
        "logid": "1890112"
    },
    "data": {
        "number": "4003376",
        "status": "WaitingForPurchase",
        "orderid": "123456",
        "url": "https://pay.billmate.se/12345/202406141a2de7bd612a5665067236b8e0262fd9"
    }
}
</code-block>

When we've received the response we can use the `url` to redirect the customer to the paylink. More on how to redirect the customer in the next step.

### Step 2 - Redirect the customer to the paylink

#### Choose nin, pay or nothing?

> nin stands for **n**o **in**formation.

If the customer has all the information needed, the customer should be redirected to the pay page. This is done by adding `/pay` to the URL.

If the customer needs to add more information, the customer should be redirected to the nin page. This is done by adding `/nin` to the URL.

If nothing is added to the URL, the system will check the address and if it is complete the customer will be redirected to the pay page, otherwise the customer will be redirected to the nin page.

> Please note that if the customer is sent to the pay page and some information is missing, the page might not show properly and the customer can end up in a situation where they can't complete the purchase.
> {style="warning"}

> If a shipping address is added to the paylink and the customer isn't sent to the pay page, the shipping address will be removed from the paylink.

## Use another personal number for identification than the one in the paylink

If you have created a paylink with a specified personal number and the customer tries to use another personal number for identification, then the BankID app will show an error message.

![BankID error message](BankIDCantUseForIdentification.png)