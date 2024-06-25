# Credit payment

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

<tabs>
  <tab title="%code-json%">

**Full credit**

<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "30744d308f0102c5f17d5dbce18bb23131740fd73a6a00163c4064384395c467ae2a92375f18189a63be95b9a68eaebd3f86f019e33b909d9bf924e88ab74085",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
        "language": "sv",
        "time": "1417004339.9291"
    },
    "data": {
        "PaymentData": {
            "number": "12345"
        }
    },
    "function": "creditPayment"
}

]]>

</code-block>

**Partial credit**

<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "30744d308f0102c5f17d5dbce18bb23131740fd73a6a00163c4064384395c467ae2a92375f18189a63be95b9a68eaebd3f86f019e33b909d9bf924e88ab74085",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
        "language": "sv",
        "time": "1417004339.9291"
    },
    "data": {
        "PaymentData": {
            "number": "1000235",
            "partcredit": "true"
        },
        "Articles": [
            {
                "artnr": "A123",
                "title": "Article 1",
                "quantity": "2",
                "aprice": "1234",
                "taxrate": "25",
                "discount": "0",
                "withouttax": "2468"
            },
            {
                "artnr": "B456",
                "title": "Article 2",
                "quantity": "3.5",
                "aprice": "56780",
                "taxrate": "25",
                "discount": "10",
                "withouttax": "178857"
            }
        ],
        "Cart": {
            "Handling": {
                "withouttax": "1000",
                "taxrate": "25"
            },
            "Shipping": {
                "taxrate": "25"
            },
            "Total": {
                "withouttax": "185325",
                "tax": "46331",
                "rounding": "44",
                "withtax": "231700"
            }
        }
    },
    "function": "creditPayment"
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

require '../../src/Payment/PaymentAPI.php';

use Qvickly\Api\Payment\PaymentAPI;
use Qvickly\Api\Payment\DataObjects\Data;

$paymentAPI = new PaymentAPI($_ENV['EID'], $_ENV['SECRET'], testMode: true);
$data = new Data(
    [
        "number" => "12345"
    ]
);
$payment = $paymentAPI->creditPayment($data);
print_r($payment);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/PaymentAPI/creditPayment.php)

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

$values["PaymentData"] = array(
    "number" => "1000235",
    "partcredit" => "false"
);

/**
* @param array articles : article details.
  */

$values["Articles"][0] = array(
    "artnr" => "A123",
    "title" => "Article 1",
    "quantity" => "2",
    "aprice" => "1234",
    "taxrate" => "25",
    "discount" => "0",
    "withouttax" => "2468",
);
$values["Articles"][1] = array(
    "artnr" => "B456",
    "title" => "Article 2",
    "quantity" => "3.5",
    "aprice" => "56780",
    "taxrate" => "25",
    "discount" => "10",
    "withouttax" => "178857",
);

/**
* @param array Cart Data : Cart details.
  */

$values["Cart"] = array(
    "Handling" => array(
        "withouttax" => "1000",
        "taxrate" => "25"
    ),
    "Shipping" => array(
        "withouttax" => "3000",
        "taxrate" => "25"
    ),
    "Total" => array(
        "withouttax" => "185325",
        "tax" => "46331",
        "rounding" => "44",
        "withtax" => "231700"
    )
);

echo json_encode($api->creditPayment($values), JSON_PRETTY_PRINT);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/PHP.Legacy/examples/creditPayment.php)

</tab>
  <tab title="%code-csharp%">
<code-block lang="c#">
<![CDATA[
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BillmateAPI;

namespace CreditPayment
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
                Dictionary<string,object> values = new Dictionary<string,object>();

                Dictionary<string,string> Paymentdata = new Dictionary<string,string>();
                paymentdata["number"] = "1000235";
                paymentdata["partcredit"] = "false";
                values["PaymentData"] = Paymentdata;

                Dictionary<string, string>[] Articles = new Dictionary<string, string>[2];
                Dictionary<string, string> Article0 = new Dictionary<string, string>();
                Article0["artnr"] = "A123";
                Article0["title"] = "Article 1";
                Article0["quantity"] = "2";
                Article0["aprice"] = "1234";
                Article0["taxrate"] = "25";
                Article0["discount"] = "0";
                Article0["withouttax"] = "2468";
                Articles[0] = Article0;
                Dictionary<string, string> Article1 = new Dictionary<string, string>();
                Article1["artnr"] = "B456";
                Article1["title"] = "Article 2";
                Article1["quantity"] = "3.5";
                Article1["aprice"] = "56780";
                Article1["taxrate"] = "25";
                Article1["discount"] = "10";
                Article1["withouttax"] = "178857";
                Articles[1] = Article1;
                values["Articles"] = Articles;

                Dictionary<string, object> Cart = new Dictionary<string, object>();

                Dictionary<string, string> Handlingfee = new Dictionary<string, string>();
                handlingfee["withouttax"] = "1000";
                handlingfee["taxrate"] = "25";
                cart["Handling"] = Handlingfee;

                Dictionary<string, string> Shippingfee = new Dictionary<string, string>();
                shippingfee["withouttax"] = "3000";
                shippingfee["taxrate"] = "25";
                cart["Shipping"] = Shippingfee;

                Dictionary<string, string> Total = new Dictionary<string, string>();
                total["withouttax"] = "185325";
                total["tax"] = "46331";
                total["rounding"] = "44";
                total["withtax"] = "231700";
                cart["Total"] = Total;

                values["Cart"] = Cart;

                Dictionary<string, object> result = bm.Call("creditPayment", values);
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
<tab title="%code-node%">
<code-block lang="javascript">
<![CDATA[
import { QvicklyPaymentAPI } from "../../PaymentAPI.js";

const paymentAPI = new QvicklyPaymentAPI(process.env.EID, process.env.SECRET);
const payment = await paymentAPI.call("creditPayment", {
    number: "12345",
});
console.log(payment);

]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/creditPayment.js)

</tab>

<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const payment = await paymentAPI.call("creditPayment", {
    number: "12345",
});
console.log(payment);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/creditPayment.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const payment = await paymentAPI.call("creditPayment", {
    number: "12345",
});
console.log(payment);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/creditPayment.ts)

</tab>

  <tab title="%code-python%">

**Full credit**
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
payment = api.call(function="creditPayment", data={"number": "12345"})
print(json.dumps(payment, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/creditPayment.py)

**Partial credit**
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
paymentPayload = {
    "PaymentData": {
        "number": "12345",
        "partcredit": "true",
    },
    "Articles": [
        {
            "artnr": "1",
            "title": "Test",
            "aprice": "10000",
            "taxrate": "25",
            "quantity": "1",
            "withouttax": "10000",
        }
    ],
    "Cart": {
        "Total": {
        "withouttax": "10000",
            "tax": "2500",
            "withtax": "12500",
        },
    },
}
payment = api.call(function="creditPayment", data=paymentPayload)
print(json.dumps(payment, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/partCreditPayment.py)

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
    "PaymentData" => {
        "number" => "12345",
    }
};
print(Dumper($api->call("creditPayment", $values)));

1;
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Perl/examples/PaymentAPI/creditPayment.pl)

</tab>

</tabs>

## Response from server
<code-block lang="json">
{
    "credentials": {
        "hash": "36961fea06f6031ccc4ca10df664c9930f6e805731e9c1e617c68e776f0d0b3d7a540018aef546ecb6cccfd6b9be673b86ccdb6ac48b62e8bf86d43cd622c24c"
    },
    "data": {
        "number": "1000236",
        "orderid": "12346",
        "status": "Credited",
        "url": "https://api.qvickly.io/invoice/140544658153c38f1cdf279"
    }
}
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>