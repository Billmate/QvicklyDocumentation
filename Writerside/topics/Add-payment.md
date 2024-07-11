# Add payment

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

This is the example for addPayment. The documentation for can be found [here](addPayment.md)

<tabs>
  <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "bd18e1c9a5212e97d69c8800c66fead8f8f536834fd1d0582fc22ccca8ce4bd24292861ccb7a6419a175e2045869d1aa4799624a9334b44d0b6d6bcaaa319208",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
        "language": "sv",
        "time": 1714751523.547915
    },
    "data": {
        "PaymentData": {
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
    "function": "addPayment"
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

use Qvickly\Api\Payment\DataObjects\Customer;
use Qvickly\Api\Payment\PaymentAPI;
use Qvickly\Api\Payment\DataObjects\Data;
use \Qvickly\Api\Payment\DataObjects\PaymentData;
use \Qvickly\Api\Payment\DataObjects\BillingAddress;

$paymentAPI = new PaymentAPI($_ENV['EID'], $_ENV['SECRET'], testMode: true);
$paymentData = new PaymentData(
    [
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
        "quantity" => "1",
        "withouttax" => "10000"
    ]
);
$data->updateCart();
$payment = $paymentAPI->addPayment($data);
print_r($payment);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/PaymentAPI/Simple/addPayment.php)

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

/* Payment Data */
/**
* @param array Payment Data : Buyer details.
  */

$values["PaymentData"] = array(
    "method" => "1",
    "paymentplanid" => "",
    "currency" => "SEK",
    "language" => "sv",
    "country" => "SE",
    "autoactivate" => "0",
    "orderid" => "P123456789",
    "logo" => "Logo2.jpg",
);

/**
* @param array $details : Detailed information about the invoice.
  */

$values["PaymentInfo"] = array(
    "paymentdate" => "2014-07-31",
    "paymentterms" => "14",
    "yourreference" => "Purchaser X",
    "ourreference" => "Seller Y",
    "projectname" => "Project Z",
    "delivery" => "Post",
    "deliveryterms" => "FOB",
    "autocredit" => "false",
);

/**
* @param array card and bank data : Card and bank details.
  */

$values["Card"] = array(
    "promptname" => "",
    "recurring" => "",
    "recurringnr" => "",
    "accepturl" => "https://www.mystore.se/completedpayment",
    "cancelurl" => "https://www.mystore.se/failedpayment",
    "returnmethod" => "",
    "callbackurl" => "https://www.mystore.se/callback.php",
);

$values["Customer"] = array(
    "nr" => "12",
    "pno" => "550101-1018",
    "Billing" => array(
        "firstname" => "Testperson",
        "lastname" => "Approved",
        "company" => "Company",
        "street" => "Teststreet",
        "street2" => "Street2",
        "zip" => "12345",
        "city" => "Testcity",
        "country" => "SE",
        "phone" => "0712-345678",
        "email" => "test@developer.qvickly.io",
    ),
    "Shipping" => array(
        "firstname" => "Testperson",
        "lastname" => "Approved",
        "company" => "Company",
        "street" => "Teststreet",
        "street2" => "Shipping Street2",
        "zip" => "12345",
        "city" => "Testcity",
        "country" => "SE",
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
    "withouttax" => "2468",
);
$values["Articles"][1] = array(
    "artnr" => "B456",
    "title" => "Article 2",
    "quantity" => "3.5",
    "aprice" => "56780",
    "taxrate" => "25",
    "discount" => "10",
    "withouttax" => "178857",
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

echo json_encode($api->addPayment($values), JSON_PRETTY_PRINT);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/PHP.Legacy/examples/addPayment.php)

</tab>
  <tab title="%code-csharp%">
<code-block lang="c#">
<![CDATA[
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BillmateAPI;

namespace AddPayment
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
                paymentdata["method"] = "1";
                paymentdata["currency"] = "SEK";
                paymentdata["language"] = "sv";
                paymentdata["country"] = "SE";
                paymentdata["autoactivate"] = "0";
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
                paymentinfo["autocredit"] = "false";
                values["PaymentInfo"] = Paymentinfo;

                Dictionary<string, string> Card = new Dictionary<string, string>();
                card["promptname"] = "";
                card["recurring"] = "";
                card["recurringnr"] = "";
                card["accepturl"] = "https://www.mystore.se/completedpayment";
                card["cancelurl"] = "https://www.mystore.se/failedpayment";
                card["returnmethod"] = "";
                card["callbackurl"] = "https://www.mystore.se/callback.php";
                values["card"] = Card;

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
                billing["country"] = "SE";
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
                shipping["country"] = "SE";
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

                Dictionary<string, object> result = bm.Call("addPayment", values);
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
<code-block lang="JavaScript">
<![CDATA[
import { QvicklyPaymentAPI } from "../../PaymentAPI.js";

const paymentAPI = new QvicklyPaymentAPI(process.env.EID, process.env.SECRET);
const paymentData = {
    PaymentData: {
        method: "8",
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
        }
    ],
    Cart: {
        Total: {
            withouttax: "10000",
            tax: "2500",
            withtax: "12500",
        },
    },
};

const payment = await paymentAPI.call("addPayment", paymentData);
console.log(payment);

]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/addPayment.js)


</tab>
<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const paymentData = {
    PaymentData: {
        method: "8",
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

const payment = await paymentAPI.call("addPayment", paymentData);
console.log(payment);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/addPayment.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const paymentData = {
    PaymentData: {
        method: "8",
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

const payment = await paymentAPI.call("addPayment", paymentData);
console.log(payment);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/addPayment.ts)

</tab>

  <tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
paymentPayload = {
    "PaymentData": {
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
payment = api.call(function="addPayment", data=paymentPayload)
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/addPayment.py)

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
    "method" => "1",
    "paymentplanid" => "",
    "currency" => "SEK",
    "language" => "sv",
    "country" => "SE",
    "autoactivate" => "0",
    "orderid" => "P123456789",
    "logo" => "Logo2.jpg",
});

$values->{"PaymentInfo"} = TieThisHash({
    "paymentdate" => "2014-07-31",
    "paymentterms" => "14",
    "yourreference" => "Purchaser X",
    "ourreference" => "Seller Y",
    "projectname" => "Project Z",
    "delivery" => "Post",
    "deliveryterms" => "FOB",
    "autocredit" => "false",
});

$values->{"Card"} = TieThisHash({
    "promptname" => "",
    "recurring" => "",
    "recurringnr" => "",
    "accepturl" => "https://www.mystore.se/completedpayment",
    "cancelurl" => "https://www.mystore.se/failedpayment",
    "returnmethod" => "",
    "callbackurl" => "https://www.mystore.se/callback.php",
});

$values->{"Customer"} = TieThisHash({
    "nr" => "12",
    "pno" => "550101-1018",
    "Billing" => TieThisHash({
        "firstname" => "Testperson",
        "lastname" => "Approved",
        "company" => "Company",
        "street" => "Teststreet",
        "street2" => "Street2",
        "zip" => "12345",
        "city" => "Testcity",
        "country" => "SE",
        "phone" => "0712-345678",
        "email" => "test\@developer.qvickly.io",
    }),
    "Shipping" => TieThisHash({
        "firstname" => "Testperson",
        "lastname" => "Approved",
        "company" => "Company",
        "street" => "Teststreet",
        "street2" => "Shipping Street2",
        "zip" => "12345",
        "city" => "Testcity",
        "country" => "SE",
        "phone" => "0711-345678",
    })
});

$values->{"Articles"} = [];
push @{$values->{"Articles"}}, TieThisHash({
    "artnr" => "A123",
    "title" => "Article 1",
    "quantity" => "2",
    "aprice" => "1234",
    "taxrate" => "25",
    "discount" => "0",
    "withouttax" => "2468",
});
push @{$values->{"Articles"}}, TieThisHash({
    "artnr" => "B456",
    "title" => "Article 2",
    "quantity" => "3.5",
    "aprice" => "56780",
    "taxrate" => "25",
    "discount" => "10",
    "withouttax" => "178857",
});

$values->{"Cart"} = TieThisHash({
    "Handling" => TieThisHash({
        "withouttax" => "1000",
        "taxrate" => "25"
    }),
    "Shipping" => TieThisHash({
        "withouttax" => "3000",
        "taxrate" => "25"
    }),
    "Total" => TieThisHash({
        "withouttax" => "185325",
        "tax" => "46331",
        "rounding" => "44",
        "withtax" => "231700"
    })
});

print(Dumper($api->call("addPayment", $values)));

1;
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Perl/examples/PaymentAPI/addPayment.pl)

</tab>

</tabs>

## Response from server

Depending on the used payment method, the response will contain different data.

### Card payment

<code-block lang="json">
{
    "credentials": {
        "hash": "d5cee0d79367fe63003166174a19980e919cd85da029e8b2029526bc96ab054ba2dc71390409538cc0e82aa44600a48535d1a7c02f04546e0797a82118b6c66d",
        "logid": 123456798
    },
    "data": {
        "number": "12345",
        "status": "WaitingForPurchase",
        "orderid": "123456",
        "url": "https://api.billmate.se/swedbankpay/12345/20240503d3ed5b5f079ad7f3b8ce4b5ac1303bed"
    }
}
</code-block>

### Swish payment

<code-block lang="json">
{
    "credentials": {
        "hash": "d55b010b0b43009b82f24d238c960e2768d84c67779a5fd4f7049c7e0ac2e212c43b5abcc372ad650c9442f1e71cdc1e0508e9bbe194b87d68dea55d308b7989",
        "logid": 123456798
    },
    "data": {
        "number": "12345",
        "status": "WaitingForPurchase",
        "orderid": "123456",
        "url": "https://api.billmate.se/invoice-swish/12345/2024050384406eb8b12402af11f3ed7a65f2d1f8/"
    }
}
</code-block>

### Invoice payment with BankID authentification

<code-block lang="json">
{
    "credentials": {
        "hash": "814809f5d30966cbf50b2161680dc562ede3fc40596a195771fdee15935bd5c1d92f0babb9f5e189d0b728a143b24a2383bed60f863566ed25b1bff352bb6549",
        "logid": 123456798
    },
    "data": {
        "number": "12345",
        "status": "WaitingForBankIDIdentification",
        "orderid": "123456",
        "url": "https://api.billmate.se/bankidv6/12345/20240503ce7218d18baae344cb14383c1a2d5ff9"
    }
}
</code-block>

### Response after a successful payment

<code-block lang="json">
{
    "credentials": {
        "hash":"0b2d1c4d31228a6dc845a16d57b782b97a5e111db2348324be42f5a91e88c8bd35fa62f0e6240b5680e17da03bb9301c5bd0ed755db7fa62ba6054ee21cdde88",
        "logid": 123456798
    }
    "data": {
        "number":"12345",
        "status":"Created",
        "orderid":"123456",
        "url":"https://api.qvickly.io/invoice/140544658153c38f1cdf279"
    }
}
</code-block>

### Checkout

<code-block lang="json">
{
    "credentials": {
        "hash": "58132e8ca66155907498718758427a15f958a03d6d2a9f2e1227262e6c1fe84f022a0302f16107d30777d6442555fc8fade57c86680217265b005253c3cc69f3",
        "logid": 123456798
    },
    "data": {
        "number": "12345",
        "status": "WaitingForPurchase",
        "orderid": "123456",
        "url": "https://checkout.billmate.se/12345/20240503d4b5b18e58def17d219732e7fbc6f5e6"
    }
}
</code-block>

### Paylink

<code-block lang="json">
{
    "credentials": {
        "hash": "d9189bbd4f039d23596d7aba451f2a096973d5caf4ca584fa1fd9cd01016456bd556f1ce21449c0f06d077d19da83a60440b312d08dd36a603936802dd479ed2",
        "logid": 123456798
    },
    "data": {
        "number": "12345",
        "status": "WaitingForPurchase",
        "orderid": "123456",
        "url": "https://pay.billmate.se/12345/20240503ef170056f5ada064c6574f5feb1729d2"
    }
}
</code-block>

### Pay With Qvickly

<code-block lang="json">
{
    "credentials": {
        "hash": "3249bc6fab53b0256d05b6705d2c116a438a078d33f771ad6018840230af1794df3906d77c3045f191b17904218edf846056b7e00549926e82eddefbf195f678",
        "logid": 123456798
    },
    "data": {
        "number": "12345",
        "status": "Created",
        "orderid": "123456",
        "url": "https://my.qvickly.io/pwq/12345/20240503e3b574f0d3e5f18965f1eea3a0806e83"
    }
}
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>