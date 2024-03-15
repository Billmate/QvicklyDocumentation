# Get payment info

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

$values = array(
    "number" => "1000235"
);

$bm->getPaymentinfo($values);
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

namespace GetPaymentInfo
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                Boolean ssl = false;
                Dictionary<string, string> referrer = new Dictionary<string, string>();
                referrer["HTTP_X_REAL_IP"] = "127.0.0.1";
                Billmate bm = new Billmate("%MERCHANT_ID%", "%MERCHANT_KEY%", ssl, true, false, referrer);
                bm.Client = "%CLIENT_NAME%";
                bm.Server = "%API_VERSION%";
                bm.Language = "sv";
                Dictionary<string, object> parameters = new Dictionary<string, object>();
                parameters["number"] = "1000235";
                Dictionary<string, object> result = bm.Call("getPaymentinfo", parameters);
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
}]]>
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

paymentinfo = api_connection.getPaymentinfo("12913")
]]>
</code-block>
  </tab>
</tabs>

## Response from server
<code-block lang="json">
{
   "credentials":{
      "hash":"5d93099de768c826aefb6f4ebcfd2dbce32b36e49a69e1cac8244abb6969d75e833006c9cc2e315b72807a179efd518e4933188d99e74903d391954697d97737"
   },
   "data":{
      "PaymentData":{
         "method":"1",
         "paymentplanid":"",
         "currency":"SEK",
         "country":"SE",
         "language":"sv",
         "autoactivate":"0",
         "orderid":"P123456718",
         "status":"Created",
         "paymentid_related":"",
         "url":""
      },
      "PaymentInfo":{
         "paymentdate":"2014-07-31",
         "paymentterms":"14",
         "yourreference":"Purchaser X",
         "ourreference":"Seller Y",
         "projectname":"Project Z",
         "deliverymethod":"Post",
         "deliveryterms":"FOB"
      },
      "Card":{
         "promptname":"",
         "recurring":"",
         "recurringnr":"",
         "accepturl":"https://www.mystore.se/completedpayment",
         "cancelurl":"https://www.mystore.se/failedpayment",
         "callbackurl":"https://www.mystore.se/callback.php",
         "returnmethod":""
      },
      "Settlement": {
         "number": "2",
         "date": "2018-12-17"
      },
      "Customer":{
         "nr":"12",
         "pno":"5501011018",
         "Billing":{
            "firstname":"Firstname",
            "lastname":"Lastname",
            "company":"Company",
            "street":"Street",
            "street2":"Street2",
            "zip":"12345",
            "city":"Lund",
            "country":"SE",
            "phone":"0712-345678",
            "email":"test@developer.qvickly.io"
         },
         "Shipping":{
            "firstname":"Firstname",
            "lastname":"Lastname",
            "company":"Company",
            "street":"Shipping Street 1",
            "street2":"Shipping Street2",
            "zip":"23456",
            "city":"Lund",
            "country":"SE",
            "phone":"0711-345678"
         }
      },
      "Articles":[
         {
            "artnr":"",
            "title":"Article 1",
            "quantity":"2",
            "aprice":"1234",
            "tax":"617",
            "discount":"0",
            "withouttax":"2468",
            "taxrate":"25"
         },
         {
            "artnr":"B456",
            "title":"Article 2",
            "quantity":"3.5",
            "aprice":"56780",
            "tax":"44714",
            "discount":"10",
            "withouttax":"178857",
            "taxrate":"25"
         }
      ],
      "Cart":{
         "Handling":{
            "withouttax":"1000",
            "taxrate":"25"
         },
         "Shipping":{
            "withouttax":"3000",
            "taxrate":"25"
         },
         "Total":{
            "rounding":"44",
            "withouttax":"185325",
            "tax":"46331",
            "withtax":"231700"
         }
      }
   }
}
</code-block>