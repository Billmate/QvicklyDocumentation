# login

<include from="Snippets-AuthAPI.md" element-id="snippet-header" />

The login function performs a login with username and password.

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
var_dump($auth);
]]>
</code-block>

<include from="Snippets-PHP-Module.md" element-id="snippet-composer-require" />

</tab>
</tabs>
