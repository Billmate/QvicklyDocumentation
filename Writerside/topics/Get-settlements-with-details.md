# Get settlements with details

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "c8f098629ff61eaf5a7a052088e24fd21b91e974ee46cffe839d895bf883785e0e6fd21ed96767e15f62e7cf4af550580554d8b9f468f0a7bd72fdb65b61dbaa",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
        "language": "sv",
        "time": 1714928203.138371
    },
    "data": {
        "settlementId": "1"
    },
    "function": "getSettlementsWithDetails"
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
        "settlementId" => "1"
    ]
);
$settlement = $paymentAPI->getSettlementsWithDetails($data);
print_r($settlement);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/PaymentAPI/getSettlementsWithDetails.php)

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

$values = array(
    "settlementId" => "1"
);

echo json_encode($api->getSettlementsWithDetails($values), JSON_PRETTY_PRINT);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/PHP.Legacy/examples/getSettlementsWithDetails.php)

</tab>

<tab title="%code-node%">
<code-block lang="javascript">
<![CDATA[
import { QvicklyPaymentAPI } from "../../PaymentAPI.js";

const paymentAPI = new QvicklyPaymentAPI(process.env.EID, process.env.SECRET);
const settlement = await paymentAPI.call("getSettlementsWithDetails", {
    settlementId: "1",
});
console.log(settlement);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/getSettlementsWithDetails.js)

</tab>

<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const settlement = await paymentAPI.call("getSettlementsWithDetails", {
    settlementId: "1",
});
console.log(settlement);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/getSettlementsWithDetails.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const settlement = await paymentAPI.call("getSettlementsWithDetails", {
    settlementId: "1",
});
console.log(settlement);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/getSettlementsWithDetails.ts)

</tab>

  <tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
settlement = api.call(function="getSettlementsWithDetails", data={"settlementId":"1"})
print(json.dumps(settlement, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/getSettlementsWithDetails.py)

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
    "settlementId" => "1",
};
print(Dumper($api->call("getSettlementsWithDetails", $values)));

1;
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Perl/examples/PaymentAPI/getSettlementsWithDetails.pl)

</tab>

</tabs>

## Response from server
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "hash": "a6cf7fac245725d9811344e0d99906cc2f3a91b87de12bf4fe306d827ec28f50df71c3a58f8c4660c8d3fd4475a768c1064badd29a0f65e54246b926f196dade",
        "logid": 1234567
    },
    "data": {
        "SettlementId": "1",
        "SettlementDate": "2024-04-29",
        "SettlementURL": "https://online.billmate.se/avrakning/12345/1-2024-04-29.pdf",
        "Purchase": {
            "Paidin": "0",
            "Topay": "100",
            "Payout": "100",
            "TotalFee": "0",
            "TotalFeeVAT": "0",
            "Invoices": [
                {
                    "id": "12345",
                    "paidin": "0.00",
                    "paidinCapital": "0.00",
                    "topay": "100",
                    "paymentDate": "0000-00-00",
                    "payout": "100.00"
                }
            ]
        },
        "TotalTopay": "100",
        "TotalPayout": "100"
    }
}
]]>
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>