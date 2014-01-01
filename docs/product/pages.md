# Page Overview

## 1. Home

### header

**Components:**

- title
- search field
- submit button
- account session:
  - sign in or sign out
  - user settings button

### product list

Aggregated list is based off of the search results, or else we use the default view. The default view will include a predetermined assortment of products, which could be trending, top rated, random, etc.

**Components:**

- product
    - image
    - title
    - description
    - add to cart / purchase button

### footer

Mostly for aesthetic, contains site name and contact info for a minimal MVP approach.

**Components:**

- title
- contact (email address)

## 2. Product

Detailed information about the product listed here.

**Components:**

- image(s)
- description
- place of origin
- roast type
- cost
- add to cart / purchase button

## 3. Checkout Confirmation

List items for purchase, with form for entering transaction details.

**Components:**

- product summarization
   - image
   - name
   - cost
- transaction form:
  -  shipping / billing
    - first name
    - last name
    - address
    - zip
    - city
    - state
    - billing info
      - credit card
      - CCV
      - ?

## 3.1 Signup Modal

This will display if the user isn't signed in and has completed their transaction thus far anonymously. This will give the user the opportunity to create a password to associate with the email they've entered. Once the user has created the account, they will be signed in and redirected back to the checkout complete page.

Alternatively, the user may continue as an anonymous user and complete their purchase without signing up.

**Components:**

- title
- information text (why this popped up and why they should sign up)
- email (editable)
- password
- password confirmation
- remember billing info option
- "no thanks button"
- "signup and continue"

## 4. Checkout Complete

This is primarily just a confirmation page that lets the user know that there order has been placed. This will also include an automated email which will be dispatched to the vendor AND the customer.

**Components:**

- title
- information text (info about their successful or unsuccessful transaction)
- summary of items purchased
- "back home" button

## 5. User Settings

Let user update personal information.

**Components:**

-  shipping / billing
  - first name
  - last name
  - address
  - zip
  - city
  - state
  - billing info
    - credit card #

----

### Glossary

- **product**: coffee
