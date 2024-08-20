# Create paylink without personal information

<include from="Snippets-PaylinkAPI.md" element-id="snippet-header" />



## Request

<tabs>
<tab title="%code-php%">
<code-block lang="php">
<![CDATA[
<?php
declare(strict_types=1);

include(__DIR__ . '/../vendor/autoload.php');

use Qvickly\Api\Payment\PaymentAPI;
use Qvickly\Api\Payment\RequestDataObjects\Data;
use Qvickly\Api\Payment\RequestDataObjects\PaymentData;

use Dotenv\Dotenv;

$dotenv = Dotenv::createImmutable(__DIR__ . '/../..');
$dotenv->load();

$paymentAPI = new PaymentAPI($_ENV['EID'], $_ENV['SECRET']);
$payload = [
    "PaymentData" => [
        "method" => "256",
        "currency" => "SEK",
        "language" => "sv",
        "country" => "SE",
        "orderid" => "123456",
        "bankid" => "true",
        "accepturl" => "https://example.com/accept",
        "cancelurl" => "https://example.com/cancel",
        "callbackurl" => "https://example.com/callback",
        "autocancel" => "120",
    ],
    "Articles" => [
        [
            "artnr" => "1",
            "title" => "Test",
            "aprice" => "10000",
            "taxrate" => "25",
            "quantity" => "1",
            "withouttax" => "10000",
        ]
    ],
    "Cart" => [
        "Total" => [
            "withouttax" => "10000",
            "tax" => "2500",
            "withtax" => "12500",
        ],
    ],
];
$payment = $paymentAPI->addPayment($payload);

echo json_encode($payment, JSON_PRETTY_PRINT);
]]>
</code-block>
</tab>

<tab title="%code-python%">
<code-block lang="python">
<![CDATA[
import os
import os.path
import sys
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), os.path.pardir + os.path.sep + os.path.pardir)))
from dotenv import load_dotenv
import json

load_dotenv(os.path.pardir + os.sep + ".env")
eid = os.getenv("EID")
secret = os.getenv("SECRET")

from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
paymentPayload = {
    "PaymentData": {
        "method": "256",
        "currency": "SEK",
        "language": "sv",
        "country": "SE",
        "orderid": "123456",
        "bankid": "true",
        "accepturl": "https://example.com/accept",
        "cancelurl": "https://example.com/cancel",
        "callbackurl": "https://example.com/callback",
        "autocancel": "2880",
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
print(json.dumps(payment, indent=4))
]]>
</code-block>
</tab>

</tabs>

## Response

<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "hash": "3607007c22dd2ee3b90a4aa1d965cd614c8079405cc4ae187a48395c54abd00e6dfb6285651e1202ba7c14555673ed063ca9a055e6ae9b95518e96436b156910",
        "logid": "1234567"
    },
    "data": {
        "number": "12345",
        "status": "WaitingForPurchase",
        "orderid": "123456",
        "url": "https://pay.billmate.se/12345/20240510abcdef0123456789abcdef0123456789"
    }
}
]]>
</code-block>

