# Get API Credentials

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "57d2dfa80914e9668d91862836e893249fba62bfaa4ca603c84ffdc903a0e66c8b1aa44060fd586a47b98b1877a071e00fb817d872508c5b5a2ac8e5bbad50fa",
        "version": "%API_VERSION%",
        "client": "%CLIENT_NAME%",
        "language": "sv",
        "time": 1714944786.554058
    },
    "data": {
        "hash": "123456abc123456abc123456abc12345",
        "eid": "23456"
    },
    "function": "getAPICredentials"
}
]]>
</code-block>
    </tab>

<tab title="%code-node%">
<code-block lang="javascript">
<![CDATA[
import { QvicklyPaymentAPI } from "../../PaymentAPI.js";

const paymentAPI = new QvicklyPaymentAPI(process.env.EID, process.env.SECRET);
const credentials = await paymentAPI.call("getAPICredentials", {
    hash: "123456abc123456abc123456abc12345",
    eid: "23456",
});
console.log(credentials);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/getAPICredentials.js)

</tab>

<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const credentials = await paymentAPI.call("getAPICredentials", {
    hash: "123456abc123456abc123456abc12345",
    eid: "23456",
});
console.log(credentials);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/getAPICredentials.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const credentials = await paymentAPI.call("getAPICredentials", {
    hash: "123456abc123456abc123456abc12345",
    eid: "23456",
});
console.log(credentials);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/getAPICredentials.ts)

</tab>

  <tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
credentials = api.call(function="getAPICredentials", data={"hash":"123456abc123456abc123456abc12345", "eid": "23456"})
print(json.dumps(credentials, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/getAPICredentials.py)

  </tab>
</tabs>

## Response from server
For information about the response from the server, please contact Qvickly Support.

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>