# Get payment info

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "d6c98ac67c1b7dacb49c39a2641b64bca7048f765445a69a4ffad78799091fbef1d3d5ebaf0d88ffea3b98021c2026934313feeaa9bc509a42a6491cd04a714a",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
        "language": "sv",
        "time": 1714926507.624523
    },
    "data": {
        "number": "12345"
    },
    "function": "getPaymentinfo"
}
]]>
</code-block>
    </tab>

<tab title="%code-php%">
<code-block lang="php">
<![CDATA[
<?php
declare(strict_types=1);

require '../../vendor/autoload.php';

use Dotenv\Dotenv;

$dotenv = Dotenv::createImmutable(__DIR__ . '/../..');
$dotenv->load();

use Qvickly\Api\Payment\PaymentAPI;
use Qvickly\Api\Payment\DataObjects\Data;

$paymentAPI = new PaymentAPI($_ENV['EID'], $_ENV['SECRET']);
$data = new Data(
    [
        "number" => "12345"
    ]
);
$payment = $paymentAPI->getPaymentInfo($data);
print_r($payment);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/PaymentAPI/getPaymentInfo.php)

Please note that the examples for %code-php% are based on the PHP module and not the PaymentAPI class.

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

$values = array(
    "number" => "1000235"
);

echo json_encode($api->getPaymentinfo($values), JSON_PRETTY_PRINT);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/PHP.Legacy/examples/getPaymentInfo.php)

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
                bm.Client = "%PAYMENT_API_CLIENT_NAME%";
                bm.Server = "%PAYMENT_API_VERSION%";
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

<tab title="%code-node%">
<code-block lang="javascript">
<![CDATA[
import { QvicklyPaymentAPI } from "../../PaymentAPI.js";

const paymentAPI = new QvicklyPaymentAPI(process.env.EID, process.env.SECRET);
const payment = await paymentAPI.call("getPaymentInfo", {
    number: "12345",
});
console.log(payment);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/getPaymentInfo.js)

</tab>

<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const payment = await paymentAPI.call("getPaymentInfo", {
    number: "12345",
});
console.log(payment);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/getPaymentInfo.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const payment = await paymentAPI.call("getPaymentInfo", {
    number: "12345",
});
console.log(payment);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/getPaymentInfo.ts)

</tab>

  <tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
payment = api.call(function="getPaymentinfo", data={"number":"12345"})
print(json.dumps(payment, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/getPaymentInfo.py)

  </tab>

<tab title="%code-perl%">
<code-block lang="perl">
<![CDATA[
#!/usr/bin/perl
use strict;
use warnings;
use JSON::PP;
use Data::Dumper;
use lib '../..';
require "PaymentAPI.pl";
require "LoadEnv.pl";
LoadEnv('../../.env');

my $test = 1;
my $debug = 0;

# Credentials for Auth
my $id = $ENV{"EID"};
my $key = $ENV{"SECRET"};

my $api = PaymentAPI->new($id, $key, $test, $debug);
my $values = {
    "number" => "12345",
};
print(Dumper($api->call("getPaymentInfo", $values)));

1;
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Perl/examples/PaymentAPI/getPaymentInfo.pl)

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