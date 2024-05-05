# Get invoice by hash

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "dad42b0d0bb4c4b0721888e8d4eeeb78d825735387e930fc984828d1a5e362b4a9c271c4db3ca652e72321e99a05f2fbe7e72c722f23678578f51e9b12e3c682",
        "version": "%API_VERSION%",
        "client": "%CLIENT_NAME%",
        "language": "sv",
        "time": 1714943086.2860212
    },
    "data": {
        "hash": "123456abc123456abc123456abc12345"
    },
    "function": "getInvoiceByHash"
}
]]>
</code-block>
    </tab>

<tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
invoice = api.call(function="getInvoiceByHash", data={"hash":"123456abc123456abc123456abc12345"})
print(json.dumps(invoice, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/getInvoiceByHash.py)

</tab>

</tabs>

## Response from server
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "hash": "20510ee95dcae3d7b5241c1e53cb95b479aa05f07e02d24e18c47aa347201042d70c6f773eaae09661553d99dc52eac26c43830a4b6ff54f038c0971002a13bf",
        "logid": 1234567
    },
    "data": {
        "Articles": [
            {
                "artnr": "woo-long-sleeve-tee",
                "title": "Long Sleeve Tee",
                "quantity": "1",
                "aprice": "2500",
                "discount": "0",
                "withouttax": "2500",
                "taxrate": "0"
            },
            {
                "artnr": "woo-hoodie-blue-logo",
                "title": "Hoodie - blue, Yes",
                "quantity": "1",
                "aprice": "4500",
                "discount": "0",
                "withouttax": "4500",
                "taxrate": "0"
            }
        ],
        "Cart": {
            "Total": {
                "withouttax": "7000",
                "tax": "0",
                "rounding": "0",
                "withtax": "7000"
            },
            "Shipping": {
                "withouttax": "0",
                "taxrate": "0"
            },
            "Handling": {
                "withouttax": "0",
                "taxrate": "0"
            }
        },
        "PaymentData": {
            "method": "1",
            "currency": "SEK",
            "country": "SE",
            "language": "sv",
            "autoactivate": "0",
            "orderid": "12345",
            "status": "Pending",
            "paymentid_related": "",
            "accepturl": "https://example.com/?bco_confirm=yes&bco_flow=checkout_redirect&wc_order_id=null",
            "cancelurl": "https://example.com/checkout/",
            "returnmethod": "",
            "callbackurl": "https://example.com/wc-api/BCO_WC_Push/",
            "alladdresses": "",
            "url": "https://api.billmate.se/invoice/12345/123456abc123456abc123456abc12345",
            "number": "123456"
        },
        "apiClient": "MyBillMate:NodeJS:1.0",
        "Customer": {
            "nr": "",
            "pno": "5501010101",
            "Billing": {
                "firstname": "Tess T",
                "lastname": "Persson",
                "type": "person",
                "street": "Testgatan 1",
                "street2": "",
                "zip": "12345",
                "city": "Testingeby",
                "country": "SE",
                "phone": "0700000000",
                "email": "tess.t.persson@example.com"
            },
            "Shipping": {
                "firstname": "",
                "lastname": "",
                "type": "person",
                "street": "",
                "street2": "",
                "zip": "",
                "city": "",
                "country": "",
                "phone": ""
            },
            "companySigner": {
                "pno": ""
            }
        },
        "PaymentInfo": {
            "paymentdate": "2024-05-01",
            "paymentterms": "5",
            "yourreference": "",
            "ourreference": "",
            "projectname": "",
            "deliverymethod": "",
            "deliveryterms": "",
            "invoiceStatus": "",
            "balancedue": "7000"
        },
        "alladdresses": "1",
        "apiLogsid": "1234567",
        "apiVersion": "2.5.0"
    }
}
]]>
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>