# getSettlementsWithDetails

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

Get the details of a specific settlement.

*An example can be found here [Get settlements with details example](Get-settlements-with-details.md)*

## Request

### Data
| Property       | Required | Type | Description                                                                 |
|----------------|----------|------|-----------------------------------------------------------------------------|
| settlementId   | true     | int  | Settlement number.                                                          |

### Function

| Property | Required | Type   | Description                                                                |
|----------|----------|--------|----------------------------------------------------------------------------|
| function | true     | string | The function name to be used, for this page it’s getSettlementsWithDetails |

## Response

| Property      | Type  | Description                                                |
|---------------|-------|------------------------------------------------------------|
| SettlementId  | int   | Settlement number.                                         |
| SettlementDate | date  | Date for when the settlement was done. Sent as YYYY-MM-DD. |
| SettlementURL | url   | URL to the pdf of the settlement.                          |
| [state]       | array | Summary per state of the settlement.                       |

### States
*state* can be one of the following

| Type     | Description |
|----------|-------------|
| Paid     |             |
| Purchase |             |

### State
| Property       | Type  | Description                                      |
|----------------|-------|--------------------------------------------------|
| PaidIn         | int   | The total amount paid in.                        |
| Topay          | int   | The total amount to pay.                         |
| Payout         | int   | The total amount paid out.                       |
| TotalFee       | int   | The total fee for the settlement.                |
| TotalFeeVAT    | int   | The total VAT for fees in the settlement.        |
| Invoices       | array | Array of invoice ids included in the settlement. |

