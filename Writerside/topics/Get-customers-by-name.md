# Get customers by name

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "528d00c050b04a93ca2669a47e4a296c0ac1a463123943c4dc1840a1efed3b10af13a20a13d2eba98e2e23fe7e1253e7fa633d8f5383233e947b1717b8e32119",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
        "language": "sv",
        "time": 1714931959.55777
    },
    "data": {
        "name": "Tess"
    },
    "function": "getCustomersByName"
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
        "name" => "tess"
    ]
);
$customers = $paymentAPI->getCustomersByName($data);
print_r($customers);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/PaymentAPI/getCustomersByName.php)

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
    "name" => "Tess"
);

echo json_encode($api->getCustomersByName($values), JSON_PRETTY_PRINT);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/PHP.Legacy/examples/getCustomersByName.php)

</tab>

<tab title="%code-node%">
<code-block lang="javascript">
<![CDATA[
import { QvicklyPaymentAPI } from "../../PaymentAPI.js";

const paymentAPI = new QvicklyPaymentAPI(process.env.EID, process.env.SECRET);
const customers = await paymentAPI.call("getCustomersByName", {
    name: "Tess",
});
console.log(customers);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/getCustomersByName.js)

</tab>

<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const customers = await paymentAPI.call("getCustomersByName", {
    name: "Tess",
});
console.log(customers);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/getCustomersByName.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const customers = await paymentAPI.call("getCustomersByName", {
    name: "Tess",
});
console.log(customers);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/getCustomersByName.ts)

</tab>

<tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
customers = api.call(function="getCustomersByName", data={"name":"Tess"})
print(json.dumps(customers, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/getCustomersByName.py)

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
    "name" => "Tess",
};
print(Dumper($api->call("getCustomersByName", $values)));

1;
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Perl/examples/PaymentAPI/getCustomersByName.pl)

</tab>

</tabs>

## Response from server
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "hash": "b270968ee3af5dc303dd5b8b63bcc74a7b3b9f837364c67f10d53a28a9fa479d29e6ed8ed644691bb1702e1a6215d289c271cd7102cc50ae522c724ec36b7fa0",
        "logid": 2017796
    },
    "data": [
        {
            "mexcParamvaluesetsid": "1234567",
            "date": "2024-01-01 01:23:45",
            "customerid": "12345",
            "name": "Tess T Persson",
            "address": "Testgatan 1",
            "postcode": "12345",
            "postoffice": "Testingsby",
            "state": "",
            "countrycode": "",
            "telephone": "",
            "fax": "",
            "mobile": "",
            "deliveryaddress": "",
            "deliverypostcode": "",
            "deliverypostoffice": "",
            "email": "tess.t.persson@example.com",
            "reference": "",
            "companyno": "0000000000",
            "vatregno": "",
            "paymentterms": "",
            "rebate": "",
            "currency": "SEK",
            "language": "sv",
            "export": "",
            "handlingcharge": "",
            "reversetax": "",
            "mexcModulesid": "543210",
            "mm3servicesid": "123456",
            "country": "Sverige",
            "creditlimit": "",
            "customertypecode": "",
            "deliveryterms": "",
            "deliverymethod": "",
            "deliveryname": "",
            "deliveryaddress2": "",
            "deliverycountrycode": "",
            "deliverycountry": "",
            "profile": "",
            "name2": "",
            "address2": "",
            "propertydesignation": "",
            "housingassociationregno": "",
            "status": "",
            "statuslog": "",
            "longitude": "",
            "latitude": "",
            "glncode": "",
            "reference_order": "",
            "email_order": "",
            "reference_offer": "",
            "email_offer": "",
            "notes": "",
            "origin": "",
            "pricelist": "",
            "crediflowPartyId": "",
            "internalCreditLimit": "",
            "internalRegressLimit": "",
            "sendByPostOnly": "",
            "dontSendEFaktura": ""
        }
    ]
}
]]>
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>