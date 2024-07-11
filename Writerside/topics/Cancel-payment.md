# Cancel payment

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

This is the example for cancelPayment. The documentation for can be found [here](cancelPayment.md)

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
        "time": 1714828782.338867
    },
    "data": {
        "number": "12345"
    },
    "function": "cancelPayment"
}
]]>
</code-block>
    </tab>

<tab title="%code-php%">
<code-block lang="php">
<![CDATA[
<?php
declare(strict_types=1);

require '../../../vendor/autoload.php';

use Dotenv\Dotenv;

$dotenv = Dotenv::createImmutable(__DIR__ . '/../../..');
$dotenv->load();

use Qvickly\Api\Payment\PaymentAPI;
use Qvickly\Api\Payment\DataObjects\Data;

$paymentAPI = new PaymentAPI($_ENV['EID'], $_ENV['SECRET'], testMode: true);
$data = new Data(
    [
        "number" => "12345"
    ]
);
$payment = $paymentAPI->cancelPayment($data);
print_r($payment);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/PaymentAPI/Simple/cancelPayment.php)

<include from="Snippets-PHP-Module.md" element-id="snippet-composer-require" />

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
    "number" => "1000235"
);

echo json_encode($api->cancelPayment($values), JSON_PRETTY_PRINT);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/PHP.Legacy/examples/cancelPayment.php)

</tab>
  <tab title="%code-csharp%">
<code-block lang="c#">
<![CDATA[
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BillmateAPI;

namespace CancelPayment
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
                Dictionary<string, object> result = bm.Call("cancelPayment", parameters);
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
const payment = await paymentAPI.call("cancelPayment", {
    number: "12345",
});
console.log(payment);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/cancelPayment.js)

</tab>

<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const payment = await paymentAPI.call("cancelPayment", {
    number: "12345",
});
console.log(payment);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/cancelPayment.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const payment = await paymentAPI.call("cancelPayment", {
    number: "12345",
});
console.log(payment);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/cancelPayment.ts)

</tab>


  <tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
payment = api.call(function="cancelPayment", data={"number":"12345"})
print(json.dumps(payment, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/cancelPayment.py)

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
print(Dumper($api->call("cancelPayment", $values)));

1;
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Perl/examples/PaymentAPI/cancelPayment.pl)

</tab>

</tabs>

## Response from server
<code-block lang="json">
{
    "credentials": {
        "hash": "54c3928bd58ea07eec2b82b6f3075df85f9bc5846f737feee5e497dcf96df26097258b30447df4627f97fcd4100fa86f7dbe9dd4a753da29939d34c9afae013f"
    },
    "data": {
        "number": "1000235",
        "orderid": "12345",
        "status": "Cancelled",
        "url": "https://api.qvickly.io/invoice/140544658153c38f1cdf279"
    }
}
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>