# Get exchange rate

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

This is the example for getExchangeRate. The documentation for can be found [here](getExchangeRate.md)

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "3fe247645db7d6f4fa05bf736c774b7eb42384983490f1257d20a904f3c7beed440a0f234437b9dc701cad4b88c81d62a90de54183aa6b3c44c95424f04a98a4",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
        "language": "sv",
        "time": 1714940371.323135
    },
    "data": {
        "currency": "USD",
        "date": "2024-04-30"
    },
    "function": "getExchangeRate"
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

$paymentAPI = new PaymentAPI($_ENV['EID'], $_ENV['SECRET']);
$data = new Data(
    [
        "currency" => "USD",
        "date" => "2024-04-30"
    ]
);
$rate = $paymentAPI->getExchangeRate($data);
print_r($rate);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/PaymentAPI/Simple/getExchangeRate.php)

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

/* Customer Data */
/**
* @param array Customer Data : Customer details.
  */

$values = array(
    "currency" => "USD",
    "date" => "2024-04-30"
);

echo json_encode($api->getExchangeRate($values), JSON_PRETTY_PRINT);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/PHP.Legacy/examples/getExchangeRate.php)

</tab>

<tab title="%code-node%">
<code-block lang="javascript">
<![CDATA[
import { QvicklyPaymentAPI } from "../../PaymentAPI.js";

const paymentAPI = new QvicklyPaymentAPI(process.env.EID, process.env.SECRET);
const rate = await paymentAPI.call("getExchangeRate", {
    currency: "USD",
    date: "2024-04-30",
});
console.log(rate);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/getExchangeRate.js)

</tab>

<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const rate = await paymentAPI.call("getExchangeRate", {
    currency: "USD",
    date: "2024-04-30",
});
console.log(rate);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/getExchangeRate.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const rate = await paymentAPI.call("getExchangeRate", {
    currency: "USD",
    date: "2024-04-30",
});
console.log(rate);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/getExchangeRate.ts)

</tab>

  <tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
rate = api.call(function="getExchangeRate", data={"currency":"USD","date":"2024-04-30"})
print(json.dumps(rate, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/getExchangeRate.py)

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
    "currency" => "DKK",
    "date" => "2024-05-15",
};
print(Dumper($api->call("getExchangeRate", $values)));

1;
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Perl/examples/PaymentAPI/getExchangeRate.pl)

</tab>

</tabs>

## Response from server
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "hash": "669957e56ddc7394073c8f6df887e17411d7f9fe1000f04fc519b1ebebefa03c43a89d1d99d9e47bb9da2688d55af1338d7a06c6bab8b143393f0c7ced459a14",
        "logid": 1234567
    },
    "data": {
        "rate": "10.9657",
        "result": "0",
        "date": "2024-04-30"
    }
}
]]>
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>