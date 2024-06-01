# Get order by hash

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

<tabs>
    <tab title="%code-json%">
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "ae98fad9a1cc5e715c473b8a6d8f255b5d7c1385b8f0da5e2e68b43b84711454072caf5a3fb70e8386ad2ee9fe72c26023f6166a18e9bd995d62e25e387cda29",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
        "language": "sv",
        "time": 1714942741.018025
    },
    "data": {
        "hash": "123456abc123456abc123456abc12345"
    },
    "function": "getOrderByHash"
}
]]>
</code-block>
</tab>

<tab title="%code-phplegacy%">
<code-block lang="PHP">
<![CDATA[
<?php
include('../PaymentAPI.php');
$test = true;
$debug = false;

/* Credentials for Auth */

$id = "%MERCHANT_ID%";
$key = "%MERCHANT_KEY%";
define("QVICKLY_SERVER", "%PAYMENT_API_VERSION%"); // API version
define("QVICKLY_CLIENT", "%PAYMENT_API_CLIENT_NAME%");
define("QVICKLY_LANGUAGE", "sv");
$api = new PaymentAPI($id, $key, $test, $debug);
$values = array();

$values["hash"] = "123456abc123456abc123456abc12345";

echo json_encode($api->getOrderByHash($values), JSON_PRETTY_PRINT);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/PHP.Legacy/examples/getOrderByHash.php)

</tab>

<tab title="%code-node%">
<code-block lang="javascript">
<![CDATA[
import { QvicklyPaymentAPI } from "../../PaymentAPI.js";

const paymentAPI = new QvicklyPaymentAPI(process.env.EID, process.env.SECRET);
const order = await paymentAPI.call("getOrderByHash", {
    hash: "123456abc123456abc123456abc12345",
});
console.log(order);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Node.JS/examples/PaymentAPI/getOrderByHash.js)

</tab>

<tab title="%code-deno%">
<code-block lang="javascript">
<![CDATA[
import {QvicklyPaymentAPI, env} from "../../PaymentAPI.ts";

const paymentAPI = new QvicklyPaymentAPI(env["EID"], env["SECRET"]);
const order = await paymentAPI.call("getOrderByHash", {
    hash: "123456abc123456abc123456abc12345",
});
console.log(order);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Deno/examples/PaymentAPI/getOrderByHash.ts)

</tab>

<tab title="%code-bun%">
<code-block lang="javascript">
<![CDATA[
import QvicklyPaymentAPI from "../../PaymentAPI";

const paymentAPI = new QvicklyPaymentAPI(Bun.env.EID, Bun.env.SECRET);
const order = await paymentAPI.call("getOrderByHash", {
    hash: "123456abc123456abc123456abc12345",
});
console.log(order);
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Bun/examples/PaymentAPI/getOrderByHash.ts)

</tab>

<tab title="%code-python%">
<code-block lang="Python">
<![CDATA[
from PaymentAPI import PaymentAPI

# Create a PaymentAPI object
api = PaymentAPI(eid, secret)
order = api.call(function="getOrderByHash", data={"hash":"123456abc123456abc123456abc12345"})
print(json.dumps(order, indent=4))
]]>
</code-block>

Full example can be found [here](https://github.com/Billmate/QvicklyAPISamples/blob/main/Python/examples/PaymentAPI/getOrderByHash.py)

</tab>

</tabs>

## Response from server
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "hash": "bc8bc432ad0127802509788b231a39944049a555ff243eafb78ce3b5cd6a58a1f8442bbe272a52e461feb53097a7915d17d45ffdc3fa8c4a2e3de3393d2168eb",
        "logid": 1234567
    },
    "data": {
        "DateTime": "2024-05-01 12:12:12",
        "PaymentData": {
            "order": {
                "number": "12345",
                "status": "Pending",
                "orderid": "123",
                "url": "https://api.billmate.se/invoice/123456/"
            },
            "number": "12345",
            "orderid": "12345",
            "status": "Step2Loaded",
            "method": "2048",
            "paymentplanid": "0",
            "currency": "SEK",
            "language": "sv",
            "country": "SE",
            "method_name": "Betala med Qvickly",
            "logo": "",
            "accepturl": "https://example.com/?bco_confirm=yes&bco_flow=checkout_redirect&wc_order_id=null",
            "cancelurl": "https://example.com/checkout/",
            "callbackurl": "https://example.com/wc-api/BCO_WC_Push/"
        },
        "apiClient": "MyBillMate:NodeJS:1.0",
        "Customer": {
            "Billing": {
                "company": "",
                "street": "Testgatan 1",
                "zip": "123 45",
                "city": "Testingeby",
                "country": "SE",
                "phone": "070 - 000 00 00",
                "email": "tess.t.persson@example.com",
                "type": "person",
                "firstname": "Tess T",
                "lastname": "Persson",
                "street2": ""
            },
            "pno": "19550101-0101",
            "Shipping": []
        },
        "PaymentInfo": "",
        "Cart": {
            "Total": {
                "withouttax": "7000",
                "tax": "0",
                "rounding": "0",
                "withtax": "7000"
            },
            "Shipping": {
                "withouttax": "0",
                "taxrate": "0"
            },
            "Handling": {
                "withouttax": "0",
                "taxrate": "0"
            }
        },
        "Articles": [
            {
                "artnr": "woo-long-sleeve-tee",
                "title": "Long Sleeve Tee",
                "quantity": "1",
                "aprice": "2500",
                "withouttax": "2500",
                "taxrate": "0",
                "discount": "0"
            },
            {
                "artnr": "woo-hoodie-blue-logo",
                "title": "Hoodie - blue, Yes",
                "quantity": "1",
                "aprice": "4500",
                "withouttax": "4500",
                "taxrate": "0",
                "discount": "0"
            }
        ],
        "CheckoutData": {
            "terms": "https://example.com/cart/",
            "companyView": "false",
            "hideShippingAddress": "false",
            "privacyPolicy": "https://example.com/privacy-policy/",
            "Cart": {
                "Total": {
                    "withouttax": "7000",
                    "tax": "0",
                    "rounding": "0",
                    "withtax": "7000"
                },
                "Shipping": {
                    "withouttax": "0",
                    "taxrate": "0"
                },
                "Handling": {
                    "withouttax": "0",
                    "taxrate": "0"
                }
            },
            "client": "WooCommerce_v2:1.6.6"
        },
        "orderid_real": "12345",
        "invoiceid_real": "1234567",
        "status": "Created"
    }
}
]]>
</code-block>


<include from="Snippets-Examples.md" element-id="snippet-footer"></include>