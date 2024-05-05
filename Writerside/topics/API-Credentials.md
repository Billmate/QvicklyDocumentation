# API Credentials

To authenticate with %brand% you have to use your API Credentials.

| Name | Type   | Description                                                                                                                                          |
|------|--------|------------------------------------------------------------------------------------------------------------------------------------------------------|
| id   | string | consists of your Merchant ID (eid) - a unique number that identifies your e-store.                                                                   |
| key  | string | A string which is associated with your Merchant ID and is used to authorize with. The secret key from Qvickly, being used for generating a hash key. |


## Where to find your API credentials

In the portal [https://portal.qvickly.io](https://portal.qvickly.io) you can find your API credentials under "My account" and then "API Credentials".

You can require the API credentials by contacting our sales by email ([sales@qvickly.io](mailto:sales@qvickly.io)) or visiting [https://www.qvickly.io/](https://www.qvickly.io/).

## Credentials header

| Name       | Required | Type   | Description                                                                                                                                                                                                                                                                                                           |
|------------|----------|--------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id         | Yes      | string | consists of your Merchant ID (eid) - a unique number that identifies your e-store.                                                                                                                                                                                                                                    |
| hash       | Yes      | string | hmac512 hash based on the data section in the payload. Note that the data section must exist. For more information please see [Creating hash](Creating-hash.md)                                                                                                                                                       |
| version    | No       | string | Determine which API version this code is compatible with.                                                                                                                                                                                                                                                             |
| client     | No       | string | Name the client that makes this call. This should be product unique and reflect the client that makes this call. These is normally a fallback for this in our client libraries. But it is recommended that you change this to be specific for the implementation you have and also which version that makes the call. |
| language   | No       | string | The language that should be used for system responses.                                                                                                                                                                                                                                                                |
| test       | No       | string | Set to "true" if this is a test call.                                                                                                                                                                                                                                                                                 |
| time       | No       | string | The time as unit timestamp with microseconds.                                                                                                                                                                                                                                                                         |
