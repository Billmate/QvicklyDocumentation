# Activate payment

<tabs>
  <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "b8122d2e9580525e03c566264c8f5a004ed780b0f00568429dbd965fc2b2b89a7f0fd50e11d19c86a81f4bb4684eb2bac1d608653e807725b0068ce4bee3221c", 
        "version": "%API_VERSION%", 
        "client": "%CLIENT_NAME%",
        "language": "sv",
        "time": 1714827001.526806
    },
    "data": {
        "number": "12345"
    },
    "function": "activatePayment"
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
define("QVICKLY_SERVER", "%API_VERSION%");    /* API version */
define("QVICKLY_CLIENT", "%CLIENT_NAME%");
define("QVICKLY_LANGUAGE", "sv");
$bm = new Qvickly($id,$key,$ssl,$test,$debug);
$values = array();

/* Payment Data */
/**
* @param array Payment Data : Buyer details.
  */

$values["PaymentData"] = array(
    "number" => "1000235"
);

$bm->activatePayment($values);
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BillmateAPI;

namespace ActivatePayment
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
                parameters["number"] = "1000235";
                Dictionary<string, object> result = bm.Call("activatePayment", parameters);
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

  <tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
payment = api.call(function="activatePayment", data={"number":"12345"})
print(json.dumps(payment, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/activatePayment.py)

  </tab>
</tabs>

## Response from server
<code-block lang="json">
{
    "credentials": {
        "hash": "3d7506031bac8c67b4fc4750b2f879c6965d595f3f21e07aa2722313e5bc0c9cce347af5764a67b2f85c086503296f54cc2294334086efca210232b76e1b98ac",
        "logid": "1234567"
    },
    "data": {
        "number": "1000235",
        "orderid": "12345",
        "status": "Factoring",
        "url": "https://api.qvickly.io/invoice/140544658153c38f1cdf279"
    }
}
</code-block>

### Error response
<code-block lang="json">
{
    "code": "5201",
    "message": "Invoice number 12345 does not exist.",
    "logid": "1234567"
}
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>