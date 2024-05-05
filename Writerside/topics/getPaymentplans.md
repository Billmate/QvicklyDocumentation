# getPaymentplans

getPaymentplans is used for fetching part payment plans and for calculating monthly cost for part payments. Fetching paymentplans is normally used in admin panel for fetching an updated part payment plan and save it locally for calculation of monthly cost. Monthly cost for available plans can also be fetched for every checkout using getPaymentplans with an amount, totalwithtax.

## Request

### PaymentData

| Property     | Required | Type   | Description                                                                                                                                                                                                                                                                            |
|--------------|----------|--------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| currency     | true     | string | Currency code to be used for the payment according to ISO 4217. Currently supported: SEK.                                                                                                                                                                                              |
| country      | true     | string | Country code for the country where purchase is made (normally store location) according to ISO 3166-1 alpha-2, e.g. SE, DK, NO, GB.                                                                                                                                                    |
| language     | true     | string | Language code for the language used on the invoice/recipt according to ISO 639-1. Currently supported: sv.                                                                                                                                                                             |
| totalwithtax | true     | cent   | The monthly cost with tax for each payment plan will be calculated from the total payment value with tax. If not submitted, all payment plans are returned. NOTE: Total payment including tax needs to be in 1/100 of currency (i.e. öre if currency is SEK, cent if currency is EUR). |

### Function

| Property | Required | Type   | Description                                                      |
|----------|----------|--------|------------------------------------------------------------------|
| function | true     | string | The function name to be used, for this page it’s getPaymentplans |

```json
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "24632112c18c6fbf7fce6409deda1d4824140c0059fbc108ed6190934c47709caffcb8f8c47fd770ab53e4637e5dac1b8679faa30a248353775dbf336a67d202",
        "version": "%API_VERSION%",
        "client": "%CLIENT_NAME%",
        "language": "sv",
        "serverdata": {"HTTP_HOST":"developer.qvickly.io","HTTP_CONNECTION":"keep-alive","HTTP_CACHE_CONTROL":"max-age=0","HTTP_ACCEPT":"text\/html,application\/xhtml+xml,application\/xml;q=0.9,image\/webp,*\/*;q=0.8","HTTP_USER_AGENT":"Mozilla\/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit\/537.36 (KHTML, like Gecko) Chrome\/39.0.2171.95 Safari\/537.36","HTTP_ACCEPT_ENCODING":"gzip, deflate, sdch","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.8","PATH":"\/sbin:\/usr\/sbin:\/bin:\/usr\/bin","SERVER_SOFTWARE":"Apache\/2.2.26 (Amazon)","SERVER_NAME":"developer.qvickly.io","SERVER_ADDR":"172.31.22.88","SERVER_PORT":"80","REMOTE_ADDR":"2.71.114.219","REMOTE_PORT":"53241","GATEWAY_INTERFACE":"CGI\/1.1","SERVER_PROTOCOL":"HTTP\/1.1","REQUEST_METHOD":"GET","QUERY_STRING":"","REQUEST_TIME":1421313644},
        "time": "1417004339.9291",
        "test": "true"
    },
    "data": {
        "PaymentData": {
            "currency": "SEK",
            "language": "sv",
            "country": "SE",
            "totalwithtax": "50000"
        }
    },
    "function": "getPaymentplans"
}
```

## Response

| Property      | Type   | Description                                                                                                                                                                                      |
|---------------|--------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| paymentplanid | int    | Part payment id of the payment plan.                                                                                                                                                             |
| description   | string | Description of the selected part payment plan                                                                                                                                                    |
| nbrofmonths   | int    | The number of months for this part payment plan                                                                                                                                                  |
| startfee      | cent   | The fee debited for start up of this part payment plan. Given in 1/100 of currency (i.e. öre if currency is SEK, cent if currency is EUR).                                                       |
| handlingfee   | cent   | The invoice fee debited per month for this part payment plan. Given in 1/100 of currency (i.e. öre if currency is SEK, cent if currency is EUR).                                                 |
| minamount     | cent   | The minimum purchase amount for this part payment plan. Given in 1/100 of currency (i.e. öre if currency is SEK, cent if currency is EUR).                                                       |
| maxamount     | cent   | The maximum purchase amount for this payment plan. Given in 1/100 of currency (i.e. öre if currency is SEK, cent if currency is EUR).                                                            |
| country       | string | The country code of the country of sales for the part payment plan                                                                                                                               |
| type          | int    | This is used to determine what type the part payment is and which calculation method is to be used. Type values: 0 = Campaign, 1 = Normal part payment                                           |
| expirydate    | string | The part payment plan last expiry date in the format YYYY-MM-DD                                                                                                                                  |
| interestrate	 | dec    | The interest rate in percentage for this part payment plan                                                                                                                                       |
| currency	     | string | The currency code of the part payment plan                                                                                                                                                       |
| language	     | string | The language code of the part payment plan                                                                                                                                                       |
| totalfee      | cent   | The total cost with tax for the payment plan given by the totalwithtax amount in request. Total is including tax in 1/100 of currency (i.e. öre if currency is SEK, cent if currency is EUR).    |
| monthlycost   | cent   | The monthly total with tax for the payment plan given by the totalwithtax amount in request. Total is including tax in 1/100 of currency (i.e. öre if currency is SEK, cent if currency is EUR). |

```json
{
    "credentials": {
        "hash": "5e3067894ff7ffef37ec0c728cf8f1382b18bc49412087149b3ea340feb435bc18b298554413fe408c62f942ad4c36aacc685f171b01b76738e2f83e52c1a3a1"
    },
    "data": [
        {
            "paymentplanid": "1",
            "description": "3 månaders delbetalning",
            "nbrofmonths": "3",
            "startfee": "2900",
            "handlingfee": "3500",
            "minamount": "10000",
            "maxamount": "10000000000",
            "country": "SE",
            "type": "1",
            "expirydate": "2015-12-31",
            "interestrate": "12",
            "currency": "SEK",
            "language": "sv",
            "totalfee": "64500",
            "monthlycost": "21500"
        },
        {
            "paymentplanid": "2",
            "description": "6 månaders delbetalning",
            "nbrofmonths": "6",
            "startfee": "17000",
            "handlingfee": "3500",
            "minamount": "20000",
            "maxamount": "10000000000",
            "country": "SE",
            "type": "1",
            "expirydate": "2015-12-31",
            "interestrate": "12",
            "currency": "SEK",
            "language": "sv",
            "totalfee": "90600",
            "monthlycost": "15100"
        },
        {
            "paymentplanid": "3",
            "description": "12 månaders delbetalning",
            "nbrofmonths": "12",
            "startfee": "17000",
            "handlingfee": "3500",
            "minamount": "40000",
            "maxamount": "10000000000",
            "country": "SE",
            "type": "1",
            "expirydate": "2015-12-31",
            "interestrate": "12",
            "currency": "SEK",
            "language": "sv",
            "totalfee": "114000",
            "monthlycost": "9500"
        }
    ]
}
```