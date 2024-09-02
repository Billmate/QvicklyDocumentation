# getCreditflow

<include from="Snippets-PortalAPI.md" element-id="snippet-header" />

Get creditflow from the portal.

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
$creditflow = $portalAPI->get('creditflow/search/5501011018');
if(is_array($creditflow) && array_key_exists('error', $creditflow)) {
    echo "Code: " . $creditflow['code'] . "\n";
    echo "Error: " . $creditflow['error'] . "\n";
    exit;
}
echo json_encode($creditflow, JSON_PRETTY_PRINT);



]]>
</code-block>

<include from="Snippets-PHP-Module.md" element-id="snippet-composer-require" />

</tab>

</tabs>