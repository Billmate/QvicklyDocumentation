# getCustomersByName

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

Get customers filtered by name.

*An example can be found here [Get customers by name example](Get-customers-by-name.md)*

## Request

### Data
| Property | Required | Type   | Description                                            |
|----------|----------|--------|--------------------------------------------------------|
| name     | true     | string | The name of the customer. Name can be full or partial. |

### Function

| Property | Required | Type   | Description                                                         |
|----------|----------|--------|---------------------------------------------------------------------|
| function | true     | string | The function name to be used, for this page it’s getCustomersByName |

```json
{
  "data":{
    "name":"Testing"
  },
  "credentials":{
    "hash":"adf499d1605f213363f52d9ad0ecf7c4809d0f2cb0384f2e959e6cbb0dc84e5a4443a259d76bf6893e37e8212b5f3c9852377be1cd0d7fb472adc0b2f2618796",
    "id":"%MERCHANT_ID%",
    "version":"%API_VERSION%",
    "client":"%CLIENT_NAME%",
    "language":"sv",
    "test":false
  },
  "function":"getCustomersByName"
}

```
## Response

| Property | Type   | Description                                                                                                                |
|----------|--------|----------------------------------------------------------------------------------------------------------------------------|

```json
{
    "credentials": {
        "hash": "36961fea06f6031ccc4ca10df664c9930f6e805731e9c1e617c68e776f0d0b3d7a540018aef546ecb6cccfd6b9be673b86ccdb6ac48b62e8bf86d43cd622c24c",
        "logid": 12345
    },
    "data": [
        {
          "address": "Streetname",
          "address2": "",
          "companyno": "",
          "country": "",
          "countrycode": "",
          "crediflowPartyId": "",
          "creditlimit": "",
          "currency": "SEK",
          "customerid": "1234567890",
          "customertypecode": "",
          "date": "2023-12-59 23:59:59",
          "deliveryaddress": "Streetname",
          "deliveryaddress2": "",
          "deliverycountry": "Sverige",
          "deliverycountrycode": "",
          "deliverymethod": "",
          "deliveryname": "Firstname Lastname",
          "deliverypostcode": "12345",
          "deliverypostoffice": "City",
          "deliveryterms": "",
          "dontSendEFaktura": "",
          "email": "test@teststore123.com",
          "email_offer": "",
          "email_order": "",
          "export": "",
          "fax": "",
          "glncode": "",
          "handlingcharge": "",
          "housingassociationregno": "",
          "language": "SE",
          "latitude": "",
          "longitude": "",
          "mexcModulesid": "1234567890",
          "mexcParamvaluesetsid": "1234567890",
          "mm3servicesid": "1234567890",
          "mobile": "",
          "name": "PLUGIN TEST MODE - Firstname Lastname",
          "name2": "",
          "notes": "",
          "origin": "",
          "paymentterms": "",
          "postcode": "12345",
          "postoffice": "City",
          "pricelist": "",
          "profile": "",
          "propertydesignation": "",
          "rebate": "",
          "reference": "0701234567",
          "reference_offer": "",
          "reference_order": "",
          "reversetax": "",
          "sendByPostOnly": "",
          "state": "",
          "status": "",
          "statuslog": "",
          "telephone": "0701234567",
          "vatregno": ""
        }
    ]
}