# getStatuslogs

<include from="Snippets-PortalAPI.md" element-id="snippet-header" />

Get the statuslogs for an invoice from the portal.

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
$invoices = $portalAPI->get('invoices', params: ['filter' => 'search', 'search' => 'Testperson']);
if(is_array($invoices) && array_key_exists('error', $invoices)) {
echo "Code: " . $invoices['code'] . "\n";
echo "Error: " . $invoices['error'] . "\n";
exit;
}
echo "Found " . count($invoices) . " invoices\n";
if(count($invoices) > 0) {
$oneInvoice = array_pop($invoices);
$oneInvoiceId = $oneInvoice['invoiceid_real'];
$statusLog = $portalAPI->get('invoices/' . $oneInvoiceId . '/statuslog');
echo "And the statuslog for the last invoice is:\n";
echo json_encode($statusLog, JSON_PRETTY_PRINT);
}



]]>
</code-block>

<include from="Snippets-PHP-Module.md" element-id="snippet-composer-require" />

</tab>

</tabs>