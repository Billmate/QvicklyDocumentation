# Update Status Log Of Invoice By Hash

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

This is the example for updateStatusLogOfInvoiceByHash. The documentation for can be found [here](updateStatusLogOfInvoiceByHash.md)

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "dad42b0d0bb4c4b0721888e8d4eeeb78d825735387e930fc984828d1a5e362b4a9c271c4db3ca652e72321e99a05f2fbe7e72c722f23678578f51e9b12e3c682",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
        "language": "sv",
        "time": 1714943086.2860212
    },
    "data": {
        "hash": "123456abc123456abc123456abc12345"
        "body": {
            "text": "Updated status log from API" 
        }
    },
    "function": "updateStatusLogOfInvoiceByHash"
}
]]>
</code-block>
    </tab>

<tab title="%code-php%">
<code-block lang="php">
<![CDATA[
<?php
declare(strict_types=1);

require __DIR__ . '/../../../vendor/autoload.php';

use Dotenv\Dotenv;

$dotenv = Dotenv::createImmutable(__DIR__ . '/../../..');
$dotenv->load();

use Qvickly\Api\Payment\RequestDataObjects\Customer;
use Qvickly\Api\Payment\PaymentAPI;
use Qvickly\Api\Payment\RequestDataObjects\Data;
use \Qvickly\Api\Payment\RequestDataObjects\PaymentData;
use \Qvickly\Api\Payment\RequestDataObjects\BillingAddress;

$paymentAPI = new PaymentAPI($_ENV['EID'], $_ENV['SECRET']);
$data = new Data(
    [
        "hash" => "123456abc123456abc123456abc12345",
        "body" => [
            "text" => "Updated status log from API",
        ],
    ]
);
$result = $paymentAPI->updateStatusLogOfInvoiceByHash($data);
print_r($result);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/PaymentAPI/Simple/updateStatusLogOfInvoiceByHash.php)

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

$id = "12345";
$key = "123451234512";
define("QVICKLY_SERVER", "2.5.0");    /* API version */
define("QVICKLY_CLIENT", "Pluginname:Qvickly:1.0");
define("QVICKLY_LANGUAGE", "sv");
$api = new PaymentAPI($id, $key, $test, $debug);
$values = array();

$values["hash"] = "123456abc123456abc123456abc12345";
$values["body"] = array();
$values["body"]["text"] = "Updated status log from API";

echo json_encode($api->updateStatusLogOfInvoiceByHash($values), JSON_PRETTY_PRINT);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/PHP.Legacy/examples/updateStatusLogOfInvoiceByHash.php)

</tab>

<tab title="%code-node%">
<code-block lang="javascript">
<![CDATA[
import { QvicklyPaymentAPI } from "../../PaymentAPI.js";

const paymentAPI = new QvicklyPaymentAPI(process.env.EID, process.env.SECRET);
const result = await paymentAPI.call("updateStatusLogOfInvoiceByHash", {
    hash: "123456abc123456abc123456abc12345",
    body: {
        text: "Updated status log from API",
    },
});
console.log(result);

]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/updateStatusLogOfInvoiceByHash.js)

</tab>

<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const result = await paymentAPI.call("updateStatusLogOfInvoiceByHash", {
    hash: "123456abc123456abc123456abc12345",
    body: {
        text: "Status log updated by API"
    }
});
console.log(result);

]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/updateStatusLogOfInvoiceByHash.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const result = await paymentAPI.call("updateStatusLogOfInvoiceByHash", {
    hash: "123456abc123456abc123456abc12345",
    body: {
        text: "Status log updated by API"
    },
});
console.log(result);

]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/updateStatusLogOfInvoiceByHash.ts)

</tab>

<tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
invoice = api.call(function="updateStatusLogOfInvoiceByHash", data={"hash":"123456abc123456abc123456abc12345","body":{"text":"Updated status log from API"}})
print(json.dumps(invoice, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/updateStatusLogOfInvoiceByHash.py)

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
    "body" => {
        "text" => "Status log updated by API",
    }
};
print(Dumper($api->call("updateStatusLogOfInvoiceByHash", $values)));

1;
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Perl/examples/PaymentAPI/updateStatusLogOfInvoiceByHash.pl)

</tab>

</tabs>

## Response from server
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "hash": "20510ee95dcae3d7b5241c1e53cb95b479aa05f07e02d24e18c47aa347201042d70c6f773eaae09661553d99dc52eac26c43830a4b6ff54f038c0971002a13bf",
        "logid": 1234567
    },
    "data": {
        "result": "OK"
    }
}
]]>
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>