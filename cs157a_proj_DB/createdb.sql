CREATE TABLE Animal(
general_name VARCHAR2(50) PRIMARY KEY,
scientific_name VARCHAR2(50) NOT NULL);
INSERT INTO Animal(general_name, scientific_name) VALUES ('Blue Tang', 'Paracanthurus hepatus');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Green Sea Turtle', 'Chelonia mydas');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Giant Clam', 'Tridacna gigas');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Red Lionfish', 'Pterois volitans');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Whitetip Reef Shark', 'Triaenodon obesus');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Sea Otter', 'Enhydra lutris');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Kelp Bass', 'Paralabrax clathratus');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Giant Sea Bass', 'Stereolepis gigas');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Blue Rockfish', 'Sebastes mystinus');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Bat Ray', 'Myliobatis californica');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Barramundi', 'Lates calcarifer');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Horseshoe Crab', 'Limulidae');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Gray Snapper', 'Lutjanus griseus');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Giant Mud Crab', 'Scylla serrata');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Lemon Shark', 'Negaprion brevirostris');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Giant Sunfish', 'Mola mola');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Bluefin Tuna', 'Thunnus thynnus');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Great White Shark', 'Carcharodon carcharias');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Giant Pacific Octopus', 'Enteroctopus dofleini');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Whale Shark', 'Rhincodon typus');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Starry Flounder', 'Platichthys stellatus');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Pacific Staghorn Sculpin', 'Leptocottus armatus');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Northern Pipefish', 'Syngnathus fuscus');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Ribbed Mussel', 'Geukensia demissa');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Harris Mud Crab', 'Rhithropanopeus harrisii');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Galapagos Penguin', 'Spheniscus mendiculus');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Atlantic Bluefin Tuna', 'Thunnus thynnus');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Atlantic Goliath Grouper', 'Epinephelus itajara');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Banded Butterflyfish', 'Chaetodon striatus');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Chilean Jack Mackerel', 'Trachurus murphyi');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Common Dolphinfish', 'Coryphaena hippurus');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Atlantic Cod', 'Gadus morhua');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Chilean Common Hake', 'Merluccius gayi');
INSERT INTO Animal(general_name, scientific_name) VALUES ('John Dory', 'Zeus faber');
INSERT INTO Animal(general_name, scientific_name) VALUES ('Pacific Halibut', 'Hippoglossus stenolepis');

CREATE TABLE Zone(
zoneID VARCHAR2(3) PRIMARY KEY,
zone_name VARCHAR(30) NOT NULL);
INSERT INTO Zone(zoneID, zone_name) VALUES ('Z1', 'Coral Reefs');
INSERT INTO Zone(zoneID, zone_name) VALUES ('Z2', 'The Kelp Forests');
INSERT INTO Zone(zoneID, zone_name) VALUES ('Z3', 'Mangroves');
INSERT INTO Zone(zoneID, zone_name) VALUES ('Z4', 'Open Ocean');
INSERT INTO Zone(zoneID, zone_name) VALUES ('Z5', 'Estuaries');
INSERT INTO Zone(zoneID, zone_name) VALUES ('Z6', 'Soft Bottoms');

CREATE TABLE HabitatInZone(
habitatID VARCHAR2(3),
zoneID VARCHAR(3),
PRIMARY KEY(habitatID, zoneID),
FOREIGN KEY(zoneID) REFERENCES Zone(zoneID) ON DELETE CASCADE);
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H1', 'Z1');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H2', 'Z1');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H3', 'Z1');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H4', 'Z1');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H5', 'Z1');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H6', 'Z2');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H7', 'Z2');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H8', 'Z2');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H9', 'Z2');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H10', 'Z2');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H11', 'Z3');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H12', 'Z3');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H13', 'Z3');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H14', 'Z3');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H15', 'Z3');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H16', 'Z3');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H17', 'Z4');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H18', 'Z4');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H19', 'Z4');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H20', 'Z4');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H21', 'Z4');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H22', 'Z5');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H23', 'Z5');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H24', 'Z5');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H25', 'Z5');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H26', 'Z5');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H27', 'Z5');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H28', 'Z1');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H29', 'Z1');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H30', 'Z4');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H31', 'Z4');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H32', 'Z6');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H33', 'Z6');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H34', 'Z6');
INSERT INTO HabitatInZone(habitatID, zoneID) VALUES ('H35', 'Z6');

CREATE TABLE AnimalInsideZone(
general_name VARCHAR(50), 
habitatID VARCHAR2(3),
zoneID VARCHAR(3),
PRIMARY KEY(general_name, habitatID, zoneID),
FOREIGN KEY(general_name) REFERENCES Animal(general_name) ON DELETE CASCADE,
FOREIGN KEY(habitatID, zoneID) REFERENCES HabitatInZone(habitatID, zoneID) ON DELETE CASCADE
);
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Blue Tang', 'H1', 'Z1');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Green Sea Turtle', 'H2', 'Z1');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Giant Clam', 'H3', 'Z1');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Red Lionfish', 'H4', 'Z1');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Whitetip Reef Shark', 'H5', 'Z1');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Sea Otter', 'H6', 'Z2');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Kelp Bass', 'H7', 'Z2');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Giant Sea Bass', 'H8', 'Z2');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Blue Rockfish', 'H9', 'Z2');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Bat Ray', 'H10', 'Z2');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Barramundi', 'H11', 'Z3');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Horseshoe Crab', 'H12', 'Z3');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Gray Snapper', 'H13', 'Z3');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Giant Mud Crab', 'H14', 'Z3');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Lemon Shark', 'H15', 'Z3');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Galapagos Penguin', 'H16', 'Z3');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Giant Sunfish', 'H17', 'Z4');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Bluefin Tuna', 'H18', 'Z4');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Great White Shark', 'H19', 'Z4');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Giant Pacific Octopus', 'H20', 'Z4');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Whale Shark', 'H21', 'Z4');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Starry Flounder', 'H22', 'Z5');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Pacific Staghorn Sculpin', 'H23', 'Z5');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Northern Pipefish', 'H24', 'Z5');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Ribbed Mussel', 'H25', 'Z5');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Harris Mud Crab', 'H26', 'Z5');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Atlantic Bluefin Tuna', 'H27', 'Z5');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Atlantic Goliath Grouper', 'H28', 'Z1');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Banded Butterflyfish', 'H29', 'Z1');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Chilean Jack Mackerel', 'H30', 'Z4');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Common Dolphinfish', 'H31', 'Z4');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Atlantic Cod', 'H32', 'Z6');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Chilean Common Hake', 'H33', 'Z6');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('John Dory', 'H34', 'Z6');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('Pacific Halibut', 'H35', 'Z6');

CREATE TABLE Amenity(
amenityID VARCHAR2(3) PRIMARY KEY,
location VARCHAR2(3) NOT NULL,
FOREIGN KEY (location) REFERENCES Zone(zoneID) ON DELETE CASCADE
); 

INSERT INTO Amenity(amenityID, location) VALUES ('A1', 'Z1');
INSERT INTO Amenity(amenityID, location) VALUES ('A2', 'Z1');
INSERT INTO Amenity(amenityID, location) VALUES ('A3', 'Z2');
INSERT INTO Amenity(amenityID, location) VALUES ('A4', 'Z2');
INSERT INTO Amenity(amenityID, location) VALUES ('A5', 'Z3');
INSERT INTO Amenity(amenityID, location) VALUES ('A6', 'Z3');
INSERT INTO Amenity(amenityID, location) VALUES ('A7', 'Z4');
INSERT INTO Amenity(amenityID, location) VALUES ('A8', 'Z4');
INSERT INTO Amenity(amenityID, location) VALUES ('A9', 'Z5');
INSERT INTO Amenity(amenityID, location) VALUES ('A10', 'Z5');
INSERT INTO Amenity(amenityID, location) VALUES ('A11', 'Z4');
INSERT INTO Amenity(amenityID, location) VALUES ('A12', 'Z4');
INSERT INTO Amenity(amenityID, location) VALUES ('A13', 'Z1');
INSERT INTO Amenity(amenityID, location) VALUES ('A14', 'Z6');
INSERT INTO Amenity(amenityID, location) VALUES ('A15', 'Z6');
INSERT INTO Amenity(amenityID, location) VALUES ('A16', 'Z6');
INSERT INTO Amenity(amenityID, location) VALUES ('A17', 'Z1');

CREATE TABLE Restroom (
amenityID VARCHAR2(3) PRIMARY KEY,
gender VARCHAR(1),
FOREIGN KEY (amenityID) REFERENCES Amenity(amenityID) ON DELETE CASCADE
);
INSERT INTO Restroom(amenityID, gender) VALUES ('A1', 'M');
INSERT INTO Restroom(amenityID, gender) VALUES ('A2', 'F');
INSERT INTO Restroom(amenityID, gender) VALUES ('A3', 'M');
INSERT INTO Restroom(amenityID, gender) VALUES ('A4', 'F');
INSERT INTO Restroom(amenityID, gender) VALUES ('A5', 'M');
INSERT INTO Restroom(amenityID, gender) VALUES ('A6', 'F');
INSERT INTO Restroom(amenityID, gender) VALUES ('A7', 'M');
INSERT INTO Restroom(amenityID, gender) VALUES ('A8', 'F');
INSERT INTO Restroom(amenityID, gender) VALUES ('A9', 'M');
INSERT INTO Restroom(amenityID, gender) VALUES ('A10', 'F');


CREATE TABLE Restaurant (
amenityID VARCHAR2(3) PRIMARY KEY,
rName VARCHAR(50),
cuisine VARCHAR(30),
FOREIGN KEY (amenityID) REFERENCES Amenity(amenityID) ON DELETE CASCADE
);
INSERT INTO Restaurant(amenityID, rname, cuisine) VALUES ('A11', 'Seaside Cafe','Coffee');
INSERT INTO Restaurant(amenityID, rname, cuisine) VALUES ('A12', 'Tony''s Bar and Grill','American Casual Dining');
INSERT INTO Restaurant(amenityID, rname, cuisine) VALUES ('A13', 'Starbucks','Coffee');
INSERT INTO Restaurant(amenityID, rname, cuisine) VALUES ('A14', 'The Garden Thai','Thai');
INSERT INTO Restaurant(amenityID, rname, cuisine) VALUES ('A15', 'Guacamole Bliss','Mexican');
INSERT INTO Restaurant(amenityID, rname, cuisine) VALUES ('A17', 'Starbucks','Coffee');


CREATE TABLE Giftshop (
amenityID VARCHAR2(3) PRIMARY KEY,
price_range VARCHAR(3),
FOREIGN KEY (amenityID) REFERENCES Amenity(amenityID) ON DELETE CASCADE
);
INSERT INTO Giftshop(amenityID, price_range) VALUES ('A16', '$$');

CREATE TABLE Employee(
employeeID VARCHAR2(3) PRIMARY KEY,
eName VARCHAR2(64) NOT NULL
);
INSERT INTO Employee(employeeID, eName) VALUES ('E1','Michael');
INSERT INTO Employee(employeeID, eName) VALUES ('E2','Holly');
INSERT INTO Employee(employeeID, eName) VALUES ('E3','Jim');
INSERT INTO Employee(employeeID, eName) VALUES ('E4','Robin');
INSERT INTO Employee(employeeID, eName) VALUES ('E5','Victoria');
INSERT INTO Employee(employeeID, eName) VALUES ('E6','Stella');
INSERT INTO Employee(employeeID, eName) VALUES ('E7','Neal');
INSERT INTO Employee(employeeID, eName) VALUES ('E8','Jack');
INSERT INTO Employee(employeeID, eName) VALUES ('E9','Nick');
INSERT INTO Employee(employeeID, eName) VALUES ('E10','Jess');
INSERT INTO Employee(employeeID, eName) VALUES ('E11','Jessica');
INSERT INTO Employee(employeeID, eName) VALUES ('E12','Nat');
INSERT INTO Employee(employeeID, eName) VALUES ('E13','Tom');
INSERT INTO Employee(employeeID, eName) VALUES ('E14','Mark');

CREATE TABLE Tour (
tourID VARCHAR(2) PRIMARY KEY,
tName VARCHAR(30) NOT NULL,
time VARCHAR(10) NOT NULL
);
INSERT INTO Tour(tourID, tName, time) VALUES ('T1', 'Fish Around the World', '10:00 AM');
INSERT INTO Tour(tourID, tName, time) VALUES ('T2', 'Close to Shore', '11:00 AM');
INSERT INTO Tour(tourID, tName, time) VALUES ('T3', 'Shark Tank', '3:00 PM');
INSERT INTO Tour(tourID, tName, time) VALUES ('T4', 'Shark Tank', '11:00 AM');

CREATE TABLE LiveShow (
liveshowID VARCHAR(3) PRIMARY KEY,
sName VARCHAR(20) NOT NULL,
time VARCHAR(7) NOT NULL
);
INSERT INTO LiveShow(liveshowID, sName, time) VALUES ('LS1', 'Penguin Feeding', '1:00 PM');
INSERT INTO LiveShow(liveshowID, sName, time) VALUES ('LS2', 'Stingray Petting Zoo', '2:00 PM');
INSERT INTO LiveShow(liveshowID, sName, time) VALUES ('LS3', 'Dolphin Show', '3:00 PM');
INSERT INTO LiveShow(liveshowID, sName, time) VALUES ('LS4', 'Dolphin Show', '1:00 PM');

CREATE TABLE TourGuide(
tourID VARCHAR2(3), 
employeeID VARCHAR2(3),
PRIMARY KEY(tourID, employeeID),
FOREIGN KEY(tourID) REFERENCES Tour(tourID) ON DELETE CASCADE,
FOREIGN KEY(employeeID) REFERENCES Employee(employeeID) ON DELETE CASCADE
);
INSERT INTO TourGuide(tourID, employeeID) VALUES ('T1','E1');
INSERT INTO TourGuide(tourID, employeeID) VALUES ('T2','E2');
INSERT INTO TourGuide(tourID, employeeID) VALUES ('T3','E3');
INSERT INTO TourGuide(tourID, employeeID) VALUES ('T4','E5');
INSERT INTO TourGuide(tourID, employeeID) VALUES ('T1','E9');
INSERT INTO TourGuide(tourID, employeeID) VALUES ('T2','E14');
INSERT INTO TourGuide(tourID, employeeID) VALUES ('T3','E12');
INSERT INTO TourGuide(tourID, employeeID) VALUES ('T4','E6');

CREATE TABLE ShowPresenter(
liveshowID VARCHAR2(3),
employeeID VARCHAR2(3),
PRIMARY KEY(liveshowID, employeeID),
FOREIGN KEY(liveshowID) REFERENCES LiveShow(liveshowID) ON DELETE CASCADE,
FOREIGN KEY(employeeID) REFERENCES Employee(employeeID) ON DELETE CASCADE
);
INSERT INTO ShowPresenter(liveshowID, employeeID) VALUES ('LS1','E1');
INSERT INTO ShowPresenter(liveshowID, employeeID) VALUES ('LS1','E2');
INSERT INTO ShowPresenter(liveshowID, employeeID) VALUES ('LS2','E3');
INSERT INTO ShowPresenter(liveshowID, employeeID) VALUES ('LS2','E4');
INSERT INTO ShowPresenter(liveshowID, employeeID) VALUES ('LS3','E8');
INSERT INTO ShowPresenter(liveshowID, employeeID) VALUES ('LS3','E14');
INSERT INTO ShowPresenter(liveshowID, employeeID) VALUES ('LS4','E7');
INSERT INTO ShowPresenter(liveshowID, employeeID) VALUES ('LS4','E10');

CREATE TABLE AnimalPerformsInShow (
liveshowID VARCHAR(3),
general_name VARCHAR(50),
PRIMARY KEY (liveshowID, general_name),
FOREIGN KEY (liveshowID) REFERENCES LiveShow(liveshowID) ON DELETE CASCADE,
FOREIGN KEY (general_name) REFERENCES Animal(general_name) ON DELETE CASCADE
);
INSERT INTO AnimalPerformsInShow(liveshowID, general_name) VALUES ('LS1', 'Galapagos Penguin');
INSERT INTO AnimalPerformsInShow(liveshowID, general_name) VALUES ('LS2', 'Bat Ray');
INSERT INTO AnimalPerformsInShow(liveshowID, general_name) VALUES ('LS3', 'Common Dolphinfish');
INSERT INTO AnimalPerformsInShow(liveshowID, general_name) VALUES ('LS4', 'Common Dolphinfish');

CREATE TABLE ZoneTours (
tourID VARCHAR(3),
zoneID VARCHAR(3),
PRIMARY KEY (tourID, zoneID),
FOREIGN KEY (tourID) REFERENCES Tour(tourID) ON DELETE CASCADE,
FOREIGN KEY (zoneID) REFERENCES Zone(zoneID) ON DELETE CASCADE
);
INSERT INTO ZoneTours(tourID, zoneID) VALUES ('T1', 'Z1');
INSERT INTO ZoneTours(tourID, zoneID) VALUES ('T1', 'Z2');
INSERT INTO ZoneTours(tourID, zoneID) VALUES ('T1', 'Z3');
INSERT INTO ZoneTours(tourID, zoneID) VALUES ('T1', 'Z4');
INSERT INTO ZoneTours(tourID, zoneID) VALUES ('T1', 'Z5');
INSERT INTO ZoneTours(tourID, zoneID) VALUES ('T1', 'Z6');
INSERT INTO ZoneTours(tourID, zoneID) VALUES ('T2', 'Z3');
INSERT INTO ZoneTours(tourID, zoneID) VALUES ('T2', 'Z5');
INSERT INTO ZoneTours(tourID, zoneID) VALUES ('T3', 'Z1');
INSERT INTO ZoneTours(tourID, zoneID) VALUES ('T3', 'Z3');
INSERT INTO ZoneTours(tourID, zoneID) VALUES ('T3', 'Z4');
INSERT INTO ZoneTours(tourID, zoneID) VALUES ('T4', 'Z1');
INSERT INTO ZoneTours(tourID, zoneID) VALUES ('T4', 'Z3');
INSERT INTO ZoneTours(tourID, zoneID) VALUES ('T4', 'Z4');

CREATE TABLE Visitor(
visitorID VARCHAR2(3) PRIMARY KEY,
vName VARCHAR2(10)
);
INSERT INTO Visitor(visitorID, vName) VALUES('V1','John');
INSERT INTO Visitor(visitorID, vName) VALUES('V2','Melissa');
INSERT INTO Visitor(visitorID, vName) VALUES('V3','Dave');
INSERT INTO Visitor(visitorID, vName) VALUES('V4','Daisey');
INSERT INTO Visitor(visitorID, vName) VALUES('V5','Aaron');
INSERT INTO Visitor(visitorID, vName) VALUES('V6','Eva');
INSERT INTO Visitor(visitorID, vName) VALUES('V7','Eddie');
INSERT INTO Visitor(visitorID, vName) VALUES('V8','Genie');
INSERT INTO Visitor(visitorID, vName) VALUES('V9','Gabe');
INSERT INTO Visitor(visitorID, vName) VALUES('V10','Pam');
INSERT INTO Visitor(visitorID, vName) VALUES('V11','Jack');
INSERT INTO Visitor(visitorID, vName) VALUES('V12','Angela');
INSERT INTO Visitor(visitorID, vName) VALUES('V13','Susan');
INSERT INTO Visitor(visitorID, vName) VALUES('V14','Jayden');
INSERT INTO Visitor(visitorID, vName) VALUES('V15','Hannah');
INSERT INTO Visitor(visitorID, vName) VALUES('V16','Edward');
INSERT INTO Visitor(visitorID, vName) VALUES('V17','Jen');
INSERT INTO Visitor(visitorID, vName) VALUES('V18','Joey');
INSERT INTO Visitor(visitorID, vName) VALUES('V19','Monica');
INSERT INTO Visitor(visitorID, vName) VALUES('V20','Ross');

CREATE TABLE VisitorTags(
visitorID VARCHAR2(3),
general_name VARCHAR2(50),
tag_description VARCHAR2(20),
PRIMARY KEY(visitorID, general_name),
FOREIGN KEY(visitorID) REFERENCES Visitor(visitorID) ON DELETE CASCADE,
FOREIGN KEY(general_name) REFERENCES Animal(general_name) ON DELETE CASCADE
);
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V1', 'Blue Tang', 'adorable');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V3', 'Sea Otter', 'adorable');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V5', 'Whale Shark', 'scary');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V6', 'Red Lionfish', 'unique');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V7', 'Green Sea Turtle', 'unique');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V5', 'Banded Butterflyfish', 'adorable');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V10', 'Galapagos Penguin', 'cute');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V13', 'Common Dolphinfish', 'cute');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V16', 'Great White Shark', 'cool');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V12', 'Bat Ray', 'cool');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V2', 'Giant Clam', 'cool');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V20', 'Whitetip Reef Shark', 'scary');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V11', 'Kelp Bass', 'unique');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V13', 'Giant Sea Bass', 'cool');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V5', 'Blue Rockfish', 'cool');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V4', 'Barramundi', 'adorable');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V8', 'Horseshoe Crab', 'adorable');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V19', 'Gray Snapper', 'cool');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V13', 'Giant Mud Crab', 'unique');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V20', 'Lemon Shark', 'unique');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V19', 'Giant Sunfish', 'unique');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V11', 'Bluefin Tuna', 'cute');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V10', 'Giant Pacific Octopus', 'unique');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V5', 'Starry Flounder', 'cute');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V6', 'Pacific Staghorn Sculpin', 'cool');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V8', 'Northern Pipefish', 'cool');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V19', 'Ribbed Mussel', 'adorable');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V16', 'Harris Mud Crab', 'unique');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V17', 'Atlantic Bluefin Tuna', 'cool');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V18', 'Atlantic Goliath Grouper', 'cool');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V14', 'Chilean Jack Mackerel', 'cool');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V11', 'Atlantic Cod', 'adorable');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V2', 'Chilean Common Hake', 'cute');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V1', 'John Dory', 'unique');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V4', 'Pacific Halibut', 'cool');

COMMIT WORK;