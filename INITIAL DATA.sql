USE Store;

-- Categories
INSERT INTO Category (Name) VALUES
    ('Produce'),     -- ID: 1
    ('Dairy'),       -- ID: 2
    ('Bakery'),      -- ID: 3
    ('Meat'),        -- ID: 4
    ('Beverages'),   -- ID: 5
    ('Snacks'),      -- ID: 6
    ('Deli'),        -- ID: 7
    ('Canned Goods'),-- ID: 8
    ('Breakfast'),   -- ID: 9
    ('Hygiene');     -- ID: 10
    
-- Products
INSERT INTO Product (Category_ID, Name, Price) VALUES
    -- Produce
    (1, 'Clementines 3lbs', 4.99),
    (1, 'Bananas', 0.24),
    (1, 'Avocado', 0.88),
    (1, 'Strawberries 16oz', 3.99),
    (1, 'Tomatoes', 0.42),	
    (1, 'Caesar salad 9.9oz', 3.00),
    (1, 'Yellow bell pepper', 0.99),
    (1, 'Cilantro bunch', 0.99),
    (1, 'Sweet corn', 1.00),
    (1, 'Yellow onion 1lb', 2.49),

    -- Dairy
    (2, 'Whole milk 0.5gal', 2.29),
    (2, 'Eggs Large', 1.69),
    (2, 'Sour Cream 16oz', 2.99),
    (2, 'Heavy whipping cream 1pt', 4.29),
    (2, 'Half & Half 16oz', 2.79),
    (2, 'Cheddar cheese 8oz', 1.99),
    (2, '2% Cottage cheese 22oz', 3.99),
    (2, '8oz Mozzarella', 3.29),

    -- Bakery
    (3, 'Old fasioned donuts 6ct', 4.99),
    (3, 'White bread', 1.79),
    (3, 'Plain bagels', 1.79),
    (3, 'Whole wheat bread', 2.49),
    (3, 'Sourdough bread', 2.29),
    (3, 'Chocolate chip cookies 13oz', 5.99),
    (3, 'M&M cookies 13oz', 6.99),
    (3, 'Baguette 8oz', 1.99),

    -- Meat
    (4, 'Ground beef 16oz', 4.49),
    (4, 'Beef chuck roast 2.5lbs', 20.29),
    (4, 'Ground turkey 48oz', 19.99),
    (4, 'Pulled chicken 16 oz', 9.99),
    (4, 'Eye of round steak 0.75lbs', 6.89),

    -- Beverages
    (5, 'Fruit punch 59oz', 1.99),
    (5, 'Lemonade 59 oz', 1.99),
    (5, 'Orange juice 52oz', 4.79),
    (5, 'Celcius 12pk', 23.99),
    (5, 'Arizona iced tea 12pk', 5.99),
    (5, 'Cola 16oz', 2.39),
    (5, 'Red bull 12oz', 3.29),

    -- Snacks
    (6, 'Fruit snacks 0.8oz', 4.19),
    (6, 'Goldfish crackers 6.6oz', 3.69),
    (6, 'Dried mango 6oz', 5.99),
    (6, 'plain potato chips', 2.79),
    (6, 'Salt & vinegar chips', 4.00),
    (6, 'Chewy granola bars', 3.99),
    (6, 'Kind bars 5ct', 5.19),

	-- Deli
    (7, 'Hot fried chicken 4pc', 6.49),
    (7, 'Coleslaw 1lb', 3.99),
    (7, 'Mustard potato salad 1lb', 3.99),
    (7, 'Sliced turkey breast 1lb', 7.99),
    (7, 'Sliced roast beef 1lb', 8.99),

    -- Canned Goods
    (8, 'Canned Sweet corn 15oz', 0.49),
    (8, 'Canned Green beans 14.5oz', 0.49),
    (8, 'Canned Mini raviolis 15oz', 1.79),
    (8, 'Canned Pear halves 15oz', 3.39),
    (8, 'Canned mixed vegetables 15oz', 1.49),
    (8, 'Campbell''s chicken noodle soup 10.75oz', 1.69),
    (8, 'Canned green beans', 0.99),

    -- Breakfast
    (9, 'Sausage egg and cheese crossant sandwich 4ct', 5.99),
    (9, 'Granola with almonds and oats 18oz', 4.99),
    (9, 'Honey 12oz', 4.59),
    (9, 'Strawberry jam 18oz', 3.49),
    (9, 'Creamy peanutbutter 12 oz', 7.99),

    -- Hygiene
    (10, 'Crest toothpaste 5.4oz', 3.50),
    (10, 'Colgate toothpaste 6oz', 5.19),
    (10, 'Pantene shampoo 12oz' , 5.99),
    (10, 'Pantene conditioner 10.4oz', 5.99),
    (10, 'Old Spice deodorant 2.6oz', 8.99),
    (10, 'Ibuprofen 200mg 100ct', 7.19),
    (10, 'Ricola cough drops 45ct', 8.29);

-- Stock

-- Produce
INSERT INTO Stock (Product_ID, Quantity, Stock_Date, Exp_Date) VALUES
    (1, 40, '2026-04-22', '2026-05-06'),   -- Clementines
    (2, 150, '2026-04-28', '2026-05-05'),  -- Bananas
    (2, 80, '2026-04-05', '2026-04-12'),   -- Bananas (expired)
    (3, 80, '2026-04-25', '2026-05-02'),   -- Avocado
    (4, 50, '2026-04-28', '2026-05-04'),   -- Strawberries
    (4, 30, '2026-04-15', '2026-04-21'),   -- Strawberries (expired)
    (5, 100, '2026-04-24', '2026-05-04'),  -- Tomatoes
    (6, 30, '2026-04-28', '2026-05-03'),   -- Caesar salad
    (7, 60, '2026-04-23', '2026-05-05'),   -- Yellow bell pepper
    (8, 40, '2026-04-18', '2026-04-23'),   -- Cilantro (expired)
    (9, 75, '2026-04-21', '2026-04-29'),   -- Sweet corn (expired)
    (10, 50, '2026-04-22', '2026-05-12');  -- Yellow onion

-- Dairy
INSERT INTO Stock (Product_ID, Quantity, Stock_Date, Exp_Date) VALUES
    (11, 60, '2026-04-28', '2026-05-19'),  -- Whole milk
    (11, 40, '2026-04-02', '2026-04-23'),  -- Whole milk (expired)
    (12, 100, '2026-04-22', '2026-05-20'), -- Eggs
    (13, 40, '2026-04-19', '2026-05-24'),  -- Sour cream
    (14, 30, '2026-04-25', '2026-05-23'),  -- Heavy whipping cream
    (15, 35, '2026-03-28', '2026-04-25'),  -- Half & Half (expired)
    (16, 50, '2026-04-17', '2026-06-17'),  -- Cheddar cheese
    (17, 35, '2026-04-28', '2026-05-29'),  -- Cottage cheese
    (18, 45, '2026-04-23', '2026-06-07');  -- Mozzarella

-- Bakery
INSERT INTO Stock (Product_ID, Quantity, Stock_Date, Exp_Date) VALUES
    (19, 24, '2026-04-22', '2026-04-26'),  -- Donuts (expired)
    (20, 40, '2026-04-24', '2026-05-01'),  -- White bread
    (20, 30, '2026-04-12', '2026-04-19'),  -- White bread (expired)
    (21, 30, '2026-04-21', '2026-04-28'),  -- Plain bagels (expired)
    (22, 35, '2026-04-19', '2026-04-27'),  -- Whole wheat bread (expired)
    (23, 25, '2026-04-20', '2026-04-27'),  -- Sourdough (expired)
    (24, 20, '2026-04-18', '2026-05-18'),  -- Choc chip cookies
    (25, 20, '2026-04-22', '2026-05-22'),  -- M&M cookies
    (26, 30, '2026-04-22', '2026-04-26');  -- Baguette (expired)

-- Meat
INSERT INTO Stock (Product_ID, Quantity, Stock_Date, Exp_Date) VALUES
    (27, 60, '2026-04-25', '2026-04-30'),  -- Ground beef
    (27, 35, '2026-04-15', '2026-04-20'),  -- Ground beef (expired)
    (28, 25, '2026-04-29', '2026-05-12'),  -- Beef chuck roast
    (29, 30, '2026-04-22', '2026-04-28'),  -- Ground turkey (expired)
    (30, 40, '2026-04-25', '2026-05-02'),  -- Pulled chicken
    (31, 35, '2026-04-07', '2026-04-23');  -- Eye of round steak (expired)

-- Beverages
INSERT INTO Stock (Product_ID, Quantity, Stock_Date, Exp_Date) VALUES
    (32, 80, '2026-03-22', '2026-09-22'),  -- Fruit punch
    (33, 80, '2026-03-22', '2026-09-22'),  -- Lemonade
    (34, 50, '2026-04-19', '2026-05-19'),  -- Orange juice
    (35, 60, '2026-04-28', '2027-04-28'),  -- Celsius 12pk
    (36, 70, '2026-03-19', '2026-12-19'),  -- Arizona iced tea
    (37, 100, '2026-04-09', '2026-10-09'), -- Cola
    (38, 90, '2026-03-17', '2027-01-17');  -- Red bull

-- Snacks
INSERT INTO Stock (Product_ID, Quantity, Stock_Date, Exp_Date) VALUES
    (39, 100, '2026-03-17', '2027-03-17'), -- Fruit snacks
    (40, 80, '2026-04-28', '2026-10-28'),  -- Goldfish
    (41, 50, '2026-03-22', '2026-09-22'),  -- Dried mango
    (42, 75, '2026-03-25', '2026-06-25'),  -- Plain potato chips
    (43, 60, '2026-04-14', '2026-07-14'),  -- Salt & vinegar chips
    (44, 90, '2026-03-22', '2026-09-22'),  -- Chewy granola bars
    (45, 70, '2026-04-28', '2026-10-28');  -- Kind bars

-- Deli
INSERT INTO Stock (Product_ID, Quantity, Stock_Date, Exp_Date) VALUES
    (46, 30, '2026-04-27', '2026-04-29'),  -- Hot fried chicken (expired)
    (47, 25, '2026-04-25', '2026-05-01'),  -- Coleslaw
    (47, 20, '2026-04-15', '2026-04-21'),  -- Coleslaw (expired)
    (48, 25, '2026-04-28', '2026-05-04'),  -- Mustard potato salad
    (49, 30, '2026-04-22', '2026-05-02'),  -- Sliced turkey breast
    (50, 30, '2026-04-28', '2026-05-08');  -- Sliced roast beef

-- Canned goods
INSERT INTO Stock (Product_ID, Quantity, Stock_Date, Exp_Date) VALUES
    (51, 120, '2026-03-22', '2028-03-22'), -- Canned sweet corn
    (52, 120, '2026-04-28', '2028-04-28'), -- Canned green beans
    (53, 80, '2026-03-27', '2027-09-27'),  -- Mini raviolis
    (54, 60, '2026-04-12', '2028-04-12'),  -- Pear halves
    (55, 90, '2026-03-22', '2028-03-22'),  -- Mixed vegetables
    (56, 100, '2026-03-22', '2028-03-22'), -- Chicken noodle soup
    (57, 110, '2026-04-28', '2028-04-28'); -- Canned green beans

-- Breakfast
INSERT INTO Stock (Product_ID, Quantity, Stock_Date, Exp_Date) VALUES
    (58, 40, '2026-04-23', '2026-05-07'),  -- Sausage egg & cheese sandwich
    (59, 50, '2026-04-28', '2026-10-28'),  -- Granola
    (60, 40, '2026-03-08', NULL),          -- Honey
    (61, 45, '2026-03-22', '2027-03-22'),  -- Strawberry jam
    (62, 55, '2026-04-15', '2027-02-15');  -- Peanut butter

-- Hygiene
INSERT INTO Stock (Product_ID, Quantity, Stock_Date, Exp_Date) VALUES
    (63, 80, '2026-03-17', NULL),          -- Crest toothpaste
    (64, 70, '2026-04-28', NULL),          -- Colgate toothpaste
    (65, 60, '2026-03-22', NULL),          -- Pantene shampoo
    (66, 60, '2026-04-11', NULL),          -- Pantene conditioner
    (67, 75, '2026-03-17', NULL),          -- Old Spice deodorant
    (68, 100, '2026-03-08', '2028-03-08'), -- Ibuprofen
    (69, 90, '2026-04-28', '2028-04-28');  -- Ricola cough drops

-- Sales examples
-- ==========================================================================

-- weekly groceries:
INSERT INTO Sale (Sale_Date) VALUES (curdate());

INSERT INTO product_sold (Product_ID, Sale_ID, Quantity) VALUES
	(34, (SELECT MAX(Sale_ID) FROM Sale), 1), -- Orange juice
    (11, (SELECT MAX(Sale_ID) FROM Sale), 1), -- Whole milk
    (12, (SELECT MAX(Sale_ID) FROM Sale), 1), -- Eggs
    (2, (SELECT MAX(Sale_ID) FROM Sale), 5), -- Bananas
    (20, (SELECT MAX(Sale_ID) FROM Sale), 1), -- White bread
    (16, (SELECT MAX(Sale_ID) FROM Sale), 2), -- Cheddar cheese
    (39, (SELECT MAX(Sale_ID) FROM Sale), 4), -- Fruit snacks
    (49, (SELECT MAX(Sale_ID) FROM Sale), 3); -- Sliced turkey breast
    
-- BBQ supplies:
INSERT INTO Sale (Sale_Date) VALUES (curdate());

INSERT INTO product_sold (Product_ID, Sale_ID, Quantity) VALUES
	(28, (SELECT MAX(Sale_ID) FROM Sale), 3), -- Beef chuck roast
	(6, (SELECT MAX(Sale_ID) FROM Sale), 2), -- Caesar salad
	(33, (SELECT MAX(Sale_ID) FROM Sale), 1), -- Lemonade
	(37, (SELECT MAX(Sale_ID) FROM Sale), 1), -- Cola
	(47, (SELECT MAX(Sale_ID) FROM Sale), 2), -- Coleslaw
	(43, (SELECT MAX(Sale_ID) FROM Sale), 1); -- Salt & vinegar chips



    








