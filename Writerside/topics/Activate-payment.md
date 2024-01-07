# Activate payment

<tabs>
  <tab title="PHP5">
<code-block lang="PHP">
<![CDATA[
<?php
$test = true;
$ssl = true;
$debug = false;

/* Credentials for Auth */

$id = "12345";
$key = "1234567890";
define("BILLMATE_SERVER", "2.1.6");    /* API version */
define("BILLMATE_CLIENT", "Pluginname:BillMate:1.0");
define("BILLMATE_LANGUAGE", "sv");
$bm = new BillMate($id,$key,$ssl,$test,$debug);
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
  <tab title="PHP8">
<code-block lang="PHP">
<![CDATA[
// Work in progress
]]>
</code-block>
  </tab>
  <tab title="C#">
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
                Billmate bm = new Billmate("12345", "1234567890",ssl,true,false,referrer);
                bm.Client = "Pluginname:BillMate:1.0";
                bm.Server = "2.1.6";
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
  <tab title="Python">
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

creditPayment = api_connection.creditPayment(1000235)
]]>
</code-block>
  </tab>
</tabs>

## Response from server
<code-block lang="json">
{
    "credentials": {
        "hash": "3d7506031bac8c67b4fc4750b2f879c6965d595f3f21e07aa2722313e5bc0c9cce347af5764a67b2f85c086503296f54cc2294334086efca210232b76e1b98ac"
    },
    "data": {
        "number": "1000235",
        "orderid": "12345",
        "status": "Factoring",
        "url": "https://api.qvickly.io/invoice/140544658153c38f1cdf279"
    }
}
</code-block>