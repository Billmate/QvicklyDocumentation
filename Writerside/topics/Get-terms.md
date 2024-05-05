# Get terms

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "7d6b98a406aeb6551b8a92eebc3ba388e5fe903cdce7a412059869627cb78f37c44d4664d558e7b88221094c29b981bd25d779daa946a558f37a50f2fe6a10f0",
        "version": "%API_VERSION%",
        "client": "%CLIENT_NAME%",
        "language": "sv",
        "time": 1714839340.0972931
    },
    "data": {
        "dummyData": 1714839340097221000
    },
    "function": "getTerms"
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

/* Payment Data */
/**
* @param array Payment Data : Buyer details.
  */

$values["PaymentData"] = array(
    "method" => "1",
    "paymentplanid" => ""
);
/**
* @param array Cart Data : Cart details.
  */

$values["Cart"] = array(
    "Total" => array(
        "withtax" => "231700"
    )
);

$bm->getTerms($values);
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

namespace GetTerms  
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
                Billmate bm = new Billmate("%MERCHANT_ID%", "%MERCHANT_KEY%",ssl,%(test),false,referrer);
                bm.Client = "%CLIENT_NAME%";
                bm.Server = "%API_VERSION%";
                bm.Language = "sv";
                Dictionary<string, object> Paymentdata = new Dictionary<string, object>();
                paymentdata["method"] = "1";
                paymentdata["paymentplanid"] = "";
                values["PaymentData"] = Paymentdata;

                Dictionary<string, object> Cart = new Dictionary<string, object>();

                Dictionary<string, string> Total = new Dictionary<string, string>();
                total["withtax"] = "231700";
                cart["Total"] = Total;

                values["Cart"] = Cart;

                Dictionary<string, object> result = bm.Call("getTerms", values);
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
terms = api.call(function="getTerms")
print(terms)
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/getTerms.py)

  </tab>
</tabs>

## Response from server
The response will be an HTML page with the terms and conditions.

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>