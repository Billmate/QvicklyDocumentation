# updatePayment

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

updatePayment is used for updating payments. NOTE: You can only update a payment that has status “Created”, which has not yet been locked (sent).
If the payment is locked (any other status), then you will have to use CreditPayment instead to credit the original payment and then create a new correct payment with addPayment.

> For card payment, you cannot update the payment to a higher value than was originally reserved.

> It is not allowed to change payment method of the invoice. To change payment method, original payment has to be cancelled and a new payment has to be created.

*An example can be found here [Update payment example](Update-payment.md)*

## Request

### Data

| Property    | Required | Type   | Description        |
|-------------|----------|--------|--------------------|
| PaymentData | true     | object | Payment data.      |
| PaymentInfo | true     | object | Payment info.      |
| Card        | true     | object | Card data.         |
| Customer    | true     | object | Customer data.     |
| Articles    | true     | array  | Array of articles. |
| Cart        | true     | object | Cart data.         |


Please note that not all properties in all sections are mandatory. See the documentation for each section for more information.


### PaymentData

<include from="Snippets-Request.md" element-id="snippet-paymentdata" />

### PaymentInfo

<include from="Snippets-Request.md" element-id="snippet-paymentinfo" />

### Card

<include from="Snippets-Request.md" element-id="snippet-card" />

### Customer

<include from="Snippets-Request.md" element-id="snippet-customer" />

### Customer Billing

<include from="Snippets-Request.md" element-id="snippet-billing-address" />

### Customer Shipping

<include from="Snippets-Request.md" element-id="snippet-shipping-address" />

### Articles

<include from="Snippets-Request.md" element-id="snippet-articles" />

### Cart

<include from="Snippets-Request.md" element-id="snippet-cart" />

### Function

| Property | Required | Type   | Description                                                    |
|----------|----------|--------|----------------------------------------------------------------|
| function | true     | string | The function name to be used, for this page it’s updatePayment |

```json
{
  "credentials": {
      "id": "%MERCHANT_ID%",
      "hash": "24632112c18c6fbf7fce6409deda1d4824140c0059fbc108ed6190934c47709caffcb8f8c47fd770ab53e4637e5dac1b8679faa30a248353775dbf336a67d202",
      "version": "%PAYMENT_API_VERSION%",
      "client": "%PAYMENT_API_CLIENT_NAME%",
      "language": "sv",
      "serverdata": {"HTTP_HOST":"developer.qvickly.io","HTTP_CONNECTION":"keep-alive","HTTP_CACHE_CONTROL":"max-age=0","HTTP_ACCEPT":"text\/html,application\/xhtml+xml,application\/xml;q=0.9,image\/webp,*\/*;q=0.8","HTTP_USER_AGENT":"Mozilla\/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit\/537.36 (KHTML, like Gecko) Chrome\/39.0.2171.95 Safari\/537.36","HTTP_ACCEPT_ENCODING":"gzip, deflate, sdch","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.8","PATH":"\/sbin:\/usr\/sbin:\/bin:\/usr\/bin","SERVER_SOFTWARE":"Apache\/2.2.26 (Amazon)","SERVER_NAME":"developer.qvickly.io","SERVER_ADDR":"172.31.22.88","SERVER_PORT":"80","REMOTE_ADDR":"2.71.114.219","REMOTE_PORT":"53241","GATEWAY_INTERFACE":"CGI\/1.1","SERVER_PROTOCOL":"HTTP\/1.1","REQUEST_METHOD":"GET","QUERY_STRING":"","REQUEST_TIME":1421313644},
      "time": "1417004339.9291 ",
      "test": "true"
    },
  "data": {
    "PaymentData": {
      "number": "1000235",
      "currency": "SEK",
      "country": "SE",
      "language": "sv",
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
      "deliveryterms": "FOB"
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
        "email": "test@developer.qvickly.io"
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
        "taxrate": "25",
        "discount": "0",
        "withouttax": "2468"
      },
      {
        "artnr": "B456",
        "title": "Article 2",
        "quantity": "3.5",
        "aprice": "56780",
        "taxrate": "25",
        "discount": "10",
        "withouttax": "178857"
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
  "function": "updatePayment"
}
```

## Response

| Property | Type   | Description                                               |
|----------|--------|-----------------------------------------------------------|
| number   | int    | Number is the payment/invoice number for the purchase.    |
| orderid  | string | The unique order id generated by the shop as a reference. |
| status   | string | Payment status for updatePayment can only be: Created     |
| url      | string | “Payment.url” to the pdf of the payment/invoice.          |

<include from="Snippets-Response.md" element-id="snippet-payment-json"></include>