# login

<include from="Snippets-AuthAPI.md" element-id="snippet-header" />

## Request

| Property                  | Required | Type   | Description                                     |
|---------------------------|----------|--------|-------------------------------------------------|
| username                  | Yes      | string | The username for the login.                     |
| password                  | No       | string | The password for the login.                     |
| password_hashed_encrypted | No       | string | A hashed and encrypted version of the password. |
| token                     | No       | string | A token for the login.                          |
| Merchant.id               | No       | string | The merchant id for the login.                  |

## Response

### Success

A successful auth login will return a JWT token with HTTP status code 200.

| Property  | Type   | Description               |
|-----------|--------|---------------------------|
| status    | string | The status of the login   |
| token     | string | A JWT token for the login |

<code-block lang="json">
<![CDATA[
{
    "status": "complete",
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJNZXJjaGFudCI6eyJpZCI6IjEyMzQ1IiwibmFtZSI6IlF2aWNrbHkgVXNhYmlsaXR5ICYgVGVzdGluZyBBQiJ9LCJVc2VyIjp7Im1tM3VzZXJhY2NvdW50c2lkIjoiMTIzNDUiLCJuYW1lIjoiVGVzcyBUIFBlcnNvbiIsInVzZXJuYW1lIjoidGVzc3RwZXJzb24iLCJwaG9uZW51bWJlciI6IiIsImVtYWlsIjoiIn0sImlhdCI6MTcxNTUxNDIwNn0.klKa6EU2fGpHbBE5XrCZnvfefPP9Tf1dpaz_fJSRgVU"
}
]]>
</code-block>

### Failure

On failure, the login will return an error message with HTTP status code 401.

The error message will contain a message describing the error in plain text.