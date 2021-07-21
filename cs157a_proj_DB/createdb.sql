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
INSERT INTO Restaurant(amenityID, rname, cuisine) VALUES ('A13', 'Luigi''s Lasagne','Italian');
INSERT INTO Restaurant(amenityID, rname, cuisine) VALUES ('A14', 'The Garden Thai','Thai');
INSERT INTO Restaurant(amenityID, rname, cuisine) VALUES ('A15', 'Guacamole Bliss','Mexican');


CREATE TABLE Giftshop (
amenityID VARCHAR2(3) PRIMARY KEY,
price_range VARCHAR(3),
FOREIGN KEY (amenityID) REFERENCES Amenity(amenityID) ON DELETE CASCADE
);
INSERT INTO Giftshop(amenityID, price_range) VALUES ('A16', '$$');

CREATE TABLE Employee(
employeeID VARCHAR2(3) PRIMARY KEY,
eName VARCHAR2(64) NOT NULL,
occupation  VARCHAR2(100) NOT NULL
);
INSERT INTO Employee(employeeID, eName, occupation) VALUES('E1','Michael', 'caretaker');
INSERT INTO Employee(employeeID, eName, occupation) VALUES('E2','Holly', 'caretaker');
INSERT INTO Employee(employeeID, eName, occupation) VALUES('E3','Jim', 'caretaker');
INSERT INTO Employee(employeeID, eName, occupation) VALUES('E4','Robin', 'caretaker');
INSERT INTO Employee(employeeID, eName, occupation) VALUES('E5','Victoria', 'tour guide');
INSERT INTO Employee(employeeID, eName, occupation) VALUES('E6','Stella', 'tour guide');
INSERT INTO Employee(employeeID, eName, occupation) VALUES('E7','Neal', 'tour guide');
INSERT INTO Employee(employeeID, eName, occupation) VALUES('E8','Jack', 'caretaker');
INSERT INTO Employee(employeeID, eName, occupation) VALUES('E9','Nick', 'tour guide');
INSERT INTO Employee(employeeID, eName, occupation) VALUES('E10','Jess', 'manager');
INSERT INTO Employee(employeeID, eName, occupation) VALUES('E11','Jessica', 'manager');
INSERT INTO Employee(employeeID, eName, occupation) VALUES('E12','Nat', 'tour guide');
INSERT INTO Employee(employeeID, eName, occupation) VALUES('E13','Tom', 'tour guide');
INSERT INTO Employee(employeeID, eName, occupation) VALUES('E14','Mark', 'caretaker');

CREATE TABLE TourGuide(
tourID VARCHAR2(3), 
employeeID VARCHAR2(3),
PRIMARY KEY(tourID, employeeID),
FOREIGN KEY(tourID) REFERENCES Tour(tourID) ON DELETE CASCADE,
FOREIGN KEY(employeeID) REFERENCES Employee(employeeID) ON DELETE CASCADE
);
INSERT INTO TourGuide(tourID, employeeID) VALUES('T1','E1');
INSERT INTO TourGuide(tourID, employeeID) VALUES('T2','E2');
INSERT INTO TourGuide(tourID, employeeID) VALUES('T3','E3');
INSERT INTO TourGuide(tourID, employeeID) VALUES('T1','E9');
INSERT INTO TourGuide(tourID, employeeID) VALUES('T2','E14');
INSERT INTO TourGuide(tourID, employeeID) VALUES('T3','E12');

CREATE TABLE ShowPresenter(
liveshowID VARCHAR2(3),
employeeID VARCHAR2(3),
PRIMARY KEY(liveshowID, employeeID),
FOREIGN KEY(liveshowID) REFERENCES LiveShow(liveshowID) ON DELETE CASCADE,
FOREIGN KEY(employeeID) REFERENCES Employee(employeeID) ON DELETE CASCADE
);
INSERT INTO ShowPresenter(liveshowID, employeeID) VALUES('LS1','E1');
INSERT INTO ShowPresenter(liveshowID, employeeID) VALUES('LS1','E2');
INSERT INTO ShowPresenter(liveshowID, employeeID) VALUES('LS2','E3');
INSERT INTO ShowPresenter(liveshowID, employeeID) VALUES('LS2','E4');
INSERT INTO ShowPresenter(liveshowID, employeeID) VALUES('LS3','E8');
INSERT INTO ShowPresenter(liveshowID, employeeID) VALUES('LS3','E15');

COMMIT WORK;