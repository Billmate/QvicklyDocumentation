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
$step1 = $authAPI->bankidLogin(personalNumber: $_ENV['PNO'] ?? null);
if(is_array($step1) && array_key_exists('error', $step1)) {
    var_dump($step1);
    exit;
}
var_dump($step1);
]]>
</code-block>

<include from="Snippets-PHP-Module.md" element-id="snippet-composer-require" />

</tab>
</tabs>