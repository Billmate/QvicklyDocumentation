# Get due payments

<tabs>
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

/* Customer Data */
/**
* @param array Customer Data : Customer details.
  */

$values = array(
    "dueDate" => "2020-01-01"
);

$bm->getDuePayments($values);
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
                bm.Client = "%CLIENT_NAME%";
                bm.Server = "%API_VERSION%";
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


  <tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
import json
import os

from QvicklyPackage import API
from QvicklyPackage.API import APIPayload

billmate_id = os.getenv("BILLMATE_ID")
secret = os.getenv("SECRET")
mypno = os.getenv("MY_PNO")

api_connection = API.APIConnection(billmate_id, secret, devMode=True)

api_connection.setValidateResult()

duepayments = api_connection.getDuePayments("2021-10-10")
]]>
</code-block>
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