# Payment API changelog

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

---
## 2024-06-01

Released version 2.5.0 of the Payment API.

## 2024-05-28

Fixed typos and wrote supplementary texts.

---
## 2024-05-10

Updated examples and added new languages. There is now 26 verified examples with code in four different languages (plus two variants). There are 11 examples remaining from the old C# examples.

---
## 2024-04-19

Added documentation on new functions:
* [getOrderByHash](getOrderByHash.md)
* [getInvoiceByHash](getInvoiceByHash.md)
* [createInvoiceFromOrder](createInvoiceFromOrder.md)
* [getAPICredentials](getAPICredentials.md)

Updated examples and added new languages.

---
## 2024-02-01

Added documentation on new functions:
* [getSettlements](getSettlements.md)
* [getSettlementsWithDetails](getSettlementsWithDetails.md)
* [getCustomersByName](getCustomersByName.md)
* [getMerchantByOrgnum](getMerchantByOrgnum.md)
* [getInvoicesByPno](getInvoicesByPno.md)
* [getInvoicesByCustomer](getInvoicesByCustomer.md)
* [getExchangeRate](getExchangeRate.md)
* [getVatrate](getVatrate.md)
* [getFees](getFees.md)
* [crediflowSearchParty](crediflowSearchParty.md)

### Upcoming breaking changes:
* Article title will become a mandatory field.
* The sum of Articles withouttax ax taxrate must match the values in Cart.Total

These changes are planned to take effect 2024-06-01.