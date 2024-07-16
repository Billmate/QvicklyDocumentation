# getCheckoutVersion

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

$checkoutAPI = new CheckoutAPI($_ENV['EID'], $_ENV['SECRET']);

echo "Get version\n";
$version = $checkoutAPI->getVersion();

echo "Current Checkout version is " . $version . "\n";
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/CheckoutAPI/0-getLatestVersion.php)

<include from="Snippets-PHP-Module.md" element-id="snippet-composer-require" />

</tab>
</tabs>

## Response

```Bash
Get version
Current Checkout version is %CHECKOUT_API_VERSION%
```

<include from="Snippets-Examples.md" element-id="snippet-footer"></include>