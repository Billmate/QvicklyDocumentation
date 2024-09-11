# bankidLogin

<include from="Snippets-AuthAPI.md" element-id="snippet-header" />

Starting a bankid login

<tabs>
<tab title="%code-php%">

<code-block lang="php">
<![CDATA[
<?php
declare(strict_types=1);

use Qvickly\Api\Auth\AuthAPI;

require __DIR__ . '/../../vendor/autoload.php';

use Dotenv\Dotenv;

$dotenv = Dotenv::createImmutable(__DIR__ . '/../..');
$dotenv->load();

$authAPI = new AuthAPI();
$step1 = $authAPI->bankidLogin(personalNumber: $_ENV['FULL_PNO'] ?? null);
if(is_array($step1) && array_key_exists('error', $step1)) {
    var_dump($step1);
    exit;
}
var_dump($step1);

$token = '';

for ($i = 0; $i < 29; $i++) {
    echo "Loop $i\n";
    // Find auth code
    $authCode = $step1['authList'][$i];
    // Create QR Code from auth code
    // ... create the QR Code here
    system("qrencode -o /tmp/test.png '$authCode'"); // Replace this with your QR Code generator
    // Show the QR Code to the user
    // ... show the QR Code here
    system("open '/tmp/test.png'"); // Replace this with your QR Code viewer
    // Wait for the user to scan the QR Code
    sleep(1);
    // Check if the user has scanned the QR Code
    $step2 = $authAPI->bankidCollect($step1['orderRef']);
    if(is_array($step2) && array_key_exists('status', $step2)) {
        if($step2['status'] === 'complete') {
            echo "BankID verification complete\n";
            $token = $step2['token'];
            break;
        } elseif ($step2['status'] === 'failed') {
            throw new Exception('Failed to collect bankid');
        } elseif ($step2['status'] === 'pending') {
            echo "Waiting for user to auth with BankID\n";
        } else {
            throw new Exception('Failed to collect bankid');
        }
    } else {
        throw new Exception('Failed to collect bankid');
    }
}

if($token === '') {
    throw new Exception('Failed to collect bankid');
}

echo "Token: $token\n";

$me = $authAPI->me($token);
var_dump($me);
]]>
</code-block>

*This example is designed for MacOS and uses the `qrencode` and `open` commands. You will need to replace these with your own QR Code generator and viewer.*

<include from="Snippets-PHP-Module.md" element-id="snippet-composer-require" />

</tab>
</tabs>