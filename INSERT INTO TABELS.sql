-- Insert Test Data

-- 1999-01-08	ISO 8601; January 8 in any mode (recommended format)

INSERT INTO Users (age) VALUES
	(17),
	
	-- 15
    (18),(19),(20),(21),(22),(23),(24),(25),
	(18),(19),(20),(21),(22),(23),(24),
	
	-- 15
    (26),(27),(28),(29),(30),(31),(32),(33),(34),(35),
	(26),(27),(28),(29),(30),
	
	-- 15
	(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),
	(36),(37),(38),(39),(40)
	;

INSERT INTO Items (price) VALUES

	-- lower category
	(100),(200),(300),(400),(500),
	
	-- medium category
	(600),(700),(800),(900),(1000),
	
	-- high category
	(1100),(1200),(1300),(1400),(15000)
	;
	
INSERT INTO Purchases (userId, itemId, date) VALUES
	-- 17
	(93, 31, '1999-01-01'),

	-- 18-25
	(94, 32, '1999-02-01'), (95, 33, '1999-03-01'), (96, 34, '1999-04-01'),	
	(97, 35, '1999-05-01'), (98, 36, '1999-06-01'), (99, 37, '1999-07-01'),
	(100, 38, '1999-08-01'), (101, 39, '1999-09-01'), (102, 40, '1999-10-01'),	
	(103, 41, '1999-03-01'), (104, 42, '1999-12-01'), (105, 43, '1999-11-01'),	
	(106, 44, '1999-06-01'), (107, 45, '1999-10-01'), (108, 31, '1999-01-01'),
	
	--26-35
	(109, 32, '1999-10-01'), (110, 33, '1999-01-01'),	(111, 34, '1999-04-01'),	
	(112, 35, '1999-12-01'), (113, 36, '1999-01-01'),	(114, 37, '1999-07-01'),
	(115, 38, '1999-09-01'), (116, 39, '1999-01-01'),	(117, 40, '1999-07-01'),	
	(118, 41, '1999-06-01'), (119, 42, '1999-11-01'), (120, 43, '1999-08-01'),	
	(121, 44, '1999-03-01'), (122, 45, '1999-11-01'), (123, 31, '1999-08-01'),
	
	-- 35+
	(124, 32, '1999-02-01'), (125, 33, '1999-03-01'), (126, 34, '1999-06-01'),	
	(127, 35, '1999-05-01'), (128, 36, '1999-06-01'), (129, 37, '1999-01-01'),
	(130, 38, '1999-08-01'), (131, 39, '1999-09-01'), (132, 40, '1999-09-01'),	
	(133, 41, '1999-11-01'), (134, 42, '1999-11-01'), (135, 43, '1999-09-01'),	
	(136, 44, '1999-11-01'), (137, 45, '1999-12-01'), (138, 31, '1999-09-01')
	;