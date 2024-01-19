#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Animal
#------------------------------------------------------------

CREATE TABLE Animal(
        id_animal     Int  Auto_increment  NOT NULL ,
        date_of_birth Date NOT NULL ,
        name          Varchar (50) NOT NULL ,
        weight        Varchar (50) NOT NULL ,
        gender        Varchar (50) NOT NULL
	,CONSTRAINT Animal_PK PRIMARY KEY (id_animal)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Species
#------------------------------------------------------------

CREATE TABLE Species(
        id_species  Int  Auto_increment  NOT NULL ,
        name        Varchar (50) NOT NULL ,
        description Text NOT NULL ,
        diet        Varchar (50) NOT NULL
	,CONSTRAINT Species_PK PRIMARY KEY (id_species)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: User
#------------------------------------------------------------

CREATE TABLE User(
        id_user      Int  Auto_increment  NOT NULL ,
        first_name   Varchar (50) NOT NULL ,
        last_name    Varchar (50) NOT NULL ,
        email        Varchar (50) NOT NULL ,
        password     Varchar (255) NOT NULL ,
        phone_number Varchar (13) NOT NULL
	,CONSTRAINT User_PK PRIMARY KEY (id_user)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Habitat
#------------------------------------------------------------

CREATE TABLE Habitat(
        id_habitat   Int  Auto_increment  NOT NULL ,
        habitat_name Varchar (50) NOT NULL ,
        habitat_type Varchar (50) NOT NULL
	,CONSTRAINT Habitat_PK PRIMARY KEY (id_habitat)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Animal_User
#------------------------------------------------------------

CREATE TABLE Animal_User(
        id_user   Int NOT NULL ,
        id_animal Int NOT NULL
	,CONSTRAINT Animal_User_PK PRIMARY KEY (id_user,id_animal)

	,CONSTRAINT Animal_User_User_FK FOREIGN KEY (id_user) REFERENCES User(id_user)
	,CONSTRAINT Animal_User_Animal0_FK FOREIGN KEY (id_animal) REFERENCES Animal(id_animal)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Animal_Species
#------------------------------------------------------------

CREATE TABLE Animal_Species(
        id_species Int NOT NULL ,
        id_animal  Int NOT NULL
	,CONSTRAINT Animal_Species_PK PRIMARY KEY (id_species,id_animal)

	,CONSTRAINT Animal_Species_Species_FK FOREIGN KEY (id_species) REFERENCES Species(id_species)
	,CONSTRAINT Animal_Species_Animal0_FK FOREIGN KEY (id_animal) REFERENCES Animal(id_animal)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Animal_Habitat
#------------------------------------------------------------

CREATE TABLE Animal_Habitat(
        id_habitat Int NOT NULL ,
        id_animal  Int NOT NULL
	,CONSTRAINT Animal_Habitat_PK PRIMARY KEY (id_habitat,id_animal)

	,CONSTRAINT Animal_Habitat_Habitat_FK FOREIGN KEY (id_habitat) REFERENCES Habitat(id_habitat)
	,CONSTRAINT Animal_Habitat_Animal0_FK FOREIGN KEY (id_animal) REFERENCES Animal(id_animal)
)ENGINE=InnoDB;

-- Insertion de données dans la table Species
INSERT INTO Species (name, description, diet) VALUES
    ('Lion', 'Large carnivorous feline', 'Meat'),
    ('Giraffe', 'Tall herbivorous mammal', 'Plants'),
    ('Elephant', 'Large herbivorous mammal', 'Plants'),
    ('Tiger', 'Large carnivorous feline', 'Meat'),
    ('Penguin', 'Flightless aquatic bird', 'Fish'),
    ('Kangaroo', 'Herbivorous marsupial', 'Plants'),
    ('Gorilla', 'Large herbivorous primate', 'Fruits'),
    ('Panda', 'Large herbivorous bear', 'Bamboo'),
    ('Dolphin', 'Aquatic mammal', 'Fish'),
    ('Crocodile', 'Large aquatic reptile', 'Fish'),
    ('Zebra', 'Herbivorous mammal with distinctive stripes', 'Plants'),
    ('Sloth', 'Slow-moving arboreal mammal', 'Leaves'),
    ('Hippopotamus', 'Large herbivorous semiaquatic mammal', 'Plants');

-- Insertion de données dans la table Habitat
INSERT INTO Habitat (habitat_name, habitat_type) VALUES
    ('Savannah', 'Terrestrial'),
    ('Jungle', 'Terrestrial'),
    ('Desert', 'Terrestrial'),
    ('Arctic', 'Terrestrial'),
    ('Rainforest', 'Terrestrial'),
    ('Savannah', 'Terrestrial'),
    ('Ocean', 'Aquatic'),
    ('Mountain', 'Terrestrial'),
    ('Swamp', 'Terrestrial'),
    ('Grassland', 'Terrestrial'),
    ('Desert', 'Terrestrial'),
    ('Forest', 'Terrestrial'),
    ('Cave', 'Terrestrial'),
    ('River', 'Aquatic');

-- Insertion de données dans la table Animal
INSERT INTO Animal (date_of_birth, name, weight, gender) VALUES
    ('2021-01-15', 'Simba', '150 kg', 'Male'),
    ('2020-03-22', 'Melman', '900 kg', 'Male'),
    ('2019-07-10', 'Dumbo', '1200 kg', 'Male'),
    ('2020-11-02', 'Raja', '180 kg', 'Female'),
    ('2018-09-14', 'Waddle', '25 kg', 'Male'),
    ('2019-05-01', 'Joey', '30 kg', 'Male'),
    ('2017-12-18', 'Koko', '180 kg', 'Male'),
    ('2019-03-26', 'Bamboo', '80 kg', 'Female'),
    ('2018-08-05', 'Flipper', '200 kg', 'Male'),
    ('2016-10-12', 'Snappy', '150 kg', 'Female'),
    ('2018-02-09', 'Stripey', '200 kg', 'Male'),
    ('2019-06-30', 'Slowpoke', '10 kg', 'Male'),
    ('2017-04-17', 'Hippo', '1600 kg', 'Female');

-- Insertion de données dans la table User
INSERT INTO User (first_name, last_name, email, password, phone_number) VALUES
    ('John', 'Doe', 'john.doe@email.com', 'hashedpassword123', '123-456-7890'),
    ('Jane', 'Smith', 'jane.smith@email.com', 'hashedpassword456', '987-654-3210'),
    ('Alice', 'Johnson', 'alice.johnson@email.com', 'hashedpassword789', '456-789-0123'),
    ('Bob', 'Miller', 'bob.miller@email.com', 'hashedpassword012', '789-012-3456');


-- Insertion de données dans la table Animal_User
INSERT INTO Animal_User (id_user, id_animal) VALUES
    (1, 1),
    (2, 2),
    (4, 3),
    (1, 4),
    (2, 5),
    (1, 6),
    (4, 7),
    (1, 8),
    (2, 9),
    (1, 10),
    (3, 11),
    (1, 12),
    (3, 13);

-- Insertion de données dans la table Animal_Species
INSERT INTO Animal_Species (id_species, id_animal) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13);

-- Insertion de données dans la table Animal_Habitat
INSERT INTO Animal_Habitat (id_habitat, id_animal) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (3, 4),
    (5, 5),
    (7, 6),
    (4, 7),
    (6, 8),
    (8, 9),
    (10, 10),
    (1, 11),
    (2, 12),
    (9, 13);
