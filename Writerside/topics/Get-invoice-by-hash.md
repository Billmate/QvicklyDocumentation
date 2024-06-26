# Get invoice by hash

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

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
    },
    "function": "getInvoiceByHash"
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
        "hash" => "123456abc123456abc123456abc12345",
    ]
);
$invoice = $paymentAPI->getInvoiceByHash($data);
print_r($invoice);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/PaymentAPI/getInvoiceByHash.php)

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

$values["hash"] = "123456abc123456abc123456abc12345";

echo json_encode($api->getInvoiceByHash($values), JSON_PRETTY_PRINT);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/PHP.Legacy/examples/getInvoiceByHash.php)

</tab>

<tab title="%code-node%">
<code-block lang="javascript">
<![CDATA[
import { QvicklyPaymentAPI } from "../../PaymentAPI.js";

const paymentAPI = new QvicklyPaymentAPI(process.env.EID, process.env.SECRET);
const invoice = await paymentAPI.call("getInvoiceByHash", {
    hash: "123456abc123456abc123456abc12345",
});
console.log(invoice);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/getInvoiceByHash.js)

</tab>

<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const invoice = await paymentAPI.call("getInvoiceByHash", {
    hash: "123456abc123456abc123456abc12345",
});
console.log(invoice);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/getInvoiceByHash.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const invoice = await paymentAPI.call("getInvoiceByHash", {
    hash: "123456abc123456abc123456abc12345",
});
console.log(invoice);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/getInvoiceByHash.ts)

</tab>

<tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
invoice = api.call(function="getInvoiceByHash", data={"hash":"123456abc123456abc123456abc12345"})
print(json.dumps(invoice, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/getInvoiceByHash.py)

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
};
print(Dumper($api->call("getInvoiceByHash", $values)));

1;
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Perl/examples/PaymentAPI/getInvoiceByHash.pl)

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
        "Articles": [
            {
                "artnr": "woo-long-sleeve-tee",
                "title": "Long Sleeve Tee",
                "quantity": "1",
                "aprice": "2500",
                "discount": "0",
                "withouttax": "2500",
                "taxrate": "0"
            },
            {
                "artnr": "woo-hoodie-blue-logo",
                "title": "Hoodie - blue, Yes",
                "quantity": "1",
                "aprice": "4500",
                "discount": "0",
                "withouttax": "4500",
                "taxrate": "0"
            }
        ],
        "Cart": {
            "Total": {
                "withouttax": "7000",
                "tax": "0",
                "rounding": "0",
                "withtax": "7000"
            },
            "Shipping": {
                "withouttax": "0",
                "taxrate": "0"
            },
            "Handling": {
                "withouttax": "0",
                "taxrate": "0"
            }
        },
        "PaymentData": {
            "method": "1",
            "currency": "SEK",
            "country": "SE",
            "language": "sv",
            "autoactivate": "0",
            "orderid": "12345",
            "status": "Pending",
            "paymentid_related": "",
            "accepturl": "https://example.com/?bco_confirm=yes&bco_flow=checkout_redirect&wc_order_id=null",
            "cancelurl": "https://example.com/checkout/",
            "returnmethod": "",
            "callbackurl": "https://example.com/wc-api/BCO_WC_Push/",
            "alladdresses": "",
            "url": "https://api.billmate.se/invoice/12345/123456abc123456abc123456abc12345",
            "number": "123456"
        },
        "apiClient": "MyBillMate:NodeJS:1.0",
        "Customer": {
            "nr": "",
            "pno": "5501010101",
            "Billing": {
                "firstname": "Tess T",
                "lastname": "Persson",
                "type": "person",
                "street": "Testgatan 1",
                "street2": "",
                "zip": "12345",
                "city": "Testingeby",
                "country": "SE",
                "phone": "0700000000",
                "email": "tess.t.persson@example.com"
            },
            "Shipping": {
                "firstname": "",
                "lastname": "",
                "type": "person",
                "street": "",
                "street2": "",
                "zip": "",
                "city": "",
                "country": "",
                "phone": ""
            },
            "companySigner": {
                "pno": ""
            }
        },
        "PaymentInfo": {
            "paymentdate": "2024-05-01",
            "paymentterms": "5",
            "yourreference": "",
            "ourreference": "",
            "projectname": "",
            "deliverymethod": "",
            "deliveryterms": "",
            "invoiceStatus": "",
            "balancedue": "7000"
        },
        "alladdresses": "1",
        "apiLogsid": "1234567",
        "apiVersion": "2.5.0"
    }
}
]]>
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>