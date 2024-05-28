# getFees

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

Get the available fees for the merchant.

*An example can be found here [Get fees example](Get-address.md)*

## Request

### Data
| Property | Required | Type   | Description                                                                                   |
|----------|----------|--------|-----------------------------------------------------------------------------------------------|

This call has no parameters. But since the data is required by the API, you need to send an object (that can be empty).

### Function

| Property | Required | Type   | Description                                              |
|----------|----------|--------|----------------------------------------------------------|
| function | true     | string | The function name to be used, for this page it’s getFees |


```json
{
  "data":{
  },
  "credentials":{
    "hash":"adf499d1605f213363f52d9ad0ecf7c4809d0f2cb0384f2e959e6cbb0dc84e5a4443a259d76bf6893e37e8212b5f3c9852377be1cd0d7fb472adc0b2f2618796",
    "id":"%MERCHANT_ID%",
    "version":"%API_VERSION%",
    "client":"%CLIENT_NAME%",
    "language":"sv",
    "test":false
  },
  "function":"getFees"
}
```

## Response
The response will contain an array of fees.

### Fee properties
| Property        | Type   | Description                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|-----------------|--------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| feeid           | int    | Id for this fee                                                                                                                                                                                                                                                                                                                                                                                                                                |
| target          | string | Target for the fee. If empty it may be used by anyone. If set to **customer** the the merchant must have this ffe registered to them.                                                                                                                                                                                                                                                                                                          |
| amount_from     | int    | The lower limit for this fee to ba valid.                                                                                                                                                                                                                                                                                                                                                                                                      |
| amount_to       | int    | The upper limit for this fee to be valid.                                                                                                                                                                                                                                                                                                                                                                                                      |
| duedate_type    | string | <p>How to affect the due date</p><p>_none_ - due date is not affected</p><p>_fixeddate_ - due date will be set the the fixed date of the fee</p><p>_10days_ - 10 days will be added to the due date</p><p>_14days_ - 14 days will be added to the due date</p><p>_last day of next month_ - the due date will be set to the last day of next month</p><p>_last day of this month_ - the due date will be set to the last day of next month</p> |
| new_duedate     | date   | The new due date using this fee                                                                                                                                                                                                                                                                                                                                                                                                                |
| country         | string | Country where this fee is valid                                                                                                                                                                                                                                                                                                                                                                                                                |
| currency        | string | Currency for where this fee is valid                                                                                                                                                                                                                                                                                                                                                                                                           |
| fee             | int    | The fee in cents                                                                                                                                                                                                                                                                                                                                                                                                                               |
| fee_tax         | int    | The tax in cents                                                                                                                                                                                                                                                                                                                                                                                                                               |
| fee_taxrate     | int    | The tax rate for the fee                                                                                                                                                                                                                                                                                                                                                                                                                       |
| expiration_date | date   | The expiration date for this fee                                                                                                                                                                                                                                                                                                                                                                                                               |
| description     | array  | Array of [descriptions](#description)                                                                                                                                                                                                                                                                                                                                                                                                          |

### Description

| Property    | Type    | Description                      |
|-------------|---------|----------------------------------|
| language    | string  | The language of the description. |
| description | string  | The description of the fee.      |


```json
{
    "credentials": {
        "hash": "3b2044ddae0aff1a26c602f195438127be6349b513d78f318e444ae2c8e8653eaa8624973a8459347ce430ebe40611201ff5c11f1673723d7e36cf0052366fd5",
        "logid": 855412
    },
    "data": [
        {
            "feeid": "123123",
            "target": "customer",
            "amount_from": "101",
            "amount_to": "200",
            "duedate_type": "none",
            "new_duedate": "0000-00-00",
            "country": "SE",
            "currency": "SEK",
            "fee": "1900",
            "fee_tax": "475",
            "fee_taxrate": "25",
            "expiration_date": "0000-00-00",
            "description": [
                {
                    "language": "sv",
                    "description": "Administrationsavgift"
                },
                {
                    "language": "en",
                    "description": "Administrationsavgift"
                }
            ]
        },
        {
            "feeid": "123124",
            "target": "customer",
            "amount_from": "201",
            "amount_to": "400",
            "duedate_type": "none",
            "new_duedate": "0000-00-00",
            "country": "SE",
            "currency": "SEK",
            "fee": "2900",
            "fee_tax": "725",
            "fee_taxrate": "25",
            "expiration_date": "0000-00-00",
            "description": [
                {
                    "language": "sv",
                    "description": "Administrationsavgift"
                },
                {
                    "language": "en",
                    "description": "Administrationsavgift"
                }
            ]
        }
    ]
}
```
