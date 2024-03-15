# Payment API

The Payment API is the base for many of the Qvickly services. It is used to create and manage payments, and to get information about payments.


Here is a list of the most common methods used with addPayment in the Payment API:
```Mermaid
graph LR
    A[addPayment] -->|Method 1| B[factoring]
    A -->|Method 2| C[service]
    A -->|Method 4| D[part payment]
    A -->|Method 8| E[card payment]
    A -->|Method 16| F[bank payment]
    A -->|Method 64| G[Checkout]
    A -->|Method 256| H[Paylink]
    A -->|Method 512| I[Swish]
    A -->|Method 1024| J[Swish]
    A -->|Method 2048| K[my.Qvickly]
    G -->|Method 1| B[factoring]
    G -->|Method 4| D[part payment]
    G -->|Method 8| E[card payment]
    G -->|Method 16| F[bank payment]
    G -->|Method 1024| J[Swish]
    G -->|Method 2048| K[my.Qvickly]
    H -->|Method 1| B[factoring]
    H -->|Method 4| D[part payment]
    H -->|Method 8| E[card payment]
    H -->|Method 16| F[bank payment]
    H -->|Method 512| I[Swish]
    K -->|Method 1| B[factoring]
    K -->|Method 4| D[part payment]
    K -->|Method 8| E[card payment]
    K -->|Method 16| F[bank payment]
    K -->|Method 512| I[Swish]    
```

And here is a state diagram for addPayment and where to go from there:
```mermaid
stateDiagram-v2
    [*] --> addPayment
    UP: updatePayment
    CREDIT: creditPayment
    CANCEL: cancelPayment
    DONE: Payment done
    addPayment --> UP
    addPayment --> CREDIT
    addPayment --> CANCEL
    UP --> UP
    UP --> CANCEL
    UP --> CREDIT
    addPayment --> DONE
    UP --> DONE
    CANCEL --> DONE
    CREDIT --> DONE
    DONE --> [*]
```