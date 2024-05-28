# getOrderInfo

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

Return the order with the specified hash.

*An example can be found here [Get order info example](Get-order-info.md)*

## Request

### Data
| Property | Required | Type   | Description                                                                 |
|----------|----------|--------|-----------------------------------------------------------------------------|
| hash     | true     | string | The hash for the order.                                                     |

### Function

| Property | Required | Type   | Description                                                   |
|----------|----------|--------|---------------------------------------------------------------|
| function | true     | string | The function name to be used, for this page it’s getOrderInfo |

```json
{
  "data":{
    "dummy":"dummy"
  },
  "credentials":{
    "hash":"adf499d1605f213363f52d9ad0ecf7c4809d0f2cb0384f2e959e6cbb0dc84e5a4443a259d76bf6893e37e8212b5f3c9852377be1cd0d7fb472adc0b2f2618796",
    "id":"%MERCHANT_ID%",
    "version":"%API_VERSION%",
    "client":"%CLIENT_NAME%",
    "language":"sv",
    "test":false
  },
  "data":{
    "hash":"3b2044ddae0aff1a26c602f195438127be6349b513d78f318e444ae2c8e8653eaa8624973a8459347ce430ebe40611201ff5c11f1673723d7e36cf0052366fd5"
  },
  "function":"getOrderInfo"
}
```

## Response

The response will contain the order.

### Order properties
| Property       | Type   | Description                        |
|----------------|--------|------------------------------------|
| status         | string | The status of the order.           |
| Cart           | object | The cart for the order.            |
| invoiceid_real | string | The real invoice id for the order. |
| Customer       | object | The customer for the order.        |
| DateTime       | string | The date and time for the order.   |
| PaymentData    | object | The payment data for the order.    |
| Articles       | array  | The articles for the order.        |
| orderid_real   | string | The real order id for the order.   |
| PaymentInfo    | string | The payment info for the order.    |
| CheckoutData   | object | The checkout data for the order.   |

### Cart properties
| Property | Type   | Description                        |
|----------|--------|------------------------------------|
| Total    | object | The total for the cart.            |
| Shipping | object | The shipping for the cart.         |
| Handling | object | The handling for the cart.         |

### Total properties
| Property   | Type   | Description                        |
|------------|--------|------------------------------------|
| rounding   | string | The rounding for the total.        |
| withtax    | string | The total with tax.                |
| withouttax | string | The total without tax.             |
| tax        | string | The tax for the total.             |

### Shipping properties
| Property   | Type   | Description                        |
|------------|--------|------------------------------------|
| taxrate    | string | The tax rate for the shipping.     |
| withouttax | string | The shipping without tax.          |

### Handling properties
| Property   | Type   | Description                    |
|------------|--------|--------------------------------|
| taxrate    | string | The tax rate for the handling. |
| withouttax | string | The handling without tax.      |

### Customer properties
| Property | Type   | Description                              |
|----------|--------|------------------------------------------|
| Billing  | object | The billing address for the customer.    |
| pno      | string | The personal number for the customer.    |
| Shipping | array  | The shipping addresses for the customer. |

### Billing properties
| Property  | Type   | Description                                |
|-----------|--------|--------------------------------------------|
| street    | string | The street for the billing address.        |
| city      | string | The city for the billing address.          |
| country   | string | The country for the billing address.       |
| phone     | string | The phone for the billing address.         |
| lastname  | string | The last name for the billing address.     |
| company   | string | The company for the billing address.       |
| firstname | string | The first name for the billing address.    |
| zip       | string | The zip code for the billing address.      |
| email     | string | The email for the billing address.         |
| type      | string | The type for the billing address.          |
| street2   | string | The second street for the billing address. |

### Shipping address properties
| Property | Type | Description |
|----------|------|-------------|

### PaymentData properties
| Property      | Type   | Description                               |
|---------------|--------|-------------------------------------------|
| country       | string | The country for the payment data.         |
| paymentplanid | string | The payment plan id for the payment data. |
| method_name   | string | The method name for the payment data.     |
| logo          | string | The logo for the payment data.            |
| order         | object | The order status for the payment data.    |
| orderid       | string | The order id for the payment data.        |
| number        | string | The number for the payment data.          |
| language      | string | The language for the payment data.        |
| accepturl     | string | The accept url for the payment data.      |
| cancelurl     | string | The cancel url for the payment data.      |
| callbackurl   | string | The callback url for the payment data.    |
| currency      | string | The currency for the payment data.        |
| status        | string | The status for the payment data.          |
| method        | string | The method for the payment data.          |

### Order status properties
| Property | Type   | Description                 |
|----------|--------|-----------------------------|
| status   | string | The status for the order.   |
| number   | string | The number for the order.   |
| url      | string | The url for the order.      |
| orderid  | string | The order id for the order. |

### Article properties
| Property   | Type   | Description                            |
|------------|--------|----------------------------------------|
| aprice     | string | The price for the article.             |
| quantity   | string | The quantity for the article.          |
| title      | string | The title for the article.             |
| discount   | string | The discount for the article.          |
| artnr      | string | The article number for the article.    |
| withouttax | string | The price without tax for the article. |
| taxrate    | string | The tax rate for the article.          |

### CheckoutData properties
| Property            | Type   | Description                                      |
|---------------------|--------|--------------------------------------------------|
| terms               | string | The terms for the checkout data.                 |
| companyView         | string | The company view for the checkout data.          |
| Cart                | object | The cart for the checkout data.                  |
| client              | string | The client for the checkout data.                |
| hideShippingAddress | string | The hide shipping address for the checkout data. |
| privacyPolicy       | string | The privacy policy for the checkout data.        |

```json
{
  "credentials" : {
    "hash" : "bc8bc432ad0127802509788b231a39944049a555ff243eafb78ce3b5cd6a58a1f8442bbe272a52e461feb53097a7915d17d45ffdc3fa8c4a2e3de3393d2168eb",
    "logid" : 1234567
  },
  "data" : {
    "status" : "Created",
    "Cart" : {
      "Total" : {
        "rounding" : "0",
        "withtax" : "7000",
        "withouttax" : "7000",
        "tax" : "0"
      },
      "Shipping" : {
        "taxrate" : "0",
        "withouttax" : "0"
      },
      "Handling" : {
        "taxrate" : "0",
        "withouttax" : "0"
      }
    },
    "invoiceid_real" : "1234567",
    "Customer" : {
      "Billing" : {
        "street" : "Testgatan 1",
        "city" : "Teststad",
        "country" : "SE",
        "phone" : "070 - 000 00 00",
        "lastname" : "Person",
        "company" : "",
        "firstname" : "Tess T",
        "zip" : "123 45",
        "email" : "tess.t.person@example.com",
        "type" : "person",
        "street2" : ""
      },
      "pno" : "195501011018",
      "Shipping" : [

      ]
    },
    "DateTime" : "2024-05-15 12:07:00",
    "PaymentData" : {
      "country" : "SE",
      "paymentplanid" : "0",
      "method_name" : "Betala med Qvickly",
      "logo" : "",
      "order" : {
        "status" : "Pending",
        "number" : "1234567",
        "url" : "https://api.billmate.se/invoice/12345/",
        "orderid" : "123"
      },
      "orderid" : "123",
      "number" : "12345",
      "language" : "sv",
      "accepturl" : "https://example.com/?bco_confirm=yes&bco_flow=checkout_redirect&wc_order_id=null",
      "cancelurl" : "https://example.com/checkout/",
      "callbackurl" : "https://example.com/wc-api/BCO_WC_Push/",
      "currency" : "SEK",
      "status" : "Step2Loaded",
      "method" : "2048"
    },
    "apiClient" : "MyBillMate:NodeJS:1.0",
    "Articles" : [
      {
        "aprice" : "2500",
        "quantity" : "1",
        "title" : "Long Sleeve Tee",
        "discount" : "0",
        "artnr" : "woo-long-sleeve-tee",
        "withouttax" : "2500",
        "taxrate" : "0"
      },
      {
        "aprice" : "4500",
        "quantity" : "1",
        "title" : "Hoodie - blue, Yes",
        "discount" : "0",
        "artnr" : "woo-hoodie-blue-logo",
        "withouttax" : "4500",
        "taxrate" : "0"
      }
    ],
    "orderid_real" : "12345",
    "PaymentInfo" : "",
    "CheckoutData" : {
      "terms" : "https://example.com/cart/",
      "companyView" : "false",
      "Cart" : {
        "Total" : {
          "rounding" : "0",
          "withtax" : "7000",
          "withouttax" : "7000",
          "tax" : "0"
        },
        "Shipping" : {
          "taxrate" : "0",
          "withouttax" : "0"
        },
        "Handling" : {
          "taxrate" : "0",
          "withouttax" : "0"
        }
      },
      "client" : "WooCommerce_v2:1.6.6",
      "hideShippingAddress" : "false",
      "privacyPolicy" : "https://example.com/?page_id=3"
    }
  }
}
```