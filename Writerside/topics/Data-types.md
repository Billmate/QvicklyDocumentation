# Data types
This section contains the different data types that are related to the API.

## Character encoding
The API is using UTF-8 as character encoding.
But there is one limitation and that is that the character encoding is limited characters available in ISO 8859-1.

Any character that is not available in ISO 8859-1 will be replaced with a question mark (?).

This will create a problem when creating a HMAC signature since the signature will be different from the one that is created by the API.

## string
Strings have a maximum character length of 255 characters, otherwise it is noted in the description of the property.
<code-block lang="json">
{
    "name": "Test Name"
}
</code-block>

## int
Int´s are numeric based values but acts as strings.
<code-block lang="json">
{
    "topay": "200"
}
</code-block>

## dec
Dec´s are decimal numeric value, but acts as strings. Note that it uses the point (.) as a separator.
<code-block lang="json">
{
    "topay": "200.20"
}
</code-block>

## date
Dates are using the ISO 8601 standard in format Year, Month and Day (Y-m-d). One example is 2020-02-12 representing the 12th of February 2020.
<code-block lang="json">
{
    "paymentdate": "2024-01-05"
}
</code-block>

## array
A list with a set of data.
<code-block lang="json">
{
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
        }
    ]
}
</code-block>

## Special notes on data types

### Inconsistent data types
Due to some earlier sins in the API, some data types are not consistent.

Ths most common problem is [int](#int) and [dec](#dec) that should be strings but in some cases are numeric values.

This affects implementations in languages that uses strict typing.

This is something that we are working on to fix, but it is not a quick fix.

### Boolean
The API does not use the boolean data type, instead it uses a mix of string and integers with the values "true", "false", "0" and "1".