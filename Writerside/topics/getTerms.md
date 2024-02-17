# getTerms

getTerms is used for fetching our payment terms.

## Request

### PaymentData

| Property      | Required | Type   | Description                                                             |
|---------------|----------|--------|-------------------------------------------------------------------------|
| method        | true     | string | Payment method. Allowed values: 1 = Invoice, 4 = Part Payment, 8 = Card |
| paymentplanid | false    | int    | Paymentplanid is only required if method is 4 (Part payment).           |

### Cart

| Property      | Required | Type | Description                                                                                                                                                                                                                                                                                                       |
|---------------|----------|------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| total.withtax | true     | int  | Total payment including tax in 1/100 of currency (i.e. öre if currency is SEK, cent if currency is EUR). Note: Total Payment with Tax must be equal to Total Payment Excluding Tax + Total Tax + Rounding. This is a double check to make sure no rounding errors are present and payment always will be correct. |

### Function

| Property | Required | Type   | Description                                               |
|----------|----------|--------|-----------------------------------------------------------|
| function | true     | string | The function name to be used, for this page it’s getTerms |


```json
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "24632112c18c6fbf7fce6409deda1d4824140c0059fbc108ed6190934c47709caffcb8f8c47fd770ab53e4637e5dac1b8679faa30a248353775dbf336a67d202",
        "version": "API_VERSION%",
        "client": "%CLIENT_NAME%",
        "language": "sv",
        "serverdata": {"HTTP_HOST":"developer.billmate.se","HTTP_CONNECTION":"keep-alive","HTTP_CACHE_CONTROL":"max-age=0","HTTP_ACCEPT":"text\/html,application\/xhtml+xml,application\/xml;q=0.9,image\/webp,*\/*;q=0.8","HTTP_USER_AGENT":"Mozilla\/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit\/537.36 (KHTML, like Gecko) Chrome\/39.0.2171.95 Safari\/537.36","HTTP_ACCEPT_ENCODING":"gzip, deflate, sdch","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.8","PATH":"\/sbin:\/usr\/sbin:\/bin:\/usr\/bin","SERVER_SOFTWARE":"Apache\/2.2.26 (Amazon)","SERVER_NAME":"developer.billmate.se","SERVER_ADDR":"172.31.22.88","SERVER_PORT":"80","REMOTE_ADDR":"2.71.114.219","REMOTE_PORT":"53241","GATEWAY_INTERFACE":"CGI\/1.1","SERVER_PROTOCOL":"HTTP\/1.1","REQUEST_METHOD":"GET","QUERY_STRING":"","REQUEST_TIME":1421313644},
        "time": "1417004339.9291",
        "test": "true"
    },
    "data": {
        "PaymentData": {
            "method": "1",
            "paymentplanid": ""
        },
        "Cart": {
            "Total": {
                "withtax": "231700"
            }
        }
    },
    "function": "getTerms"
}
```

## Response

| Property | Type   | Description               |
|----------|--------|---------------------------|
| terms    | string | HTML code with your terms |

```text
Köpvillkor



Handla nu - betala först efter leverans!

När du betalar via faktura administreras denna av Billmate AB vilket innebär att du handlar tryggt och enkelt. Du slipper uppge dina kortuppgifter och betalar först efter att du mottagit dina varor. Fakturan skickas via e-post till den e-post adress du anger vid köptillfället.

Billmate Faktura erbjuder dig följande:

Få alltid hem varan innan du betalar

14 dagars betalningstid

Du behöver aldrig lämna ut känslig information

Alltid 14 dagars ångerrätt i enlighet med distans- och hemförsäljningslagen*

Tillgång till dina fakturor via Billmate Online

Möjlighet till delbetalning

Vid försenad betalning tillkommer lagstadgad påminnelse-/förseningsavgift samt dröjsmålsränta om 2 % per månad. Vid utebliven betalning överlämnas fakturan till inkasso. För att kunna beställa mot faktura måste beställaren vara ett registrerat svenskt företag eller en person över 18 år, vara folkbokförd i Sverige samt godkännas i den kreditprövning som genomförs vid köpet. Kreditprövningen kan i vissa fall innebära att en kreditupplysning tas. I sådana fall kommer ni bli meddelade om detta postledes eller via e-post. Kreditupplysningen sköts via CreditSafe och är inget som belastar när man ansöker om kredit hos kreditinstitut.

Billmate AB har rätt att utföra stickprovskontroller för att säkerställa så fakturan är korrekt.
Personuppgifter hanteras i enlighet med gällande lagstiftning. Billmate AB behandlar personuppgifter i syfte att utföra kundanalys, identifikation, kreditkoll samt marknadsföring. Personnummer kan används som kundnummer i kundhanteringssyfte

Billmate AB
Organisationsnummer: 556918-4129
Telefonnummer: 040-30 35 00
Email: info@developer.billmate.se
Webb: www.developer.billmate.se

* Gäller ej för alla varor och tjänster, t ex. flygresor, evenemang och specialtillverkade varor.
```