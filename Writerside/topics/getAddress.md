# getAddress

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

getAddress is used for retrieving a person/company’s address from a personal or organization number.
getAddress API is only permitted to be used together with Qvickly payments.
The return is an array in JSON format with the values of the person/company details or an error.
To use addPayment methods factoring or part payment, the person/company who purchase the product must have the same invoice address and delivery address as the address returned from getAddress.

*An example can be found here [Get address example](Get-address.md)*

## Request

### Data

| Property     | Required | Type   | Description                                                                                                                                                                                   |
|--------------|----------|--------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| pno          | true     | string | National identification number (NIN) or organisation number. Sweden Sent as YYMMDD-XXXX, it can be sent with or without “-” and with or without the two first numbers (19 or 20) in the year. |
| country      | false    | string | Country code for the pno according to ISO 3166-1 alpha-2, e.g. SE, DK, NO, GB. Default is SE if not submitted.                                                                                |
| alladdresses | false    | int    | If set to 1, all addresses will be returned. Default is 0.                                                                                                                                    |
| engagements  | false    | int    | If set to 1, all engagements for this pno will be returned. Default is 0.                                                                                                                     |

```json
{
  "credentials": {
    "id": "%MERCHANT_ID%",
    "hash": "d12fffb30cc76ebf7ba5c5bc496188cea46c1cf09ebaa4421391f9571bd4df6920223222e87b6bf0dcb7fa8867410851e148f84f9dec6d94b1fddf9f66dc1307",
    "version": "%API_VERSION%",
    "client": "%CLIENT_NAME%",
    "language": "sv",
    "test": "true"
  },
  "data": {
    "pno": "550101-1018",
    "country": "SE"
  },
  "function": "getAddress"
}
```

## Response for swedish national identification number
| Property  | Type   | Description                  |
|-----------|--------|------------------------------|
| firstname | string | The first name of the entity |
| lastname  | string | The last name of the entity  |
| street    | string | The street for the entity    |
| zip       | string | The zip code for the entity  |
| city      | string | The city for the entity      |
| country   | string | The country for the entity   |
| phone     | string | The phone for the entity     |
| email     | string | The email for the entity     |

```json
{
  "credentials": {
    "hash": "edbbb1411422ac0d1cbc5e3a1b8948d01edaa4553ea7a78c1aad823db9f49acbc0b6f9d02769cae8975fe5f44bba13050a5b9c2e19f0f488b9faa7df66029520"
  },
  "data": {
    "firstname": "*TEST* Firstname",
    "lastname": "Lastname",
    "street": "Streetname",
    "zip": "12345",
    "city": "City",
    "country": "SE",
    "phone": "467012345678",
    "email": "test@testcompany.se"
  }
}
```

## Response for swedish organisation number
| Property | Type   | Description                     |
|----------|--------|---------------------------------|
| company  | string | The company name for the entity |
| street   | string | The street for the entity       |
| zip      | string | The zip code for the entity     |
| city     | string | The city for the entity         |
| country  | string | The country for the entity      |
| phone    | string | The phone for the entity        |
| email    | string | The email for the entity        |

```json
{
  "credentials": {
    "hash": "edbbb1411422ac0d1cbc5e3a1b8948d01edaa4553ea7a78c1aad823db9f49acbc0b6f9d02769cae8975fe5f44bba13050a5b9c2e19f0f488b9faa7df66029520"
  },
  "data": {
    "company": "Test Company",
    "street": "Streetname",
    "zip": "12345",
    "city": "City",
    "country": "SE",
    "phone": "467012345678",
    "email": "test@testcompany.se"
  }
}
```

