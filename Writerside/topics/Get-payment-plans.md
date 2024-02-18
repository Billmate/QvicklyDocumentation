# Get payment plans

<tabs>
  <tab title="%code-php5%">
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
    "currency" => "SEK",
    "language" => "sv",
    "country" => "SE",
    "totalwithtax" => "50000"
);

$bm->getPaymentplans($values);
]]>
</code-block>
  </tab>


  <tab title="%code-php8%">
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
                bm.Client = "%CLIENT_NAME%";
                bm.Server = "%API_VERSION%";
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
api_connection.returnJustData()

paymentplans = api_connection.getPaymentplans(250000)
]]>
</code-block>
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