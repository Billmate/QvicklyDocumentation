# Create a paylink

<include from="Snippets-PaylinkAPI.md" element-id="snippet-header" />


<code-block>
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "ece9e930c57be0c24ffa0d2a5425569d45a9af0202b752a54a2392d57cb1e18ca1ae5049c2f526a10607bbdade373991ce392fe350abfdd16b0bbb10b6ec74d1",
        "version": "%API_VERSION%",
        "client": "%CLIENT_NAME%",
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
                "email": "test@example.com"
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

<code-block>
{
    "credentials": {
        "hash": "1d47ce6b01bbb0b61ddfba053ef293ec199373edadbb70601a625f2c9405ea1ac81e1bc75d2932a45a257b2020fa9a54d9655245a2d0aff42c0eb75c039e9ece",
        "logid": "568803"
    },
    "data": {
        "number": "123456",
        "status": "WaitingForBankIDIdentification",
        "orderid": "1234567890-a2",
        "url": "https://api.development.qvickly.io/bankid/12345/202401010d281c6dad5090a05548e3483c503aa5"
    }
}
</code-block>