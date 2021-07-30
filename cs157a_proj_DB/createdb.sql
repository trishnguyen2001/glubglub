CREATE TABLE Animal(
general_name VARCHAR2(50) PRIMARY KEY,
scientific_name VARCHAR2(50) NOT NULL);
INSERT INTO Animal(general_name, scientific_name) VALUES ('BLUE TANG', 'PARACANTHURUS HEPATUS');
INSERT INTO Animal(general_name, scientific_name) VALUES ('GREEN SEA TURTLE', 'CHELONIA MYDAS');
INSERT INTO Animal(general_name, scientific_name) VALUES ('GIANT CLAM', 'TRIDACNA GIGAS');
INSERT INTO Animal(general_name, scientific_name) VALUES ('RED LIONFISH', 'PTEROIS VOLITANS');
INSERT INTO Animal(general_name, scientific_name) VALUES ('WHITETIP REEF SHARK', 'TRIAENODON OBESUS');
INSERT INTO Animal(general_name, scientific_name) VALUES ('SEA OTTER', 'ENHYDRA LUTRIS');
INSERT INTO Animal(general_name, scientific_name) VALUES ('KELP BASS', 'PARALABRAX CLATHRATUS');
INSERT INTO Animal(general_name, scientific_name) VALUES ('GIANT SEA BASS', 'STEREOLEPIS GIGAS');
INSERT INTO Animal(general_name, scientific_name) VALUES ('BLUE ROCKFISH', 'SEBASTES MYSTINUS');
INSERT INTO Animal(general_name, scientific_name) VALUES ('BAT RAY', 'MYLIOBATIS CALIFORNICA');
INSERT INTO Animal(general_name, scientific_name) VALUES ('BARRAMUNDI', 'LATES CALCARIFER');
INSERT INTO Animal(general_name, scientific_name) VALUES ('HORSESHOE CRAB', 'LIMULIDAE');
INSERT INTO Animal(general_name, scientific_name) VALUES ('GRAY SNAPPER', 'LUTJANUS GRISEUS');
INSERT INTO Animal(general_name, scientific_name) VALUES ('GIANT MUD CRAB', 'SCYLLA SERRATA');
INSERT INTO Animal(general_name, scientific_name) VALUES ('LEMON SHARK', 'NEGAPRION BREVIROSTRIS');
INSERT INTO Animal(general_name, scientific_name) VALUES ('GIANT SUNFISH', 'MOLA MOLA');
INSERT INTO Animal(general_name, scientific_name) VALUES ('BLUEFIN TUNA', 'THUNNUS THYNNUS');
INSERT INTO Animal(general_name, scientific_name) VALUES ('GREAT WHITE SHARK', 'CARCHARODON CARCHARIAS');
INSERT INTO Animal(general_name, scientific_name) VALUES ('GIANT PACIFIC OCTOPUS', 'ENTEROCTOPUS DOFLEINI');
INSERT INTO Animal(general_name, scientific_name) VALUES ('WHALE SHARK', 'RHINCODON TYPUS');
INSERT INTO Animal(general_name, scientific_name) VALUES ('STARRY FLOUNDER', 'PLATICHTHYS STELLATUS');
INSERT INTO Animal(general_name, scientific_name) VALUES ('PACIFIC STAGHORN SCULPIN', 'LEPTOCOTTUS ARMATUS');
INSERT INTO Animal(general_name, scientific_name) VALUES ('NORTHERN PIPEFISH', 'SYNGNATHUS FUSCUS');
INSERT INTO Animal(general_name, scientific_name) VALUES ('RIBBED MUSSEL', 'GEUKENSIA DEMISSA');
INSERT INTO Animal(general_name, scientific_name) VALUES ('HARRIS MUD CRAB', 'RHITHROPANOPEUS HARRISII');
INSERT INTO Animal(general_name, scientific_name) VALUES ('GALAPAGOS PENGUIN', 'SPHENISCUS MENDICULUS');
INSERT INTO Animal(general_name, scientific_name) VALUES ('ATLANTIC BLUEFIN TUNA', 'THUNNUS THYNNUS');
INSERT INTO Animal(general_name, scientific_name) VALUES ('ATLANTIC GOLIATH GROUPER', 'EPINEPHELUS ITAJARA');
INSERT INTO Animal(general_name, scientific_name) VALUES ('BANDED BUTTERFLYFISH', 'CHAETODON STRIATUS');
INSERT INTO Animal(general_name, scientific_name) VALUES ('CHILEAN JACK MACKEREL', 'TRACHURUS MURPHYI');
INSERT INTO Animal(general_name, scientific_name) VALUES ('COMMON DOLPHINFISH', 'CORYPHAENA HIPPURUS');
INSERT INTO Animal(general_name, scientific_name) VALUES ('ATLANTIC COD', 'GADUS MORHUA');
INSERT INTO Animal(general_name, scientific_name) VALUES ('CHILEAN COMMON HAKE', 'MERLUCCIUS GAYI');
INSERT INTO Animal(general_name, scientific_name) VALUES ('JOHN DORY', 'ZEUS FABER');
INSERT INTO Animal(general_name, scientific_name) VALUES ('PACIFIC HALIBUT', 'HIPPOGLOSSUS STENOLEPIS');

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
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('BLUE TANG', 'H1', 'Z1');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('GREEN SEA TURTLE', 'H2', 'Z1');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('GIANT CLAM', 'H3', 'Z1');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('RED LIONFISH', 'H4', 'Z1');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('WHITETIP REEF SHARK', 'H5', 'Z1');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('SEA OTTER', 'H6', 'Z2');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('KELP BASS', 'H7', 'Z2');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('GIANT SEA BASS', 'H8', 'Z2');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('BLUE ROCKFISH', 'H9', 'Z2');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('BAT RAY', 'H10', 'Z2');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('BARRAMUNDI', 'H11', 'Z3');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('HORSESHOE CRAB', 'H12', 'Z3');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('GRAY SNAPPER', 'H13', 'Z3');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('GIANT MUD CRAB', 'H14', 'Z3');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('LEMON SHARK', 'H15', 'Z3');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('GIANT SUNFISH', 'H16', 'Z3');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('BLUEFIN TUNA', 'H17', 'Z4');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('GREAT WHITE SHARK', 'H18', 'Z4');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('GIANT PACIFIC OCTOPUS', 'H19', 'Z4');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('WHALE SHARK', 'H20', 'Z4');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('STARRY FLOUNDER', 'H21', 'Z4');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('PACIFIC STAGHORN SCULPIN', 'H22', 'Z5');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('NORTHERN PIPEFISH', 'H23', 'Z5');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('RIBBED MUSSEL', 'H24', 'Z5');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('HARRIS MUD CRAB', 'H25', 'Z5');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('GALAPAGOS PENGUIN', 'H26', 'Z5');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('ATLANTIC BLUEFIN TUNA', 'H27', 'Z5');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('ATLANTIC GOLIATH GROUPER', 'H28', 'Z1');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('BANDED BUTTERFLYFISH', 'H29', 'Z1');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('CHILEAN JACK MACKEREL', 'H30', 'Z4');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('COMMON DOLPHINFISH', 'H31', 'Z4');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('ATLANTIC COD', 'H32', 'Z6');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('CHILEAN COMMON HAKE', 'H33', 'Z6');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('JOHN DORY', 'H34', 'Z6');
INSERT INTO AnimalInsideZone(general_name, habitatID, zoneID) VALUES ('PACIFIC HALIBUT', 'H35', 'Z6');

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
INSERT INTO Restaurant(amenityID, rName, cuisine) VALUES ('A11', 'SEASIDE CAFE','COFFEE');
INSERT INTO Restaurant(amenityID, rName, cuisine) VALUES ('A12', 'TONY''S BAR AND GRILL','AMERICAN CASUAL DINING');
INSERT INTO Restaurant(amenityID, rName, cuisine) VALUES ('A13', 'STARBUCKS','COFFEE');
INSERT INTO Restaurant(amenityID, rName, cuisine) VALUES ('A14', 'THE GARDEN THAI','THAI');
INSERT INTO Restaurant(amenityID, rName, cuisine) VALUES ('A15', 'GUACAMOLE BLISS','MEXICAN');
INSERT INTO Restaurant(amenityID, rName, cuisine) VALUES ('A17', 'STARBUCKS ','COFFEE');


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
INSERT INTO Tour(tourID, tName, time) VALUES ('T1', 'FISH AROUND THE WORLD', '10:00 AM');
INSERT INTO Tour(tourID, tName, time) VALUES ('T2', 'CLOSE TO SHORE', '11:00 AM');
INSERT INTO Tour(tourID, tName, time) VALUES ('T3', 'SHARK TANK', '3:00 PM');
INSERT INTO Tour(tourID, tName, time) VALUES ('T4', 'SHARK TANK', '11:00 AM');

CREATE TABLE LiveShow (
liveshowID VARCHAR(3) PRIMARY KEY,
sName VARCHAR(20) NOT NULL,
time VARCHAR(7) NOT NULL
);
INSERT INTO LiveShow(liveshowID, sName, time) VALUES ('LS1', 'PENGUIN FEEDING', '1:00 PM');
INSERT INTO LiveShow(liveshowID, sName, time) VALUES ('LS2', 'STINGRAY PETTING ZOO', '2:00 PM');
INSERT INTO LiveShow(liveshowID, sName, time) VALUES ('LS3', 'DOLPHIN SHOW', '3:00 PM');
INSERT INTO LiveShow(liveshowID, sName, time) VALUES ('LS4', 'DOLPHIN SHOW', '1:00 PM');

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
INSERT INTO AnimalPerformsInShow(liveshowID, general_name) VALUES ('LS1', 'GALAPAGOS PENGUIN');
INSERT INTO AnimalPerformsInShow(liveshowID, general_name) VALUES ('LS2', 'BAT RAY');
INSERT INTO AnimalPerformsInShow(liveshowID, general_name) VALUES ('LS3', 'COMMON DOLPHINFISH');
INSERT INTO AnimalPerformsInShow(liveshowID, general_name) VALUES ('LS4', 'COMMON DOLPHINFISH');

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
INSERT INTO Visitor(visitorID, vName) VALUES ('V1', 'JOHN');
INSERT INTO Visitor(visitorID, vName) VALUES ('V2', 'MELISSA');
INSERT INTO Visitor(visitorID, vName) VALUES ('V3', 'DAVE');
INSERT INTO Visitor(visitorID, vName) VALUES ('V4', 'DAISEY');
INSERT INTO Visitor(visitorID, vName) VALUES ('V5', 'AARON');
INSERT INTO Visitor(visitorID, vName) VALUES ('V6', 'EVA');
INSERT INTO Visitor(visitorID, vName) VALUES ('V7', 'EDDIE');
INSERT INTO Visitor(visitorID, vName) VALUES ('V8', 'GENIE');
INSERT INTO Visitor(visitorID, vName) VALUES ('V9', 'GABE');
INSERT INTO Visitor(visitorID, vName) VALUES ('V10', 'PAM');
INSERT INTO Visitor(visitorID, vName) VALUES ('V11', 'JACK');
INSERT INTO Visitor(visitorID, vName) VALUES ('V12', 'ANGELA');
INSERT INTO Visitor(visitorID, vName) VALUES ('V13', 'SUSAN');
INSERT INTO Visitor(visitorID, vName) VALUES ('V14', 'JAYDEN');
INSERT INTO Visitor(visitorID, vName) VALUES ('V15', 'HANNAH');
INSERT INTO Visitor(visitorID, vName) VALUES ('V16', 'EDWARD');
INSERT INTO Visitor(visitorID, vName) VALUES ('V17', 'JEN');
INSERT INTO Visitor(visitorID, vName) VALUES ('V18', 'JOEY');
INSERT INTO Visitor(visitorID, vName) VALUES ('V19', 'MONICA');
INSERT INTO Visitor(visitorID, vName) VALUES ('V20', 'ROSS');

CREATE TABLE VisitorTags(
visitorID VARCHAR2(3),
general_name VARCHAR2(50),
tag_description VARCHAR2(20),
PRIMARY KEY(visitorID, general_name),
FOREIGN KEY(visitorID) REFERENCES Visitor(visitorID) ON DELETE CASCADE,
FOREIGN KEY(general_name) REFERENCES Animal(general_name) ON DELETE CASCADE
);
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V1', 'BLUE TANG', 'ADORABLE');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V3', 'GREEN SEA TURTLE', 'ADORABLE');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V5', 'GIANT CLAM', 'SCARY');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V6', 'RED LIONFISH', 'UNIQUE');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V7', 'WHITETIP REEF SHARK', 'UNIQUE');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V5', 'SEA OTTER', 'ADORABLE');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V10', 'KELP BASS', 'CUTE');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V13', 'GIANT SEA BASS', 'CUTE');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V16', 'BLUE ROCKFISH', 'COOL');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V12', 'BAT RAY', 'COOL');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V2', 'BARRAMUNDI', 'COOL');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V20', 'HORSESHOE CRAB', 'SCARY');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V11', 'GRAY SNAPPER', 'UNIQUE');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V13', 'GIANT MUD CRAB', 'COOL');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V5', 'LEMON SHARK', 'COOL');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V4', 'GIANT SUNFISH', 'ADORABLE');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V8', 'BLUEFIN TUNA', 'ADORABLE');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V19', 'GREAT WHITE SHARK', 'COOL');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V13', 'GIANT PACIFIC OCTOPUS', 'UNIQUE');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V20', 'WHALE SHARK', 'UNIQUE');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V19', 'STARRY FLOUNDER', 'UNIQUE');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V11', 'PACIFIC STAGHORN SCULPIN', 'CUTE');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V10', 'NORTHERN PIPEFISH', 'UNIQUE');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V5', 'RIBBED MUSSEL', 'CUTE');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V6', 'HARRIS MUD CRAB', 'COOL');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V8', 'GALAPAGOS PENGUIN', 'COOL');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V19', 'ATLANTIC BLUEFIN TUNA', 'ADORABLE');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V16', 'ATLANTIC GOLIATH GROUPER', 'UNIQUE');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V17', 'BANDED BUTTERFLYFISH', 'COOL');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V18', 'CHILEAN JACK MACKEREL', 'COOL');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V14', 'COMMON DOLPHINFISH', 'COOL');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V11', 'ATLANTIC COD', 'ADORABLE');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V2', 'CHILEAN COMMON HAKE', 'CUTE');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V1', 'JOHN DORY', 'UNIQUE');
INSERT INTO VisitorTags(visitorID, general_name, tag_description) VALUES ('V4', 'PACIFIC HALIBUT', 'COOL');

CREATE TABLE AmenityType(
    amenityID VARCHAR(3) PRIMARY KEY,
    amenity_type VARCHAR(25) NOT NULL,
    FOREIGN KEY (amenityID) REFERENCES Amenity(amenityID) ON DELETE CASCADE
);
INSERT INTO AmenityType(amenityID, amenity_type) VALUES ('A1', 'RESTROOM');
INSERT INTO AmenityType(amenityID, amenity_type) VALUES ('A2', 'RESTROOM');
INSERT INTO AmenityType(amenityID, amenity_type) VALUES ('A3', 'RESTROOM');
INSERT INTO AmenityType(amenityID, amenity_type) VALUES ('A4', 'RESTROOM');
INSERT INTO AmenityType(amenityID, amenity_type) VALUES ('A5', 'RESTROOM');
INSERT INTO AmenityType(amenityID, amenity_type) VALUES ('A6', 'RESTROOM');
INSERT INTO AmenityType(amenityID, amenity_type) VALUES ('A7', 'RESTROOM');
INSERT INTO AmenityType(amenityID, amenity_type) VALUES ('A8', 'RESTROOM');
INSERT INTO AmenityType(amenityID, amenity_type) VALUES ('A9', 'RESTROOM');
INSERT INTO AmenityType(amenityID, amenity_type) VALUES ('A10', 'RESTROOM');
INSERT INTO AmenityType(amenityID, amenity_type) VALUES ('A11', 'RESTAURANT');
INSERT INTO AmenityType(amenityID, amenity_type) VALUES ('A12', 'RESTAURANT');
INSERT INTO AmenityType(amenityID, amenity_type) VALUES ('A13', 'RESTAURANT');
INSERT INTO AmenityType(amenityID, amenity_type) VALUES ('A14', 'RESTAURANT');
INSERT INTO AmenityType(amenityID, amenity_type) VALUES ('A15', 'RESTAURANT');
INSERT INTO AmenityType(amenityID, amenity_type) VALUES ('A16', 'GIFT SHOP');
INSERT INTO AmenityType(amenityID, amenity_type) VALUES ('A17', 'RESTAURANT');

COMMIT WORK;