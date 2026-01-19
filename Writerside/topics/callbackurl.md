# callbackurl

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

The hash value in the payload sent to the callbackurl must be verified to assure that the callback is authentic.

#### Exemple

<code-block lang="json">
{
    "credentials": {
        "hash": "fd7584f217a48dd101006bd85f3660f4e04ef72604838c3efd54b3b1af75317c8e519995a12ef5b279bf26cb23414b2df287db8f9b5e21b7b15d10187e6fb7c3",
            "logid": "1890112"
    },
    "data": {
        "number": "1088",
        "status": "Paid",
        "url": "https://invoice.billmate.se/202511219d77c500c78ce1da7da9655e6386f0b1_C",
        "orderid": "134639567929"
    }
}
</code-block>
