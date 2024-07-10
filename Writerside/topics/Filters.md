# Filters

<include from="Snippets-PortalAPI.md" element-id="snippet-header" />

The filter engine for the PortalAPI is powerful and flexible. It allows you to filter the results of a request based on a wide range of criteria.

The way to trigger a filter is to add a query parameter to the URL called `filter`. The value of the `filter` parameter is a name of the filter you want to apply.
Each filter can have its own set of parameters that you can use to further refine the results.

Some filters are combinations of other filters, and some filters can be combined with other filters to create complex queries.

Each endpoint that supports filtering will have a list of available filters and their parameters in the documentation.

## Combine filters

You can combine different filters by separating them with a comma. For example, to filter invoices by a search and a specific date range, you can use the following query:

```
/invoices/?filter=search,rangeByDate&search=123456&from=2021-01-01&to=2021-12-31
```

## Invert filter

You can invert a filter by prefixing the filter name with a `!`. For example, to filter invoices by all customers except for a specific customer, you can use the following query:

```
/invoices/?filter=!search&search=123456
```