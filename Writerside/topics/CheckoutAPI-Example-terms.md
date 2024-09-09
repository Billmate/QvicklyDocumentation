# terms

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

$terms = $checkoutAPI->terms($checkout['hash'], 1000, 8);
echo $terms . "\n";

]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/CheckoutAPI/B-terms.php)

<include from="Snippets-PHP-Module.md" element-id="snippet-composer-require" />

</tab>
</tabs>

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>