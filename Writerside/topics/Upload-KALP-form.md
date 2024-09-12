# Upload KALP form

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

This is the example for uploadKalpForm. The documentation for can be found [here](uploadKalpForm.md)

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
        "number": "123456",
        "PaymentData": {
            "paymentplanid": "1"
        },
        "kalpData": {
            "monthlyIncome": "32000",
            "nbrOfPerson": "2",
            "typeOfAccommodation": "rental",
            "monthlyExpenses": "2300",
            "monthlyLoans": "2500",
        }
    },
    "function": "uploadKalpForm"
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
use Qvickly\Api\Payment\RequestDataObjects\PaymentData;
use \Qvickly\Api\Payment\RequestDataObjects\KalpForm;

$paymentAPI = new PaymentAPI($_ENV['EID'], $_ENV['SECRET']);

$kalpData = new KalpForm(
    [
        "monthlyIncome" => "32000",
        "nbrOfPerson" => "2",
        "typeOfAccommodation" => "rental",
        "monthlyExpenses" => "2300",
        "monthlyLoans" => "2500",
    ]
);
$paymentData = new PaymentData((
    [
        "paymentplanid" => "1",
    ]
));
$data = new Data(
    [
        "kalpData" => $kalpData,
        "PaymentData" => $paymentData,
        "number" => 123456
    ]
);
$payment = $paymentAPI->uploadKalpForm($data);
print_r($payment);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/PaymentAPI/Simple/uploadKalpForm.php)

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
        "kalpData": {
            "monthlyIncome": "32000",
            "nbrOfPerson": "2",
            "typeOfAccommodation": "rental",
            "monthlyExpenses": "2300",
            "monthlyLoans": "2500",
            "monthlyCost": "0",
            "result": "23630",
            "date": "2024-09-12 10:21:14",
            "status": "Passed"
        }
    }
}
]]>
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>