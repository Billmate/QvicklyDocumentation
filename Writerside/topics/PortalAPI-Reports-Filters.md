# Reports

## search

| Property | Required | Default value | Description             |
|----------|----------|---------------|-------------------------|
| search   | Yes      |               | The text to search for. |

```
/reports/?filter=search&search=123456
```
The search filter covers the following fields:
- mexcCustomerjournalsid
- filename

## rangeByDate

| Property | Required | Default value | Description         |
|----------|----------|---------------|---------------------|
| from     | Yes      |               | From date to search |
| to       | Yes      |               | To date to search   |

```
/reports/?filter=rangeByDate&from=2024-01-01&to=2024-12-31
```

## notEmptyReport

| Property | Required | Default value | Description                 |
|----------|----------|---------------|-----------------------------|

This filter does not have any parameters.

```
/reports/?filter=notEmptyReport
```

## isCard

| Property | Required | Default value | Description                 |
|----------|----------|---------------|-----------------------------|

This filter does not have any parameters.

```
/reports/?filter=isCard
```

## isPaid

| Property | Required | Default value | Description                 |
|----------|----------|---------------|-----------------------------|

This filter does not have any parameters.

```
/reports/?filter=isPaid
```

## invalidReportTypes

| Property | Required | Default value | Description                 |
|----------|----------|---------------|-----------------------------|

This filter does not have any parameters.

```
/reports/?filter=invalidReportTypes
```

## manualReport

| Property     | Required | Default value | Description                                                  |
|--------------|----------|---------------|--------------------------------------------------------------|
| manualReport | No       | 1             | If set to 1 then this activates search for type = \'Manual\' |

```
/reports/?filter=manualReport
```

## monthlyReport

| Property      | Required | Default value | Description                                                 |
|---------------|----------|---------------|-------------------------------------------------------------|
| monthlyReport | No       | 1             | If set to 1 then this activates search for type = \'Month\' |

```
/reports/?filter=manualReport
```

## factoringReport

| Property         | Required | Default value | Description                                                     |
|------------------|----------|---------------|-----------------------------------------------------------------|
| factoringReport  | No       | 1             | If set to 1 then this activates search for type = \'Factoring\' |

```
/reports/?filter=manualReport
```

## handlingReport

| Property       | Required | Default value | Description                                                    |
|----------------|----------|---------------|----------------------------------------------------------------|
| handlingReport | No       | 1             | If set to 1 then this activates search for type = \'Handling\' |

```
/reports/?filter=manualReport
```

## type

| Property        | Required | Default value | Description                                                     |
|-----------------|----------|---------------|-----------------------------------------------------------------|
| manualReport    | No       | 0             | If set to 1 then this activates search for type = \'Manual\'    |
| monthlyReport   | No       | 0             | If set to 1 then this activates search for type = \'Month\'     |
| factoringReport | No       | 0             | If set to 1 then this activates search for type = \'Factoring\' |
| handlingReport  | No       | 0             | If set to 1 then this activates search for type = \'Handling\'  |

```
/reports/?filter=type&manualReport=1&monthlyReport=1&factoringReport=1&handlingReport=1
```

This is a combined filter that can be used to search for reports based on their type. The parameters `manualReport`, `monthlyReport`, `factoringReport`, and `handlingReport` can be used to filter reports based on their type. The value of each parameter can be either `0` or `1`. The sub-filters are combined with an `OR` operator.