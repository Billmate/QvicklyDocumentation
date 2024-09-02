# getConversations

<include from="Snippets-PortalAPI.md" element-id="snippet-header" />

Get conversations from the portal.

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
$conversations = $portalAPI->get('conversations');
if(is_array($conversations) && array_key_exists('error', $conversations)) {
    echo "Code: " . $conversations['code'] . "\n";
    echo "Error: " . $conversations['error'] . "\n";
    exit;
}
echo "Found " . count($conversations) . " conversations\n";
if(count($conversations) > 0) {
    $oneConversation = array_pop($conversations);
    $oneConversationId = $oneConversation['mexcParamvaluesetsid'];
    $conversation = $portalAPI->get('conversations/' . $oneConversationId);
    echo "And the last conversation is:\n";
    echo json_encode($conversation, JSON_PRETTY_PRINT);
}



]]>

</code-block>

<include from="Snippets-PHP-Module.md" element-id="snippet-composer-require" />

</tab>

</tabs>