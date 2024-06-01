# Get due payments

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "f3061b99a05366a299841cdf5ea7114af9b28042a1fc6435e28be4cff060aa52db1eec54871fed93c1cb1fe25d1f505f197a9cd71f0878c870dfb5e394228f3a",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
        "language": "sv",
        "time": 1714926964.203058
    },
    "data": {
        "dummyData": 1714926964203000000
    },
    "function": "getDuePayments"
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

/* Customer Data */
/**
* @param array Customer Data : Customer details.
  */

$values = array(
    "dueDate" => "2020-01-01"
);

echo json_encode($api->getDuePayments($values), JSON_PRETTY_PRINT);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/PHP.Legacy/examples/getDuePayments.php)

</tab>



  <tab title="%code-csharp%">
<code-block lang="c#">
<![CDATA[
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BillmateAPI;

namespace GetDuePayments
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
                Billmate bm = new Billmate("%MERCHANT_ID%", "%MERCHANT_KEY%", ssl, true, false, referrer);
                bm.Client = "%PAYMENT_API_CLIENT_NAME%";
                bm.Server = "%PAYMENT_API_VERSION%";
                bm.Language = "sv";
                Dictionary<string, object> parameters = new Dictionary<string, object>();
                parameters["dueDate"] = "2020-01-01";
                Dictionary<string, object> result = bm.Call("getDuePayments", parameters);
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
const payments = await paymentAPI.call("getDuePayments", {
    dueDate: "2024-05-01",
});
console.log(payments);

]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/getDuePayments.js)

</tab>

<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const payments = await paymentAPI.call("getDuePayments", {
    dueDate: "2024-05-01",
});
console.log(payments);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/getDuePayments.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const payments = await paymentAPI.call("getDuePayments", {
    dueDate: "2024-05-01",
});
console.log(payments);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/getDuePayments.ts)

</tab>


  <tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
payments = api.call(function="getDuePayments", data={"dueDate":"2024-05-01"})
print(json.dumps(payments, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/getDuePayments.py)

  </tab>
</tabs>

## Response from server
<code-block lang="json">
{
    "credentials": {
        "hash": "edbbb1411422ac0d1cbc5e3a1b8948d01edaa4553ea7a78c1aad823db9f49acbc0b6f9d02769cae8975fe5f44bba13050a5b9c2e19f0f488b9faa7df66029520"
    },
    "data": [
        {
            "number": "4833",
            "orderid": "P123456997",
            "invoiceDate": "2020-01-21",
            "invoiceStatus": "Collection",
            "dueDate": "2020-02-04",
            "topay": "5000"
        },
        {
            "number": "9864",
            "orderid": "P84456997",
            "invoiceDate": "2020-01-01",
            "invoiceStatus": "Due",
            "dueDate": "2020-01-18",
            "topay": "200"
        }
    ]
}
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>
