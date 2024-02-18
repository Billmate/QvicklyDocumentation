# getPaymentinfo

getPaymentinfo is used for getting info about a payment.

## Request

### Data
| Property | Required | Type | Description                                                           | 
|----------|----------|------|-----------------------------------------------------------------------|
| number   | true     | int  | The payment number of the payment/invoice you wish to get info about. |

### Function
| Property | Required | Type   | Description                                                     |
|----------|----------|--------|-----------------------------------------------------------------|
| function | true     | string | The function name to be used, for this page it’s getPaymentinfo |

```json
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "0e3e4aa976cdd55179837b5b15da90cd8165f63b84ebd59cf1522b81f45e2343022dd32614ecf639aa260477649a7e93a5c05937dca989c2d72d322ec57c6092",
        "version": "%API_VERSION%",
        "client": "%CLIENT_NAME%",
        "language": "sv",
        "serverdata": {"HTTP_HOST":"developer.qvickly.io","HTTP_CONNECTION":"keep-alive","HTTP_CACHE_CONTROL":"max-age=0","HTTP_ACCEPT":"text\/html,application\/xhtml+xml,application\/xml;q=0.9,image\/webp,*\/*;q=0.8","HTTP_USER_AGENT":"Mozilla\/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit\/537.36 (KHTML, like Gecko) Chrome\/39.0.2171.95 Safari\/537.36","HTTP_ACCEPT_ENCODING":"gzip, deflate, sdch","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.8","PATH":"\/sbin:\/usr\/sbin:\/bin:\/usr\/bin","SERVER_SOFTWARE":"Apache\/2.2.26 (Amazon)","SERVER_NAME":"developer.qvickly.io","SERVER_ADDR":"172.31.22.88","SERVER_PORT":"80","REMOTE_ADDR":"2.71.114.219","REMOTE_PORT":"53241","GATEWAY_INTERFACE":"CGI\/1.1","SERVER_PROTOCOL":"HTTP\/1.1","REQUEST_METHOD":"GET","QUERY_STRING":"","REQUEST_TIME":1421313644},
        "time": "1417004339.9291",
        "test": "true"
    },
    "data": {
        "number": "1000235"
    },
    "function": "getPaymentinfo"
}
```

## Response

### PaymentData
<include from="Snippets-Response.md" element-id="snippet-paymentdata" />

### PaymentInfo
<include from="Snippets-Response.md" element-id="snippet-paymentinfo" />

### Card
<include from="Snippets-Response.md" element-id="snippet-card" />

### Settlement
| Property | Type | Description                                                |
|----------|------|------------------------------------------------------------|
| number   | int  | Settlement number.                                         |
| date     | date | Date for when the settlement was done. Sent as YYYY-MM-DD. |

### Customer
<include from="Snippets-Response.md" element-id="snippet-customer" />

#### Billing address
<include from="Snippets-Response.md" element-id="snippet-billing-address" />

#### Shipping address
<include from="Snippets-Response.md" element-id="snippet-shipping-address" />

### Articles
<include from="Snippets-Response.md" element-id="snippet-articles" />

### Cart

#### Handling
<include from="Snippets-Response.md" element-id="snippet-cart-handling" />

#### Shipping
<include from="Snippets-Response.md" element-id="snippet-cart-shipping" />

#### Total
<include from="Snippets-Response.md" element-id="snippet-cart-total" />

<code-block lang="json">
<![CDATA[
{
   "credentials":{
      "hash":"5d93099de768c826aefb6f4ebcfd2dbce32b36e49a69e1cac8244abb6969d75e833006c9cc2e315b72807a179efd518e4933188d99e74903d391954697d97737"
   },
   "data":{
      "PaymentData":{
         "method":"1",
         "paymentplanid":"",
         "currency":"SEK",
         "country":"SE",
         "language":"sv",
         "autoactivate":"0",
         "orderid":"P123456718",
         "status":"Created",
         "paymentid_related":"",
         "url":""
      },
      "PaymentInfo":{
         "paymentdate":"2014-07-31",
         "paymentterms":"14",
         "yourreference":"Purchaser X",
         "ourreference":"Seller Y",
         "projectname":"Project Z",
         "deliverymethod":"Post",
         "deliveryterms":"FOB"
      },
      "Card":{
         "promptname":"",
         "recurring":"",
         "recurringnr":"",
         "accepturl":"https://www.mystore.se/completedpayment",
         "cancelurl":"https://www.mystore.se/failedpayment",
         "callbackurl":"https://www.mystore.se/callback.php",
         "returnmethod":""
      },
      "Settlement": {
         "number": "2",
         "date": "2018-12-17"
      },
      "Customer":{
         "nr":"12",
         "pno":"8706240739",
         "Billing":{
            "firstname":"Firstname",
            "lastname":"Lastname",
            "company":"Company",
            "street":"Street",
            "street2":"Street2",
            "zip":"12345",
            "city":"Lund",
            "country":"SE",
            "phone":"0712-345678",
            "email":"test@developer.qvickly.io"
         },
         "Shipping":{
            "firstname":"Firstname",
            "lastname":"Lastname",
            "company":"Company",
            "street":"Shipping Street 1",
            "street2":"Shipping Street2",
            "zip":"23456",
            "city":"Lund",
            "country":"SE",
            "phone":"0711-345678"
         }
      },
      "Articles":[
         {
            "artnr":"",
            "title":"Article 1",
            "quantity":"2",
            "aprice":"1234",
            "tax":"617",
            "discount":"0",
            "withouttax":"2468",
            "taxrate":"25"
         },
         {
            "artnr":"B456",
            "title":"Article 2",
            "quantity":"3.5",
            "aprice":"56780",
            "tax":"44714",
            "discount":"10",
            "withouttax":"178857",
            "taxrate":"25"
         }
      ],
      "Cart":{
         "Handling":{
            "withouttax":"1000",
            "taxrate":"25"
         },
         "Shipping":{
            "withouttax":"3000",
            "taxrate":"25"
         },
         "Total":{
            "rounding":"44",
            "withouttax":"185325",
            "tax":"46331",
            "withtax":"231700"
         }
      }
   }
}
]]>
</code-block>