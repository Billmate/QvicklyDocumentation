# Update status log by invoice number

In this example we will authenticate against the Auth API, fetch the hash of the invoice from the Portal API and then use the Payment API to update the status log.

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

$invoice = $portalAPI->get('invoices/' . $_ENV['INVOICEID']);

$hash = $invoice['hash'];

$result = $paymentAPI->updateStatusLogOfInvoiceByHash([
    'hash' => $hash,
    'body' => [
        'text' => 'Updated status log after getting hash from PortalAPI (%(sendtime))',
        'sendtime' => date(DATE_ATOM),
    ],
]);
print_r($result);
]]>

</code-block>

Full example can be found [here](https://github.com/Billmate/qvickly-php-module/blob/main/examples/Interactions/updateStatusLogByInvoiceNumber.php)

<include from="Snippets-PHP-Module.md" element-id="snippet-composer-require" />
