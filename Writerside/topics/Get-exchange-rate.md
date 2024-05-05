# Get exchange rate

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "3fe247645db7d6f4fa05bf736c774b7eb42384983490f1257d20a904f3c7beed440a0f234437b9dc701cad4b88c81d62a90de54183aa6b3c44c95424f04a98a4",
        "version": "%API_VERSION%",
        "client": "%CLIENT_NAME%",
        "language": "sv",
        "time": 1714940371.323135
    },
    "data": {
        "currency": "USD",
        "date": "2024-04-30"
    },
    "function": "getExchangeRate"
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
rate = api.call(function="getExchangeRate", data={"currency":"USD","date":"2024-04-30"})
print(json.dumps(rate, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/getExchangeRate.py)

  </tab>
</tabs>

## Response from server
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "hash": "669957e56ddc7394073c8f6df887e17411d7f9fe1000f04fc519b1ebebefa03c43a89d1d99d9e47bb9da2688d55af1338d7a06c6bab8b143393f0c7ced459a14",
        "logid": 1234567
    },
    "data": {
        "rate": "10.9657",
        "result": "0",
        "date": "2024-04-30"
    }
}
]]>
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>