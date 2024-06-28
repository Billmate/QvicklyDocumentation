# Get invoices by customer

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "c71a6258f48fc0fc84b7ce0e015d234f37433ed803891804e785c543f63d42cc568c937cda0691cf5e07e3af921211a771c90a9c0768ad1e8c13e2f3b0817e7d",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
        "language": "sv",
        "time": 1714933435.862255
    },
    "data": {
        "customerno": "12345"
    },
    "function": "getInvoicesByCustomer"
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
        "customerno" => "12345",
    ]
);
$invoices = $paymentAPI->getInvoicesByCustomer($data);
print_r($invoices);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/PaymentAPI/Simple/getInvoicesByCustomer.php)

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
    "customerno" => "12345"
);

echo json_encode($api->getInvoicesByCustomer($values), JSON_PRETTY_PRINT);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/PHP.Legacy/examples/getInvoicesByCustomer.php)

</tab>

<tab title="%code-node%">
<code-block lang="javascript">
<![CDATA[
import { QvicklyPaymentAPI } from "../../PaymentAPI.js";

const paymentAPI = new QvicklyPaymentAPI(process.env.EID, process.env.SECRET);
const invoices = await paymentAPI.call("getInvoicesByCustomer", {
    customerno: "12345",
});
console.log(invoices);

]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/getInvoicesByCustomer.js)

</tab>

<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const invoices = await paymentAPI.call("getInvoicesByCustomer", {
    customerno: "12345",
});
console.log(invoices);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/getInvoicesByCustomer.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const invoices = await paymentAPI.call("getInvoicesByCustomer", {
    customerno: "12345",
});
console.log(invoices);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/getInvoicesByCustomer.ts)

</tab>

  <tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
invoices = api.call(function="getInvoicesByCustomer", data={"customerno":"123456"})
print(json.dumps(invoices, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/getInvoicesByCustomer.py)

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
    "customerno" => "12345",
};
print(Dumper($api->call("getInvoicesByCustomer", $values)));

1;
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Perl/examples/PaymentAPI/getInvoicesByCustomer.pl)

</tab>

</tabs>

## Response from server
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "hash": "bc82dd1b1eb1de312e56ffd7b69687f826b3e684ee2c2af58fec870cfc8ab1c634e64d9e6bb7b5db51d19963de6b2846867d711b9cc2bed6bf61b1320d66a5b0",
        "logid": 1234567
    },
    "data": [
        {
            "Cart": {
                "Handling": {
                    "withouttax": "0",
                    "taxrate": "25"
                },
                "Shipping": {
                    "withouttax": "0",
                    "taxrate": "25"
                },
                "Total": {
                    "rounding": "0",
                    "withouttax": "10000",
                    "tax": "2500",
                    "withtax": "0"
                }
            },
            "PaymentData": {
                "method": "8",
                "currency": "SEK",
                "country": "SE",
                "language": "sv",
                "autoactivate": "0",
                "orderid": "123456",
                "status": "Cancelled",
                "paymentid_related": "",
                "accepturl": "https://example.com/accept",
                "cancelurl": "https://example.com/cancel",
                "returnmethod": "",
                "callbackurl": "https://example.com/callback",
                "alladdresses": "",
                "url": "https://api.billmate.se/invoice/12345/202405032367858ea08652bd62a7b0ab42569f24",
                "mexcCustomerinvoicesid": "1234567",
                "number": "12345",
                "duedate": "2024-05-09",
                "paiddate": "0000-00-00 00:00:00"
            },
            "Customer": {
                "nr": "123456",
                "pno": "550101-1018",
                "Billing": {
                    "firstname": "Tess",
                    "lastname": "T",
                    "type": "person",
                    "street": "Testgatan 1",
                    "street2": "",
                    "zip": "12345",
                    "city": "Testinge",
                    "country": "SE",
                    "phone": "0700000000",
                    "email": "test@example.com"
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
            "Articles": [
                {
                    "artnr": "1",
                    "title": "Test",
                    "quantity": "1",
                    "aprice": "10000",
                    "discount": "0",
                    "withouttax": "10000",
                    "taxrate": "25"
                }
            ],
            "PaymentInfo": {
                "paymentdate": "2024-05-04",
                "paymentterms": "5",
                "yourreference": "",
                "ourreference": "",
                "projectname": "",
                "deliverymethod": "",
                "deliveryterms": "",
                "invoiceStatus": "",
                "balancedue": "0"
            }
        }
    ]
}
]]>
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>