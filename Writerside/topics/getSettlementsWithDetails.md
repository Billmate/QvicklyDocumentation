# getSettlementsWithDetails

Get the details of a specific settlement.

## Request

### Parameters
| Property       | Required | Type | Description                                                                 |
|----------------|----------|------|-----------------------------------------------------------------------------|
| settlementId   | true     | int  | Settlement number.                                                          |


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

