# getInvoiceByHash

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

This function is used to get the invoice by hash.

The hash is a unique identifier for the invoice. It is generated when the invoice is created and is used to identify the invoice.

*An example can be found here [Get invoices by hash example](Get-invoice-by-hash.md)*

## Request

### Data
| Parameter | Required | Type   | Description                             |
|-----------|----------|--------|-----------------------------------------|
| hash      | true     | string | The hash of the invoice.                |

### Function

| Property | Required | Type   | Description                                                       |
|----------|----------|--------|-------------------------------------------------------------------|
| function | true     | string | The function name to be used, for this page it’s getInvoiceByHash |


```json
{
  "credentials": {
    "hash": "adf499d1605f213363f52d9ad0ecf7c4809d0f2cb0384f2e959e6cbb0dc84e5a4443a259d76bf6893e37e8212b5f3c9852377be1cd0d7fb472adc0b2f2618796",
    "id": "%MERCHANT_ID%",
    "version": "%API_VERSION%",
    "client": "%CLIENT_NAME%",
    "language": "sv",
    "test": false
  },
  "data": {
    "hash": "20240510123456789abcdef123456789abcdef123456789abcdef123456789abcdef"
    "time": 1713773251761
  },
  "function": "getInvoiceByHash"
}
```


## Response

| Property     | Type   | Description                      |
|--------------|--------|----------------------------------|
| apiLogsid    | string | The log id of the invoice.       |
| Cart         | object | The cart of the invoice.         |
| Customer     | object | The customer of the invoice.     |
| Articles     | array  | The articles of the invoice.     |
| PaymentData  | object | The payment data of the invoice. |
| PaymentInfo  | object | The payment info of the invoice. |
| PaymentInfo  | object | The payment info of the invoice. |
| alladdresses | string | The number of addresses.         |
| apiVersion   | string | The version of the API.          |

### Cart properties

| Property  | Type   | Description                |
|-----------|--------|----------------------------|
| Total     | object | The total of the cart.     |
| Shipping  | object | The shipping of the cart.  |
| Handling  | object | The handling of the cart.  |

#### Total properties

| Property   | Type   | Description            |
|------------|--------|------------------------|
| rounding   | string | The rounding of total. |
| withtax    | string | The total with tax.    |
| withouttax | string | The total without tax. |
| tax        | string | The tax of the total.  |

#### Shipping properties

| Property  | Type   | Description                 |
|-----------|--------|-----------------------------|
| taxrate   | string | The tax rate of shipping.   |
| withouttax| string | The shipping without tax.   |

#### Handling properties

| Property  | Type   | Description                 |
|-----------|--------|-----------------------------|
| taxrate   | string | The tax rate of handling.   |
| withouttax| string | The handling without tax.   |

### Customer properties

| Property      | Type   | Description                           |
|---------------|--------|---------------------------------------|
| nr            | string | The customer number.                  |
| pno           | string | The personal number of the customer.  |
| Shipping      | object | The shipping address of the customer. |
| Billing       | object | The billing address of the customer.  |
| companySigner | object | The company signer of the customer.   |

#### Customer shipping properties

| Property  | Type   | Description                       |
|-----------|--------|-----------------------------------|
| street    | string | The street of the address.        |
| city      | string | The city of the address.          |
| country   | string | The country of the address.       |
| phone     | string | The phone of the address.         |
| company   | string | The company of the address.       |
| zip       | string | The zip of the address.           |
| type      | string | The type of the address.          |
| street2   | string | The second street of the address. |

#### Customer billing properties

| Property  | Type   | Description                                |
|-----------|--------|--------------------------------------------|
| street    | string | The street of the billing address.         |
| city      | string | The city of the billing address.           |
| country   | string | The country of the billing address.        |
| phone     | string | The phone of the billing address.          |
| lastname  | string | The lastname of the billing address.       |
| company   | string | The company of the billing address.        |
| firstname | string | The firstname of the billing address.      |
| zip       | string | The zip of the billing address.            |
| email     | string | The email of the billing address.          |
| type      | string | The type of the billing address.           |
| street2   | string | The second street of the billing address.  |

#### Customer companySigner properties

| Property  | Type   | Description                                |
|-----------|--------|--------------------------------------------|
| pno       | string | The personal number of the company signer. |


### Articles properties

| Property   | Type   | Description                        |
|------------|--------|------------------------------------|
| aprice     | string | The price of the article.          |
| quantity   | string | The quantity of the article.       |
| title      | string | The title of the article.          |
| discount   | string | The discount of the article.       |
| artnr      | string | The article number of the article. |
| withouttax | string | The article without tax.           |
| taxrate    | string | The tax rate of the article.       |

### PaymentData properties

| Property        | Type   | Description                       |
|-----------------|--------|-----------------------------------|
| autoactivate    | string | The autoactivate of the payment.  |
| status          | string | The status of the payment.        |
| paymentid_related | string | The related payment id.           |
| returnmethod    | string | The return method of the payment. |
| url             | string | The url of the payment.           |
| orderid         | string | The order id of the payment.      |
| cancelurl       | string | The cancel url of the payment.    |
| language        | string | The language of the payment.      |
| accepturl       | string | The accept url of the payment.    |
| callbackurl     | string | The callback url of the payment.  |
| alladdresses    | array  | The addresses of the payment.     |
| number          | string | The number of the payment.        |
| currency        | string | The currency of the payment.      |
| country         | string | The country of the payment.       |
| method          | string | The method of the payment.        |

### All address properties

| Property  | Type   | Description                 |
|-----------|--------|-----------------------------|
| street    | string | The street of the address.  |
| city      | string | The city of the address.    |
| country   | string | The country of the address. |
| phone     | string | The phone of the address.   |
| company   | string | The company of the address. |
| zip       | string | The zip of the address.     |
| email     | string | The email of the address.   |
| type      | string | The type of the address.    |

### PaymentInfo properties

| Property       | Type   | Description                         |
|----------------|--------|-------------------------------------|
| yourreference  | string | Your reference of the payment.      |
| projectname    | string | The project name of the payment.    |
| deliverymethod | string | The delivery method of the payment. |
| paymentdate    | string | The payment date of the payment.    |
| ourreference   | string | Our reference of the payment.       |
| invoiceStatus  | string | The status of the invoice.          |
| balancedue     | string | The balance due of the payment.     |
| deliveryterms  | string | The delivery terms of the payment.  |
| paymentterms   | string | The payment terms of the payment.   |


```json
{
  "credentials" : {
    "hash" : "b95e87999849300d1059d64b81f259cc8f65897169262e26e1983acd69810dbbebad6df43bd9663e06d609bff9b5128fa03e20073e5c4148d8f63e2a0b8f50af",
    "logid" : 1234567
  },
  "data" : {
    "apiLogsid" : "1234567",
    "Cart" : {
      "Total" : {
        "rounding" : "0",
        "withtax" : "9005225",
        "withouttax" : "7204180",
        "tax" : "1801045"
      },
      "Shipping" : {
        "taxrate" : "25",
        "withouttax" : "4900"
      },
      "Handling" : {
        "taxrate" : "0",
        "withouttax" : "0"
      }
    },
    "Customer" : {
      "nr" : "",
      "pno" : "556656-6888",
      "Shipping" : {
        "street" : "",
        "city" : "",
        "country" : "",
        "phone" : "",
        "company" : "",
        "zip" : "",
        "type" : "company",
        "street2" : ""
      },
      "Billing" : {
        "street" : "Testgatan 1",
        "city" : "Teststad",
        "country" : "SE",
        "phone" : "070 - 000 00 00",
        "lastname" : "Person",
        "company" : "Company AB",
        "firstname" : "Tess T",
        "zip" : "123 45",
        "email" : "tess.t.person@example.com",
        "type" : "company",
        "street2" : ""
      },
      "companySigner" : {
        "pno" : "5501011018"
      }
    },
    "Articles" : [
      {
        "aprice" : "720",
        "quantity" : "9999",
        "title" : "Klistermärke - Lila",
        "discount" : "0",
        "artnr" : "144",
        "withouttax" : "7199280",
        "taxrate" : "25"
      }
    ],
    "PaymentData" : {
      "autoactivate" : "0",
      "status" : "Created",
      "paymentid_related" : "",
      "returnmethod" : "",
      "url" : "https://api.billmate.se/invoice/12345/20240510123456789abcdef123456789abcdef",
      "orderid" : "123",
      "cancelurl" : "https://example.com/kassa2/",
      "language" : "sv",
      "accepturl" : "https://example.com/?bco_confirm=yes&bco_flow=checkout_redirect&wc_order_id=null",
      "callbackurl" : "https://example.com/wc-api/BCO_WC_Push/",
      "alladdresses" : [
        {
          "street" : "Testgatan 1",
          "city" : "Teststag",
          "country" : "SE",
          "phone" : "",
          "company" : "Company AB",
          "zip" : "12345",
          "email" : "tess.t.person@example.com",
          "type" : "company"
        },
        {
          "street" : "Testgatan 1",
          "city" : "Teststad",
          "country" : "SE",
          "phone" : "",
          "company" : "Example AB",
          "zip" : "12345",
          "email" : "",
          "type" : "company"
        },
        {
          "street" : "Testgatan 1",
          "city" : "Teststad",
          "country" : "SE",
          "phone" : "",
          "company" : "Company AB",
          "zip" : "12345",
          "email" : "",
          "type" : "company"
        }
      ],
      "number" : "12345",
      "currency" : "SEK",
      "country" : "SE",
      "method" : "2048"
    },
    "apiClient" : "MyBillMate:NodeJS:1.0",
    "PaymentInfo" : {
      "yourreference" : "",
      "projectname" : "",
      "deliverymethod" : "",
      "paymentdate" : "2024-05-10",
      "ourreference" : "",
      "invoiceStatus" : "",
      "balancedue" : "9005225",
      "deliveryterms" : "",
      "paymentterms" : "20"
    },
    "alladdresses" : "1",
    "apiVersion" : "2.5.0"
  }
}
```