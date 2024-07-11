# Get fees

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

This is the example for getFees. The documentation for can be found [here](getFees.md)

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "42d4daf5dfba7c37d72006ab5258b94248c2130473c5bcf64291f7dd3ab8bdfaedc6e8d2eaccf4f4be6a52b97408e02f8ab65076f368c4d9b56d2d1b1276c9e6",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
        "language": "sv",
        "time": 1714941161.606741
    },
    "data": {
        "dummyData": 1714941161606698000
    },
    "function": "getFees"
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
$fees = $paymentAPI->getFees();
print_r($fees);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/PaymentAPI/Simple/getFees.php)

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

echo json_encode($api->getFees($values), JSON_PRETTY_PRINT);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/PHP.Legacy/examples/getFees.php)

</tab>

<tab title="%code-node%">
<code-block lang="javascript">
<![CDATA[
import { QvicklyPaymentAPI } from "../../PaymentAPI.js";

const paymentAPI = new QvicklyPaymentAPI(process.env.EID, process.env.SECRET);
const fees = await paymentAPI.call("getFees");
console.log(fees);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/getFees.js)

</tab>

<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const fees = await paymentAPI.call("getFees");
console.log(fees);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/getFees.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const fees = await paymentAPI.call("getFees");
console.log(fees);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/getFees.ts)

</tab>

  <tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
fees = api.call(function="getFees")
print(json.dumps(fees, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/getFees.py)

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
print(Dumper($api->call("getFees", $values)));

1;
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Perl/examples/PaymentAPI/getFees.pl)

</tab>

</tabs>

## Response from server
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "hash": "cfddebfeae5696db3196ce15b226e8b25d71679c09d4f38ba512faada68cf65aff2997d253722f4ccee3ed132521f7168067e4e6c8d4cd7ca14e7e72d5ec419f",
        "logid": 1234567
    },
    "data": [
        {
            "feeid": "12345",
            "target": "customer",
            "amount_from": "101",
            "amount_to": "10000",
            "duedate_type": "none",
            "new_duedate": "0000-00-00",
            "country": "SE",
            "currency": "SEK",
            "fee": "1900",
            "fee_tax": "475",
            "fee_taxrate": "25",
            "expiration_date": "0000-00-00",
            "description": [
                {
                    "language": "sv",
                    "description": "Administrationsavgift"
                },
                {
                    "language": "en",
                    "description": "Service Fee"
                }
            ]
        }
    ]
}
]]>
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>