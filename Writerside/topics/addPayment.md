# addPayment

addPayment is used for creating payments.

> Note: For card and bank payment, a payment url is returned to which the customer must be redirected to finalize the payment.

> Note: For Factoring and Part Payment, billing and shipping address must be same as registered address (swedish: bokföringsadress) to be approved.

## Request parameters
The data section of the payload has the following sub-sections:
* PaymentData
* PaymentInfo
* Card
* Customer
* Articles
* Cart
Please note that not all sections are mandatory. See the documentation for each section for more information.

### PaymentData

<include from="Snippets-Request.md" element-id="snippet-paymentdata" />

### PaymentInfo

<include from="Snippets-Request.md" element-id="snippet-paymentinfo" />

### Card

<include from="Snippets-Request.md" element-id="snippet-card" />

### Customer

<include from="Snippets-Request.md" element-id="snippet-customer" />

#### Customer - Billing address

<include from="Snippets-Request.md" element-id="snippet-billing-address" />

#### Customer - Shipping address

<include from="Snippets-Request.md" element-id="snippet-shipping-address" />

### Articles

<include from="Snippets-Request.md" element-id="snippet-articles" />

## Request example
```json
{
  "credentials": {
    "id": "%MERCHANT_ID%",
    "hash": "24632112c18c6fbf7fce6409deda1d4824140c0059fbc108ed6190934c47709caffcb8f8c47fd770ab53e4637e5dac1b8679faa30a248353775dbf336a67d202",
    "version": "%API_VERSION%",
    "client": "%CLIENT_NAME%",
    "language": "sv",
    "serverdata": {"HTTP_HOST":"developer.billmate.se","HTTP_CONNECTION":"keep-alive","HTTP_CACHE_CONTROL":"max-age=0","HTTP_ACCEPT":"text\/html,application\/xhtml+xml,application\/xml;q=0.9,image\/webp,*\/*;q=0.8","HTTP_USER_AGENT":"Mozilla\/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit\/537.36 (KHTML, like Gecko) Chrome\/39.0.2171.95 Safari\/537.36","HTTP_ACCEPT_ENCODING":"gzip, deflate, sdch","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.8","PATH":"\/sbin:\/usr\/sbin:\/bin:\/usr\/bin","SERVER_SOFTWARE":"Apache\/2.2.26 (Amazon)","SERVER_NAME":"developer.billmate.se","SERVER_ADDR":"172.31.22.88","SERVER_PORT":"80","REMOTE_ADDR":"2.71.114.219","REMOTE_PORT":"53241","GATEWAY_INTERFACE":"CGI\/1.1","SERVER_PROTOCOL":"HTTP\/1.1","REQUEST_METHOD":"GET","QUERY_STRING":"","REQUEST_TIME":1421313644},
    "time": "1417004339.9291 ",
    "test": "true"
  },
  "data": {
    "PaymentData": {
      "method": "1",
      "paymentplanid": "",
      "currency": "SEK",
      "language": "sv",
      "country": "SE",
      "autoactivate": "0",
      "orderid": "P123456789",
      "logo": "Logo2.jpg"
    },
    "PaymentInfo": {
      "paymentdate": "2014-07-31",
      "paymentterms": "14",
      "yourreference": "Purchaser X",
      "ourreference": "Seller Y",
      "projectname": "Project Z",
      "deliverymethod": "Post",
      "deliveryterms": "FOB",
      "autocredit": "false"
    },
    "Card": {
      "promptname": "",
      "recurring": "",
      "recurringnr": "",
      "accepturl": "https://www.mystore.se/completedpayment",
      "cancelurl": "https://www.mystore.se/failedpayment",
      "returnmethod": "",
      "callbackurl": "https://www.mystore.se/callback.php"
    },
    "Customer": {
      "nr": "12",
      "pno": "550101-1018",
      "Billing": {
        "firstname": "Testperson",
        "lastname": "Approved",
        "company": "Company",
        "street": "Teststreet",
        "street2": "Street2",
        "zip": "12345",
        "city": "Testcity",
        "country": "SE",
        "phone": "0712-345678",
        "email": "test@developer.billmate.se"
      },
      "Shipping": {
        "firstname": "Testperson",
        "lastname": "Approved",
        "company": "Company",
        "street": "Teststreet",
        "street2": "Shipping Street2",
        "zip": "12345",
        "city": "Testcity",
        "country": "SE",
        "phone": "0711-345678"
      }
    },
    "Articles": [
      {
        "artnr": "A123",
        "title": "Article 1",
        "quantity": "2",
        "aprice": "1234",
        "discount": "0",
        "withouttax": "2468",
        "taxrate": "25"
      },
      {
        "artnr": "B456",
        "title": "Article 2",
        "quantity": "3.5",
        "aprice": "56780",
        "discount": "10",
        "withouttax": "178857",
        "taxrate": "25"
      }
    ],
    "Cart": {
      "Handling": {
        "withouttax": "1000",
        "taxrate": "25"
      },
      "Shipping": {
        "withouttax": "3000",
        "taxrate": "25"
      },
      "Total": {
        "withouttax": "185325",
        "tax": "46331",
        "rounding": "44",
        "withtax": "231700"
      }
    }
  },
  "function": "addPayment"
}
```

## Response example
```json
{
    "credentials": {
        "hash":"0b2d1c4d31228a6dc845a16d57b782b97a5e111db2348324be42f5a91e88c8bd35fa62f0e6240b5680e17da03bb9301c5bd0ed755db7fa62ba6054ee21cdde88"
    }
    "data": {
        "number":"12345",
        "status":"Created",
        "orderid":"P123456789",
        "url":"https://api.qvickly.io/invoice/140544658153c38f1cdf279"
    }
}
```