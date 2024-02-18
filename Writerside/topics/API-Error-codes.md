# Error codes

| Code   | Message                                                                                                           |
|--------|-------------------------------------------------------------------------------------------------------------------|
| 1001   | Credit denied for Personal/Organisationnumber.                                                                    |
| 2203   | Email is invalid. Please check and try again.                                                                     |
| 2204   | Please check and try again.                                                                                       |
| 2207   | Rejected test person number.                                                                                      |
| 2401   | Firstname does not match                                                                                          |
| 2402   | Lastname does not match                                                                                           |
| 2403   | Street does not match                                                                                             |
| 2404   | Zip does not match.                                                                                               |
| 2405   | City does not match.                                                                                              |
| 2406   | Country does not match                                                                                            |
| 2501   | Phone number is mandatory                                                                                         |
| 2551   | Pricelist variable is not enabled in API request                                                                  |
| 2552   | Pricelist variable is invalid                                                                                     |
| 2553   | The date format is wrong.                                                                                         |
| 4100   | Recurring number is not found                                                                                     |
| 4102   | We were not able to debit the card. Please try again later or contact %brand% support.                            |
| 4103   | Debiting the recurring payment is failed                                                                          |
| 5000   | Invalid method                                                                                                    |
| 5001   | Factoring is not activated for this account. Payment could not be made.                                           |
| 5002   | Handling is not activated for this account. Payment could not be made.                                            |
| 5003   | Partpay is not activated for this account. Payment could not be made.                                             |
| 5004   | Card is not activated for this account. Payment could not be made.                                                |
| 5005   | Bank is not activated for this account. Payment could not be made.                                                |
| 5006   | Cash is not activated for this account. Payment could not be made.                                                |
| 5007   | Amount is over max limit                                                                                          |
| 5008   | Amount is under min limit                                                                                         |
| 5014   | QuickPayment for Card is not activated for this account. Payment could not be made.                               |
| 5050   | Invalid QuickPayment is provided                                                                                  |
| 5051   | Something went wrong with QuickPayment, please try again later.                                                   |
| 5101   | Plugin does not support BankID verification required by account.                                                  |
| 5102   | Plugin does not support BankID verification required by credit check.                                             |
| 5103   | BankID verification required by quick payment.                                                                    |
| 5198   | Payment number is invalid                                                                                         |
| 5199   | Invoice that with the id provided does already exist                                                              |
| 5200   | Payment number is mandatory                                                                                       |
| 5201   | Invoice does not exist                                                                                            |
| 5202   | Invalid status of payment                                                                                         |
| 5204   | Cannot credit more than balance due                                                                               |
| 5205   | Cannot credit a created invoice or part payment invoice.                                                          |
| 5206   | Could not activate Factoring invoice. Person number was denied in credit check.                                   |
| 5207   | Method is unknown.                                                                                                |
| 5208   | Unable to activate a non created invoice.                                                                         |
| 5209   | Unable to cancel a sent invoice.                                                                                  |
| 5210   | Cannot activate a cancelled invoice.                                                                              |
| 5211   | Cannot credit a cancelled invoice.                                                                                |
| 5212   | Cannot credit a credit invoice.                                                                                   |
| 5213   | Amount too high. Cannot credit more than the value of balance due.                                                |
| 5214   | Amount too high. Cannot credit more than the value of the original payment.                                       |
| 5215   | The payment was not updated. Can not update to a value that exceeds the original value.                           |
| 5216   | You can not update a bank payment.                                                                                |
| 5217   | Required meta information is missing                                                                              |
| 5218   | Payment was not credited. You cannot credit a paid invoice.                                                       |
| 5219   | Error has returned while crediting:                                                                               |
| 5220   | Can not cancel an already cancelled payment.                                                                      |
| 5221   | Can not activate a payment that is related with a test person in live mode                                        |
| 5222   | Your account needs to be activated by %brand%. Please contact us!                                                 |
| 5223   | Cannot activate a credit invoice.                                                                                 |
| 5224   | Swedbankpay key is not found                                                                                      |
| 5250   | An error occurred when splitting the invoice. You can not have a negative value in delivered.                     |
| 5251   | An error occurred when splitting the invoice. You need to specify a value on atleast one item.                    |
| 5252   | An error occurred when splitting the invoice. Amount too high for atleast one article.                            |
| 5253   | An error occurred when splitting the invoice. You can not make a full invoice split.                              |
| 5260   | An error occurred when activating the card payment                                                                |
| 5261   | An error occurred when cancelling the card payment                                                                |
| 5290   | Credit failed: Could not refund payment. Please try again later.                                                  |
| 5291   | Credit failed: Could not refund payment. Please try again later.                                                  |
| 5292   | Credit failed: Could not refund payment. Please try again later.                                                  |
| 5297   | Refunding can not be made. Please contact Qvickly support.                                                        |
| 5298   | Batch could not be created. Please contact Qvickly support.                                                       |
| 5301   | No payment plans found.                                                                                           |
| 5302   | Currency, Country and Language are mandatory.                                                                     |
| 6009   | Order id can not be empty                                                                                         |
| 6011   | Invoice does not exist.                                                                                           |
| 6012   | Currency has to be SEK.                                                                                           |
| 6021   | Cancel URL was empty                                                                                              |
| 6022   | Payment is already paid                                                                                           |
| 6023   | Currency is not supported                                                                                         |
| 6024   | Accept URL was invalid                                                                                            |
| 6025   | Callback URL was invalid                                                                                          |
| 6026   | Cancel URL was invalid                                                                                            |
| 6027   | Accept URL was empty                                                                                              |
| 6028   | Store terms URL was invalid                                                                                       |
| 6029   | Store Privacy Policy URL is invalid                                                                               |
| 6030   | Something went wrong: Invalid key                                                                                 |
| 6031   | BankID: Key can not be found                                                                                      |
| 6032   | Swish: Hash is invalid                                                                                            |
| 6033   | Swish: EID is invalid                                                                                             |
| 6034   | Swish: External error                                                                                             |
| 6035   | Billing address.                                                                                                  |
| 6036   | Method 512 is not enabled on your account                                                                         |
| 6501   | Authentication failed                                                                                             |
| 6502   | Unknown state from card provider                                                                                  |
| 6503   | The merchant is not found with the given payment id                                                               |
| 6504   | Payment data is not found                                                                                         |
| 7010   | Name can not be empty.                                                                                            |
| 7015   | New password is empty                                                                                             |
| 7020   | Customer No/Number can not be empty.                                                                              |
| 7030   | Method does not exist.                                                                                            |
| 7031   | Country does not exist. Please verify that the country code is of correct ISO standard.                           |
| 7032   | Country is mandatory.                                                                                             |
| 7033   | Paymentplanid is required.                                                                                        |
| 8010   | Personal/Organisation number can not be found in the system.                                                      |
| 8011   | Organisation number can not be found in the system.                                                               |
| 8012   | Personal number can not be found in the system.                                                                   |
| 8701   | The subscription number you provided does not exist.                                                              |
| 8702   | The subscription you were looking for could not be found.                                                         |
| 8705   | You can not use this function in test mode. Please check your settings and make sure that it is set to live mode. |
| 8706   | Invalid invoicinginterval.                                                                                        |
| 8800   | The payment was already paused                                                                                    |
| 8801   | The payment was not paused                                                                                        |
| 8900   | Swedbankpay error.                                                                                                |
| 9001   | The method that you are calling does not exist.                                                                   |
| 9002   | The method that you are calling is not defined in REST API.                                                       |
| 9003   | The function name is required. Make sure that you provide valid Content-Type and Content-Length in the header.    |
| 9004   | Some mandatory parameters are missing.                                                                            |
| 9005   | Please make sure that your request is valid.                                                                      |
| 9008   | Internal server error. Please try again!                                                                          |
| 9009   | Request is invalid                                                                                                |
| 9010   | ID and MAC are required.                                                                                          |
| 9011   | Invalid credentials.                                                                                              |
| 9012   | The provided account does not have an valid invoice module.                                                       |
| 9013   | Authentication is failed. Please double check the key and the EID you are sending are correct                     |
| 9014   | Personal/Organisation number is required.                                                                         |
| 9015   | Personal/Organisation number is shorter than expected.                                                            |
| 9016   | Personal/Organisation number is not valid.                                                                        |
| 9020   | Redirection request is invalid                                                                                    |
| 9102   | Amount does not match with calculated total                                                                       |
| 9103   | Currency, language, country and order id are mandatory.                                                           |
| 9104   | Email is mandatory.                                                                                               |
| 9105   | Article without tax is mandatory.                                                                                 |
| 9106   | Total without tax, total with tax and total tax are mandatory.                                                    |
| 9107   | Total Payment with Tax is not equal to Total Payment Excluding Tax + Total Tax + Rounding.                        |
| 9108   | Paymentplanid is required                                                                                         |
| 9109   | Missing articles                                                                                                  |
| 9110   | Invalid paymentplanid.                                                                                            |
| 9111   | You need to provide integer values for these fields: withtax, withouttax, tax.                                    |
| 9112   | Article tax rate is mandatory.                                                                                    |
| 9113   | Rounding can not be bigger than 50 ore.                                                                           |
| 9120   | NULL                                                                                                              |
| 9121   | Auto cancel parameter should be given as numeric char.                                                            |
| 9200   | Email is invalid                                                                                                  |
| 9201   | Name is invalid                                                                                                   |
| 9510   | Client side: CURL error                                                                                           |
| 20100  | Invalid method                                                                                                    |
| 20101  | Factoring is disabled for this account                                                                            |
| 20102  | Service is disabled for this account                                                                              |
| 20103  | Company/name, street, zip and city are mandatory                                                                  |
| 20104  | Invoice and Partpayment is not available.                                                                         |
| 20616  | The credentials that was sent from the merchant is invalid. Please contact the merchant to solve this issue.      |
| 50000  | Checkout: Service is not enabled for you account                                                                  |
| 50010  | Checkout: You need to provide a zip code                                                                          |
| 50011  | Checkout: The zipcode that you have provided does not match with the pno                                          |
| 50012  | Checkout: The checkout can not be found                                                                           |
| 50013  | UpdateCheckout: The checkout can not be found                                                                     |
| 50014  | Checkout: You need to provide the store terms.                                                                    |
| 50015  | Checkout: Hash was empty                                                                                          |
| 50016  | Checkout: Currency is invalid                                                                                     |
| 50017  | Checkout: Country is invalid                                                                                      |
| 50018  | Checkout: Language is invalid                                                                                     |
| 60101  | Mailmate: Something went wrong                                                                                    |
| 61101  | Fee ID is invalid                                                                                                 |
| 61102  | Fee that is given is expired                                                                                      |
| 61103  | Fee that is given has a different country from the country in the request                                         |
| 61104  | Fee that is given has a different currency from the currency in the request                                       |
| 61105  | Total amount is out of range that is specified in the fee in the request                                          |
| 61106  | Unable to credit the fee only when partcredit = false.                                                            |
| 61107  | Missing feeid in PaymentData(partcredit=true)                                                                     |
| 61108  | Feeid does not match feeid on original transaction                                                                |
| 61109  | Crediting fee not possible another time.                                                                          |
| 61110  | Original invoice does not have fee but credit has one.                                                            |
| 61111  | Not allowed.                                                                                                      |
| 61113  | Topay is not within extendable amount limit!                                                                      |
| 61114  | Duedate is over or equal to the extendable date!                                                                  |
| 70000  | Incorrect mm3customersid                                                                                          |
| 70001  | Incorrect email                                                                                                   |
| 70002  | Email already in use                                                                                              |
| 70003  | Password is empty                                                                                                 |
| 70004  | Username already exists                                                                                           |
| 70010  | User ID is not defined                                                                                            |
| 70011  | You do not have permission to change the password                                                                 |
| 70013  | Old password is incorrect                                                                                         |
| 70014  | New passwords does not match.                                                                                     |
| 70015  | New password is empty.                                                                                            |
| 500000 | You're not allowed to fetch credentials                                                                           |
| 500001 | Missing merchant id                                                                                               |
| 500002 | Merchant id not found                                                                                             |
| 500003 | Missing password                                                                                                  |
| 500004 | Token has expired                                                                                                 |
| 500005 | Username or password is incorrect                                                                                 |
| 500006 | Missing username and pno                                                                                          |
