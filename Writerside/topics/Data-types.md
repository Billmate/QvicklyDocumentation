# Data types
This section contains the different data types that are related to the API.

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

