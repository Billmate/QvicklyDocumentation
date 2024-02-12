# getDuePayments

getDuePayments is used for retrieving a list of due payments which can have the status of either *Collection* (Inkasso) or *Due* (Förfallen).


## Request
<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "id": "%MERCHANT_ID%",
        "hash": "d12fffb30cc76ebf7ba5c5bc496188cea46c1cf09ebaa4421391f9571bd4df6920223222e87b6bf0dcb7fa8867410851e148f84f9dec6d94b1fddf9f66dc1307",
        "version": "%API_VERSION%",
        "client": "%CLIENT_NAME%",
        "language": "sv",
        "serverdata": {"HTTP_HOST":"developer.billmate.se","HTTP_CONNECTION":"keep-alive","HTTP_CACHE_CONTROL":"max-age=0","HTTP_ACCEPT":"text\/html,application\/xhtml+xml,application\/xml;q=0.9,image\/webp,*\/*;q=0.8","HTTP_USER_AGENT":"Mozilla\/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit\/537.36 (KHTML, like Gecko) Chrome\/39.0.2171.95 Safari\/537.36","HTTP_ACCEPT_ENCODING":"gzip, deflate, sdch","HTTP_ACCEPT_LANGUAGE":"en-US,en;q=0.8","PATH":"\/sbin:\/usr\/sbin:\/bin:\/usr\/bin","SERVER_SOFTWARE":"Apache\/2.2.26 (Amazon)","SERVER_NAME":"developer.billmate.se","SERVER_ADDR":"172.31.22.88","SERVER_PORT":"80","REMOTE_ADDR":"2.71.114.219","REMOTE_PORT":"53241","GATEWAY_INTERFACE":"CGI\/1.1","SERVER_PROTOCOL":"HTTP\/1.1","REQUEST_METHOD":"GET","QUERY_STRING":"","REQUEST_TIME":1421313644},
        "time": "1417004339.9291",
        "test": "true"
    },
    "data": {
        "dueDate": "2020-01-01"
    },
    "function": "getDuePayments"
}
]]>
</code-block>

## Response

<code-block lang="json">
<![CDATA[
{
    "credentials": {
        "hash": "edbbb1411422ac0d1cbc5e3a1b8948d01edaa4553ea7a78c1aad823db9f49acbc0b6f9d02769cae8975fe5f44bba13050a5b9c2e19f0f488b9faa7df66029520"
    },
    "data": [
        {
            "number": "4833",
            "orderid": "P123456997",
            "invoiceDate": "2020-01-21",
            "invoiceStatus": "Collection",
            "dueDate": "2020-02-04",
            "topay": "5000"
        },
        {
            "number": "9864",
            "orderid": "P84456997",
            "invoiceDate": "2020-01-01",
            "invoiceStatus": "Due",
            "dueDate": "2020-01-18",
            "topay": "200"
        }
    ]
}
]]>
</code-block>