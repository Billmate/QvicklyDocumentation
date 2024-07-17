# reset

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
use Qvickly\Api\Enums\PaymentMethod;

$checkoutAPI = new CheckoutAPI($_ENV['EID'], $_ENV['SECRET'], true, [
'BASE_URL' => 'https://api.development.billmate.se/',
'CHECKOUT_BASE_URL' => 'https://checkout.development.billmate.se/',
]);

echo "Create checkout\n";
$payload = exampleCheckout();
$checkout = $checkoutAPI->initCheckout($payload);

echo "Reset\n";
$reset = $checkoutAPI->reset($checkout['hash']);

echo json_encode($reset, JSON_PRETTY_PRINT) . "\n";

echo "URL to use: " . $checkout['url'] . "\n";
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/CheckoutAPI/9-reset.php)

<include from="Snippets-PHP-Module.md" element-id="snippet-composer-require" />

</tab>
</tabs>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>