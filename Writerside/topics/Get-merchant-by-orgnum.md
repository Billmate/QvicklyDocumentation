# Get merchant by orgnum

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "f2ceb889f19943787e99b20bff5ada977b6a4c0ba7fe4e37a2f2fed75030ca173ae1e3f2ef0c3206c271b6b46d917efa9d7243b18ae93da45b12dd0edf70f168",
        "version": "%API_VERSION%",
        "client": "%CLIENT_NAME%",
        "language": "sv",
        "time": 1714932700.2624588
    },
    "data": {
        "orgnum": "5555555555"
    },
    "function": "getMerchantByOrgnum"
}
]]>
</code-block>
    </tab>

<tab title="%code-node%">
<code-block lang="javascript">
<![CDATA[
import { QvicklyPaymentAPI } from "../../PaymentAPI.js";

const paymentAPI = new QvicklyPaymentAPI(process.env.EID, process.env.SECRET);
const merchant = await paymentAPI.call("getMerchantByOrgnum", {
    orgnum: "5555555555",
});
console.log(merchant);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/getMerchantByOrgnum.js)

</tab>

<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const merchant = await paymentAPI.call("getMerchantByOrgnum", {
    orgnum: "5555555555",
});
console.log(merchant);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/getMerchantByOrgnum.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const merchant = await paymentAPI.call("getMerchantByOrgnum", {
    orgnum: "5555555555",
});
console.log(merchant);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/getMerchantByOrgnum.ts)

</tab>

  <tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
merchant = api.call(function="getMerchantByOrgnum", data={"orgnum":"5555555555"})
print(json.dumps(merchant, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/getMerchantByOrgnum.py)

  </tab>
</tabs>

## Response from server
For information about the response from the server, please contact Qvickly Support.

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>