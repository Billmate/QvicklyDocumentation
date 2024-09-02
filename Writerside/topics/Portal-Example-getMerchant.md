# getMerchant

<include from="Snippets-PortalAPI.md" element-id="snippet-header" />

Get merchant information from the portal.

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
$merchant = $portalAPI->get('merchant');
if(is_array($merchant) && array_key_exists('error', $merchant)) {
    echo "Code: " . $merchant['code'] . "\n";
    echo "Error: " . $merchant['error'] . "\n";
    exit;
}
echo json_encode($merchant, JSON_PRETTY_PRINT);



]]>
</code-block>

<include from="Snippets-PHP-Module.md" element-id="snippet-composer-require" />

</tab>

</tabs>