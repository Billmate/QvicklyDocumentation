# creditPayment

creditPayment is used for crediting payments.

The original payment could be credited fully or partially.

If partcredit flag is false, then no articles are required to be sent since complete invoice is credited.

If partcredit flag is true, then add all articles that should be credited. Note that all amounts in a credit invoice have same sign as in original invoice, thus aprice and withouttax are positive values.

> Discount on total payment/invoice is sent as an article with negative aprice and negative withouttax value.
> 
> If multiple tax rates are used in the invoice, the discount tax (negative) and discount tax rate (positive) has to be calculated for each standard tax rate and be given as parameters. Thus, discount tax rate has to be fixed to a standard tax rate (i.e. 6%,12%,25%) and can not be given as a decimal value like 12.6%.

## Request

### PaymentData

| Property   | Required | Type   | Description                                                                                                                                                                                |
|------------|----------|--------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| number     | true     | int    | The payment number of the payment you wish to credit.                                                                                                                                      |
| partcredit | false    | bool   | If part credit is true, then articles that should be credited and the cart needs to be specified as below. If part credit is false, then full amount is always credited. Default is false. |

### Articles

<include from="Snippets-Request.md" element-id="snippet-articles" />

### Cart

<include from="Snippets-Request.md" element-id="snippet-cart" />

### Function

| Property | Required | Type   | Description                                                    |
|----------|----------|--------|----------------------------------------------------------------|
| function | true     | string | The function name to be used, for this page it’s cancelPayment |

```json
{
    "credentials": {
        "id": "12345",
        "hash": "30744d308f0102c5f17d5dbce18bb23131740fd73a6a00163c4064384395c467ae2a92375f18189a63be95b9a68eaebd3f86f019e33b909d9bf924e88ab74085",
        "version": "2.1.6",
        "client": "Pluginname:BillMate:1.0",
        "language": "sv",
        "serverdata": {"HTTP_HOST":"developer.qvickly.io","HTTP_CONNECTION":"keep-alive","HTTP_CACHE_CONTROL":"max-age=0","HTTP_ACCEPT":"text\/html,application\/xhtml+xml,application\/xml;q=0.9,image\/webp,*\/*;q=0.8","HTTP_USER_AGENT":"Mozilla\/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit\/537.36 (KHTML, like Gecko) Chrome\/39.0.2171.95 Safari\/537.36","HTTP_ACCEPT_ENCODING":"gzip, deflate, sdch","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.8","PATH":"\/sbin:\/usr\/sbin:\/bin:\/usr\/bin","SERVER_SOFTWARE":"Apache\/2.2.26 (Amazon)","SERVER_NAME":"developer.qvickly.io","SERVER_ADDR":"172.31.22.88","SERVER_PORT":"80","REMOTE_ADDR":"2.71.114.219","REMOTE_PORT":"53241","GATEWAY_INTERFACE":"CGI\/1.1","SERVER_PROTOCOL":"HTTP\/1.1","REQUEST_METHOD":"GET","QUERY_STRING":"","REQUEST_TIME":1421313644},
        "time": "1417004339.9291 ",
        "test": "true"
    },
    "data": {
        "PaymentData": {
            "number": "1000235",
            "partcredit": "true"
        },
        "Articles": [
            {
                "artnr": "A123",
                "title": "Article 1",
                "quantity": "2",
                "aprice": "1234",
                "tax": "25",
                "discount": "0",
                "withouttax": "2468"
            },
            {
                "artnr": "B456",
                "title": "Article 2",
                "quantity": "3.5",
                "aprice": "56780",
                "tax": "25",
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
    "function": "creditPayment"
}
```

## Response

| Property | Type   | Description                                                                                                                |
|----------|--------|----------------------------------------------------------------------------------------------------------------------------|
| number   | int    | Number is the payment/invoice number for the purchase.                                                                     |
| orderid  | string | The unique order id generated by the shop as a reference.                                                                  |
| status   | string | Status for a successful credit payment is always: Paid. Thus, credit payments/invoices are always automatically activated. |
| url      | string | “Payment.url” to the pdf of the credit invoice.                                                                            |

```json
{
    "credentials": {
        "hash": "36961fea06f6031ccc4ca10df664c9930f6e805731e9c1e617c68e776f0d0b3d7a540018aef546ecb6cccfd6b9be673b86ccdb6ac48b62e8bf86d43cd622c24c"
    },
    "data": {
        "number": "1000236",
        "orderid": "12346",
        "status": "Credited",
        "url": "https://api.qvickly.io/invoice/140544658153c38f1cdf279"
    }
}
```