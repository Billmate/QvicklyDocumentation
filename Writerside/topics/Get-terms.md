# Get terms

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "7d6b98a406aeb6551b8a92eebc3ba388e5fe903cdce7a412059869627cb78f37c44d4664d558e7b88221094c29b981bd25d779daa946a558f37a50f2fe6a10f0",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
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

<tab title="%code-php%">
<code-block lang="php">
<![CDATA[
<?php
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/PaymentAPI/getAddress.php)

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
api = new PaymentAPI($id, $key, $test, $debug);
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

echo $api->getTerms($values);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/PHP.Legacy/examples/getTerms.php)

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
                bm.Client = "%PAYMENT_API_CLIENT_NAME%";
                bm.Server = "%PAYMENT_API_VERSION%";
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

<tab title="%code-node%">
<code-block lang="javascript">
<![CDATA[
import { QvicklyPaymentAPI } from "../../PaymentAPI.js";

const paymentAPI = new QvicklyPaymentAPI(process.env.EID, process.env.SECRET);
const terms = await paymentAPI.call("getTerms");
console.log(terms);

]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/getTerms.js)

</tab>

<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const terms = await paymentAPI.call("getTerms");
console.log(terms);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/getTerms.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const terms = await paymentAPI.call("getTerms");
console.log(terms);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/getTerms.ts)

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
    "dummyData" => "dummyValue",
};
print(Dumper($api->call("getTerms", $values)));

1;
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Perl/examples/PaymentAPI/getTerms.pl)

</tab>

</tabs>

## Response from server
The response will be an HTML page with the terms and conditions.

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>