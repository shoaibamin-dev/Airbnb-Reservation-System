/* ---> ENTITIES <--- */


/*. Checkouts (ID, BankID, TaxID, Created, Modified, SoftDelete) */
CREATE TABLE Checkouts(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
	BankID INT(6) NOT NULL,
	TaxID INT(6) NOT NULL,
    Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)
INSERT INTO `checkouts`(`BankID`, `TaxID`) VALUES ('1', '1')
INSERT INTO `checkouts`(`BankID`, `TaxID`) VALUES ('2', '2')
DELETE FROM `checkouts` WHERE `ID` = 3
INSERT INTO `checkouts`(`BankID`, `TaxID`) VALUES ('3', '3')
INSERT INTO `checkouts`(`BankID`, `TaxID`) VALUES ('4', '3')
UPDATE `checkouts` SET TaxID = '4' WHERE ID = '4'
UPDATE `checkouts` SET SoftDelete = '1' WHERE ID = '4'
SELECT * FROM `checkouts` WHERE SoftDelete = '0'


/*. Transactions (ID, SerielNumber, Amount, CurrencyID, PayeeID, PayerID, RoomID, HouseID, Created, Modified, SoftDelete) */
CREATE TABLE Transactions(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
	SerielNumber INT NOT NULL,  
    Amount INT NOT NULL, 
    CurrencyID INT(6) NOT NULL,
    PayeeID INT(6) NOT NULL,
    PayerID INT(6) NOT NULL,
    RoomID INT(6) NOT NULL,
    HouseID INT(6) NOT NULL,
    Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)

INSERT INTO `Transactions`(`SerielNumber`, `Amount`, `CurrencyID`, `PayeeID`, `PayerID`, `RoomID`, `HouseID`) VALUES ('123456', '299', '1', '2', '1', '1')
INSERT INTO `Transactions`(`SerielNumber`, `Amount`, `CurrencyID`, `PayeeID`, `PayerID`, `RoomID`, `HouseID`) VALUES ('123458', '899', '2', '2', '1', '2')
INSERT INTO `Transactions`(`SerielNumber`, `Amount`, `CurrencyID`, `PayeeID`, `PayerID`, `RoomID`, `HouseID`) VALUES ('123459', '1099', '3', '3', '4', '6')
DELETE FROM `Transactions` WHERE `ID` = 2
INSERT INTO `Transactions`(`SerielNumber`, `Amount`, `CurrencyID`, `PayeeID`, `PayerID`, `RoomID`, `HouseID`) VALUES ('123459', '1099', '3', '3', '4', '6')
UPDATE `Transactions` SET CurrencyID = '2' WHERE ID = '4'
SELECT * FROM `Transactions` WHERE SoftDelete = '0'

/*. Pay Receipts (ID, SerielNumber, IsVerified, HasPromo, PromoID, Created, Modified, SoftDelete) */
CREATE TABLE PayReceipts(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	SerielNumber INT NOT NULL,
    IsVerified TINYINT NOT NULL, 
    HasPromo TINYINT NOT NULL,	
	PromoID INT(6),
    Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)
INSERT INTO `PayReceipts`(`SerielNumber`, `IsVerified`, `HasPromo`) VALUES ('909091', '1', '0')
INSERT INTO `PayReceipts`(`SerielNumber`, `IsVerified`, `HasPromo`, `PromoID`) VALUES ('909092', '1', '1', 'GOGO!')


/*. Bookings (ID, UserID, CheckinDate, CheckoutDate, RoomID, CancellationDate, Created, Modified, SoftDelete) */
CREATE TABLE Bookings(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	UserID INT(6) NOT NULL,
    CheckinDate DATE NOT NULL,
    CheckoutDate DATE NOT NULL,
    RoomID INT(6) NOT NULL,
    CancellationDate DATE,
    Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)
INSERT INTO `Bookings`(`UserID`, `CheckinDate`, `CheckoutDate`, `RoomID`) VALUES ('1', '2022-01-01', '2022-01-01', '1')
INSERT INTO `Bookings`(`UserID`, `CheckinDate`, `CheckoutDate`, `RoomID`, `CancellationDate`) VALUES ('1', '2022-01-01', '2022-01-05', '1', '2022-01-03')



/*. Property Details (ID, CountryID, CityID, StateID, Address, Description, NumberOfRooms, Area, Created, Modified, SoftDelete) */
CREATE TABLE PropertyDetails(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	CountryID INT(6) NOT NULL,
    CityID INT(6) NOT NULL,
    StateID INT(6) NOT NULL,
    Address VARCHAR(500) NOT NULL,
	Description VARCHAR(500) NOT NULL,
    NumberOfRooms INT NOT NULL,
    AreaSquareMeters INT NOT NULL, 
    Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)
INSERT INTO `PropertyDetails`(`CountryID`, `CityID`, `StateID`, `Address`, `Description`, `NumberOfRooms`, `AreaSquareMeters`) VALUES ('1', '1', '1', 'Ms Alice Smith Apartment 1c 213 Derrick Street Boston, MA 02130 USA', 'Welcome to this 3 bedroom, 2.5 \bath home in Windmill Farms! Beautiful open entry with arched walkways and tons of natural light filtering in throughout the home.  Spacious family room features wood type flooring and an inviting wood burning fireplace.  Chefs kitchen is ready for your favorite meals to be cooked and offers plenty of counter space, cabinetry and a lovely breakfast nook with a door to the back patio. Primary bedroom is a calming retreat with ensuite bath featuring dual sinks, a deep soaking tub and a separate shower. You will love sitting on your back patio overlooking the private backyard. Perfect location to schools, parks and Lake Ray Hubbard!', '3', '340')
INSERT INTO `PropertyDetails`(`CountryID`, `CityID`, `StateID`, `Address`, `Description`, `NumberOfRooms`, `AreaSquareMeters`) VALUES ('1', '2', '2', 'Ms Alice Smith Apartment 1c 213 Derrick Street Boston, MA 02130 USA', 'Quaint 4 bedroom, 2 bathroom home in Orange Park! Granite countertops, stainless steel appliances, tile flooring throughout and more! The large, fenced backyard is great for hosting summer parties or letting your pets play! Located just off of Blanding Blvd and minutes to 295.', '4', '1000')


/*. Property Type (ID, PropertyID, Title, Created, Modified, SoftDelete) */
CREATE TABLE PropertyType(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Title VARCHAR(100) NOT NULL,
    Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)
INSERT INTO `PropertyType`(`Title`) VALUES ('Residential')
INSERT INTO `PropertyType`(`Title`) VALUES ('Commercial')


/*. Property Reviews (ID, PropertyID, Title, Description, Created, Modified, SoftDelete) */
CREATE TABLE PropertyReviews(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    PropertyID INT(6) NOT NULL,
    Title VARCHAR(100) NOT NULL,
    Description VARCHAR(500) NOT NULL,
    Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)
INSERT INTO `PropertyReviews`(`PropertyID`, `Title`, `Description`) VALUES ('1', 'Very satisfied', 'very competent, agile and quick to make decisions, Damián is very human and cares a lot about his client')
INSERT INTO `PropertyReviews`(`PropertyID`, `Title`, `Description`) VALUES ('1', 'Making first-time home buying dreams a reality!', 'Kari was extremely helpful in guiding us as first-time home buyers through the whole process. She was especially communicative about giving updates along the offer process and able to give us context through her experience on what to expect. We would definitely recommend working with Kari for any realtor needs.')


/*. Room Details (ID, RoomID, PropertyID, Description, Area, Created, Modified, SoftDelete) */
CREATE TABLE RoomDetails(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    RoomID INT(6) NOT NULL,
   	PropertyID INT(6) NOT NULL,
    Description VARCHAR(500) NOT NULL,
    AreaSquareMeters INT NOT NULL, 
    Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)
INSERT INTO `RoomDetails`(`RoomID`, `PropertyID`, `Description`, `AreaSquareMeters`) VALUES ('1', '1', 'Cozy and romantic brand new and completely renovated floor for two near JFK airport. Your NYC getaway with private entry and access to an outdoor area with a private hot tub with amazing lights and great ambiance. Excellent for couples and special occasions between two such a birthdays, anniversaries, proposals.', '1500')
INSERT INTO `RoomDetails`(`RoomID`, `PropertyID`, `Description`, `AreaSquareMeters`) VALUES ('2', '2', 'Enjoy a stylish experience at this centrally-located place!
Penthouse Suite provides amazing skyline views of the Manhattan Bridge. Located in central DUMBO, this spectacular space is a perfect addition to any NYC getaway!', '2500')


/*. Room Theme (ID, Name, RoomID, ThemeID, Created, Modified, SoftDelete) */
CREATE TABLE RoomTheme(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	Name VARCHAR(500) NOT NULL,
    RoomID INT(6) NOT NULL,
 	Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)
INSERT INTO `RoomTheme`(`RoomID`, `Name`) VALUES ('1', 'Grey')
INSERT INTO `RoomTheme`(`RoomID`, `Name`) VALUES ('2', 'Rose Gold')
INSERT INTO `RoomTheme`(`RoomID`, `Name`) VALUES ('3', 'Modern')



/*. Property Reviews (ID, PropertyID, Description, Ratings, Created, Modified, SoftDelete) */
CREATE TABLE PropertyReviews(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    PropertyID INT(6) NOT NULL,
   	Description VARCHAR(500) NOT NULL,
    Ratings INT(1) NOT NULL,
 	Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)
INSERT INTO `PropertyReviews`(`PropertyID`, `Description`, `Ratings`) VALUES ('1', 'Brick detached single family home with SOLAR PANELS on a 9,975 sq. ft. triangular lot in the coveted Throgs Neck section of the Bronx. Each of the three levels has a full bath. The top floor is the primary bedroom with a full bath and multiple closets. The main floor consists of two bedrooms, a kitchen, living room, a full bath and two stairways, in addition to the front entrance; one leading to an exterior side exit and the other to the walk-out basement.', 9)
INSERT INTO `PropertyReviews`(`PropertyID`, `Description`, `Ratings`) VALUES ('1', 'This is a great opportunity to own a 2 family home in the heart of Williamsbridge that you can add your own personal touch to. 3750 Paulding Ave sits on a corner lot, has a brick facade, private parking with a garage, huge backyard, 4 bedrooms/2.5 bathrooms and a full basement. The layout is a 3 bedroom/1.5 bathroom over a 1 bedroom/1 bathroom. This home needs TLC and will be sold as is. More photos coming soon.', 8)


/*. Room Reviews (ID, RoomID, Description, Ratings, Created, Modified, SoftDelete)  */
CREATE TABLE RoomReviews(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    RoomID INT(6) NOT NULL,
   	Description VARCHAR(500) NOT NULL,
    Ratings INT(1) NOT NULL,
 	Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)
INSERT INTO `RoomReviews`(`PropertyID`, `Description`, `Ratings`) VALUES ('1', 'Brick detached single family home with SOLAR PANELS on a 9,975 sq. ft. triangular lot in the coveted Throgs Neck section of the Bronx. Each of the three levels has a full bath. The top floor is the primary bedroom with a full bath and multiple closets. The main floor consists of two bedrooms, a kitchen, living room, a full bath and two stairways, in addition to the front entrance; one leading to an exterior side exit and the other to the walk-out basement.', 9)
INSERT INTO `RoomReviews`(`PropertyID`, `Description`, `Ratings`) VALUES ('1', 'This is a great opportunity to own a 2 family home in the heart of Williamsbridge that you can add your own personal touch to. 3750 Paulding Ave sits on a corner lot, has a brick facade, private parking with a garage, huge backyard, 4 bedrooms/2.5 bathrooms and a full basement. The layout is a 3 bedroom/1.5 bathroom over a 1 bedroom/1 bathroom. This home needs TLC and will be sold as is. More photos coming soon.', 8)



/*. Property Images (ID, PropertyID, ImageURL, ImageTag, Created, Modified, SoftDelete) */
CREATE TABLE PropertyImages(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    PropertyID INT(6) NOT NULL,
   	ImageURL VARCHAR(500) NOT NULL,
    ImageTag VARCHAR(100) NOT NULL,
 	Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)
INSERT INTO `PropertyImages`(`PropertyID`, `ImageURL`, `ImageTag`) VALUES ('1', 'https://photos.zillowstatic.com/fp/aca3f203d6dddf9c822c3371a44f0dae-cc_ft_1536.webp', 'outer look')
INSERT INTO `PropertyImages`(`PropertyID`, `ImageURL`, `ImageTag`) VALUES ('1', 'https://photos.zillowstatic.com/fp/7252ae85856f570f0b2949ab87241f8e-cc_ft_384.webp', 'inner look')


/*. Room Images (ID, RoomID, ImageURL, ImageTag, Created, Modified, SoftDelete) */
CREATE TABLE RoomImages(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    RoomID INT(6) NOT NULL,
   	ImageURL VARCHAR(500) NOT NULL,
    ImageTag VARCHAR(100) NOT NULL,
 	Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)
INSERT INTO `RoomImages`(`PropertyID`, `ImageURL`, `ImageTag`) VALUES ('1', 'https://www.airbnb.com/rooms/52355596/photos?location=USA&federated_search_id=fc341c40-b140-461e-862f-db7bd947d730&source_impression_id=p3_1650736971_3gmEqij6QEF4lBlU', 'outer look')
INSERT INTO `RoomImages`(`PropertyID`, `ImageURL`, `ImageTag`) VALUES ('1', 'https://a0.muscache.com/im/pictures/61790151-7827-49ab-a39c-74e181f3ce71.jpg?im_w=720', 'inner look')



/*. Promo (ID, PromoCode, Created, Modified, SoftDelete)  */
CREATE TABLE Promo(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   	PromoCode VARCHAR(10) NOT NULL,
 	Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)
INSERT INTO `Promo`(`PromoCode`) VALUES ('GOGO!')
INSERT INTO `Promo`(`PromoCode`) VALUES ('ALLIN.')


/*. Countries (ID, Name, Created, Modified, SoftDelete) */
CREATE TABLE Countries(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   	Name VARCHAR(50) NOT NULL,
 	Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)
INSERT INTO `Countries`(`Name`) VALUES ('United States')
INSERT INTO `Countries`(`Name`) VALUES ('United Kingdom')
INSERT INTO `Countries`(`Name`) VALUES ('China')
INSERT INTO `Countries`(`Name`) VALUES ('India')


/*. States (ID, Name, Created, Modified, SoftDelete) */
CREATE TABLE States(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   	Name VARCHAR(50) NOT NULL,
 	Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)
INSERT INTO `States`(`Name`) VALUES ('Texaw')
INSERT INTO `States`(`Name`) VALUES ('California')
INSERT INTO `States`(`Name`) VALUES ('Hainan')
INSERT INTO `States`(`Name`) VALUES ('Andhra Pradesh')


/*. Cities (ID, Name, Created, Modified, SoftDelete) */
CREATE TABLE Cities(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   	Name VARCHAR(50) NOT NULL,
 	Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)
INSERT INTO `Cities`(`Name`) VALUES ('Columbus')
INSERT INTO `Cities`(`Name`) VALUES ('Birmingham')
INSERT INTO `Cities`(`Name`) VALUES ('Beijing')
INSERT INTO `Cities`(`Name`) VALUES ('Delhi')


/*. User Accounts (ID, Name, Email, Password, Address, CountryID, StateID, CityID, Created, Modified, SoftDelete) */
CREATE TABLE UserAccounts(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	Name VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL UNIQUE,
    Password VARCHAR(50) NOT NULL,
	Address VARCHAR(500) NOT NULL,
    CountryID INT(6) NOT NULL,
    StateID INT(6) NOT NULL,
    CityID INT(6) NOT NULL,
    Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)

INSERT INTO `UserAccounts`(`Name`, `Email`, `Password`, `Address`, `CountryID`, `StateID`, `CityID`) VALUES ('John Doe', 'johndoe@gmail.com', 'joedoe11@', 'XYZ Street, CA', '1', '1', '1')
INSERT INTO `UserAccounts`(`Name`, `Email`, `Password`, `Address`, `CountryID`, `StateID`, `CityID`) VALUES ('Mark Green', 'mgreen@hotmail.com', 'green0011@#', 'The Same Old Street, TX', '2', '2', '2')


/*. Currencies (ID, Name, Created, Modified, SoftDelete) */
CREATE TABLE Currencies(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   	Name VARCHAR(50) NOT NULL,
 	Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)
INSERT INTO `Currencies`(`Name`) VALUES ('United States Dollars')
INSERT INTO `Currencies`(`Name`) VALUES ('United Kingdom Pounds')


/*. User Verification Platform (ID, VerificationPlatform, Created, Modified, SoftDelete) */
CREATE TABLE UserVerificationPlatform(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
	UserID INT(6)
   	VerificationPlatform VARCHAR(50) NOT NULL,
 	Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)
INSERT INTO `UserVerificationPlatform`(`UserID`, `VerificationPlatform`) VALUES ('1', 'Google')
INSERT INTO `UserVerificationPlatform`(`UserID`, `VerificationPlatform`) VALUES ('2', 'Facebook')
INSERT INTO `UserVerificationPlatform`(`UserID`, `VerificationPlatform`) VALUES ('3', 'Email')

/*. Complaints (ID, Description, Created, Modified, SoftDelete) */
CREATE TABLE Complaints(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	RoomID INT(6)
   	Description VARCHAR(500) NOT NULL,
 	Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)
INSERT INTO `Complaints`(`RoomID`, `Description`) VALUES ('1', 'did not like the experience at all!')
INSERT INTO `Complaints`(`RoomID`, `Description`) VALUES ('2', 'Never recommend to anyone')

/*. Banks (ID, Name, Created, Modified, SoftDelete) */
CREATE TABLE Banks(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   	Name VARCHAR(50) NOT NULL,
 	Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)
INSERT INTO `Banks`(`Name`) VALUES ('JPMorgan Chase')
INSERT INTO `Banks`(`Name`) VALUES ('Bank of America')

/*. Taxes (ID, Name, CutPercentage, Created, Modified, SoftDelete) */
CREATE TABLE Taxes(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   	Name VARCHAR(50) NOT NULL,
    CutPercentage INT NOT NULL,
 	Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)
INSERT INTO `Taxes`(`Name`, `CutPercentage`) VALUES ('Income Tax', '19')
INSERT INTO `Taxes`(`Name`, `CutPercentage`) VALUES ('Government Sales Tax', '13')


/*. TaxCheckout (ID, TaxID, CheckoutID, Created, Modified, SoftDelete) */
CREATE TABLE TaxCheckout(
	ID INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    TaxID INT(6) NOT NULL,
    CheckoutID INT(6) NOT NULL,
 	Created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  	Modified DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    SoftDelete TINYINT DEFAULT 0 NOT NULL
)
INSERT INTO `TaxCheckout`(`TaxID`, `CheckoutID`) VALUES ('1', '1')
INSERT INTO `TaxCheckout`(`TaxID`, `CheckoutID`) VALUES ('2', '2')


