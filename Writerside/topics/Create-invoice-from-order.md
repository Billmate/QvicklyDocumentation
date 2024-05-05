# Create invoice from orderhash

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "1a077ea8235dffb8170140e904182cee200e737de9cd9eb0854e8fa001525c2a4eded1f070b22ae56c93f6426fe58149fb5c4d39238e1af5efb51df550c666b4",
        "version": "%API_VERSION%",
        "client": "%CLIENT_NAME%",
        "language": "sv",
        "time": 1714944035.925046
    },
    "data": {
        "hash": "123456abc123456abc123456abc12345",
        "method": "8"
    },
    "function": "createInvoiceFromOrderHash"
}]]>
</code-block>
</tab>
<tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
invoice = api.call(function="createInvoiceFromOrderHash", data={"hash":"123456abc123456abc123456abc12345", "method": "8"})
print(json.dumps(invoice, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/createInvoiceFromOrderHash.py)

</tab>
</tabs>


## Response from server

<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "hash": "fbbd7c1edf87cd38d689ea694c94bc0d54cc227152f025b3cb4327b0eb4899850ec4ee7cc7058c8cc93917db114814e3e187fb7a054d5ab465c48ec7de18cb7b",
        "logid": 1234567
    },
    "data": {
        "number": "12345",
        "status": "Created",
        "orderid": "12345",
        "url": "https://api.billmate.se/invoice/12345/123456abc123456abc123456abc12345",
        "alreadycreated": "1"
    }
}
]]>
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>