# Create a paylink

<include from="Snippets-PaylinkAPI.md" element-id="snippet-header" />

## Create a paylink in the portal

## Create a paylink through the API

### Step 1 - Create a paylink

<code-block>
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
        ],
        "PaymentData": {
            "method": 256,
            "currency": "SEK",
            "language": "sv",
            "country": "SE",
            "orderid": "1234567890-a2",
            "bankid": "true",
            "accepturl": "https://example.com/accept",
            "callbackurl": "https://example.com/callback",
            "cancelurl": "https://example.com/cancel"
        }
    }
}
</code-block>

#### Response with paylink
<code-block>
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

### Step 2 - Redirect the customer to the paylink

#### Choose nin or pay?

> nin stands for **n**o **in**formation.

If the customer has all the information needed, the customer should be redirected to the pay page. This is done by adding `/pay` to the URL.

If the customer needs to add more information, the customer should be redirected to the nin page. This is done by adding `/nin` to the URL.

If nothing is added to the URL, the customer will be redirected to a partially filled nin page.

> Please note that if the customer is sent to the pay page and some information is missing, the page might not show properly and the customer can end up in a situation where they can't complete the purchase.
> {style="warning"}

> If a shipping address is added to the paylink and the customer isn't sent to the pay page, the shipping address will be removed from the paylink.
