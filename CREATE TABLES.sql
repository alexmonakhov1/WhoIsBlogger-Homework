-- Create Tables

CREATE TABLE Users (
    userId SERIAL PRIMARY KEY,
    age SMALLINT NOT NULL
    );

CREATE TABLE Items (
    itemId SERIAL PRIMARY KEY,
    price MONEY NOT NULL
    );

CREATE TABLE Purchases (
    purchaseId SERIAL PRIMARY KEY,
	userId BIGINT NOT NULL REFERENCES Users ON DELETE CASCADE 
                            		 		ON UPDATE CASCADE,
	itemId BIGINT NOT NULL REFERENCES Items ON DELETE CASCADE 
                            		 		ON UPDATE CASCADE,
    date date NOT NULL,
	
	FOREIGN KEY(userId) REFERENCES Users (userId),
	FOREIGN KEY(itemId) REFERENCES Items (itemId)
    );
