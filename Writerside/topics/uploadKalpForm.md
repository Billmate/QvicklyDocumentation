# uploadKalpForm

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

Update KALP data.

*An example can be found [here](Upload-KALP-form.md)*

## Request

### Data

| Property | Required | Type   | Description          |
|----------|----------|--------|----------------------|
| number   | yes      | string | The invoice number   |
| kalpData | true     | object | The KALP data.       |

#### KALP data

| Property            | Required | Type   | Description                        |
|---------------------|----------|--------|------------------------------------|
| monthlyIncome       | yes      | int    | Monthly income                     |
| nbrOfPerson         | yes      | int    | Number of persons in the household |
| typeOfAccommodation | yes      | string | Type of accomodation               |
| monthlyExpenses     | yes      | int    | Monthly expenses                   |
| monthlyLoans        | yes      | int    | Monthly cost of loans              |

### Function

| Property | Required | Type   | Description                                                     |
|----------|----------|--------|-----------------------------------------------------------------|
| function | true     | string | The function name to be used, for this page it’s uploadKalpForm |

```json
{
  "credentials": {
    "hash": "adf499d1605f213363f52d9ad0ecf7c4809d0f2cb0384f2e959e6cbb0dc84e5a4443a259d76bf6893e37e8212b5f3c9852377be1cd0d7fb472adc0b2f2618796",
    "id": "%MERCHANT_ID%",
    "version": "%PAYMENT_API_VERSION%",
    "client": "%PAYMENT_API_CLIENT_NAME%",
    "language": "sv",
    "test": false
  },
  "data": {
    "hash" : "20240510123456789abcdef123456789abcdef123456789abcdef123456789abcdef",
    "method" : "2048",
    "time" : 1714743718003
  }
,
  "function": "uploadKalpForm"
}
```

## Response

| Property            | Type   | Description                         |
|---------------------|--------|-------------------------------------|
| monthlyIncome       | int    | Monthly income                      |
| nbrOfPerson         | int    | Number of persons in household      |
| typeOfAccommodation | string | Type of accomodation                |
| monthlyExpenses     | int    | Monthly expenses                    |
| monthlyLoans        | int    | Cost of loans per month             |
| monthlyCost         | int    | Calculated monthly cost             |
| result              | int    | The kalp value ("kvar att leva på") |
| date                | string | Date and time of kalp               |
| status              | string | Automatic status of kalp            |

```json
{
  "credentials" : {
    "hash" : "336b3197b8b6c22e5cbc6a280a8a4de6940bf9223d97cfff5394be65c8364abad2572906e6191e4a6bdc9d716e87821f9225fb5556417b788674cb13c9ff2699",
    "logid" : 1234567
  },
  "data" : {
    "monthlyIncome": "32000",
    "nbrOfPerson": "2",
    "typeOfAccommodation": "rental",
    "monthlyExpenses": "2300",
    "monthlyLoans": "2500",
    "monthlyCost": "0",
    "result": "23630",
    "date": "2024-09-12 10:21:14",
    "status": "Passed"
  }
}
```