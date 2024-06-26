# Get invoices by pno

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "6f64652a1bfc9cef299d1a8d76e10636716cae33ff49998b413f9513968ea86e56a0974535c434bfa26b1a6c9563b93f45e3951a0215e949b1c2c430e9ca790b",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
        "language": "sv",
        "time": 1714933179.069521
    },
    "data": {
        "pno": "0000000000",
        "status": "Sent,Paid"
    },
    "function": "getInvoicesByPno"
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
        "pno" => "5501011018",
        "status" => "Sent,Paid",
    ]
);
$invoices = $paymentAPI->getInvoicesByPno($data);
print_r($invoices);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/PaymentAPI/getInvoicesByPno.php)

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
    "pno" => "0000000000",
    "status" => "Sent,Paid"
);

echo json_encode($api->getInvoicesByPno($values), JSON_PRETTY_PRINT);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/PHP.Legacy/examples/getInvoicesByPno.php)

</tab>

<tab title="%code-node%">
<code-block lang="javascript">
<![CDATA[
import { QvicklyPaymentAPI } from "../../PaymentAPI.js";

const paymentAPI = new QvicklyPaymentAPI(process.env.EID, process.env.SECRET);
const invoices = await paymentAPI.call("getInvoicesByPno", {
    pno: "0000000000",
});
console.log(invoices);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/getInvoicesByPno.js)

</tab>

<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const invoices = await paymentAPI.call("getInvoicesByPno", {
    pno: "0000000000",
});
console.log(invoices);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/getInvoicesByPno.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const invoices = await paymentAPI.call("getInvoicesByPno", {
    pno: "0000000000",
});
console.log(invoices);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/getInvoicesByPno.ts)

</tab>

  <tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
invoices = api.call(function="getInvoicesByPno", data={"pno":"0000000000", "status":"Sent,Paid"})
print(json.dumps(invoices, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/getInvoicesByPno.py)

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
    "pno" => "5555555555",
    "status" => "Sent,Paid",
};
print(Dumper($api->call("getInvoicesByPno", $values)));

1;
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Perl/examples/PaymentAPI/getInvoicesByPno.pl)

</tab>

</tabs>

## Response from server
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "hash": "37790e896e2f78c58cbc7da6bafee4fd987ed1f02a72a5bc5faf79632276291ed34555d1d2d9d8b3858e1d39905efdc8b3148545
dac654a11c2f0d05ff2ae1e5",
        "logid": 1234567
    },
    "data": [
        {
            "status": "Cancelled",
            "name": "Whazzup",
            "invoicedate": "2024-04-19",
            "duedate": "2024-05-03",
            "topay": "0.00",
            "invoiceid_real": "12345",
            "fileurl": "http://www.combain.com/mexc/customerinvoices/2024089017233469726180c4f1b6bce.pdf",
            "balancedue": "0.00",
            "invoicetype": "F",
            "distributor_status": "Cancelled",
            "creditinvoiceid": "",
            "hash": "2024089017233469726180c4f1b6bce",
            "mm3servicesid": "123456",
            "mexcModulesid": "543210",
            "mexcCustomerinvoicesid": "1234567"
        }
    ]
}
]]>
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>