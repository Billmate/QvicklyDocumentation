# crediflowSearchParty

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

Find GLN for a party based on the organisation number.

*An example can be found here [crediflow search party example](Crediflow-search-party.md)*

## Request

### Data
| Property | Required | Type   | Description                                    |
|----------|----------|--------|------------------------------------------------|
| orgnum   | Yes      | string | The organisation number for the search party.  |

### Function

| Property | Required | Type   | Description                                                           |
|----------|----------|--------|-----------------------------------------------------------------------|
| function | true     | string | The function name to be used, for this page it’s crediflowSearchParty |

```json
{
  "data":{
  },
  "credentials":{
    "hash":"adf499d1605f213363f52d9ad0ecf7c4809d0f2cb0384f2e959e6cbb0dc84e5a4443a259d76bf6893e37e8212b5f3c9852377be1cd0d7fb472adc0b2f2618796",
    "id":"%MERCHANT_ID%",
    "version":"%PAYMENT_API_VERSION%",
    "client":"%PAYMENT_API_CLIENT_NAME%",
    "language":"sv",
    "test":false
  },
  "data":{
    "orgnum":"556656-6888"
  },
  "function":"crediflowSearchParty"
}
```

## Response

The response will contain an array of parties.

If no match is found the array will be empty.

| Property | Type   | Description                                                                                   |
|----------|--------|-----------------------------------------------------------------------------------------------|
| ID       | string | The ID for the party.                                                                         |
| Name     | string | The name of the party.                                                                        |
| GLN      | string | The GLN for the party.                                                                        |


```json
{
  "credentials" : {
    "hash" : "416b6ac4182a590c27395c03d7466cd3bcde72524cb81c83ba4e25c1dfc0b948640e9c38edfa29660f6de6ab1f875b9cc7bb4a514ca2b400df50a7f3f0484f63",
    "logid" : 1234567
  },
  "data" : [
    {
      "ID" : "1234567",
      "Name" : "TESTINGE Kommun",
      "GLN" : "1234567890123"
    },
    {
      "ID" : "1234568",
      "Name" : "TESTINGE KOMMUN",
      "GLN" : "1234567890124"
    }
  ]
}
```