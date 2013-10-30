# Grndz MVP: User Flow / UX

This is a big picture overview of how the two types of *users* will experience the **Grndz** application.

## Vendor Experience

1. Vendor or coffee distributor receives a *personal* invitation to utilize the **Grndz** application.
2. Vendor visits the **Grndz** application.
3. Vendor configures account. [COMPLEX COMPONENT]
4. Vendor creates brand. [COMPLEX COMPONENT]
5. Vendor creates products for brand. [COMPLEX COMPONENT]

Vendor has at this point successfully created a brand, which may have multiple products associated with it. These items are now available to view and sell in the Grndz Marketplace.

## Customer Experience

1. Customer arrives at the **Grndz** application.
2. Customer browses the coffee selection [COMPLEX COMPONENT]
3. Customer chooses coffee(s) to purchase
4. Customer proceeds to the checkout
   - customer signs up if they don't have an account
   - customer signs in if they have an account
5. Customer purchases coffee(s)
6. Customer sees verification their purchase.

### Post-Purchase Interaction Between Vendor & Customer

1. Order is processed:
   - email is dispatched to vendor to ship order (includes shipping / account info)
   - email is dispatched to the user that the order was received 
2. Order is shipped:
   - vendor indicates that the product has shipped, entering relevant tracking info
   - email is dispatched to the user to notify them that their product has shipped
3. Order is received:
   - email is dispatched to user to inquire about:
       - vendor quality
       - shipping quality
       - product quality
