# Duplicate payment

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

This is the example for duplicatePayment. The documentation for can be found [here](duplicatePayment.md)

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "d6c98ac67c1b7dacb49c39a2641b64bca7048f765445a69a4ffad78799091fbef1d3d5ebaf0d88ffea3b98021c2026934313feeaa9bc509a42a6491cd04a714a",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
        "language": "sv",
        "time": 1714828782.338867
    },
    "data": {
        "PaymentData": {
            "number": "1000235",
            "method": "1"
        }
    },
    "function": "duplicatePayment"
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

$paymentAPI = new PaymentAPI($_ENV['EID'], $_ENV['SECRET'], testMode: true);
$data = new Data(
    [
        "PaymentData" => new PaymentData([
            "number" => "1000235",
            "method" => "1"
        ])
    ]
);
$payment = $paymentAPI->duplicatePayment($data);
print_r($payment);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/PaymentAPI/Simple/duplicatePayment.php)

<include from="Snippets-PHP-Module.md" element-id="snippet-composer-require" />

</tab>


</tabs>

## Response from server
<code-block lang="json">
{
    "credentials": {
        "hash": "54c3928bd58ea07eec2b82b6f3075df85f9bc5846f737feee5e497dcf96df26097258b30447df4627f97fcd4100fa86f7dbe9dd4a753da29939d34c9afae013f"
    },
    "data": {
        "number": "1000235",
        "orderid": "12345",
        "status": "Created",
        "url": "https://api.qvickly.io/invoice/140544658153c38f1cdf279"
    }
}
</code-block>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>