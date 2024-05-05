# getExchangeRate

Get the exchange rate for a specific currency on any given day.

## Request

| Property | Required | Type   | Description                                                                                                                                                                                                  |
|----------|----------|--------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| currency | true     | string | The currency code.                                                                                                                                                                                           |
| date     | false    | string | The date for the exchange rate. The date must be in the format YYYY-MM-DD. If omitted the current date will be used. If the date is a Saturday or Sunday then the last Friday before that date will be used. |

```json
{
  "data":{
    "currency":"USD",
    "date":"2021-10-01"
  },
  "credentials":{
    "hash":"adf499d1605f213363f52d9ad0ecf7c4809d0f2cb0384f2e959e6cbb0dc84e5a4443a259d76bf6893e37e8212b5f3c9852377be1cd0d7fb472adc0b2f2618796",
    "id":"%MERCHANT_ID%",
    "version":"%API_VERSION%",
    "client":"%CLIENT_NAME%",
    "language":"sv",
    "test":false
  },
  "function":"getExchangeRate"
}
```

## Response

| Property | Type    | Description                                                                                                                                                                                  |
|----------|---------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| rate     | decimal | The exchange rate for the currency on the given date.                                                                                                                                        |
| result   | int     | 0 if success. -1 if no exchange rate found for this date. If no date is given as an argument then the current date will be used. If the current date hasn't been set yet this will return -1 |
| date     | string  | The date for for which this exchange rate is valid. This might differ from the requested date since weekends results in the last fridays rate.                                               |

```json
{
  "credentials": {
    "hash": "e3fc29845c718e6db3b5f73fa956364efede85917c6995cd1645fcd6033d75a6f9b5c10f2022cd13fe122b6ba72367f5b2ef312d303edbb4a2dbfccd53dd139e",
    "logid": 853022
  },
  "data": {
    "rate": "8.7791",
    "result": "0",
    "date": "2021-10-01"
  }
}
```