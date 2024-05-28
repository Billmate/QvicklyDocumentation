# Get account info

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

<tabs>
    <tab title="%code-json%">
<code-block lang="JSON">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "3601ec7c5b97fafc35ed8084e3e299710a8aa8bcb44fa6669909482b39ccad486ee05e43f5e5ecbafed7e783421e5c9cdb455aeed7fe16facf212ae9871780e0",
        "version": "%API_VERSION%",
        "client": "%CLIENT_NAME%",
        "language": "sv",
        "time": 1714838585.980936
    },
    "data": {
        "dummyData": 1714838585980861000
    },
    "function": "getAccountinfo"
}
]]>
</code-block>
    </tab>

  <tab title="%code-phplegacy%">
<code-block lang="PHP">
<![CDATA[
<?php
$test = true;
$ssl = true;
$debug = false;

/* Credentials for Auth */

$id = "%MERCHANT_ID%";
$key = "%MERCHANT_KEY%";
define("QVICKLY_SERVER", "%API_VERSION%"); // API version
define("QVICKLY_CLIENT", "%CLIENT_NAME%");
define("QVICKLY_LANGUAGE", "sv");
$bm = new BillMate($id, $key, $ssl, $test, $debug);
$values = array();

$bm->getAccountinfo($values);
]]>
</code-block>
  </tab>
  <tab title="%code-csharp%">
<code-block lang="c#">
<![CDATA[
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BillmateAPI;

namespace GetAccountInfo
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                Boolean ssl = false;
                Dictionary referrer = new Dictionary();
                referrer["HTTP_X_REAL_IP"] = "127.0.0.1";
                Billmate bm = new Billmate("%MERCHANT_ID%", "%MERCHANT_KEY%",ssl,true,false,referrer);
                bm.Client = "%CLIENT_NAME%";
                bm.Server = "%API_VERSION%";
                bm.Language = "sv";
                Dictionary<string, object> parameters = new Dictionary<string, object>();
                Dictionary<string, object> result = bm.Call("getAccountinfo", parameters);
                // Output it in Console
                result.ToList().ForEach(x => Console.WriteLine(x.Key + ":" + x.Value));

            }
            catch (BillmateException be) {
                Console.WriteLine(be.ErrorMessage);
                Console.WriteLine(be.ErrorLogs);
            }

            Console.ReadLine();
        }
    }
}
]]>
</code-block>
  </tab>
<tab title="%code-node%">
<code-block lang="JavaScript">
<![CDATA[
import { QvicklyPaymentAPI } from "../../PaymentAPI.js";

const paymentAPI = new QvicklyPaymentAPI(process.env.EID, process.env.SECRET);
const account = await paymentAPI.call("getAccountInfo");
console.log(account);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/getAccountInfo.js)

</tab>

<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const account = await paymentAPI.call("getAccountInfo");
console.log(account);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/getAccountInfo.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const account = await paymentAPI.call("getAccountInfo");
console.log(account);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/getAccountInfo.ts)

</tab>

  <tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
account = api.call(function="getAccountinfo")
print(json.dumps(account, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/getAccountInfo.py)

  </tab>
</tabs>

## Response from server
<code-block lang="JSON">
{
    "credentials": {
        "hash": "3f8b36d6daa225bfa4a714335730f045f81f1b5111a1ed272164a99c56f15e295bca643912ac30b2920a14e53ee6134f0aa616c0ebcd8eab596264a1ff0f080e",
        "logid": "1234567"
    },
    "data": {
        "company": "Qvickly Test",
        "address": "Testvägen 1",
        "zip": "123 45",
        "city": "Testinge",
        "country": "Sweden",
        "phone": "0123-456 78",
        "email": "test@example.com",
        "orgregnr": "555555-5555",
        "vatregnr": "SE555555555501",
        "language": "sv",
        "paymentoptions": [
            {
                "method": "1",
                "currency": "SEK,DKK,NOK,GBP,EUR,USD",
                "language": "sv,da,no,en"
            },
            {
                "method": "2",
                "currency": "SEK,DKK,NOK,GBP,EUR,USD",
                "language": "sv,da,no,en"
            },
            {
                "method": "4",
                "currency": "SEK",
                "language": "sv,da,no,en"
            },
            {
                "method": "8",
                "currency": "SEK,DKK,NOK,GBP,EUR,USD",
                "language": "sv,da,no,en"
            }
        ],
        "defaultpaymentterms_company": "20",
        "defaultpaymentterms_private": "5",
        "checkout": "1",
        "force2have18years": "0",
        "force2havepno": "0",
        "force2havephonenumber": "1",
        "locknameforshipping": "0",
        "showPf2Fee": "0",
        "parkrightCustomerService": "0",
        "enableparkright": "0",
        "enableTestModeCheckout": "1",
        "allow2When1FailsInCheckout": "1",
        "enableSpecificationInPayLink": "1",
        "continueWithoutPnoInPF2": "0",
        "checkoutAvailableCustomerTypes": [
            "company",
            "person"
        ],
        "logo": "https://example.com/companylogos/logo.png"
    }
}
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>