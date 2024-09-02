# getlogos

<include from="Snippets-PortalAPI.md" element-id="snippet-header" />

Get logos from the portal.

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

$tokenParts = explode('.', $_ENV['TOKEN']);
$userData = json_decode(base64_decode($tokenParts[1]), true);

$portalAPI = new PortalAPI($_ENV['TOKEN'], testMode: true);
$logos = $portalAPI->get('logos/' . $userData['Merchant']['id']);
if(is_array($logos) && array_key_exists('error', $logos)) {
    echo "Code: " . $logos['code'] . "\n";
    echo "Error: " . $logos['error'] . "\n";
    exit;
}
echo "Found " . count($logos) . " logos\n";
if(count($logos) > 0) {
    $oneLogo = array_pop($logos);
    echo "And the last logo is:\n";
    echo json_encode($oneLogo, JSON_PRETTY_PRINT);
}



]]>
</code-block>

<include from="Snippets-PHP-Module.md" element-id="snippet-composer-require" />

</tab>

</tabs>