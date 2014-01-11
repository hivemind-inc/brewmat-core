# Relationships

## Users

1. User `has_many` Contacts
2. User `has_many` Transactions

## Contacts Table

1. Contact `belongs_to` User
2. Contact `has_many` Emails

## Transactions Table

1. Transaction `belongs_to` User
2. Transaction `has_many` Products

## Products Table

1. Product `belongs_to` Transaction

## Subscriptions Table

NOTE: subscription functionality is not part of MVP.

1. Subscription `belongs_to` User
1. Subscription `belongs_to` Product
