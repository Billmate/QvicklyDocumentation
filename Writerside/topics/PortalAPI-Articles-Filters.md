# Articles

## searchArticleNumber

| Property  | Required | Default value | Description                       |
|-----------|----------|---------------|-----------------------------------|
| articlenr | Yes      |               | The article number to search for. |

```
/articles/?filter=searchArticleNumber&articlenr=123456
```

## searchArticleName

| Property    | Required | Default value | Description                     |
|-------------|----------|---------------|---------------------------------|
| articlename | Yes      |               | The article name to search for. |

```
/articles/?filter=searchArticleName&articlename=123456
```

## searchArticle

| Property       | Required | Default value | Description                               |
|----------------|----------|---------------|-------------------------------------------|
| searcharticle  | Yes      |               | The article name or number to search for. |

```
/articles/?filter=searchArticle&searcharticle=123456
```

This is a combined search that in the background uses both `searchArticleNumber` and `searchArticleName`. The `searcharticle` parameter can be either an article number or an article name.


## articleByCurrency

| Property | Required | Default value | Description                 |
|----------|----------|---------------|-----------------------------|
| currency | Yes      |               | The currency to search for. |

```
/articles/?filter=articleByCurrency&currency=SEK
```

## articlesByCurrencyStrict

| Property | Required | Default value | Description                 |
|----------|----------|---------------|-----------------------------|
| currency | Yes      |               | The currency to search for. |

```
/articles/?filter=articlesByCurrencyStrict&currency=SEK
```

## articlesByTaxrate

| Property | Required | Default value | Description                |
|----------|----------|---------------|----------------------------|
| taxrate  | Yes      |               | The taxrate to search for. |

```
/articles/?filter=articlesByTaxrate&taxrate=25
```

## articlesWithNoTaxrate

| Property | Required | Default value | Description                 |
|----------|----------|---------------|-----------------------------|

This filter does not have any parameters.

```
/articles/?filter=articlesWithNoTaxrate
```

## rangeByDate

| Property | Required | Default value | Description               |
|----------|----------|---------------|---------------------------|
| from     | Yes      |               | From which date to search |
| to       | Yes      |               | To which date to search   |

```
/articles/?filter=rangeByDate&from=2024-01-01&to=2024-12-31
```
