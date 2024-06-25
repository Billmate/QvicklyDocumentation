# Activate payment

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

<tabs>
  <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "b8122d2e9580525e03c566264c8f5a004ed780b0f00568429dbd965fc2b2b89a7f0fd50e11d19c86a81f4bb4684eb2bac1d608653e807725b0068ce4bee3221c", 
        "version": "%PAYMENT_API_VERSION%", 
        "client": "%PAYMENT_API_CLIENT_NAME%",
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
define("QVICKLY_SERVER", "%PAYMENT_API_VERSION%");    /* API version */
define("QVICKLY_CLIENT", "%PAYMENT_API_CLIENT_NAME%");
define("QVICKLY_LANGUAGE", "sv");
$api = new PaymentAPI($id, $key, $test, $debug);
$values = array();

/* Payment Data */
/**
* @param array Payment Data : Buyer details.
  */

$values["PaymentData"] = array(
    "number" => "1000235"
);

echo json_encode($api->activatePayment($values), JSON_PRETTY_PRINT);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/PHP.Legacy/examples/activatePayment.php)

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
                bm.Client = "%PAYMENT_API_CLIENT_NAME%";
                bm.Server = "%PAYMENT_API_VERSION%";
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
<tab title="%code-node%">
<code-block lang="javascript">
<![CDATA[
import { QvicklyPaymentAPI } from "../../PaymentAPI.js";

const paymentAPI = new QvicklyPaymentAPI(process.env.EID, process.env.SECRET);
const payment = await paymentAPI.call("activatePayment", {
    number: "12345",
});
console.log(payment);

]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/activatePayment.js)

</tab>

<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const payment = await paymentAPI.call("activatePayment", {
    number: "12345",
});
console.log(payment);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/activatePayment.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const payment = await paymentAPI.call("activatePayment", {
    number: "12345",
});
console.log(payment);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/activatePayment.ts)

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
print(Dumper($api->call("activatePayment", $values)));

1;
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Perl/examples/PaymentAPI/activatePayment.pl)

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