# Update payment

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "fe656aff23e6ee67aa9e6801369f2f82fcc4f9f9afa37c318391bfa2e2f17d81db429e42847c1a2cd9c1b11b5848522ca6941167b407fc45a23446bf095affa0",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
        "language": "sv",
        "time": 1714828104.6922839
    },
    "data": {
        "PaymentData": {
            "number": "12345",
            "method": "8",
            "currency": "SEK",
            "language": "sv",
            "country": "SE",
            "orderid": "123456",
            "bankid": "true",
            "accepturl": "https://example.com/accept",
            "cancelurl": "https://example.com/cancel",
            "callbackurl": "https://example.com/callback"
        },
        "Customer": {
            "pno": "550101-1018",
            "Billing": {
                "firstname": "Tess T",
                "lastname": "Person",
                "street": "Testvägen 1",
                "zip": "12345",
                "city": "Testinge",
                "country": "SE",
                "phone": "0700000000",
                "email": "test@example.com"
            }
        },
        "Articles": [
            {
                "artnr": "1",
                "title": "Test",
                "aprice": "10000",
                "taxrate": "25",
                "quantity": "1",
                "withouttax": "10000"
            }
        ],
        "Cart": {
            "Total": {
                "withouttax": "10000",
                "tax": "2500",
                "withtax": "12500"
            }
        }
    },
    "function": "updatePayment"
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

use Qvickly\Api\Payment\DataObjects\Customer;
use Qvickly\Api\Payment\PaymentAPI;
use Qvickly\Api\Payment\DataObjects\Data;
use \Qvickly\Api\Payment\DataObjects\PaymentData;
use \Qvickly\Api\Payment\DataObjects\BillingAddress;

$paymentAPI = new PaymentAPI($_ENV['EID'], $_ENV['SECRET'], testMode: true);
$paymentData = new PaymentData(
    [
        "number" => "4003523",
        "method" => "2",
        "currency" => "SEK",
        "language" => "sv",
        "country" => "SE",
        "orderid" => "12345abcde",
        "bankid" => "true",
        "accepturl" => "https://example.com/accept",
        "cancelurl" => "https://example.com/cancel",
        "callbackurl" => "https://example.com/callback",
        "autocancel" => "2800",
    ]
);
$billing = new BillingAddress(
    [
        "firstname" => "Test",
        "lastname" => "Testsson",
        "street" => "Testgatan 1",
        "zip" => "12345",
        "city" => "Teststad",
        "country" => "SE",
        "email" => "test@example.com",
        "phone" => "0700000000",
    ]
);
$customer = new Customer(
    [
        "pno" => "550101-1018",
        "Billing" => $billing,
    ]
);
$data = new Data(
    [
        "PaymentData" => $paymentData,
        "Customer" => $customer
    ]
);
$data->addArticle(
    [
        "artnr" => "1",
        "title" => "Test",
        "aprice" => "10000",
        "taxrate" => "25",
        "quantity" => "2",
        "withouttax" => "20000"
    ]
);
$data->updateCart();
$payment = $paymentAPI->updatePayment($data);
print_r($payment);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/PaymentAPI/updatePayment.php)

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
define("QVICKLY_SERVER", "%PAYMENT_API_VERSION%");    /* API version */
define("QVICKLY_CLIENT", "%PAYMENT_API_CLIENT_NAME%");
define("QVICKLY_LANGUAGE", "sv");
$api = new PaymentAPI($id, $key, $test, $debug);
$values = array();

/* Payment Data */
/**
* @param array Payment Data : Buyer details.
  */

$values["PaymentData"] = array(
    "number" => "1000235",
    "currency" => "SEK",
    "language" => "sv",
    "country" => "SE",
    "orderid" => "P123456789",
    "logo" => "Logo2.jpg",
);

/**
* @param array $values : Information about the invoice values.
  */

$values["PaymentInfo"] = array(
    "paymentdate" => "2014-07-31",
    "paymentterms" => "14",
    "yourreference" => "Purchaser X",
    "ourreference" => "Seller Y",
    "projectname" => "Project Z",
    "delivery" => "Post",
    "deliveryterms" => "FOB",
);

$values["Customer"] = array(
    "nr" => "12",
    "pno" => "550101-1018",
    "Billing" => array(
        "firstname" => "Testperson",
        "lastname" => "Approved",
        "Company" => "Company",
        "street" => "Teststreet",
        "street2" => "Street2",
        "zip" => "12345",
        "city" => "Testcity",
        "country" => "Sweden",
        "phone" => "0712-345678",
        "email" => "test@developer.qvickly.io",
    ),
    "Shipping" => array(
        "firstname" => "Testperson",
        "lastname" => "Approved",
        "Company" => "Company",
        "street" => "Teststreet",
        "street2" => "Shipping Street2",
        "zip" => "12345",
        "city" => "Testcity",
        "country" => "Sweden",
        "phone" => "0711-345678",
    )
);

/**
* @param array articles : article details.
  */

$values["Articles"][0] = array(
    "artnr" => "A123",
    "title" => "Article 1",
    "quantity" => "2",
    "aprice" => "1234",
    "taxrate" => "25",
    "discount" => "0",
    "withouttax" => "2468"
);
$values["Articles"][1] = array(
    "artnr" => "B456",
    "title" => "Article 2",
    "quantity" => "3.5",
    "aprice" => "56780",
    "taxrate" => "25",
    "discount" => "10",
    "withouttax" => "178857"
);

/**
* @param array Cart Data : Cart details.
  */

$values["Cart"] = array(
    "Handling" => array(
        "withouttax" => "1000",
        "taxrate" => "25"
    ),
    "Shipping" => array(
        "withouttax" => "3000",
        "taxrate" => "25"
    ),
    "Total" => array(
        "withouttax" => "185325",
        "tax" => "46331",
        "rounding" => "44",
        "withtax" => "231700"
    )
);

echo json_encode($api->updatePayment($values), JSON_PRETTY_PRINT);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/PHP.Legacy/examples/updatePayment.php)

</tab>
  <tab title="%code-csharp%">
<code-block lang="c#">
<![CDATA[
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BillmateAPI;

namespace GetAddress
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                Boolean ssl = false;
                Dictionary referrer = new Dictionary();
                referrer["HTTP_X_REAL_IP"] = "127.0.0.1";
                Billmate bm = new Billmate("%MERCHANT_ID%", "%MERCHANT_KEY%",ssl,true,false,referrer);
                bm.Client = "%PAYMENT_API_CLIENT_NAME%";
                bm.Server = "%PAYMENT_API_VERSION%";
                bm.Language = "sv";
                Dictionary<string, object> values = new Dictionary<string, object>();

                Dictionary<string, string> Paymentdata = new Dictionary<string, string>();
                paymentdata["number"] = "1000235";
                paymentdata["currency"] = "SEK";
                paymentdata["language"] = "sv";
                paymentdata["country"] = "SE";
                paymentdata["orderid"] = "P123456789";
                paymentdata["logo"] = "Logo2.jpg";
                values["PaymentData"] = Paymentdata;

                Dictionary<string, string> Paymentinfo = new Dictionary<string, string>();
                paymentinfo["paymentdate"] = "2014-07-31";
                paymentinfo["paymentterms"] = "14";
                paymentinfo["yourreference"] = "Purchaser X";
                paymentinfo["ourreference"] = "Seller Y";
                paymentinfo["projectname"] = "Project Z";
                paymentinfo["deliverymethod"] = "Post";
                paymentinfo["deliveryterms"] = "FOB";
                values["PaymentInfo"] = Paymentinfo;

                Dictionary<string, object> Customer = new Dictionary<string, object>();
                customer["nr"] = "12";
                customer["pno"] = "550101-1018";
                Dictionary<string, string> Billing = new Dictionary<string, string>();
                billing["firstname"] = "Testperson";
                billing["lastname"] = "Approved";
                billing["company"] = "Company";
                billing["street"] = "Teststreet";
                billing["street2"] = "Street2";
                billing["zip"] = "12345";
                billing["city"] = "Testcity";
                billing["country"] = "Sweden";
                billing["phone"] = "0712-345678";
                billing["email"] = "test@developer.qvickly.io";
                customer["Billing"] = Billing;
                Dictionary<string, string> Shipping = new Dictionary<string, string>();
                shipping["firstname"] = "Testperson";
                shipping["lastname"] = "Approved";
                shipping["company"] = "Company";
                shipping["street"] = "Teststreet";
                shipping["street2"] = "Shipping Street2";
                shipping["zip"] = "12345";
                shipping["city"] = "Testcity";
                shipping["country"] = "Sweden";
                shipping["phone"] = "0711-345678";
                customer["Shipping"] = Shipping;
                values["Customer"] = Customer;

                Dictionary<string, string>[] Articles = new Dictionary<string, string>[2];
                Dictionary<string, string> Article0 = new Dictionary<string, string>();
                Article0["artnr"] = "A123";
                Article0["title"] = "Article 1";
                Article0["quantity"] = "2";
                Article0["aprice"] = "1234";
                Article0["taxrate"] = "25";
                Article0["discount"] = "0";
                Article0["withouttax"] = "2468";
                Articles[0] = Article0;
                Dictionary<string, string> Article1 = new Dictionary<string, string>();
                Article1["artnr"] = "B456";
                Article1["title"] = "Article 2";
                Article1["quantity"] = "3.5";
                Article1["aprice"] = "56780";
                Article1["taxrate"] = "25";
                Article1["discount"] = "10";
                Article1["withouttax"] = "178857";
                Articles[1] = Article1;
                values["Articles"] = Articles;


                Dictionary<string, object> Cart = new Dictionary<string, object>();

                Dictionary<string, string> Handlingfee = new Dictionary<string, string>();
                handlingfee["withouttax"] = "1000";
                handlingfee["taxrate"] = "25";
                cart["Handling"] = Handlingfee;

                Dictionary<string, string> Shippingfee = new Dictionary<string, string>();
                shippingfee["withouttax"] = "3000";
                shippingfee["taxrate"] = "25";
                cart["Shipping"] = Shippingfee;

                Dictionary<string, string> Total = new Dictionary<string, string>();
                total["withouttax"] = "185325";
                total["tax"] = "46331";
                total["rounding"] = "44";
                total["withtax"] = "231700";
                cart["Total"] = Total;

                values["Cart"] = Cart;

                Dictionary<string, object> result = bm.Call("updatePayment", values);
                // Output it in Console
                result.ToList().ForEach(x => Console.WriteLine(x.Key + ":" + x.Value));

            }
            catch (BillmateException be)
            {
                Console.WriteLine(be.ErrorMessage);
                Console.WriteLine(be.ErrorLogs);
            }


            Console.ReadLine();
        }
    }
}
]]>
</code-block>
  </tab>
<tab title="%code-node%">
<code-block lang="javascript">
<![CDATA[
import { QvicklyPaymentAPI } from "../../PaymentAPI.js";

const paymentAPI = new QvicklyPaymentAPI(process.env.EID, process.env.SECRET);
const paymentData = {
    PaymentData: {
        number: "12345",
        method: "2",
        currency: "SEK",
        language: "sv",
        country: "SE",
        orderid: "123456",
        bankid: "true",
        accepturl: "https://example.com/accept",
        cancelurl: "https://example.com/cancel",
        callbackurl: "https://example.com/callback",
    },
    Customer: {
        pno: "550101-1018",
        Billing: {
            firstname: "Tess T",
            lastname: "Person",
            street: "Testvägen 1",
            zip: "12345",
            city: "Testinge",
            country: "SE",
            phone: "0700000000",
            email: "test@example.com",
        },
    },
    Articles: [
        {
            artnr: "1",
            title: "Test",
            aprice: "10000",
            taxrate: "25",
            quantity: "1",
            withouttax: "10000",
        },
    ],
    Cart: {
        Total: {
        withouttax: "10000",
            tax: "2500",
            withtax: "12500",
        },
    },
};

const payment = await paymentAPI.call("updatePayment", paymentData);
console.log(payment);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/updatePayment.js)

</tab>

<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const paymentData = {
    PaymentData: {
        number: "12345",
        method: "2",
        currency: "SEK",
        language: "sv",
        country: "SE",
        orderid: "123456",
        bankid: "true",
        accepturl: "https://example.com/accept",
        cancelurl: "https://example.com/cancel",
        callbackurl: "https://example.com/callback",
    },
    Customer: {
        pno: "550101-1018",
        Billing: {
            firstname: "Tess T",
            lastname: "Person",
            street: "Testvägen 1",
            zip: "12345",
            city: "Testinge",
            country: "SE",
            phone: "0700000000",
            email: "test@example.com",
        },
    },
    Articles: [
        {
            artnr: "1",
            title: "Test",
            aprice: "10000",
            taxrate: "25",
            quantity: "1",
            withouttax: "10000",
        },
    ],
    Cart: {
        Total: {
            withouttax: "10000",
            tax: "2500",
            withtax: "12500",
        },
    },
};

const payment = await paymentAPI.call("updatePayment", paymentData);
console.log(payment);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/updatePayment.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const paymentData = {
    PaymentData: {
        number: "12345",
        method: "2",
        currency: "SEK",
        language: "sv",
        country: "SE",
        orderid: "123456",
        bankid: "true",
        accepturl: "https://example.com/accept",
        cancelurl: "https://example.com/cancel",
        callbackurl: "https://example.com/callback",
    },
    Customer: {
        pno: "550101-1018",
        Billing: {
            firstname: "Tess T",
            lastname: "Person",
            street: "Testvägen 1",
            zip: "12345",
            city: "Testinge",
            country: "SE",
            phone: "0700000000",
            email: "test@example.com",
        },
    },
    Articles: [
        {
            artnr: "1",
            title: "Test",
            aprice: "10000",
            taxrate: "25",
            quantity: "1",
            withouttax: "10000",
        },
    ],
    Cart: {
        Total: {
            withouttax: "10000",
            tax: "2500",
            withtax: "12500",
        },
    },
};

const payment = await paymentAPI.call("updatePayment", paymentData);
console.log(payment);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/updatePayment.ts)

</tab>

<tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
paymentPayload = {
    "PaymentData": {
        "number": "12345",
        "method": "8",
        "currency": "SEK",
        "language": "sv",
        "country": "SE",
        "orderid": "123456",
        "bankid": "true",
        "accepturl": "https://example.com/accept",
        "cancelurl": "https://example.com/cancel",
        "callbackurl": "https://example.com/callback",
    },
    "Customer": {
        "pno": "550101-1018",
        "Billing": {
            "firstname": "Tess T",
            "lastname": "Person",
            "street": "Testvägen 1",
            "zip": "12345",
            "city": "Testinge",
            "country": "SE",
            "phone": "0700000000",
            "email": "test@example.com",
        }
    },
    "Articles": [
        {
            "artnr": "1",
            "title": "Test",
            "aprice": "10000",
            "taxrate": "25",
            "quantity": "1",
            "withouttax": "10000",
        }
    ],
    "Cart": {
        "Total": {
            "withouttax": "10000",
            "tax": "2500",
            "withtax": "12500",
        },
    },            
}
payment = api.call(function="updatePayment", data=paymentPayload)
print(json.dumps(payment, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/updatePayment.py)

  </tab>

<tab title="%code-perl%">
<code-block lang="perl">
<![CDATA[
#!/usr/bin/perl
use strict;
use warnings;
use JSON::PP;
use Data::Dumper;
use Tie::IxHash;
use lib '../..';
require "TieThisHash.pm";
require "PaymentAPI.pl";
require "LoadEnv.pl";
LoadEnv('../../.env');

my $test = 1;
my $debug = 0;

# Credentials for Auth
my $id = $ENV{"EID"};
my $key = $ENV{"SECRET"};

my $api = PaymentAPI->new($id, $key, $test, $debug);
my $values = {};

# Need to tie the hash to preserve the order of the keys
tie %$values, 'Tie::IxHash' or die "tie(\%values, 'Tie::IxHash') failed!\n";


$values->{"PaymentData"} = TieThisHash({
    "number" => "12345",
    "method" => "8",
    "currency" => "SEK",
    "language" => "sv",
    "country" => "SE",
    "orderid" => "123456",
    "bankid" => "true",
    "accepturl" => "https://example.com/accept",
    "cancelurl" => "https://example.com/cancel",
    "callbackurl" => "https://example.com/callback"
});


$values->{"Customer"} = TieThisHash({
    "pno" => "550101-1018",
    "Billing" => TieThisHash({
        "firstname" => "Tess T",
        "lastname" => "Person",
        "street" => "Testvägen 1",
        "zip" => "12345",
        "city" => "Testinge",
        "country" => "SE",
        "phone" => "0700000000",
        "email" => "test\@example.com"
    })
});

$values->{"Articles"} = [];
push @{$values->{"Articles"}}, TieThisHash({
    "artnr" => "1",
    "title" => "Test",
    "aprice" => "10000",
    "taxrate" => "25",
    "quantity" => "1",
    "withouttax" => "10000"
});


$values->{"Cart"} = TieThisHash({
    "Total" => TieThisHash({
        "withouttax" => "10000",
        "tax" => "2500",
        "withtax" => "12500"
    })
});

print(Dumper($api->call("updatePayment", $values)));

1;
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Perl/examples/PaymentAPI/updatePayment.pl)

</tab>

</tabs>

## Response from server
<code-block lang="json">
{
    "credentials": {
        "hash": "cea23742339896d70a3ba5ade87f96de9c46827d6fb1d964eb9cd1754681d16a4d00efa0d6ce771819e9fa92a1383d3f9dc7d7321dd564c088881899e0e7e65f",
        "logid": "1234567"
    },
    "data": {
        "number": "1000235",
        "orderid": "12345",
        "status": "Created",
        "url": "https://api.qvickly.io/invoice/140544658153c38f1cdf279"
    }
}
</code-block>

### Error response
<code-block lang="json">
{
    "code": "5202",
    "message": "Couldn't update payment - payment does not have status created.",
    "logid": "1234567"
}
</code-block>

<code-block lang="json">
{
    "code": "5201",
    "message": "Invoice number 13286 does not exist.",
    "logid": "1234567"
}
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>