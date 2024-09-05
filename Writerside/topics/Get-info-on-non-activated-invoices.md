# Get info on non-activated invoices

In this example we will authenticate against the Auth API, fetch a list of invoices from the Portal API and then use the Payment API to get more information about the invoices.

The invoices we are looking for are invoices that are created, but not yet activated. We will use the `status`, `search` and `invoiceType` filters to find the invoices we are looking for. The number of invoices we want to fetch is limited to 5.

<code-block lang="php">
<![CDATA[
<?php
declare(strict_types=1);

require __DIR__ . '/../../vendor/autoload.php';

use Dotenv\Dotenv;
use Qvickly\Api\Auth\AuthAPI;
use Qvickly\Api\Portal\PortalAPI;
use Qvickly\Api\Payment\PaymentAPI;


$dotenv = Dotenv::createImmutable(__DIR__ . '/../..');
$dotenv->load();

$authAPI = new AuthAPI();
$auth = $authAPI->login($_ENV['USERNAME'], $_ENV['PASSWORD']);

$portalAPI = new PortalAPI($auth);

$paymentAPI = new PaymentAPI($_ENV['EID'], $_ENV['SECRET']);

$invoices = $portalAPI->get('invoices?filter=status,search,invoiceType&status=created&search=tess&invoicetype=F&limit=5');

echo "Found " . count($invoices) . " invoices to activate.\n";

foreach($invoices as $invoice) {
    echo "Fetching invoice {$invoice['invoiceid_real']}...\n";
    $payment = $paymentAPI->getPaymentInfo([ 'number' => $invoice['invoiceid_real']]);
    echo json_encode($payment, JSON_PRETTY_PRINT) . "\n\n";
}
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/Interactions/getInfoOnNonActivatedInvoices.php)

<include from="Snippets-PHP-Module.md" element-id="snippet-composer-require" />

