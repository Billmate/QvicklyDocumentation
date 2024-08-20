# me

<include from="Snippets-AuthAPI.md" element-id="snippet-header" />

Find the information about the current logged in person from the token.

For an example see [here](Auth-Example-me.md)

## Response

<code-block lang="json">
{
    "Merchant": {
        "id": "%MERCHANT_ID%",
        "name": "%MERCHANT_COMPANY%",
        "secret": "%MERCHANT_KEY%",
        "distributor": "0",
        "mm3servicesid": "%SERVICE_ID%"
    },
    "User": {
        "mm3useraccountsid": "%ACCOUNT_ID%",
        "name": "%EXAMPLE_NAME%",
        "username": "%EXAMPLE_USERNAME%",
        "phonenumber": "%EXAMPLE_PHONE%",
        "email": "%EXAMPLE_EMAIL%",
        "personalnumber": "%EXAMPLE_PNO%",
    },
    "iat": 36244800
}
</code-block>