# checkoutStatus

<include from="Snippets-CheckoutAPI.md" element-id="snippet-header" />

> This is an internal function used by the checkout
{style="warning"}

An example of how to use this function can be found [here](CheckoutAPI-Example-checkoutStatus.md)

{type="narrow"}
Endpoint
: /public/ajax.php?checkoutStatus

Method
: POST

If result exists, status can have 4 different values
* Created
* Cancelled
* Failed
* Paid

## Request

| Property | Required | Type   | Description                    |
|----------|----------|--------|--------------------------------|
| hash     | true     | string | The hash for the order.        |



## Response

| Property    | Type   | Description                               |
|-------------|--------|-------------------------------------------|
| json        | string | The complete json string for the payment. |
| status      | string | The status of the payment.                |
| number      | string | The number of the payment.                |
| data        | object | The data for the payment.                 |
| credentials | object | The credentials for the payment.          |
| accepturl   | object | The accepturl for the payment.            |

### data

| Property | Type   | Description                  |
|----------|--------|------------------------------|
| number   | string | The number of the payment.   |
| orderid  | string | The orderid for the payment. |
| status   | string | The status of the payment.   |
| url      | string | The url for the payment.     |

### credentials

| Property | Type   | Description               |
|----------|--------|---------------------------|
| hash     | string | The hash for the payment. |

### accepturl

| Property | Type   | Description                     |
|----------|--------|---------------------------------|
| url      | string | The url for the payment.        |
| baseurl  | string | The base url for the payment.   |
| params   | object | The parameters for the payment. |


```json
{
    "json": "... complete json string for the payment ...",
    "status": "Created",
    "number": "0",
    "data": {
        "number": "0",
        "orderid": "P123456789-20240701-1234",
        "status": "Created",
        "url": ""
    },
    "credentials": {
        "hash": "123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890"
    },
    "accepturl": {
        "url": "https:\/\/www.example.com\/completedpayment",
        "baseurl": "https:\/\/www.example.com\/completedpayment",
        "params": []
    }
}
```