# Get vat rate

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "e2b7cd4e3e73d940be7c14cb68de7e56316925dc46ce92a9b0a97f7ccbd59b615cf87fcca1140f4fee2818d6a8b51e9c167f1ddb055a602ab47016dfd49a2fb4",
        "version": "%API_VERSION%",
        "client": "%CLIENT_NAME%",
        "language": "sv",
        "time": 1714940849.370662
    },
    "data": {
        "country": "FI"
    },
    "function": "getVatRate"
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
rate = api.call(function="getVatRate", data={"country":"FI"})
print(json.dumps(rate, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/getVatRate.py)

  </tab>
</tabs>

## Response from server
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "hash": "552d8dcff344e07723d138bc14696d1012652d44ff5ac43f0b6d8319ce7f7443c0474423768181c8a648ee385afe8b8bd18af485b5a94c7669a8a6a1617700f4",
        "logid": 1234567
    },
    "data": {
        "result": "24"
    }
}
]]>
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>