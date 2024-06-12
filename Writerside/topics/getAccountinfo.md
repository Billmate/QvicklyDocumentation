# getAccountinfo

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

getAccountinfo is used for retrieving account details and payment methods.

*An example can be found here [Get account info example](Get-account-info.md)*

## Request

### Data

| Property      | Required | Type   | Description                                                                                                                                                                                                                                  |
|---------------|----------|--------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| PaymentData   | false    | object | Payment data.                                                                                                                                                                                                                                |
| comingFromPF2 | false    | string | Show all available payment methods as if you come from PaymentFlow2. If set to "1" then all available payment method will be returned. If set to "0" er left empty only card and Pay With Qvickly will be shown. Default is an empty string. |

### PaymentData

| Property      | Required | Type | Description                                                                                         |
|---------------|----------|------|-----------------------------------------------------------------------------------------------------|
| totalwithtax  | false    | int  | If totalwithtax is defined it will be used for fetching payment methods available for given amount. |

### Function

| Property | Required | Type   | Description                                                     |
|----------|----------|--------|-----------------------------------------------------------------|
| function | true     | string | The function name to be used, for this page it’s getAccountinfo |

```json
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "f757e768b281ff1962f7c70a91efc12c2c1b957e5853cbaf0a8524c4c2e6ad4ce3b8617d11354dac49a8afa8a761b4b7ba355b1740f4fa25bbbbc38e05f4ae15",
        "version": "%PAYMENT_API_VERSION%",
        "client": "%PAYMENT_API_CLIENT_NAME%",
        "language": "sv",
        "time": "1417004339.9291",
        "test": "true"
    },
    "data": {
        "PaymentData": {
          "totalwithtax": "1000"
        },
        "comingFromPF2": "1"
    },
    "function": "getAccountinfo"
}
```

## Response

| Property | Type   | Description                                                                                   |
|----------|--------|-----------------------------------------------------------------------------------------------|

> The response is being updated with new information. Please check back later.

```json
{
    "credentials": {
        "hash": "3f8b36d6daa225bfa4a714335730f045f81f1b5111a1ed272164a99c56f15e295bca643912ac30b2920a14e53ee6134f0aa616c0ebcd8eab596264a1ff0f080e",
        "logid": "163642"
    },
    "data": {
        "company": "Billmate AB",
        "address": "Gustav Adolfs Torg 47",
        "zip": "211 39",
        "city": "MALMÖ",
        "country": "Sweden",
        "phone": "040 - 30 35 00",
        "email": "support@developer.qvickly.io",
        "orgregnr": "556918-4129",
        "vatregnr": "SE556918412901",
        "language": "sv",
        "paymentoptions": [
            {
                "method": "1",
                "currency": "SEK,DKK,NOK,GBP,EUR,USD",
                "language": "sv,da,no,en"
            },
            {
                "method": "2",
                "currency": "SEK,DKK,NOK,GBP,EUR,USD",
                "language": "sv,da,no,en"
            },
            {
                "method": "4",
                "currency": "SEK",
                "language": "sv,da,no,en"
            },
            {
                "method": "8",
                "currency": "SEK,DKK,NOK,GBP,EUR,USD",
                "language": "sv,da,no,en"
            },
            {
                "method": "16",
                "currency": "SEK",
                "language": "sv"
            },
            {
                "method": "32",
                "currency": "SEK,DKK,NOK,GBP,EUR,USD",
                "language": "sv,da,no,en"
            }
        ],
        "defaultpaymentterms_company": "20",
        "defaultpaymentterms_private": "14",
        "checkout": "1",
        "force2have18years": "0",
        "force2havepno": "1",
        "force2havephonenumber": "1",
        "locknameforshipping": "0",
        "checkoutAvailableCustomerTypes": [
            "company",
            "person"
        ],
        "logo": "https://mobilfakturera.se/mexc/attachments/companylogos/4913/00070813124735.png"
    }
}
```