# getAddress

## Request
```json
{
  "credentials": {
    "id": "12345",
    "hash": "d12fffb30cc76ebf7ba5c5bc496188cea46c1cf09ebaa4421391f9571bd4df6920223222e87b6bf0dcb7fa8867410851e148f84f9dec6d94b1fddf9f66dc1307",
    "version": "2.1.7",
    "client": "Pluginname:BillMate:1.0",
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

## Examples

<tabs>
<tab title="PHP">
<code-block lang="php">
$connection = new QvicklyAPI($eid, $secret, true, $ssl);
$address = $connection->GetAddress($pno, $country);
</code-block>
</tab>
<tab title="Python">
<code-block lang="python">
connection = QvicklyAPI(eid, secret, True, ssl)
address = connection->GetAddress(pno, country)
</code-block>
</tab>
</tabs>