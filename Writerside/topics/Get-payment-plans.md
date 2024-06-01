# Get payment plans

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "e7ebd95d701c9a8a16d6ad51457bc4d775d7027682fef2853abcfb0ad918d0ea89b849cf552efa9be08a8e397df9a971e884706455f1673ad556dab2330904f3",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
        "language": "sv",
        "time": 1714839918.5766358
    },
    "data": {
        "PaymentData": {
            "country": "SE",
            "currency": "SEK",
            "language": "sv"
        }
    },
    "function": "getPaymentPlans"
}
]]>
</code-block>
    </tab>

  <tab title="%code-phplegacy%">
<code-block lang="PHP">
<![CDATA[
<?php
include('../PaymentAPI.php');
$test = true;
$debug = false;

/* Credentials for Auth */

$id = "%MERCHANT_ID%";
$key = "%MERCHANT_KEY%";
define("QVICKLY_SERVER", "%PAYMENT_API_VERSION%"); // API version
define("QVICKLY_CLIENT", "%PAYMENT_API_CLIENT_NAME%");
define("QVICKLY_LANGUAGE", "sv");
$api = new PaymentAPI($id, $key, $test, $debug);
$values = array();

/* Payment Data */

/**
* @param array Payment Data : Buyer details.
  */

$values["PaymentData"] = array(
    "currency" => "SEK",
    "language" => "sv",
    "country" => "SE",
    "totalwithtax" => "50000"
);

echo json_encode($api->getPaymentplans($values), JSON_PRETTY_PRINT);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/PHP.Legacy/examples/getPaymentPlans.php)

</tab>



  <tab title="%code-csharp%">
<code-block lang="c#">
<![CDATA[
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BillmateAPI;

namespace GetPaymentPlans
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
                bm.Client = "%PAYMENT_API_CLIENT_NAME%";
                bm.Server = "%PAYMENT_API_VERSION%";
                bm.Language = "sv";
                Dictionary<string, object> parameters = new Dictionary<string, object>();
                parameters["currency"] = "SEK";
                parameters["country"] = "SE";
                parameters["language"] = "sv";
                parameters["totalwithtax"] = "50000";
                Dictionary<string, object> result = bm.Call("getPaymentplans", parameters);
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
<code-block lang="javascript">
<![CDATA[
import { QvicklyPaymentAPI } from "../../PaymentAPI.js";

const paymentAPI = new QvicklyPaymentAPI(process.env.EID, process.env.SECRET);
const plans = await paymentAPI.call("getPaymentPlans", {
    PaymentData: {
        country: "SE",
        currency: "SEK",
        language: "sv",
    },
});
console.log(plans);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/getPaymentPlans.js)

</tab>

<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const plans = await paymentAPI.call("getPaymentPlans", {
    PaymentData: {
        country: "SE",
        currency: "SEK",
        language: "sv",
    },
});
console.log(plans);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/getPaymentPlans.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const plans = await paymentAPI.call("getPaymentPlans", {
    PaymentData: {
        country: "SE",
        currency: "SEK",
        language: "sv",
    },
});
console.log(plans);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/getPaymentPlans.ts)

</tab>


  <tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
plans = api.call(function="getPaymentPlans", data={
    "PaymentData": {
        "country": "SE",
        "currency": "SEK",
        "language": "sv",
    }
})
print(json.dumps(plans, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/getPaymentPlans.py)

  </tab>
</tabs>

## Response from server
<code-block lang="json">
{
    "credentials": {
        "hash": "5e3067894ff7ffef37ec0c728cf8f1382b18bc49412087149b3ea340feb435bc18b298554413fe408c62f942ad4c36aacc685f171b01b76738e2f83e52c1a3a1"
    },
    "data": [
        {
            "paymentplanid": "1",
            "description": "3 månaders delbetalning",
            "nbrofmonths": "3",
            "startfee": "2900",
            "handlingfee": "3500",
            "minamount": "10000",
            "maxamount": "10000000000",
            "country": "SE",
            "type": "1",
            "expirydate": "2025-12-31",
            "interestrate": "12",
            "currency": "SEK",
            "language": "sv",
            "totalfee": "64500",
            "monthlycost": "21500"
        },
        {
            "paymentplanid": "2",
            "description": "6 månaders delbetalning",
            "nbrofmonths": "6",
            "startfee": "17000",
            "handlingfee": "3500",
            "minamount": "20000",
            "maxamount": "10000000000",
            "country": "SE",
            "type": "1",
            "expirydate": "2025-12-31",
            "interestrate": "12",
            "currency": "SEK",
            "language": "sv",
            "totalfee": "90600",
            "monthlycost": "15100"
        },
        {
            "paymentplanid": "3",
            "description": "12 månaders delbetalning",
            "nbrofmonths": "12",
            "startfee": "17000",
            "handlingfee": "3500",
            "minamount": "40000",
            "maxamount": "10000000000",
            "country": "SE",
            "type": "1",
            "expirydate": "2025-12-31",
            "interestrate": "12",
            "currency": "SEK",
            "language": "sv",
            "totalfee": "114000",
            "monthlycost": "9500"
        }
    ]
}
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>