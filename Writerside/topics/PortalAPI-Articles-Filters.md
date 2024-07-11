# Articles

<include from="Snippets-PortalAPI.md" element-id="snippet-header" />

## searchArticleNumber

Search for an article by its article number.

| Property  | Required | Default value | Description                       |
|-----------|----------|---------------|-----------------------------------|
| articlenr | Yes      |               | The article number to search for. |

```
/articles/?filter=searchArticleNumber&articlenr=123456
```

## searchArticleName

Search for an article by its article name.

| Property    | Required | Default value | Description                     |
|-------------|----------|---------------|---------------------------------|
| articlename | Yes      |               | The article name to search for. |

```
/articles/?filter=searchArticleName&articlename=123456
```

## searchArticle

Search for an article by its article number or article name.

| Property       | Required | Default value | Description                               |
|----------------|----------|---------------|-------------------------------------------|
| searcharticle  | Yes      |               | The article name or number to search for. |

```
/articles/?filter=searchArticle&searcharticle=123456
```

This is a combined search that in the background uses both `searchArticleNumber` and `searchArticleName`. The `searcharticle` parameter can be either an article number or an article name.


## articleByCurrency

Search for articles by currency. This will also return articles with no defined currency.

| Property | Required | Default value | Description                 |
|----------|----------|---------------|-----------------------------|
| currency | Yes      |               | The currency to search for. |

```
/articles/?filter=articleByCurrency&currency=SEK
```

## articlesByCurrencyStrict

Search for articles by currency. This will only return articles with a defined currency.

| Property | Required | Default value | Description                 |
|----------|----------|---------------|-----------------------------|
| currency | Yes      |               | The currency to search for. |

```
/articles/?filter=articlesByCurrencyStrict&currency=SEK
```

## articlesByTaxrate

Search for articles by taxrate.

| Property | Required | Default value | Description                |
|----------|----------|---------------|----------------------------|
| taxrate  | Yes      |               | The taxrate to search for. |

```
/articles/?filter=articlesByTaxrate&taxrate=25
```

## articlesWithNoTaxrate

Search for articles with no defined taxrate. (Taxrate is null)

| Property | Required | Default value | Description                 |
|----------|----------|---------------|-----------------------------|

This filter does not have any parameters.

```
/articles/?filter=articlesWithNoTaxrate
```

## rangeByDate

Search for articles by date range.

| Property | Required | Default value | Description               |
|----------|----------|---------------|---------------------------|
| from     | Yes      |               | From which date to search |
| to       | Yes      |               | To which date to search   |

```
/articles/?filter=rangeByDate&from=2024-01-01&to=2024-12-31
```
