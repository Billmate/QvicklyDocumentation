# Get BankIdKey From AuthToken

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

This is the example for getBankIdKeyFromAuthToken. The documentation for can be found [here](GetBankIdKeyFromAuthToken.md)

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "57d2dfa80914e9668d91862836e893249fba62bfaa4ca603c84ffdc903a0e66c8b1aa44060fd586a47b98b1877a071e00fb817d872508c5b5a2ac8e5bbad50fa",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
        "language": "sv",
        "time": 1714944786.554058
    },
    "data": {
        "hash": "123456abc123456abc123456abc12345",
        "token": "23456"
    },
    "function": "getBankIdKeyFromAuthToken"
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

use Qvickly\Api\Payment\PaymentAPI;
use Qvickly\Api\Payment\RequestDataObjects\Data;

$paymentAPI = new PaymentAPI($_ENV['EID'], $_ENV['SECRET']);
$data = new Data(
    [
        "token" => $_ENV['AUTH_TOKEN'],
        "hash" => $_ENV['INVOICEHASH']
    ]
);
$bankidKey = $paymentAPI->getBankIdKeyFromAuthToken($data);
print_r($bankidKey);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/PaymentAPI/Simple/getBankIdKeyFromAuthToken.php)

<include from="Snippets-PHP-Module.md" element-id="snippet-composer-require" />

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
        "bankidKey": "abcdefghijklmnopqrstuvxyz1234567890"
    }
}
]]>
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>