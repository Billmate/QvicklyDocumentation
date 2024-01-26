# Get address

<tabs>
  <tab title="PHP Old">
<code-block lang="PHP">
<![CDATA[
<?php
$test = true;
$ssl = true;
$debug = false;

/* Credentials for Auth */

$id = "12345";
$key = "1234567890";
define("BILLMATE_SERVER", "2.1.7"); // API version
define("BILLMATE_CLIENT", "%CLIENT_NAME%");
define("BILLMATE_LANGUAGE", "sv");
$bm = new BillMate($id, $key, $ssl, $test, $debug);
$values = array();

/* Customer Data */
/**
* @param array Customer Data : Customer details.
  */

$values = array(
    "pno" => "550101-1018",
    "country" => "SE"
);

$bm->getAddress($values);
]]>
</code-block>
  </tab>
  <tab title="PHP New">
<code-block lang="PHP">
// Work in progress
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

namespace GetAddress
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
                Billmate bm = new Billmate("12345", "1234567890", ssl, true, false, referrer);
                bm.Client = "%CLIENT_NAME%";
                bm.Server = "2.1.7";
                bm.Language = "sv";
                Dictionary<string, object> parameters = new Dictionary<string, object>();
                parameters["pno"] = "550101-1018";
                parameters["country"] = "SE";
                Dictionary<string, object> result = bm.Call("getAddress", parameters);
                // Output it in Console
                result.ToList().ForEach(x => Console.WriteLine(x.Key + ":" + x.Value));
            }
            catch (BillmateException be)
            {
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

address = api_connection.getAddress(mypno, "se")
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
    "data": {
        "firstname": "*TEST* Firstname",
        "lastname": "Lastname",
        "street": "Streetname",
        "zip": "12345",
        "city": "City",
        "country": "SE",
        "phone": "467012345678",
        "email": "test@testcompany.se"
    }
}
</code-block>