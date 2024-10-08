# getCountries

<include from="Snippets-PortalAPI.md" element-id="snippet-header" />

Get countries from the portal.

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
$countries = $portalAPI->get('countries');
if(is_array($countries) && array_key_exists('error', $countries)) {
    echo "Code: " . $countries['code'] . "\n";
    echo "Error: " . $countries['error'] . "\n";
    exit;
}
echo "Found " . count($countries) . " countries\n";
if(count($countries) > 0) {
    $oneCountry = array_pop($countries);
    echo "And the last country is:\n";
    echo json_encode($oneCountry, JSON_PRETTY_PRINT);
}



]]>
</code-block>

<include from="Snippets-PHP-Module.md" element-id="snippet-composer-require" />

</tab>

</tabs>