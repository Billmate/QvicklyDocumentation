# The basics

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

The Payment API is based on JSON and uses a base URL to communicate with the Qvickly servers. The method to call is defined in the payload.

The base URL is `https://api.qvickly.io/`

Some important things to know about the Qvickly API.

## How to get started

To get started with the Qvickly API you need to have a merchant account with Qvickly. If you don't have one, you can contact us at [sales@qvickly.io](mailto:sales@qvickly.io).

## API version

The latest version of the Qvickly API is %PAYMENT_API_VERSION%.

Code that introduce breaking changes will be set behind a specific version number to avoid breaking existing integrations.

So it is vital to always send in the version number for which the code is compatible with in the header of your requests.

