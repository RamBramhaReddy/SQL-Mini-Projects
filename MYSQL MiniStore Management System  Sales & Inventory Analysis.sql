CREATE DATABASE IF NOT EXISTS MiniStoreDB;

USE MiniStoreDB;

select * from Customers;

CREATE TABLE Customers (
    Customer_ID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    City VARCHAR(100),
    Registration_Date DATE,
    Age INT CHECK (Age > 0 AND Age < 120),
    Total_Spent DECIMAL(10,2) CHECK (Total_Spent >= 0)
);
INSERT INTO Customers 
(Customer_ID, Name, Email, City, Registration_Date, Age, Total_Spent)
VALUES
('C001', 'Jennifer Armstrong', 'sawyerwesley@salazar.org', 'Brittanymouth', '2023-03-31', 62, 10846.00),
('C002', 'Anita Williams', 'bryantnoah@yahoo.com', 'West Georgefurt', '2023-09-25', 48, 5749.25),
('C003', 'Kyle Collins', 'aaron13@gmail.com', 'New Ronaldport', '2025-02-21', 23, 10046.24),
('C004', 'Johnny Juarez', 'jasonharrington@wilson.com', 'Flynnfort', '2023-03-02', 21, 14283.27),
('C005', 'Pamela Little', 'brooke41@hotmail.com', 'South Marie', '2024-09-05', 50, 8400.32),
('C006', 'Alan Cortez', 'christinahorn@hotmail.com', 'Benjaminhaven', '2024-05-31', 27, 7084.04),
('C007', 'Jordan Riley', 'tracey99@hernandez.com', 'New Zacharyside', '2023-10-23', 23, 1507.77),
('C008', 'Richard Abbott', 'michelle30@black.com', 'Lake Donna', '2025-08-21', 21, 2025.94),
('C009', 'Tara Wheeler', 'sullivanheather@hotmail.com', 'Masonfort', '2025-05-23', 53, 4437.52),
('C010', 'Richard Alvarez', 'wford@mcdaniel.net', 'Leonardshire', '2025-06-20', 53, 8878.29),
('C011', 'Brandon Carter', 'kristin38@clark-valdez.com', 'Jessicafurt', '2024-07-11', 52, 9563.76),
('C012', 'Eric Boone', 'jamesjohnson@wallace.com', 'Woodshire', '2023-08-01', 47, 5227.49),
('C013', 'Kristen Salinas', 'robinmcconnell@maddox.com', 'Mcfarlandborough', '2023-08-05', 69, 10852.71),
('C014', 'Alexis Zimmerman', 'nsoto@hotmail.com', 'East Albertside', '2023-10-14', 45, 12811.54),
('C015', 'Haley Smith', 'dylanconway@perez.com', 'Karenchester', '2025-10-09', 28, 8522.70),
('C016', 'Dana Gibbs', 'btodd@jones-lowery.com', 'Jennifershire', '2025-08-06', 44, 2997.10),
('C017', 'Angel Hampton', 'sarahbryan@hotmail.com', 'Englishside', '2024-07-12', 64, 8741.91),
('C018', 'James Brennan', 'lori48@graham.com', 'East Amyfort', '2025-06-24', 56, 15423.31),
('C019', 'Christine Smith', 'tbanks@joseph-velazquez.com', 'Rasmussenborough', '2025-10-12', 57, 17371.99),
('C020', 'Nicole Welch', 'usmith@smith.net', 'Lake Richardview', '2025-02-27', 57, 9113.71),
('C021', 'Fred Simmons', 'tarahebert@gmail.com', 'Larryside', '2023-09-09', 57, 5314.77),
('C022', 'Brian Marks', 'johnhenderson@hampton.com', 'Port Kimberlyport', '2023-10-09', 36, 17115.86),
('C023', 'Dustin Garner', 'russelljose@callahan.com', 'Port Jennifer', '2024-09-01', 20, 9913.29),
('C024', 'Bryan Walters', 'rogersjulia@gmail.com', 'North Lindafurt', '2024-12-23', 52, 10023.24),
('C025', 'Lisa Le', 'edgarmendoza@hotmail.com', 'West Nicole', '2023-11-27', 50, 12420.73),
('C026', 'Shannon Powell', 'wolson@scott.net', 'Ashleyland', '2024-03-04', 33, 11475.43),
('C027', 'Chelsey Schroeder', 'ehoffman@thomas.com', 'Cochranfort', '2023-03-31', 67, 15809.70),
('C028', 'Jason Dickson', 'blackgeorge@hotmail.com', 'Ashleyview', '2023-06-24', 42, 17036.27),
('C029', 'Stephen Hall', 'jenniferchandler@tyler.net', 'Emilystad', '2025-09-21', 48, 7274.22),
('C030', 'Anthony Washington', 'debra78@yahoo.com', 'East Ashley', '2024-09-19', 36, 6171.47),
('C031', 'Katelyn Armstrong', 'morgan69@yahoo.com', 'Lake Nicole', '2024-05-25', 21, 19173.06),
('C032', 'Ashley Clark', 'andrewneal@lowe.com', 'East Kimberly', '2025-11-16', 67, 7305.05),
('C033', 'Larry Mcpherson', 'james47@gmail.com', 'North Kevin', '2025-08-19', 45, 1282.07),
('C034', 'Tyler Beard', 'curtis57@yahoo.com', 'Kevinview', '2023-08-28', 20, 2645.04),
('C035', 'Daniel Smith', 'scollins@yahoo.com', 'East Trevorshire', '2025-10-19', 65, 2549.96),
('C036', 'Yvonne King', 'kwright@gmail.com', 'Carsontown', '2025-04-18', 29, 16706.39),
('C037', 'Heather Chavez', 'samantha90@rivers.info', 'Stephenberg', '2023-09-19', 63, 8388.17),
('C038', 'Sean Richardson', 'christinahunter@martinez.info', 'Jeffreyshire', '2023-02-28', 21, 18426.90),
('C039', 'Mr. Thomas Reynolds', 'jennifer17@hotmail.com', 'North Denisetown', '2023-01-18', 46, 4358.88),
('C040', 'Renee Ford', 'seanswanson@yahoo.com', 'Cassandraview', '2024-01-19', 54, 13040.75),
('C041', 'Richard Cook', 'kristen06@cameron.net', 'Ianshire', '2023-06-18', 20, 18474.78),
('C042', 'Steven Bell', 'hrodriguez@yahoo.com', 'Ramirezhaven', '2025-08-14', 65, 17496.91),
('C043', 'David Wood', 'frichardson@dunn.com', 'Taraland', '2025-06-14', 40, 14575.19),
('C044', 'Hannah Schultz', 'hannah90@maynard.com', 'East Joel', '2025-10-03', 47, 14367.11),
('C045', 'Dennis Hayes', 'michelle81@fisher.com', 'Port Heathershire', '2025-04-16', 40, 17294.77),
('C046', 'Brandon Thompson', 'bakerchristina@malone.biz', 'Mckinneyfurt', '2023-12-22', 27, 16819.07),
('C047', 'Christopher Hudson', 'xwillis@gmail.com', 'Alexandraside', '2023-07-03', 24, 9733.91),
('C048', 'Joseph Jarvis', 'yryan@dixon.com', 'Lake Haleystad', '2025-05-11', 53, 10708.94),
('C049', 'Mrs. Angela Riggs', 'julia35@yahoo.com', 'South Danielleside', '2024-09-08', 39, 14696.36),
('C050', 'Elizabeth Velazquez', 'raystephanie@yahoo.com', 'Smithburgh', '2023-11-25', 58, 17127.52);





CREATE TABLE Products(
Product_ID VARCHAR (10) PRIMARY KEY, 
Product_Name VARCHAR(100) NOT NULL,
Category VARCHAR(100),	
Supplier VARCHAR(100),
Price DECIMAL(10,2) CHECK (Price > 0), 
Quantity_In_Stock INT CHECK (Quantity_In_Stock >= 0),
Reorder_Level INT,	
Rating DECIMAL(10,2) CHECK (Rating >= 0 AND Rating <= 5)
);

INSERT INTO Products 
(Product_ID, Product_Name, Category, Supplier, Price, Quantity_In_Stock, Reorder_Level, Rating)
VALUES
('P001','Its Test','Furniture','DellStore',653.05,177,18,2.5),
('P002','Movement Senior','Computers','FashionHub',407.88,168,13,1.2),
('P003','Toward Doctor','Furniture','TechWorld',1497.48,60,18,3.9),
('P004','Occur Memory','Clothing','DellStore',254.82,163,45,4.9),
('P005','Public Item','Toys','FashionHub',825.33,199,18,4.2),
('P006','Only Sign','Home Appliances','DellStore',1005.82,70,23,1.9),
('P007','Certainly Activity','Clothing','FashionHub',1455.12,114,11,2.0),
('P008','I Mouth','Home Appliances','GalaxySupplies',366.96,16,7,4.7),
('P009','Item Close','Home Appliances','DellStore',1213.54,196,5,2.2),
('P010','Budget Area','Electronics','TechWorld',1914.36,141,49,3.4),
('P011','Produce Eye','Furniture','FashionHub',1806.26,57,27,1.9),
('P012','Measure Shoulder','Clothing','HomeNeeds',590.00,20,27,3.1),
('P013','Crime Accept','Clothing','DellStore',1085.38,196,32,1.9),
('P014','Especially Perform','Toys','GalaxySupplies',623.54,188,31,2.4),
('P015','Benefit Explain','Furniture','FashionHub',1225.17,186,45,1.4),
('P016','Natural Everything','Home Appliances','ToyLand',517.26,127,42,2.7),
('P017','General Always','Home Appliances','ToyLand',296.02,96,42,4.8),
('P018','Brother Necessary','Computers','TechWorld',173.10,83,27,4.2),
('P019','Cause Sing','Furniture','ToyLand',1108.77,47,36,3.8),
('P020','Whom Story','Home Appliances','TechWorld',276.61,137,34,4.5),
('P021','Kid Product','Clothing','GalaxySupplies',107.69,51,31,3.0),
('P022','End Over','Electronics','TechWorld',1029.41,125,13,4.5),
('P023','Never He','Electronics','HomeNeeds',1252.31,149,31,1.6),
('P024','Wear Finally','Home Appliances','FashionHub',536.85,93,34,4.3),
('P025','Although Need','Home Appliances','HomeNeeds',1057.62,84,32,1.2),
('P026','Operation Strong','Toys','FashionHub',283.73,26,37,2.9),
('P027','Industry Himself','Furniture','GalaxySupplies',270.85,111,33,1.2),
('P028','Perhaps Around','Toys','ToyLand',214.45,136,15,1.8),
('P029','Perform Say','Home Appliances','GalaxySupplies',173.68,132,45,1.1),
('P030','Those Dream','Home Appliances','GalaxySupplies',323.63,173,18,1.8),
('P031','Per Economy','Furniture','FashionHub',216.39,66,31,2.1),
('P032','Law Score','Clothing','DellStore',1061.88,40,37,3.2),
('P033','Pm Unit','Home Appliances','ToyLand',1569.12,78,16,3.7),
('P034','Work Game','Computers','GalaxySupplies',239.27,187,14,1.7),
('P035','Reality Region','Home Appliances','HomeNeeds',194.72,79,6,2.9),
('P036','Owner Fly','Toys','GalaxySupplies',1605.84,89,45,2.9),
('P037','Why Century','Home Appliances','ToyLand',187.70,156,16,2.4),
('P038','Project Person','Toys','HomeNeeds',1312.57,183,7,2.5),
('P039','Rate Own','Clothing','GalaxySupplies',647.82,188,19,3.2),
('P040','Save Believe','Electronics','DellStore',1025.38,65,8,3.7),
('P041','New Majority','Home Appliances','DellStore',179.36,61,31,4.8),
('P042','Hot Interest','Furniture','ToyLand',292.66,197,23,4.1),
('P043','Market Space','Home Appliances','ToyLand',1316.66,151,41,1.8),
('P044','Create Raise','Computers','FashionHub',66.97,81,10,2.8),
('P045','Indicate Fact','Clothing','GalaxySupplies',1378.32,84,33,4.4),
('P046','Doctor Economic','Clothing','FashionHub',1578.94,84,46,3.3),
('P047','Why Control','Home Appliances','ToyLand',1401.56,51,43,3.7),
('P048','Concern Believe','Toys','FashionHub',1389.55,121,46,1.3),
('P049','Structure Any','Furniture','ToyLand',1562.64,183,49,1.1),
('P050','Set Late','Computers','ToyLand',609.56,73,26,2.0);








CREATE TABLE Orders(
Order_ID VARCHAR(10) PRIMARY KEY,
Customer_ID VARCHAR(10) NOT NULL,
Order_Date DATE,
Payment_Method ENUM('Cash','Credit','Installment'),
Employee_ID VARCHAR(10),
Total_Amount DECIMAL(10,2) CHECK (Total_Amount >= 0),
Discount DECIMAL(10,2) CHECK (Discount >= 0),
FOREIGN KEY (Customer_ID) REFERENCES CUSTOMERS (customer_id) on update cascade on delete cascade
);

INSERT INTO Orders 
(Order_ID, Customer_ID, Order_Date, Payment_Method, Employee_ID, Total_Amount, Discount)
VALUES
('O001','C033','2025-02-27','Cash','E002',4438.35,89.54),
('O002','C022','2025-04-17','Installment','E004',4730.16,74.26),
('O003','C038','2024-01-25','Credit','E005',418.76,165.82),
('O004','C012','2024-03-01','Cash','E010',4595.79,3.03),
('O005','C047','2024-03-24','Credit','E005',2457.25,171.97),
('O006','C042','2024-08-26','Installment','E007',1530.41,92.54),
('O007','C042','2024-08-17','Installment','E006',1041.07,55.49),
('O008','C023','2025-05-17','Installment','E001',2037.78,58.83),
('O009','C011','2025-11-08','Cash','E008',2920.83,107.83),
('O010','C035','2023-12-20','Installment','E004',2903.69,23.51),
('O011','C019','2024-07-20','Cash','E004',4502.07,76.33),
('O012','C002','2024-09-01','Cash','E003',3439.17,162.43),
('O013','C001','2025-09-20','Cash','E005',1829.88,197.06),
('O014','C033','2025-06-07','Installment','E005',1912.01,57.02),
('O015','C013','2025-07-30','Credit','E001',3610.99,53.00),
('O016','C028','2024-06-10','Cash','E010',812.68,75.49),
('O017','C015','2024-09-03','Cash','E009',2214.91,112.87),
('O018','C044','2024-06-21','Credit','E005',1978.69,143.22),
('O019','C047','2024-10-30','Cash','E008',4167.55,187.08),
('O020','C025','2025-06-13','Credit','E008',2836.97,15.52),
('O021','C025','2024-09-05','Installment','E009',4319.18,171.00),
('O022','C010','2024-01-20','Cash','E001',757.82,2.46),
('O023','C048','2025-05-03','Cash','E005',1855.43,167.67),
('O024','C010','2025-06-22','Installment','E009',4727.61,129.25),
('O025','C006','2024-01-28','Installment','E001',1524.99,26.54),
('O026','C035','2025-10-29','Credit','E008',3060.28,92.99),
('O027','C016','2024-01-17','Installment','E005',1387.17,11.48),
('O028','C046','2025-09-12','Cash','E003',2571.80,142.87),
('O029','C040','2025-10-14','Cash','E003',4667.03,42.86),
('O030','C017','2025-03-05','Credit','E007',4267.34,143.13),
('O031','C019','2024-03-26','Installment','E005',3718.80,105.04),
('O032','C001','2024-03-24','Cash','E005',4416.28,119.74),
('O033','C035','2024-05-06','Credit','E005',2667.17,73.19),
('O034','C023','2024-11-05','Credit','E001',3848.60,2.90),
('O035','C012','2025-06-24','Credit','E009',56.38,109.11),
('O036','C004','2025-03-30','Credit','E009',928.10,0.14),
('O037','C015','2024-01-19','Credit','E009',3076.78,176.67),
('O038','C011','2024-08-21','Cash','E007',1073.51,92.64),
('O039','C021','2025-03-09','Credit','E009',1810.33,196.69),
('O040','C030','2025-03-31','Cash','E007',63.76,11.57),
('O041','C006','2024-03-08','Installment','E007',2435.19,178.40),
('O042','C014','2025-05-01','Installment','E004',1770.31,171.53),
('O043','C016','2025-11-15','Credit','E006',1832.80,31.72),
('O044','C043','2025-09-04','Cash','E001',1490.02,198.26),
('O045','C023','2025-02-10','Cash','E002',1020.62,33.83),
('O046','C043','2025-07-08','Installment','E001',203.34,145.49),
('O047','C029','2025-07-05','Credit','E009',3038.12,43.93),
('O048','C038','2024-11-14','Credit','E003',2177.79,169.02),
('O049','C030','2024-02-23','Installment','E005',777.90,38.66),
('O050','C021','2025-09-19','Installment','E009',403.76,166.23),
('O051','C043','2025-08-28','Cash','E002',2074.26,13.20),
('O052','C044','2024-12-18','Credit','E010',2078.80,196.06),
('O053','C026','2025-04-11','Credit','E008',4680.77,62.75),
('O054','C009','2025-08-29','Credit','E010',4701.07,189.81),
('O055','C048','2025-05-19','Installment','E008',1644.94,95.76),
('O056','C010','2025-08-22','Credit','E004',3302.04,26.54),
('O057','C011','2024-06-03','Cash','E007',795.96,76.39),
('O058','C001','2024-09-13','Installment','E008',301.06,42.49),
('O059','C012','2024-11-07','Credit','E008',3679.03,189.34),
('O060','C006','2025-11-16','Cash','E009',1378.91,109.71),
('O061','C003','2025-01-05','Cash','E008',921.93,161.90),
('O062','C023','2024-06-20','Installment','E001',2642.61,177.77),
('O063','C049','2025-11-21','Credit','E002',4450.47,2.23),
('O064','C016','2024-11-12','Installment','E009',4902.68,114.34),
('O065','C021','2024-01-18','Cash','E009',4028.19,25.61),
('O066','C010','2025-01-27','Cash','E004',1835.72,100.78),
('O067','C003','2025-03-06','Installment','E008',3552.98,173.01),
('O068','C033','2025-11-14','Installment','E002',2962.59,120.90),
('O069','C025','2024-01-09','Installment','E008',862.27,139.36),
('O070','C043','2025-04-07','Cash','E008',2137.32,97.84),
('O071','C006','2025-06-08','Credit','E004',4609.47,0.36),
('O072','C034','2024-01-07','Credit','E008',4135.47,139.86),
('O073','C045','2024-06-27','Installment','E004',3976.66,155.15),
('O074','C011','2025-01-06','Credit','E003',4865.54,58.63),
('O075','C038','2025-01-06','Installment','E005',2883.57,140.03),
('O076','C027','2024-06-29','Credit','E003',135.58,67.19),
('O077','C007','2024-08-10','Installment','E002',1935.53,182.67),
('O078','C043','2025-01-14','Cash','E010',2457.96,193.33),
('O079','C006','2024-10-21','Installment','E003',821.58,44.64),
('O080','C004','2023-12-31','Cash','E005',601.14,68.43),
('O081','C029','2024-01-16','Installment','E008',812.83,150.31),
('O082','C008','2025-11-29','Credit','E001',4088.84,82.31),
('O083','C013','2025-05-12','Installment','E010',4143.83,30.49),
('O084','C013','2023-12-13','Credit','E009',2192.28,31.28),
('O085','C018','2024-02-28','Credit','E010',3091.92,96.65),
('O086','C040','2025-01-29','Credit','E005',4136.15,166.21),
('O087','C041','2024-01-14','Installment','E006',555.88,137.94),
('O088','C036','2025-11-03','Cash','E004',793.99,0.46),
('O089','C018','2024-01-24','Installment','E002',583.11,187.03),
('O090','C049','2025-11-30','Installment','E006',2667.90,181.82),
('O091','C020','2024-06-30','Cash','E006',3554.40,94.60),
('O092','C014','2025-09-08','Installment','E001',306.27,80.45),
('O093','C029','2025-12-03','Installment','E009',4974.29,72.77),
('O094','C049','2025-05-20','Credit','E010',2233.94,62.06),
('O095','C003','2025-12-06','Credit','E002',823.19,4.31),
('O096','C024','2025-03-14','Credit','E010',3625.53,46.80),
('O097','C017','2024-03-13','Credit','E004',4143.77,133.04),
('O098','C048','2025-02-20','Cash','E001',4792.73,152.86),
('O099','C044','2024-10-12','Installment','E003',4519.64,124.85),
('O100','C002','2024-04-30','Cash','E004',3858.08,155.00);




CREATE TABLE Order_Items(
Order_Item_ID VARCHAR(20)  PRIMARY KEY,
Order_ID VARCHAR(10)  NOT NULL,
Product_ID VARCHAR(10) NOT NULL,
Quantity INT CHECK (Quantity > 0),
Unit_Price DECIMAL(10,2) CHECK (Unit_Price > 0),
Total_Price DECIMAL(10,2) CHECK (Total_Price > 0),
FOREIGN KEY (Order_ID) REFERENCES orders(Order_ID) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (Product_ID) REFERENCES products(Product_ID) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO Order_Items 
(Order_Item_ID, Order_ID, Product_ID, Quantity, Unit_Price, Total_Price)
VALUES
('OI001','O037','P003',4,1497.48,5989.92),
('OI002','O075','P012',1,590.00,590.00),
('OI003','O065','P029',4,173.68,694.72),
('OI004','O033','P022',4,1029.41,4117.64),
('OI005','O082','P012',3,590.00,1770.00),
('OI006','O038','P007',4,1455.12,5820.48),
('OI007','O027','P030',4,323.63,1294.52),
('OI008','O085','P029',3,173.68,521.04),
('OI009','O055','P003',2,1497.48,2994.96),
('OI010','O070','P010',1,1914.36,1914.36),
('OI011','O031','P015',4,1225.17,4900.68),
('OI012','O013','P031',4,216.39,865.56),
('OI013','O060','P042',2,292.66,585.32),
('OI014','O094','P005',1,825.33,825.33),
('OI015','O008','P040',1,1025.38,1025.38),
('OI016','O064','P009',2,1213.54,2427.08),
('OI017','O052','P046',2,1578.94,3157.88),
('OI018','O075','P043',3,1316.66,3949.98),
('OI019','O056','P044',1,66.97,66.97),
('OI020','O035','P036',1,1605.84,1605.84),
('OI021','O064','P036',1,1605.84,1605.84),
('OI022','O022','P026',3,283.73,851.19),
('OI023','O021','P038',2,1312.57,2625.14),
('OI024','O033','P046',1,1578.94,1578.94),
('OI025','O098','P015',2,1225.17,2450.34),
('OI026','O077','P018',3,173.10,519.30),
('OI027','O058','P008',4,366.96,1467.84),
('OI028','O074','P025',1,1057.62,1057.62),
('OI029','O070','P020',3,276.61,829.83),
('OI030','O023','P004',1,254.82,254.82),
('OI031','O097','P015',2,1225.17,2450.34),
('OI032','O048','P023',3,1252.31,3756.93),
('OI033','O007','P050',1,609.56,609.56),
('OI034','O072','P009',2,1213.54,2427.08),
('OI035','O042','P004',1,254.82,254.82),
('OI036','O005','P014',3,623.54,1870.62),
('OI037','O057','P019',4,1108.77,4435.08),
('OI038','O024','P014',2,623.54,1247.08),
('OI039','O088','P017',3,296.02,888.06),
('OI040','O034','P028',3,214.45,643.35),
('OI041','O057','P024',3,536.85,1610.55),
('OI042','O067','P047',3,1401.56,4204.68),
('OI043','O038','P038',1,1312.57,1312.57),
('OI044','O088','P028',3,214.45,643.35),
('OI045','O067','P038',1,1312.57,1312.57),
('OI046','O093','P022',3,1029.41,3088.23),
('OI047','O074','P027',1,270.85,270.85),
('OI048','O047','P031',4,216.39,865.56),
('OI049','O077','P023',1,1252.31,1252.31),
('OI050','O024','P008',3,366.96,1100.88),
('OI051','O036','P019',4,1108.77,4435.08),
('OI052','O032','P013',1,1085.38,1085.38),
('OI053','O046','P013',2,1085.38,2170.76),
('OI054','O048','P045',4,1378.32,5513.28),
('OI055','O002','P023',1,1252.31,1252.31),
('OI056','O052','P047',4,1401.56,5606.24),
('OI057','O012','P010',3,1914.36,5743.08),
('OI058','O033','P028',4,214.45,857.80),
('OI059','O074','P045',1,1378.32,1378.32),
('OI060','O025','P017',2,296.02,592.04),
('OI061','O070','P016',4,517.26,2069.04),
('OI062','O093','P015',4,1225.17,4900.68),
('OI063','O073','P010',2,1914.36,3828.72),
('OI064','O019','P047',3,1401.56,4204.68),
('OI065','O086','P022',2,1029.41,2058.82),
('OI066','O039','P040',4,1025.38,4101.52),
('OI067','O007','P026',1,283.73,283.73),
('OI068','O001','P024',4,536.85,2147.40),
('OI069','O054','P040',4,1025.38,4101.52),
('OI070','O032','P042',4,292.66,1170.64),
('OI071','O018','P013',2,1085.38,2170.76),
('OI072','O054','P032',1,1061.88,1061.88),
('OI073','O021','P006',3,1005.82,3017.46),
('OI074','O012','P040',1,1025.38,1025.38),
('OI075','O058','P027',2,270.85,541.70),
('OI076','O099','P028',4,214.45,857.80),
('OI077','O093','P032',3,1061.88,3185.64),
('OI078','O052','P022',2,1029.41,2058.82),
('OI079','O036','P032',2,1061.88,2123.76),
('OI080','O009','P009',1,1213.54,1213.54),
('OI081','O012','P027',2,270.85,541.70),
('OI082','O022','P042',2,292.66,585.32),
('OI083','O080','P006',2,1005.82,2011.64),
('OI084','O019','P039',3,647.82,1943.46),
('OI085','O001','P014',3,623.54,1870.62),
('OI086','O079','P001',1,653.05,653.05),
('OI087','O086','P035',2,194.72,389.44),
('OI088','O063','P019',4,1108.77,4435.08),
('OI089','O018','P025',4,1057.62,4230.48),
('OI090','O018','P045',1,1378.32,1378.32),
('OI091','O071','P034',1,239.27,239.27),
('OI092','O096','P031',3,216.39,649.17),
('OI093','O072','P021',2,107.69,215.38),
('OI094','O001','P017',2,296.02,592.04),
('OI095','O051','P002',3,407.88,1223.64),
('OI096','O074','P049',3,1562.64,4687.92),
('OI097','O007','P041',1,179.36,179.36),
('OI098','O037','P033',4,1569.12,6276.48),
('OI099','O034','P046',4,1578.94,6315.76),
('OI100','O046','P007',1,1455.12,1455.12),
('OI101','O030','P050',3,609.56,1828.68),
('OI102','O022','P037',4,187.70,750.80),
('OI103','O003','P028',4,214.45,857.80),
('OI104','O088','P005',2,825.33,1650.66),
('OI105','O026','P050',4,609.56,2438.24),
('OI106','O054','P026',1,283.73,283.73),
('OI107','O063','P024',2,536.85,1073.70),
('OI108','O017','P003',1,1497.48,1497.48),
('OI109','O071','P049',1,1562.64,1562.64),
('OI110','O031','P042',3,292.66,877.98),
('OI111','O071','P038',4,1312.57,5250.28),
('OI112','O012','P012',1,590.00,590.00),
('OI113','O016','P017',2,296.02,592.04),
('OI114','O096','P044',2,66.97,133.94),
('OI115','O091','P019',2,1108.77,2217.54),
('OI116','O089','P015',2,1225.17,2450.34),
('OI117','O027','P050',3,609.56,1828.68),
('OI118','O054','P001',2,653.05,1306.10),
('OI119','O093','P006',1,1005.82,1005.82),
('OI120','O091','P047',1,1401.56,1401.56),
('OI121','O090','P031',3,216.39,649.17),
('OI122','O061','P025',4,1057.62,4230.48),
('OI123','O062','P031',3,216.39,649.17),
('OI124','O042','P026',4,283.73,1134.92),
('OI125','O065','P050',2,609.56,1219.12),
('OI126','O062','P049',3,1562.64,4687.92),
('OI127','O069','P012',3,590.00,1770.00),
('OI128','O066','P016',1,517.26,517.26),
('OI129','O029','P034',1,239.27,239.27),
('OI130','O004','P014',1,623.54,623.54),
('OI131','O030','P037',4,187.70,750.80),
('OI132','O004','P012',2,590.00,1180.00),
('OI133','O078','P036',4,1605.84,6423.36),
('OI134','O051','P036',3,1605.84,4817.52),
('OI135','O034','P047',2,1401.56,2803.12),
('OI136','O041','P043',3,1316.66,3949.98),
('OI137','O002','P041',3,179.36,538.08),
('OI138','O059','P020',3,276.61,829.83),
('OI139','O074','P050',3,609.56,1828.68),
('OI140','O007','P006',2,1005.82,2011.64),
('OI141','O025','P010',4,1914.36,7657.44),
('OI142','O033','P049',1,1562.64,1562.64),
('OI143','O033','P039',4,647.82,2591.28),
('OI144','O041','P011',3,1806.26,5418.78),
('OI145','O057','P042',4,292.66,1170.64),
('OI146','O037','P050',2,609.56,1219.12),
('OI147','O007','P032',3,1061.88,3185.64),
('OI148','O083','P009',4,1213.54,4854.16),
('OI149','O062','P040',3,1025.38,3076.14),
('OI150','O079','P032',1,1061.88,1061.88),
('OI151','O067','P012',4,590.00,2360.00),
('OI152','O086','P045',2,1378.32,2756.64),
('OI153','O022','P020',2,276.61,553.22),
('OI154','O063','P013',4,1085.38,4341.52),
('OI155','O052','P018',4,173.10,692.40),
('OI156','O093','P041',1,179.36,179.36),
('OI157','O022','P011',1,1806.26,1806.26),
('OI158','O091','P005',2,825.33,1650.66),
('OI159','O004','P048',4,1389.55,5558.20),
('OI160','O036','P029',1,173.68,173.68),
('OI161','O046','P019',4,1108.77,4435.08),
('OI162','O076','P030',3,323.63,970.89),
('OI163','O077','P050',1,609.56,609.56),
('OI164','O093','P042',1,292.66,292.66),
('OI165','O045','P006',3,1005.82,3017.46),
('OI166','O076','P007',3,1455.12,4365.36),
('OI167','O015','P048',1,1389.55,1389.55),
('OI168','O098','P033',1,1569.12,1569.12),
('OI169','O095','P039',4,647.82,2591.28),
('OI170','O053','P037',4,187.70,750.80),
('OI171','O098','P035',2,194.72,389.44),
('OI172','O019','P016',2,517.26,1034.52),
('OI173','O043','P030',3,323.63,970.89),
('OI174','O085','P048',4,1389.55,5558.20),
('OI175','O036','P047',3,1401.56,4204.68),
('OI176','O070','P003',4,1497.48,5989.92),
('OI177','O021','P037',2,187.70,375.40),
('OI178','O066','P045',3,1378.32,4134.96),
('OI179','O048','P034',3,239.27,717.81),
('OI180','O026','P026',2,283.73,567.46),
('OI181','O029','P045',2,1378.32,2756.64),
('OI182','O029','P025',3,1057.62,3172.86),
('OI183','O034','P050',2,609.56,1219.12),
('OI184','O022','P006',3,1005.82,3017.46),
('OI185','O057','P033',3,1569.12,4707.36),
('OI186','O053','P033',4,1569.12,6276.48),
('OI187','O085','P025',1,1057.62,1057.62),
('OI188','O018','P049',3,1562.64,4687.92),
('OI189','O083','P005',4,825.33,3301.32),
('OI190','O085','P038',3,1312.57,3937.71),
('OI191','O038','P019',2,1108.77,2217.54),
('OI192','O038','P003',4,1497.48,5989.92),
('OI193','O077','P043',2,1316.66,2633.32),
('OI194','O026','P036',4,1605.84,6423.36),
('OI195','O025','P035',2,194.72,389.44),
('OI196','O082','P026',2,283.73,567.46),
('OI197','O045','P016',1,517.26,517.26),
('OI198','O009','P021',2,107.69,215.38),
('OI199','O011','P031',1,216.39,216.39),
('OI200','O017','P048',3,1389.55,4168.65);

-- Level 1 – Basics & Filtering
-- 1. List all customers who have spent more than 10,000.

select * from customers
where total_spent > 10000;

-- 2. Retrieve all products in the “Furniture” category.

select * from products 
where  Category = 'Furniture';

-- 3. Show all orders placed in 2025.

select * from orders
where year(Order_Date) = 2025;

-- 4. Find products with a rating greater than 4

select * from products 
where rating > 4;

-- Level 2 – Aggregation & Grouping
-- 5. Calculate total revenue per product.
select product_id, sum(quantity * unit_price) as total_revenue from order_items 
group by product_id
order by total_revenue desc;

-- 6. Find the number of orders per customer
select c.customer_id,c.name, count(o.order_id) as nooforcustomers from customers as c
join orders as o on c.customer_id = o.customer_id
group by c.customer_id,c.name
order by nooforcustomers desc;

-- 7. Find the highest-spending customer.
select o.customer_id, sum(oi.quantity * oi.unit_price) as high_spend_cust from orders as o
join order_items as oi on o.order_id = oi.order_id
group by o.customer_id
order by high_spend_cust desc
limit 1;

-- 8. Find average quantity sold per product.
select p.product_name, avg(oi.quantity) as avg_qua_prdct 
from products as p
join order_items as oi on p.product_id = oi.product_id
group by p.product_name
order by avg_qua_prdct; 

-- Level 3 – Joins
-- 9. Show order details including customer name, product name, and quantity
select c.name,p.product_name,oi.quantity from customers c
join orders o
	on o.customer_id = c.customer_id
join order_items oi
	on o.order_id = oi.order_id
join products p
	on oi.product_id = p.product_id
order by c.name , p.product_name;

-- 10. Find total revenue per customer using JOIN.
select c.name,c.customer_id, sum(quantity * unit_price) as total_rev_cust 
from customers c
join orders o
	on c.customer_id = o.customer_id 
join order_items oi 
	on o.order_id = oi.order_id 
group by c.name, c.customer_id 
order by total_rev_cust;

-- 11. List products never ordered.
select p.product_id,p.product_name from products p
left join order_items oi
	on p.product_id = oi.product_id
where oi.product_id is null;

-- 12. Find customers who ordered products from "DellStore".
select c.name,c.customer_id from customers c
join orders o 
	on c.customer_id = o.customer_id
join order_items oi
	on o.order_id = oi.order_id
join products p
	on oi.product_id = p.product_id
where p.supplier = "DellStore";

-- Level 4 – WHERE, HAVING & CASE
-- 13. List orders with total amount > 5000.
select o.order_id,c.name ,sum(oi.quantity * oi.unit_price) as total_amount 
from orders as o
join order_items oi 
	on o.order_id = oi.order_id
join customers as c 
	on o.customer_id = c.customer_id
group by o.order_id, c.name
having sum(oi.quantity * oi.unit_price) > 5000
order by total_amount desc;

-- 14. Show total revenue per product category having revenue > 10,000.
select p.product_id,p.product_name, sum(oi.quantity * oi.unit_price) as total_rev_prdct
from products p
join order_items oi 
	on oi.product_id = p.product_id
group by p.product_id, p.product_name
having sum(oi.quantity * oi.unit_price) > 10000
order by total_rev_prdct desc;

-- 15. Categorize customers as 'High Spender' (>10000) or 'Low Spender'.
SELECT 
    c.Customer_ID,
    c.Name,
    CASE 
        WHEN SUM(oi.Quantity * oi.Unit_Price) > 10000 THEN 'High Spender'
        ELSE 'Low Spender'
    END AS SpendingCategory
FROM Customers c
JOIN Orders o 
    ON c.Customer_ID = o.Customer_ID
JOIN Order_Items oi 
    ON o.Order_ID = oi.Order_ID
GROUP BY c.Customer_ID, c.Name;


-- Level 5 – Advanced Joins & Sorting
-- 16. Rank products by total quantity sold.
select p.product_name,p.product_id, 
sum(oi.quantity) as tol_qua_sold,
rank() over (order by sum(oi.quantity) desc) as rankposition
from products p
join order_items oi 
	on p.product_id = oi.product_id
group by p.product_name,p.product_id
order by tol_qua_sold desc;

-- 17. List top 5 customers based on total spending.
select c.name,c.customer_id, sum(oi.quantity * oi.unit_price) as total_spending 
from customers c
join orders o
	on c.customer_id = o.customer_id
join order_items oi
	on o.order_id = oi.order_id
group by c.name, c.customer_id
order by total_spending desc
limit 5;

-- 18.Find the most popular category (highest quantity sold).
select p.category,p.product_name, sum(oi.quantity) as high_qua_sold
from products p
join order_items oi 
	on p.product_id = oi.product_id 
group by  p.category,p.product_name
order by high_qua_sold desc
limit 2;

-- 19.Identify products below reorder level.
select p.product_id, p.product_name,p.quantity_in_stock,reorder_level
from products p
where quantity_in_stock < reorder_level
order by reorder_level asc;

-- 20.Find employees who handled the most orders.
select o.employee_id,max(o.order_id) as mostorders
from orders o
group by o.employee_id
order by mostorders desc;





 















