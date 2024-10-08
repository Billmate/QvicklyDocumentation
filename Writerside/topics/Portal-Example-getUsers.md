# getUsers

<include from="Snippets-PortalAPI.md" element-id="snippet-header" />

Get users from the portal.

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
$users = $portalAPI->get('users');
if(is_array($users) && array_key_exists('error', $users)) {
    echo "Code: " . $users['code'] . "\n";
    echo "Error: " . $users['error'] . "\n";
    exit;
}
echo "Found " . count($users) . " users\n";
if(count($users) > 0) {
    $oneUser = array_pop($users);
    $oneUserId = $oneUser['mm3useraccountsid'];
    $user = $portalAPI->get('users/' . $oneUserId);
    echo "And the last user is:\n";
    echo json_encode($user, JSON_PRETTY_PRINT);
}



]]>
</code-block>

<include from="Snippets-PHP-Module.md" element-id="snippet-composer-require" />

</tab>

</tabs>