# content_scroll_position

<include from="Snippets-CheckoutAPI.md" element-id="snippet-header" />

Receive from Checkout.

This event is used to send the scroll position of the iframe. JSON data includes a integer of the content_scroll_position that should be used. Note that this should be adapted to your own needs, see example.

<code-block lang="javascript">
window.latestScroll = $(document).find( "#checkout" ).offset().top + json.data;
$('html, body').animate({scrollTop: $(document).find( "#checkout" ).offset().top + json.data}, 400);
</code-block>