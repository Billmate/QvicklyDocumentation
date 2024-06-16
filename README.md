# Qvickly Documentation

This is an internal project for Qvickly containing a collection of documentation for all products.

## About this documentation
The documentation is built using [Writerside](https://www.jetbrains.com/writerside/) and is written mainly in markdown. The documentation is built and hosted on GitHub Pages.

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
