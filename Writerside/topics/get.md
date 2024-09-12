# get

<include from="Snippets-CheckoutAPI.md" element-id="snippet-header" />

> This is an internal function used by the checkout
{style="warning"}

Get the current payment data for the order.

An example of how to use this function can be found [here](CheckoutAPI-Example-get.md)

{type="narrow"}
Endpoint
: /public/ajax.php?get

Method
: POST

## Request

| Property | Type   | Description             |
|----------|--------|-------------------------|
| hash     | string | The hash for the order. |

## Repsonse

| Property     | Type   | Description                            |
|--------------|--------|----------------------------------------|
| PaymentData  | object | The payment data for the order.        |
| apiClient    | string | The client used for the request.       |
| Customer     | object | The customer data for the order.       |
| PaymentInfo  | object | The payment information for the order. |
| Cart         | object | The cart data for the order.           |
| Articles     | array  | The articles in the cart.              |
| CheckoutData | object | The checkout data for the order.       |


### PaymentData

The payment data object contains the payment data for the order.

| Property      | Type   | Description                               |
|---------------|--------|-------------------------------------------|
| method        | string | The payment method used for the purchase. |
| number        | string | The payments number                       |
| paymentplanid | string | The payment plan id                       |
| currency      | string | The currency used for the purchase.       |
| language      | string | The language used for the purchase.       |
| country       | string | The country used for the purchase.        |
| method_name   | string | The name of the payment method.           |
| status        | string | The current status of the checkout.       |
| alladdresses  | array  | All addresses used in the checkout.       |
| autoactivate  | string | Auto activate the payment.                |
| orderid       | string | The orderid supplied in the payload.      |
| logo          | string | The logo used for this payment.           |
| accepturl     | string | The url for the accept url.               |
| cancelurl     | string | The url for the cancel url.               |
| returnmethod  | string | The method used for the return.           |
| callbackurl   | string | The url for the callback.                 |
| url           | string | The url for this checkout.                |
| invoice       | array  | The invoice data.                         |
| accountinfo   | object | The account information.                  |
| meta          | object | Meta data for the payment.                |

### Customer

The customer object contains the customer data for the order.

| Property | Type   | Description                            |
|----------|--------|----------------------------------------|
| pno      | string | The personal number for the customer.  |
| Billing  | object | The billing address for the customer.  |
| Shipping | object | The shipping address for the customer. |


### PaymentInfo

The payment info object contains the payment information for the order.

| Property       | Type   | Description                        |
|----------------|--------|------------------------------------|
| paymentdate    | string | The payment date for the order.    |
| yourreference  | string | The reference for the purchaser.   |
| ourreference   | string | The reference for the seller.      |
| projectname    | string | The project name for the order.    |
| deliverymethod | string | The delivery method for the order. |
| deliveryterms  | string | The delivery terms for the order.  |
| autocredit     | string | Auto credit the payment.           |

### Cart

The cart object contains the cart data for the order.

| Property | Type   | Description                      |
|----------|--------|----------------------------------|
| Handling | object | The handling data for the order. |
| Shipping | object | The shipping data for the order. |
| Total    | object | The total data for the order.    |

### Articles

The articles array contains the articles in the cart.

| Property   | Type   | Description                    |
|------------|--------|--------------------------------|
| artnr      | string | The article number.            |
| title      | string | The article title.             |
| quantity   | string | The article quantity.          |
| aprice     | string | The article price.             |
| discount   | string | The article discount.          |
| withouttax | string | The article price without tax. |
| taxrate    | string | The article tax rate.          |

### CheckoutData

The checkout data object contains the checkout data for the order.

| Property               | Type   | Description                      |
|------------------------|--------|----------------------------------|
| terms                  | string | Link to the terms for the order. |
| privacyPolicy          | string | Link to the privacy policy.      |
| companyview            | string | Show company view.               |
| showPhoneOnDelivery    | string | Show phone on delivery.          |
| redirectOnSuccess      | string | Redirect on success.             |
| Cart                   | object | The cart data for the order.     |
| client                 | string | The client used for the request. |
| topayData              | object | Data for the topay.              |


### accountinfo

The account info object contains the account information for the order.

| Property                       | Type   | Description                                       |
|--------------------------------|--------|---------------------------------------------------|
| company                        | string | The company name.                                 |
| address                        | string | The company address.                              |
| zip                            | string | The company zip code.                             |
| city                           | string | The company city.                                 |
| country                        | string | The company country.                              |
| phone                          | string | The company phone number.                         |
| email                          | string | The company email.                                |
| orgregnr                       | string | The company organization number.                  |
| vatregnr                       | string | The company vat number.                           |
| language                       | string | The company language.                             |
| paymentoptions                 | array  | The payment options for the company.              |
| defaultpaymentterms_company    | string | The default payment terms for the company.        |
| defaultpaymentterms_private    | string | The default payment terms for the private person. |
| checkout                       | string | Checkout enabled.                                 |
| force2have18years              | string | Force to have 18 years.                           |
| force2havepno                  | string | Force to have personal number.                    |
| force2havephonenumber          | string | Force to have phone number.                       |
| locknameforshipping            | string | Lock name for shipping.                           |
| showPf2Fee                     | string | Show PF2 fee.                                     |
| parkrightCustomerService       | string | Parkright customer service.                       |
| enableparkright                | string | Enable parkright.                                 |
| enableTestModeCheckout         | string | Enable test mode checkout.                        |
| allow2When1FailsInCheckout     | string | Allow 2 when 1 fails in checkout.                 |
| enableSpecificationInPayLink   | string | Enable specification in pay link.                 |
| continueWithoutPnoInPF2        | string | Continue without personal number in PF2.          |
| enablerequirephonenumber       | string | Enable require phone number.                      |
| checkoutAvailableCustomerTypes | array  | The available customer types for the checkout.    |
| logo                           | string | The company logo.                                 |

### paymentoptions

The payment options array contains the payment options for the company.

| Property               | Type   | Description                                          |
|------------------------|--------|------------------------------------------------------|
| method                 | string | The payment method used for the purchase.            |
| currency               | string | The currency used for the purchase.                  |
| language               | string | The language used for the purchase.                  |
| minAmount              | string | The minimum amount for the purchase.                 |
| customertypes          | array  | The customer types for the purchase.                 |
| companySigning         | string | The company signing.                                 |
| mode                   | string | The mode for the purchase.                           |
| cards                  | object | The cards available for the purchase.                |
| consumerFee            | string | The consumer fee for the purchase.                   |
| quickpayment           | string | Quick payment for the purchase.                      |


### customertypes

The customertypes array contains the customer types for the purchase.

* company
* person

### cards

The cards object contains the cards available for the purchase.

* DISPLAY_AMEX - Show Amex card
* DISPLAY_DINERS - Show Diners card
* DISPLAY_MASTERCARD - Show Mastercard
* DISPLAY_VISA - Show Visa card

Currently, the checkout supports DISPLAY_MASTERCARD and DISPLAY_VISA.

### Billing (address)

The billing object contains the billing address for the customer.

| Property  | Type   | Description                         |
|-----------|--------|-------------------------------------|
| firstname | string | The first name of the customer.     |
| lastname  | string | The last name of the customer.      |
| street    | string | The street address of the customer. |
| zip       | string | The zip code of the customer.       |
| city      | string | The city of the customer.           |
| country   | string | The country of the customer.        |
| phone     | string | The phone number of the customer.   |
| email     | string | The email of the customer.          |
| type      | string | The type of the customer.           |

### Shipping (address)

The shipping object contains the shipping address for the customer.

| Property  | Type   | Description                         |
|-----------|--------|-------------------------------------|
| firstname | string | The first name of the customer.     |
| lastname  | string | The last name of the customer.      |
| street    | string | The street address of the customer. |
| zip       | string | The zip code of the customer.       |
| city      | string | The city of the customer.           |
| country   | string | The country of the customer.        |
| phone     | string | The phone number of the customer.   |
| email     | string | The email of the customer.          |
| type      | string | The type of the customer.           |

### Handling (fee)

The handling object contains the handling fee for the order.

| Property   | Type   | Description                         |
|------------|--------|-------------------------------------|
| withouttax | string | The handling price without tax.     |
| taxrate    | string | The handling tax rate.              |

### Shipping (fee)

The shipping object contains the shipping fee for the order.

| Property   | Type   | Description                         |
|------------|--------|-------------------------------------|
| withouttax | string | The shipping price without tax.     |
| taxrate    | string | The shipping tax rate.              |


### Total

The total object contains the total data for the order.

| Property   | Type   | Description                         |
|------------|--------|-------------------------------------|
| withouttax | string | The total price without tax.        |
| tax        | string | The total tax for the order.        |
| rounding   | string | The rounding for the order.         |
| withtax    | string | The total price with tax.           |


### topayData

The topayData object contains the data for the topay.

| Property                      | Type   | Description                                 |
|-------------------------------|--------|---------------------------------------------|
| totalWithHandling             | string | The total price with handling.              |
| totalWithoutHandling          | string | The total price without handling.           |
| totalWithHandlingFormatted    | string | The total price with handling formatted.    |
| totalWithoutHandlingFormatted | string | The total price without handling formatted. |
| handling                      | string | The handling price.                         |
| handlingFormatted             | string | The handling price formatted.               |


```json
{
    "PaymentData": {
        "method": "8",
        "number": "1234567",
        "paymentplanid": "0",
        "currency": "SEK",
        "language": "sv",
        "country": "SE",
        "method_name": "Kortbetalning",
        "status": "Step2Loaded",
        "alladdresses": [],
        "autoactivate": "0",
        "orderid": "P123456789-20240701-8642",
        "logo": "Logo2.jpg",
        "accepturl": "https:\/\/www.example.com\/completedpayment",
        "cancelurl": "https:\/\/www.example.com\/failedpayment",
        "returnmethod": "GET",
        "callbackurl": "https:\/\/www.example.com\/callback.php",
        "url": "https:\/\/checkout.billmate.se\/%MERCHANT_ID%\/20240701123456789123456789123456789",
        "invoice": [],
        "accountinfo": {
            "company": "%MERCHANT_COMPANY%",
            "address": "",
            "zip": "",
            "city": "",
            "country": "Sweden",
            "phone": "",
            "email": "%MERCHANT_EMAIL%",
            "orgregnr": "",
            "vatregnr": "test",
            "language": "sv",
            "paymentoptions": [
                {
                    "method": "2048",
                    "currency": "SEK,DKK,NOK,GBP,EUR,USD",
                    "language": "sv,da,no,en",
                    "minAmount": "0",
                    "customertypes": [
                        "company",
                        "person"
                    ],
                    "companySigning": "1",
                    "mode": "1"
                },
                {
                    "method": "8",
                    "currency": "SEK,DKK,NOK,GBP,EUR,USD",
                    "language": "sv,da,no,en",
                    "minAmount": "100",
                    "cards": {
                        "DISPLAY_AMEX": "0",
                        "DISPLAY_DINERS": "0",
                        "DISPLAY_MASTERCARD": "1",
                        "DISPLAY_VISA": "1"
                    },
                    "customertypes": [
                        "company",
                        "person"
                    ],
                    "companySigning": "",
                    "consumerFee": "0",
                    "quickpayment": "1",
                    "mode": "5"
                }
            ],
            "defaultpaymentterms_company": "20",
            "defaultpaymentterms_private": "5",
            "checkout": "1",
            "force2have18years": "0",
            "force2havepno": "0",
            "force2havephonenumber": "0",
            "locknameforshipping": "0",
            "showPf2Fee": "0",
            "parkrightCustomerService": "0",
            "enableparkright": "0",
            "enableTestModeCheckout": "1",
            "allow2When1FailsInCheckout": "1",
            "enableSpecificationInPayLink": "1",
            "continueWithoutPnoInPF2": "0",
            "enablerequirephonenumber": "0",
            "checkoutAvailableCustomerTypes": [
                "company",
                "person"
            ],
            "logo": ""
        },
        "meta": {
            "topay": "230400"
        }
    },
    "apiClient": "Qvickly:PHP-module:Checkout-1.0.0",
    "Customer": {
        "pno": "%EXAMPLE_PNO%",
        "Billing": {
            "firstname": "%EXAMPLE_FIRSTNAME%",
            "lastname": "%EXAMPLE_LASTNAME%",
            "street": "%EXAMPLE_ADDRESS%",
            "zip": "%EXAMPLE_ZIP%",
            "city": "%EXAMPLE_CITY%",
            "country": "SE",
            "phone": "%EXAMPLE_PHONE%",
            "email": "%EXAMPLE_EMAIL%",
            "type": "person"
        },
        "Shipping": []
    },
    "PaymentInfo": {
        "paymentdate": "2024-07-01",
        "yourreference": "Purchaser X",
        "ourreference": "Seller Y",
        "projectname": "Project Z",
        "deliverymethod": "Post",
        "deliveryterms": "FOB",
        "autocredit": "false"
    },
    "Cart": {
        "Handling": {
            "withouttax": "0",
            "taxrate": "25"
        },
        "Shipping": {
            "withouttax": "3000",
            "taxrate": "25"
        },
        "Total": {
            "withouttax": "184325",
            "tax": "46081",
            "rounding": "-6",
            "withtax": "230400"
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
    "CheckoutData": {
        "terms": "http:\/\/example.com\/terms",
        "privacyPolicy": "http:\/\/example.com\/privacy-policy",
        "companyview": "false",
        "showPhoneOnDelivery": "false",
        "redirectOnSuccess": "true",
        "Cart": {
            "Handling": {
                "withouttax": "0",
                "taxrate": "25"
            },
            "Shipping": {
                "withouttax": "3000",
                "taxrate": "25"
            },
            "Total": {
                "withouttax": "184325",
                "tax": "46081",
                "rounding": "-6",
                "withtax": "230400"
            }
        },
        "client": "Qvickly:PHP-module:Checkout-1.0.0",
        "topayData": {
            "totalWithHandling": 230400,
            "totalWithoutHandling": 230400,
            "totalWithHandlingFormatted": "2 304 kr",
            "totalWithoutHandlingFormatted": "2 304 kr",
            "handling": 0,
            "handlingFormatted": "0.00 kr"
        }
    }
}
```