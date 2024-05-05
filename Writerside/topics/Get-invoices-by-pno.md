# Get invoices by pno

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "6f64652a1bfc9cef299d1a8d76e10636716cae33ff49998b413f9513968ea86e56a0974535c434bfa26b1a6c9563b93f45e3951a0215e949b1c2c430e9ca790b",
        "version": "%API_VERSION%",
        "client": "%CLIENT_NAME%",
        "language": "sv",
        "time": 1714933179.069521
    },
    "data": {
        "pno": "0000000000",
        "status": "Sent,Paid"
    },
    "function": "getInvoicesByPno"
}
]]>
</code-block>
    </tab>

  <tab title="%code-phplegacy%">
<code-block lang="PHP">
<![CDATA[
// Work in progress
]]>
</code-block>
  </tab>
  <tab title="%code-php%">
<code-block lang="PHP">
<![CDATA[
// Work in progress
]]>
</code-block>
  </tab>
  <tab title="%code-csharp%">
<code-block lang="c#">
<![CDATA[
// Work in progress
]]>
</code-block>
  </tab>
  <tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
invoices = api.call(function="getInvoicesByPno", data={"pno":"0000000000", "status":"Sent,Paid"})
print(json.dumps(invoices, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/getInvoicesByPno.py)

  </tab>
</tabs>

## Response from server
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "hash": "37790e896e2f78c58cbc7da6bafee4fd987ed1f02a72a5bc5faf79632276291ed34555d1d2d9d8b3858e1d39905efdc8b3148545
dac654a11c2f0d05ff2ae1e5",
        "logid": 1234567
    },
    "data": [
        {
            "status": "Cancelled",
            "name": "Whazzup",
            "invoicedate": "2024-04-19",
            "duedate": "2024-05-03",
            "topay": "0.00",
            "invoiceid_real": "12345",
            "fileurl": "http://www.combain.com/mexc/customerinvoices/2024089017233469726180c4f1b6bce.pdf",
            "balancedue": "0.00",
            "invoicetype": "F",
            "distributor_status": "Cancelled",
            "creditinvoiceid": "",
            "hash": "2024089017233469726180c4f1b6bce",
            "mm3servicesid": "123456",
            "mexcModulesid": "543210",
            "mexcCustomerinvoicesid": "1234567"
        }
    ]
}
]]>
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>