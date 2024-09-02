# getCustomers

<include from="Snippets-PortalAPI.md" element-id="snippet-header" />

Get customers from the portal.

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
$customers = $portalAPI->get('customers', params: ['filter' => 'search', 'search' => 'Testperson']);
if(is_array($customers) && array_key_exists('error', $customers)) {
    echo "Code: " . $customers['code'] . "\n";
    echo "Error: " . $customers['error'] . "\n";
    exit;
}
echo "Found " . count($customers) . " customers\n";
if(count($customers) > 0) {
    $oneCustomer = array_pop($customers);
    $oneCustomerId = $oneCustomer['mexcParamvaluesetsid'];
    $customer = $portalAPI->get('customers/' . $oneCustomerId);
    echo "And the last customer is:\n";
    echo json_encode($customer, JSON_PRETTY_PRINT);
}



]]>
</code-block>

<include from="Snippets-PHP-Module.md" element-id="snippet-composer-require" />

</tab>

</tabs>