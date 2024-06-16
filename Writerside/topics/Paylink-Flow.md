# Paylink Flow

<include from="Snippets-PaylinkAPI.md" element-id="snippet-header" />

## Paylink Flow using Qvickly Portal

```plantuml

@startuml

participant "Merchant" as M
participant "Qvickly" as Q
participant "Customer" as C

M->Q: Add payment with method 256
Q->C: Paylink URL via email or QR code
C->Q: Pay
Q->M: Receive payment

@enduml

```

## Paylink Flow using API

### Normal Flow

```plantuml

@startuml

participant "Merchant" as M
participant "Qvickly" as Q
participant "Customer" as C

M->Q: Add payment with method 256
Q->M: Paylink URL
M->C: Display Paylink URL
C->Q: Pay
Q->M: Receive payment

@enduml

```

### Specify payment method

```plantuml

@startuml

participant "Merchant" as M
participant "Qvickly" as Q
participant "Customer" as C

M->Q: Add payment with method 256
Q->M: Paylink URL
M->Q: Update payment with the method to use
M->C: Display Paylink URL
C->Q: Pay
Q->M: Receive payment

@enduml

```
