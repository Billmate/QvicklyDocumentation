# initCheckout

<include from="Snippets-CheckoutAPI.md" element-id="snippet-header" />

InitCheckout is used for initiating a Checkout payment through Qvickly Checkout payment gateway ( https://checkout.qvickly.io/).

> This function is a part of [Qvickly Payment API](Qvickly-API.md)

 
For an example please see the [initCheckout example](Init-checkout.md) page.

## Request

### Header
| Property       | Value                               |
|----------------|-------------------------------------|
| URL            | https://checkout.qvickly.io         |
| Content-Type   | application/json                    |
| Content-Length | The string length of the json array |

### Body

credentials
data
function

#### checkoutdata
| Property             | Required | Type    | Description                                                                       |
|----------------------|----------|---------|-----------------------------------------------------------------------------------|
| terms                | false    | string  | Url to the terms and conditions page for the store.                               |
| privacyPolicy        | false    | string  | Url to the privacy policy page for the store.                                     |
| companyView          | false    | boolean | Flags that sets if company details are enabled in the checkout. Default is false. |
| showPhoneOnDelivery  | false    | boolean | Indicates if phone number for delivery should be requested. Default is false.     |
| redirectOnSuccess    | false    | boolean | Needs to be set if you have no custom "Thank you" page. Default is false.         |

#### PaymentData
| Property     | Required | Type   | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
|--------------|----------|--------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| currency     | true     | string | Currency code to be used for the payment according to ISO 4217. Currently supported: SEK.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| language     | true     | string | Language code for the language used on the invoice/recipt according to ISO 639-1, Currently supported: sv, en.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| country      | true     | string | Country code for the country where purchase is made (normally store location) according to ISO 3166-1 alpha-2, e.g. SE, DK, NO, GB. Currently supported: SE.                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| autoactivate | false    | string | Flag showing if the payment should be auto activated, thus if set, payment is finalized and no activatePayment command is required. For factoring invoice, handling invoice and partpayment, autoactivation=1 locks invoice, sends it to Qvickly. For invoice and service an invoice will be sent to the given customer email. For card/bank payment, autoactivate=1 captures amount immediately. Default=0. You can also enter a date for when the payment should be activated e.g. 2015-02-28.                                                                                                                |
| orderid      | true     | string | A unique order id generated by the shop as a reference.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| logo         | false    | int    | Change logo for the payment. You will find the reference to your logo in your Qvickly online account. You will find it in Settings -> Company details -> Company logo. The reference to be used is the file name e.g. Logo1.jpg. If left empty the standard logo will be used.                                                                                                                                                                                                                                                                                                                                  |
| accepturl    | false    | string | Url to which the customer is redirected after a completed payment. Data returned is same as for initCheckout defined below.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| cancelurl    | false    | string | Url to which the customer is redirected after a failed or cancelled payment. Data returned is error message and code as for initCheckout defined below.                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| returnmethod | false    | string | Http return method to accepturl, cancelurl and callbackurl. Default is ‘POST’, but can be set to ‘GET’ instead.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| callbackurl  | false    | string | Url to which callback data is sent after the customer has succesfully completed chaeckout payment. Data returned is same as for initCheckout defined below and for accepturl. Callback is made same time as accepturl, thus it can’t be assumed that callback data will arrive before accepturl data. No response is required to a callback request, the data just has to be received. If callback data is not received, Qvickly server will try to send callback data again once a minute first 10 minutes, once an hour first 10 hours, once a day first 7 days, then finally once a month for next 3 months. |

#### Paymentinfo

| Property      | Required | Type    | Description                                                                                                                               |
|---------------|----------|---------|-------------------------------------------------------------------------------------------------------------------------------------------|
| paymentdate   | false    | date    | Payment date in invoice/receipt on format YYYY-MM-DD. Default is current date.                                                            |
| yourreference | false    | string  | Your reference field in invoice/receipt.                                                                                                  |
| ourreference  | false    | string  | Our reference field in invoice/receipt.                                                                                                   |
| projectname   | false    | string  | Project name field in invoice/receipt.                                                                                                    |
| delivery      | false    | string  | Delivery method. Post, etc.7                                                                                                              |
| deliveryterms | false    | string  | Delivery terms field in invoice/receipt. FOB, etc.                                                                                        |
| autocredit    | false    | boolean | If this is set to true, then if the invoice is not paid before the duedate, the invoice will be automatically credited. Default is false. |

#### Articles
> Discount on total payment/invoice is sent as an article with negative aprice and negative withouttax value. If multiple tax rates are used in the invoice, the discount tax (negative) and discount tax rate (positive) has to be calculated for each standard tax rate and be given as parameters. Thus, discount tax rate has to be fixed to a standard tax rate (i.e. 6%,12%,25%) and can not be given as a decimal value like 12.6%.
{style="note"}

> By using --freetext-- (double dashes) as artnr you can send a free text row instead of an additional article for description of the item bought e.g. green color on a t-shirt.
{style="note"}


| Property   | Required | Type   | Description                                                                                                                                                                                                                                                                                                                                                                                |
|------------|----------|--------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| taxrate    | true     | dec    | Article tax rate in percent.                                                                                                                                                                                                                                                                                                                                                               |
| withouttax | true     | dec    | Total article row excluding tax in 1/100 of currency (i.e. öre if currency is SEK, cent if currency is EUR). Amount given will overwrite any errors in rounding of articles row sum. Mandatory since at least one article is required to add up to total.withouttax. Note When a discount is applicable on the article, you have to deduct the discount amount from the withouttax amount. |
| artnr      | false    | string | Article number.                                                                                                                                                                                                                                                                                                                                                                            |
| title      | true     | string | Article description.                                                                                                                                                                                                                                                                                                                                                                       |
| quantity   | false    | dec    | Article quantity.                                                                                                                                                                                                                                                                                                                                                                          |
| aprice     | false    | dec    | Article unit price without tax in 1/100 of currency (i.e. öre if currency is SEK, cent if currency is EUR).                                                                                                                                                                                                                                                                                |
| discount   | false    | dec    | Article discount in %.                                                                                                                                                                                                                                                                                                                                                                     |

#### Cart
| Property            | Required | Type | Description                                                                                                                         |
|---------------------|----------|------|-------------------------------------------------------------------------------------------------------------------------------------|
| total.withouttax    | true     | cent | Total payment excluding tax.                                                                                                        |
| total.tax           | true     | cent | Total tax.                                                                                                                          |
| total.withtax       | true     | cent | Total payment including tax. This is a double check to make sure no rounding errors are present and payment always will be correct. |
| handling.withouttax | false    | dec  | Handling charge in 1/100 of currency (i.e. öre if currency is SEK, cent if currency is EUR).                                        |
| handling.taxrate    | false    | dec  | Handling vat rate in %.                                                                                                             |
| shipping.withouttax | false    | dec  | Shipping charge in 1/100 of currency (i.e. öre if currency is SEK, cent if currency is EUR).                                        |
| shipping.taxrate    | false    | dec  | Shipping vat rate in %.                                                                                                             |
| total.rounding      | false    | dec  | Rounding in 1/100 of currency (i.e. öre if currency is SEK, cent if currency is EUR).                                               |
 
### Function
| Property | Required | Type   | Description                                                   |
|----------|----------|--------|---------------------------------------------------------------|
| function | true     | string | The function name to be used, for this page it’s initCheckout |

```json
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "080ed3cec93c064b62afb6390a247efbfc821c1585ac16b93bd4cee780b8b5e6ec4ba79d0ed7fc9b575ff5892c9999de31bcdbc74a8957a5b32bfc8d9e1881d1",
        "version": "%API_VERSION%",
        "client": "%CLIENT_NAME%",
        "language": "sv",
        "serverdata": { "..." },
        "time": "1417004339.9291 ",
        "test": "true"
    },
    "data": {
        "checkoutdata":{
          "terms": "http://qvickly.io/terms",
          "privacyPolicy": "http://qvickly.io/privacy-policy",
          "companyview": "false",
          "showPhoneOnDelivery": "false",
          "redirectOnSuccess": "true"
        },
        "PaymentData": {
            "currency": "SEK",
            "language": "sv",
            "country": "SE",
            "autoactivate": "0",
            "orderid": "P123456789",
            "logo": "Logo2.jpg",
            "accepturl": "https://www.mystore.se/completedpayment",
            "cancelurl": "https://www.mystore.se/failedpayment",
            "returnmethod": "",
            "callbackurl": "https://www.mystore.se/callback.php"
        },
        "PaymentInfo": {
            "paymentdate": "2014-07-31",
            "yourreference": "Purchaser X",
            "ourreference": "Seller Y",
            "projectname": "Project Z",
            "deliverymethod": "Post",
            "deliveryterms": "FOB",
            "autocredit": "false"
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
    "function": "initCheckout"
}
```

## Response
```json
{
    "credentials": {
        "hash": "0b2d1c4d31228a6dc845a16d57b782b97a5e111db2348324be42f5a91e88c8bd35fa62f0e6240b5680e17da03bb9301c5bd0ed755db7fa62ba6054ee21cdde88"
    },
    "data": {
        "number": "12345",
        "status": "Created",
        "orderid": "P123456789",
        "url": "https://checkout.qvickly.io/12345/2a6b47a5ee34a4210f4bd96b3c7c427d/test"
    }
}
```

### Data
| Property | Type   | Description                                                                                                                                                                              |
|----------|--------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| number   | int    | Number is the payment/invoice number for the purchase                                                                                                                                    |
| status   | string | Status of the payment/invoice. Valid responses: Created, Paid, Factoring, Service, Pending, and Cancelled. Pending if invoice purchase requires manual approval.                         |
| orderid  | string | The unique order id generated by the shop as a reference.                                                                                                                                |
| url      | string | For invoice and partpayment payments the url is to the pdf of the invoice. For card and bank payments, the url is to the payment window that the store need to redirect the customer to. |
