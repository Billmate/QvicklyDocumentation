# Get settlements

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "4bb4f3729ed101501b9c79f7fec7be79da0b20190188a7b0fb0073a04c8025851ea00056857d7f724dd54392ceff97d4b8f63f6024b4ec6539bafb7daff96b2e",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
        "language": "sv",
        "time": 1714927493.389399
    },
    "data": {
        "fromDate": "2024-03-31"
    },
    "function": "getSettlements"
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
$api = new PaymentAPI($id, $key, $test, $debug);
$values = array();

$values = array(
    "fromDate" => "2024-03-01"
);

echo json_encode($api->getSettlements($values), JSON_PRETTY_PRINT);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/PHP.Legacy/examples/getSettlements.php)

</tab>

<tab title="%code-node%">
<code-block lang="javascript">
<![CDATA[
import { QvicklyPaymentAPI } from "../../PaymentAPI.js";

const paymentAPI = new QvicklyPaymentAPI(process.env.EID, process.env.SECRET);
const settlements = await paymentAPI.call("getSettlements", {
    fromDate: "2024-03-01",
});
console.log(settlements);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/getSettlements.js)

</tab>

<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const settlements = await paymentAPI.call("getSettlements", {
    fromDate: "2024-03-01",
});
console.log(settlements);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/getSettlements.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const settlements = await paymentAPI.call("getSettlements", {
    fromDate: "2024-03-01",
});
console.log(settlements);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/getSettlements.ts)

</tab>

  <tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
settlements = api.call(function="getSettlements", data={"fromDate":"2024-03-31"})
print(json.dumps(settlements, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/getSettlements.py)

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
    "fromDate" => "2024-03-31",
};
print(Dumper($api->call("getSettlements", $values)));

1;
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Perl/examples/PaymentAPI/getSettlements.pl)

</tab>

</tabs>

## Response from server
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "hash": "66fbe90f935ed89d34970fc70837c435c7a84868b487f94a9ba4df39a6f23cb76176e12b942511823a8afe128839f1ed5d36cfe2eab3e75d51cfa39c04d12fbe",
        "logid": 1234567
    },
    "data": {
        "Settlements": [
            {
                "SettlementId": "5",
                "SettlementDate": "2024-04-29",
                "SettlementURL": "https://online.billmate.se/avrakning/12345/5-2024-04-29.pdf",
                "InvoiceIds": [
                    "12349"
                ]
            },
            {
                "SettlementId": "4",
                "SettlementDate": "2024-04-22",
                "SettlementURL": "https://online.billmate.se/avrakning/12345/4-2024-04-22.pdf",
                "InvoiceIds": [
                    "12348"
                ]
            },
            {
                "SettlementId": "3",
                "SettlementDate": "2024-04-15",
                "SettlementURL": "https://online.billmate.se/avrakning/12345/3-2024-04-15.pdf",
                "InvoiceIds": [
                    "12347"
                ]
            },
            {
                "SettlementId": "2",
                "SettlementDate": "2024-04-08",
                "SettlementURL": "https://online.billmate.se/avrakning/12345/2-2024-04-08.pdf",
                "InvoiceIds": [
                    "12346"
                ]
            },
            {
                "SettlementId": "1",
                "SettlementDate": "2024-04-02",
                "SettlementURL": "https://online.billmate.se/avrakning/12345/1-2024-04-02.pdf",
                "InvoiceIds": [
                    "12345"
                ]
            }
        ],
        "Date": "2024-05-01"
    }
}
]]>
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>