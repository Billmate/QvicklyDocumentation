# Integration requirements

> The requirements for integrations with Qvickly products is currently a suggestion.
> When the requirements are finalized, they will be included as a mandatory part of the official documentation.
> 
> Suggestion added 2024-06-18
> {style="warning"}
 
Integrations created by others than Qvickly must meet the following requirements to be approved by Qvickly.

New integrations must be approved by Qvickly before they can be used in production.

Failing to meet the requirements may result in the integration being rejected.

Using the API without approval and with non-approved integrations may result in the account using the integration being blocked.

## General requirements

- Follow the latest documentation for the API you are integrating with.
- Provide a list of all api endpoints/functions used in the integration.
- No excessive use of resources.
- No excessive use of the API.

> Even though the API's might be unrestricted in terms of usage, Qvickly reserves the right to block access to the API if the usage is deemed excessive.
> {style="note"}
 
## Testing for approval

The integration must be tested by Qvickly before it can be approved.

Upon successful testing, Qvickly will provide you with a signed key that should be added to the header of all requests to the API.
