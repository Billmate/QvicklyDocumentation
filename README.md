# Qvickly Documentation

This is an internal project for Qvickly containing a collection of documentation for all products.

## About this documentation
The documentation is built using [Writerside](https://www.jetbrains.com/writerside/), from JetBrains, and is written mainly in markdown. The documentation is built and hosted on GitHub Pages.

## Example code
All example code used in this documentation can be found in the public repository [Billmate/QvicklyAPISamples](https://github.com/Billmate/QvicklyAPISamples/tree/main)

## What should be documented?

All products and services that Qvickly offers should be documented here. This includes all APIs, integrations, and services that Qvickly offers.

## Guidelines for writing documentation

### Documentation parts

Each product should have its own documentation part.
The documentation part should contain all information about the product, such as endpoints, status codes, and examples if applicable.

The individual documentation parts should be written in markdown and stored in the `Writerside/topics` folder.

#### List of documentation parts

At the time of this writing, the following documentation parts exist:

- Payment API
- Checkout API
- Auth API
- Paylink API
- Portal API
- MyQvickly API

At the end of the list of the products there is a list of integrations. Most of these integrations are external and is not documented here. But since they are an extended part of the Qvickly product they can be listed here. Mainly this contains basic information about the integrations, some how-to guides and some cases a shorter FAQ.

### Header for all pages
In the code there should always be an included header for the current documentation part.

```markdown
<include from="Snippets-PaylinkAPI.md" element-id="snippet-header" />
```
_The `from` should reflect the current documentation part._

The snippet should in turn include a status reference for the current documentation part.
    
```markdown
<snippet id="snippet-header">

<include from="Snippets-WorkingInformation.md" element-id="snippet-rc"></include>

</snippet>
```

The reason for this is to make it easier to display a uniform status for all documentation parts.

### Use internal variables for sensitive and dynamic information

There are some information that should not be included in the documentation.
This includes sensitive information such as credentials
dynamic information version information such as API versions.

To avoid this information being included in the documentation, internal variables should be used.

The following internal variables are available:

| Variable                             | Description                                             |
|--------------------------------------|---------------------------------------------------------|
| `%PAYMENT_API_VERSION%`              | The current Payment API version                         |
| `%PAYMENT_API_CLIENT_NAME%`          | The client name for Payment API                         |
| `%NUMBER_OF_PAYMENT_API_EXAMPLES%`   | Number of available Payment API examples                |
| `%CHECKOUT_API_VERSION%`             | The current Checkout API version                        |
| `%NUMBER_OF_CHECKOUT_API_EXAMPLES%`  | Number of available Checkout API examples               |
| `%AUTH_API_VERSION%`                 | The current Auth API version                            |
| `%NUMBER_OF_AUTH_API_EXAMPLES%`      | Number of available Auth API examples                   |
| `%PAYLINK_API_VERSION%`              | The current Paylink API version                         |
| `%NUMBER_OF_PAYLINK_API_EXAMPLES%`   | Number of available Paylink API examples                |
| `%PORTAL_API_VERSION%`               | The current Portal API version                          |
| `%NUMBER_OF_PORTAL_API_EXAMPLES%`    | Number of available Portal API examples                 |
| `%MYQVICKLY_API_VERSION%`            | The current MyQvickly API version                       |
| `%NUMBER_OF_MYQVICKLY_API_EXAMPLES%` | Number of available MyQvickly API examples              |
| `%MERCHANT_ID%`                      | Merchant ID to use in examples and documentation        |
| `%MERCHANT_KEY%`                     | Secret key to use in examples and documentation         |
| `%DEVELOPER_MAIL_ADDRESS%`           | The email address we wish to show for developer contact |

Programming languages also use variables to make it easier to adjust the displayed name for a specific language. This is more or less used due to the fact that we have an older legacy code written in PHP5 and a newer code written in PHP8. So to make changes easier they are called `PHP Legacy`and `PHP`. But if we feel that we need to change this in the future we can do so by changing the variable instead of changing all the code.

The following internal variables are available for programming languages:

| Variable           | Description |
|--------------------|-------------|
| `%code-json%`      | JSON        |
| `%code-phplegacy%` | PHP Legacy  |
| `%code-php%`       | PHP         |
| `%code-python%`    | Python      |
| `%code-csharp%`    | C#          |
| `%code-node%`      | Node.JS     |
| `%code-deno%`      | Deno        |
| `%code-bun%`       | Bun         |
| `%code-go%`        | Go          |
| `%code-perl%`      | Perl        |
| `%code-rust%`      | Rust        |
| `%code-java%`      | Java        |

### Hashes are never valid in examples

Since we use variables for *MERCHANT_ID* and *MERCHANT_KEY* and in the examples we use proper data stored in a .env file, the hash value are never correct.

To inform about this the following include should be added to the footer of all example pages.

```markdown
<include from="Snippets-Examples.md" element-id="snippet-footer"></include>
```

### Example code

As much code as possible should be included as examples in the documentation. This is to make it easier for the user to understand how the API works.

As many languages as possible should be used in the examples. The main languages to use are:

- Raw JSON
- PHP
- Python
- JavaScript (Node.JS/Deno/Bun)

For basic code examples as many languages as possible should be used. For more advanced examples, the main languages should be used.

Extended languages:
- C#
- Java
- Ruby
- Go

If needed this list should be extended.

All examples must be tested regularly to ensure that they work as intended.
