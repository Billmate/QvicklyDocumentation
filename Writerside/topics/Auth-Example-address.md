# address

<include from="Snippets-AuthAPI.md" element-id="snippet-header" />

This call will return the registered address information for the user of the active token.

> This call required that the token has `personalNumber`

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
$auth = $authAPI->login($_ENV['USERNAME'], $_ENV['PASSWORD']);

$address = $authAPI->address($auth);
var_dump($address);
]]>
</code-block>

<include from="Snippets-PHP-Module.md" element-id="snippet-composer-require" />

</tab>
</tabs>