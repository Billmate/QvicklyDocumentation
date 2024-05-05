# Crediflow search party

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "37f6956dc2b9182128cd9458992de0382de833bcafb16e8bb2912b33a4e1693d6708bad2513c5f1697738eba9ec26f390f06531784b98593d9735c187b7c020e",
        "version": "%API_VERSION%",
        "client": "%CLIENT_NAME%",
        "language": "sv",
        "time": 1714941716.363403
    },
    "data": {
        "orgnum": "5566779988"
    },
    "function": "crediflowSearchParty"
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
parties = api.call(function="crediflowSearchParty", data={"orgnum":"5566779988"})
print(json.dumps(parties, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/crediflowSearchParty.py)

  </tab>
</tabs>

## Response from server
For information about the response from the server, please contact Qvickly Support.


<include from="Snippets-Examples.md" element-id="snippet-footer"></include>