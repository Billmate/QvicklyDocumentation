# Customers

<include from="Snippets-PortalAPI.md" element-id="snippet-header" />

## search

Search for a customer by its name, customer ID, address, postcode (zip), post office (city), or company number.

| Property | Required | Default value | Description             |
|----------|----------|---------------|-------------------------|
| search   | Yes      |               | The text to search for. |

```
/customers/?filter=search&search=123456
```
The search filter covers the following fields:
- name
- customerid
- address
- postcode
- postoffice
- companyno

## rangeByDate

Search for customers by the date they were created.

| Property | Required | Default value | Description         |
|----------|----------|---------------|---------------------|
| from     | Yes      |               | From date to search |
| to       | Yes      |               | To date to search   |

```
/customers/?filter=rangeByDate&from=2024-01-01&to=2024-12-31
```

## searchInInvoiceForm

Search for a customer by its name, customer ID, or company number.

This filter is mainly used in the invoice form.

| Property             | Required | Default value | Description             |
|----------------------|----------|---------------|-------------------------|
| searchInInvoiceForm  | Yes      |               | The text to search for. |

```
/customers/?filter=searchInInvoiceForm&searchInInvoiceForm=123456
```
The search filter covers the following fields:
- name
- customerid
- companyno


## isPrivate

Search for private persons.

| Property  | Required | Default value | Description          |
|-----------|----------|---------------|----------------------|
| isPrivate | No       | 1             | Find private persons |

```
/customers/?filter=isPrivate
```

## isCompany

Search for companies.

| Property  | Required | Default value | Description  |
|-----------|----------|---------------|--------------|
| isCompany | No       | 1             | Find company |

```
/customers/?filter=isCompany
```

## isUnknown

Search for customers that are not private or company.

| Property  | Required | Default value | Description                                    |
|-----------|----------|---------------|------------------------------------------------|
| isUnknown | No       | 1             | Find customers that are not private or company |

```
/customers/?filter=isUnknown
```

## isCustomerType

Search for customers based on their type.

| Property  | Required | Default value | Description                                    |
|-----------|----------|---------------|------------------------------------------------|
| isPrivate | No       | 0             | Find private persons                           |
| isCompany | No       | 0             | Find company                                   |
| isUnknown | No       | 0             | Find customers that are not private or company |

```
/customers/?filter=isCustomerType&isPrivate=1&isCompany=1&isUnknown=1
```

This is a combined filter that can be used to search for customers based on their type. The parameters `isPrivate`, `isCompany`, and `isUnknown` can be used to filter customers based on their type. The value of each parameter can be either `0` or `1`. The sub-filters are combined with an `OR` operator.

## isEFaktura

Search for customers that are setup for EFaktura.

| Property    | Required | Default value | Description                                |
|-------------|----------|---------------|--------------------------------------------|
| isEFaktura  | No       | 1             | Find customers that are setup for EFaktura |

```
/customers/?filter=isEFaktura
```

## isReverseTax

Search for customers that are setup for reverse tax.

| Property      | Required | Default value | Description                                   |
|---------------|----------|---------------|-----------------------------------------------|
| isReverseTax  | No       | 1             | Find customers that are setup for reverse tax |

```
/customers/?filter=isEFaktura
```

## isTitle

Search for customers that are setup for EFaktura or reverse tax.

| Property     | Required | Default value | Description                                   |
|--------------|----------|---------------|-----------------------------------------------|
| isEFaktura   | No       | 0             | Find customers that are setup for EFaktura    |
| isReverseTax | No       | 0             | Find customers that are setup for reverse tax |

This is a combined filter that can be used to search for customers based on their setup. The parameters `isEFaktura` and `isReverseTax` can be used to filter customers based on their setup. The value of each parameter can be either `0` or `1`. The sub-filters are combined with an `OR` operator.

```
/customers/?filter=isTitle&isEFaktura=1&isReverseTax=1
```