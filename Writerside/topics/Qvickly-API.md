# Payment API

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

The Payment API is the base for many of the Qvickly services. It is used to create and manage payments, and to get information about payments.

> The latest version of the Payment API is %API_VERSION%


Here is a simple state diagram for addPayment and where to go from there:
```mermaid
stateDiagram-v2
    [*] --> addPayment
    UP: updatePayment
    AP: activatePayment
    CREDIT: creditPayment
    CANCEL: cancelPayment
    DONE: Payment done
    addPayment --> UP
    addPayment --> AP
    addPayment --> CANCEL
    UP --> UP
    UP --> AP
    addPayment --> DONE
    UP --> DONE
    AP --> CREDIT
    CANCEL --> DONE
    CREDIT --> DONE
    DONE --> [*]
```