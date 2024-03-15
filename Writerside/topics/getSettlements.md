# getSettlements

This method returns a list of settlements.

## Request

### Parameters
| Property | Required | Type   | Description                                         |
|----------|----------|--------|-----------------------------------------------------|
| fromDate | false    | date   | Start date for the settlements. Sent as YYYY-MM-DD. |

```json
{
  "credentials":{
    "hash":"1569cd696206b2a8aaa7a63b6215318c9f637e6a2f7f519b7a2033cd7b47103b01fe097e40a17028acf839f078ccbaa91e3bc423870a926bcf08e9747db8c5da",
    "id":"%MERCHANT_ID%",
    "version":"%API_VERSION%",
    "client":"%CLIENT_NAME%",
    "language":"sv",
    "test":false
  },
  "data":{
    "fromDate":"2023-09-01"
  },
  "function":"getSettlements"
}

```

## Response

| Property    | Type | Description                                                       |
|-------------|------|-------------------------------------------------------------------|
| Settlements | array| Array of settlements.                                             |
| Date        | date | Date for when the settlements were retrieved. Sent as YYYY-MM-DD. |

### Settlement
| Property       | Type | Description                                                |
|----------------|------|------------------------------------------------------------|
| SettlementId   | int  | Settlement number.                                         |
| SettlementDate | date | Date for when the settlement was done. Sent as YYYY-MM-DD. |
| SettlementURL  | url  | URL to the pdf of the settlement.                           |
| InvoiceIds     | array| Array of invoice ids included in the settlement.            |

```json
{
  "credentials": {
    "hash": "454386f68e59b8afbc1968478509a8af874a06f72cf57e28c2e8d837670487a36e5d9e9e49cd54e0de891a8038b4ae73dd0dabee2085ac6670e20d717f4a1125",
    "logid": 12345
  },
  "data": {
    "Settlements": [
      {
        "SettlementId": "1",
        "SettlementDate": "2023-12-31",
        "SettlementURL": "https://online.billmate.se/avrakning/1234/1-2023-12-31.pdf",
        "InvoiceIds": [
          "1000235",
          "1000236"
        ]
      }
    ],
    "Date": "2023-12-31"
  }
}
```