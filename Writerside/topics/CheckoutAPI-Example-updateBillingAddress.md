# updateBillingAddress

<include from="Snippets-CheckoutAPI.md" element-id="snippet-header" />

<tabs>
<tab title="%code-php%">
<code-block lang="php">
<![CDATA[
<?php
declare(strict_types=1);

require __DIR__ . '/../../vendor/autoload.php';

use Dotenv\Dotenv;

$dotenv = Dotenv::createImmutable(__DIR__ . '/../..');
$dotenv->load();

use Qvickly\Api\Checkout\CheckoutAPI;

use function Qvickly\Api\Payment\Helpers\exampleCheckout;

$checkoutAPI = new CheckoutAPI($_ENV['EID'], $_ENV['SECRET'], true);

echo "Create checkout\n";
$payload = exampleCheckout();
$checkout = $checkoutAPI->initCheckout($payload);

echo "Step 1\n";
$personalInfo = $checkoutAPI->step1($checkout['hash'], [
    'pno' => $_ENV['PNO'],
    'email' => $_ENV['EMAIL'],
    'type' => 'person',
    'zip' => $_ENV['ZIP'],
    'phonenumber' => $_ENV['PHONENUMBER'],
]);

echo "Update shipping address\n";
$billingAddress = $checkoutAPI->updateBillingAddress($checkout['hash'], [
    'firstname' => 'FIRSTNAME',
    'lastname' => 'LASTNAME',
    'street' => 'STREET',
    'zip' => '23456',
    'city' => 'CITY',
    'country' => 'COUNTRY',
    'phone' => '0700000000'
]);

echo json_encode($billingAddress, JSON_PRETTY_PRINT) . "\n";

echo "URL to use: " . $checkout['url'] . "\n";
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/CheckoutAPI/2b-updateBillingAddress.php)

<include from="Snippets-PHP-Module.md" element-id="snippet-composer-require" />

</tab>
</tabs>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>