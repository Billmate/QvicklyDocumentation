# version

<include from="Snippets-CheckoutAPI.md" element-id="snippet-header" />

There isn't real function to get the version of the Checkout API, but you can get the version by adding the key `version` to the payload with another value than the current version.

An example of how to use this function can be found [here](getCheckoutVersion.md)

{type="narrow"}
Endpoint
: ```any```

Method
: POST


```json
{
    "version.compare": "0.0.0",
    "version.post": "%CHECKOUT_API_VERSION%",
    "code": "checkout_version"
}
```
## Request

| Property | Type   | Description                    |
|----------|--------|--------------------------------|
| version  | string | The version you want to check. |

If value of `version` different from the current version, the response will contain the current version of the Checkout API. If the value is the same as the current version, the request will continue as normal.

## Response

| Property        | Type   | Description                              |
|-----------------|--------|------------------------------------------|
| version.compare | string | The current version of the Checkout API. |
| version.post    | string | The version sent in the request.         |
| code            | string | Returns 'checkout_version'               |

```json
{
    "version.compare": "0.0.0",
    "version.post": "%CHECKOUT_API_VERSION%",
    "code": "checkout_version"
}
```
## Simplified response
Packages may return this as a plain string just containing the current version of the Checkout API. This is the case for the [PHP Module](https://github.com/Billmate/qvickly-php-module) that has simplified this function.

```Text
%CHECKOUT_API_VERSION%
```