# Create invoice from orderhash

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

This is the example for createInvoiceFromOrderHash. The documentation for can be found [here](createInvoiceFromOrder.md)

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "1a077ea8235dffb8170140e904182cee200e737de9cd9eb0854e8fa001525c2a4eded1f070b22ae56c93f6426fe58149fb5c4d39238e1af5efb51df550c666b4",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
        "language": "sv",
        "time": 1714944035.925046
    },
    "data": {
        "hash": "123456abc123456abc123456abc12345",
        "method": "8"
    },
    "function": "createInvoiceFromOrderHash"
}]]>
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
        "hash" => "123456abc123456abc123456abc12345",
        "method" => "8",
    ]
);
$invoice = $paymentAPI->createInvoiceFromOrderHash($data);
print_r($invoice);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/PaymentAPI/Simple/createInvoiceFromOrderHash.php)

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

$values["hash"] = "123456abc123456abc123456abc12345";
$values["method"] = "8";

echo json_encode($api->createInvoiceFromOrderHash($values), JSON_PRETTY_PRINT);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/PHP.Legacy/examples/createInvoiceFromOrderHash.php)

</tab>

<tab title="%code-node%">
<code-block lang="javascript">
<![CDATA[
import { QvicklyPaymentAPI } from "../../PaymentAPI.js";

const paymentAPI = new QvicklyPaymentAPI(process.env.EID, process.env.SECRET);
const invoice = await paymentAPI.call("createInvoiceFromOrderHash", {
    hash: "123456abc123456abc123456abc12345",
});
console.log(invoice);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/createInvoiceFromOrderHash.js)

</tab>

<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const invoice = await paymentAPI.call("createInvoiceFromOrderHash", {
    hash: "123456abc123456abc123456abc12345",
});
console.log(invoice);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/createInvoiceFromOrderHash.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const invoice = await paymentAPI.call("createInvoiceFromOrderHash", {
    hash: "123456abc123456abc123456abc12345",
});
console.log(invoice);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/createInvoiceFromOrderHash.ts)

</tab>

<tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
invoice = api.call(function="createInvoiceFromOrderHash", data={"hash":"123456abc123456abc123456abc12345", "method": "8"})
print(json.dumps(invoice, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/createInvoiceFromOrderHash.py)

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
    "hash" => "123456abc123456abc123456abc12345",
    "method" => "8",
};
print(Dumper($api->call("createInvoiceFromOrderHash", $values)));

1;
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Perl/examples/PaymentAPI/createInvoiceFromOrderHash.pl)

</tab>

</tabs>


## Response from server

<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "hash": "fbbd7c1edf87cd38d689ea694c94bc0d54cc227152f025b3cb4327b0eb4899850ec4ee7cc7058c8cc93917db114814e3e187fb7a054d5ab465c48ec7de18cb7b",
        "logid": 1234567
    },
    "data": {
        "number": "12345",
        "status": "Created",
        "orderid": "12345",
        "url": "https://api.billmate.se/invoice/12345/123456abc123456abc123456abc12345",
        "alreadycreated": "1"
    }
}
]]>
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>