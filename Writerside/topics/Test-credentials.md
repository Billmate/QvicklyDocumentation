# Test credentials

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

## Test persons

### Person - Approved status
|             |                       |
|-------------|-----------------------|
| Usage       | invoice/part payment  |
| PNO         | 195501011018          |
| Name        | Testperson Approved   |
| Postaddress | Testgatan 1           |
| Postalcode  | 12345                 |
| Ort/State   | Teststad              |
| Phone       | 0712345678            |

### Person - Denied status
|             |                       |
|-------------|-----------------------|
| Usage       | invoice/part payment  |
| PNO         | 195505050558          |
| Name        | Testperson Approved   |
| Postaddress | Testgatan 2           |
| Postalcode  | 54321                 |
| Ort/State   | Testby                |
| Phone       | 78765432              |

## Test companies

### Company - Approved status
|             |                      |
|-------------|----------------------|
| Usage       | invoice/part payment |
| ORG         | 5566779988           |
| Name        | Testcompany Approved |
| Postaddress | Teststreet 2         |
| Postalcode  | 54321                |
| Ort/State   | Test city            |
| Phone       | 730000000            |

#### Company - Denied status
|             |                       |
|-------------|-----------------------|
| Usage       | invoice/part payment  |
| ORG         | 5505050558            |
| Name        | Testcompany Approved  |
| Postaddress | Teststreet 1          |
| Postalcode  | 54321                 |
| Ort/State   | Test city             |
| Phone       | 41300000              |

## Test cards

### Authorization approved (Visa - with 3DSecure simulator)
|             |                          |
|-------------|--------------------------|
| Card type   | Visa                     |
| Card number | 4925 0000 0000 0004      |
| Name        | Any                      |
| Expiry Date | After the current month  |
| CVV         | 123                      |

### Authorization failure (Visa)
|             |                      |
|-------------|----------------------|
| Card type   | Visa                 |
| Card number | 4761 7390 0101 0416  |
| Name        | Any                  |
| Expiry Date | 12/22                |
| CVV         | 123                  |

### Authorization approved (MC - without 3DSecure simulator)
|             |                         |
|-------------|-------------------------|
| Card type   | Master Card             |
| Card number | 5226 6001 5986 5967     |
| Name        | Any                     |
| Expiry Date | After the current month |
| CVV         | 123                     |

### Authorization approved (AMEX - with 3DSecure simulator)
|             |                         |
|-------------|-------------------------|
| Card type   | American express        |
| Card number | 3776 0100 0000 000      |
| Name        | Any                     |
| Expiry Date | After the current month |
| CVV         | 123                     |