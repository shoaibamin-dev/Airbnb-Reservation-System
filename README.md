# Airbnb Reservation System SQL Queries

This repository contains the SQL queries for an Airbnb-like reservation system. The database schema encompasses various entities such as user accounts, bookings, property details, transactions, and more. Below is an analysis of the provided SQL code.

## Entities:

### 1. Checkouts
- Tracks financial transactions related to reservations.
- Fields: `ID`, `BankID`, `TaxID`, `Created`, `Modified`, `SoftDelete`.
- Operations: INSERT, DELETE, UPDATE, SELECT.

### 2. Transactions
- Records financial transactions associated with reservations.
- Fields: `ID`, `SerielNumber`, `Amount`, `CurrencyID`, `PayeeID`, `PayerID`, `RoomID`, `HouseID`, `Created`, `Modified`, `SoftDelete`.
- Operations: INSERT, DELETE, UPDATE, SELECT.

### 3. Pay Receipts
- Manages payment receipts for reservations.
- Fields: `ID`, `SerielNumber`, `IsVerified`, `HasPromo`, `PromoID`, `Created`, `Modified`, `SoftDelete`.
- Operations: INSERT.

### 4. Bookings
- Tracks user bookings and cancellations.
- Fields: `ID`, `UserID`, `CheckinDate`, `CheckoutDate`, `RoomID`, `CancellationDate`, `Created`, `Modified`, `SoftDelete`.
- Operations: INSERT.

### 5. Property Details
- Stores details about rental properties.
- Fields: `ID`, `CountryID`, `CityID`, `StateID`, `Address`, `Description`, `NumberOfRooms`, `Area`, `Created`, `Modified`, `SoftDelete`.
- Operations: INSERT.

### 6. Property Type
- Categorizes properties as Residential or Commercial.
- Fields: `ID`, `Title`, `Created`, `Modified`, `SoftDelete`.
- Operations: INSERT.

### 7. Property Reviews
- Captures reviews for rental properties.
- Fields: `ID`, `PropertyID`, `Title`, `Description`, `Created`, `Modified`, `SoftDelete`.
- Operations: INSERT.

### 8. Room Details
- Describes the details of individual rooms within a property.
- Fields: `ID`, `RoomID`, `PropertyID`, `Description`, `Area`, `Created`, `Modified`, `SoftDelete`.
- Operations: INSERT.

### 9. Room Theme
- Specifies the theme of each room.
- Fields: `ID`, `Name`, `RoomID`, `Created`, `Modified`, `SoftDelete`.
- Operations: INSERT.

### 10. Property Images
- Stores images associated with rental properties.
- Fields: `ID`, `PropertyID`, `ImageURL`, `ImageTag`, `Created`, `Modified`, `SoftDelete`.
- Operations: INSERT.

### 11. Room Images
- Contains images specific to individual rooms.
- Fields: `ID`, `RoomID`, `ImageURL`, `ImageTag`, `Created`, `Modified`, `SoftDelete`.
- Operations: INSERT.

### 12. Promo
- Manages promotional codes for reservations.
- Fields: `ID`, `PromoCode`, `Created`, `Modified`, `SoftDelete`.
- Operations: INSERT.

### 13. Countries, States, Cities
- Define geographical entities for property locations.
- Fields: `ID`, `Name`, `Created`, `Modified`, `SoftDelete`.
- Operations: INSERT.

### 14. User Accounts
- Stores user account information.
- Fields: `ID`, `Name`, `Email`, `Password`, `Address`, `CountryID`, `StateID`, `CityID`, `Created`, `Modified`, `SoftDelete`.
- Operations: INSERT.

### 15. Currencies
- Lists supported currencies.
- Fields: `ID`, `Name`, `Created`, `Modified`, `SoftDelete`.
- Operations: INSERT.

### 16. User Verification Platform
- Records user verification methods.
- Fields: `ID`, `UserID`, `VerificationPlatform`, `Created`, `Modified`, `SoftDelete`.
- Operations: INSERT.

### 17. Complaints
- Captures user complaints related to rooms.
- Fields: `ID`, `RoomID`, `Description`, `Created`, `Modified`, `SoftDelete`.
- Operations: INSERT.

### 18. Banks
- Lists banks used for financial transactions.
- Fields: `ID`, `Name`, `Created`, `Modified`, `SoftDelete`.
- Operations: INSERT.

### 19. Taxes
- Defines various taxes applicable to transactions.
- Fields: `ID`, `Name`, `CutPercentage`, `Created`, `Modified`, `SoftDelete`.
- Operations: INSERT.

### 20. TaxCheckout
- Associates taxes with specific checkouts.
- Fields: `ID`, `TaxID`, `CheckoutID`, `Created`, `Modified`, `SoftDelete`.
- Operations: INSERT.

## Usage:

1. Clone the repository.
2. Execute the SQL queries on your preferred database management system.

Feel free to reach out if you have any questions or need further clarification on the database schema and queries.
