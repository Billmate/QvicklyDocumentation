# Payment API

<include from="Snippets-PaymentAPI.md" element-id="snippet-header"></include>

The Payment API is the base for many of the Qvickly services. It is used to create and manage payments, and to get information about payments.

> The latest version of the Payment API is %PAYMENT_API_VERSION%


Here is a simple diagram for addPayment and where to go from there:


```d2
direction: down
addPayment: Add Payment
updatePayment: Update Payment
activatePayment: Activate Payment
creditPayment: Credit Payment
cancelPayment: Cancel Payment
done: Payment done
areWeDoneUpdating: Done updating
areWeDoneUpdating.shape: diamond
isPaymentDone: Is payment done?
isPaymentDone.shape: diamond

addPayment -> areWeDoneUpdating 
updatePayment -> areWeDoneUpdating
areWeDoneUpdating -> updatePayment: No
areWeDoneUpdating -> activatePayment: Activate
areWeDoneUpdating -> cancelPayment: Cancel
cancelPayment -> done
activatePayment -> isPaymentDone
isPaymentDone -> done: Yes
isPaymentDone -> creditPayment: No
creditPayment -> done

```

