# getCurrencies

<include from="Snippets-PortalAPI.md" element-id="snippet-header" />

Get currencies from the portal.

<tabs>
<tab title="%code-php%"> 
<code-block lang="php">
<![CDATA[
<?php
declare(strict_types=1);

use Qvickly\Api\Portal\PortalAPI;

require __DIR__ . '/../../vendor/autoload.php';

use Dotenv\Dotenv;

$dotenv = Dotenv::createImmutable(__DIR__ . '/../..');
$dotenv->load();

$portalAPI = new PortalAPI($_ENV['TOKEN'], testMode: true);
$currencies = $portalAPI->get('currencies');
if(is_array($currencies) && array_key_exists('error', $currencies)) {
    echo "Code: " . $currencies['code'] . "\n";
    echo "Error: " . $currencies['error'] . "\n";
    exit;
}
echo "Found " . count($currencies) . " currencies\n";
if(count($currencies) > 0) {
    $oneCurrency = array_pop($currencies);
    echo "And the last currency is:\n";
    echo json_encode($oneCurrency, JSON_PRETTY_PRINT);
}



]]>
</code-block>

<include from="Snippets-PHP-Module.md" element-id="snippet-composer-require" />

</tab>

</tabs>