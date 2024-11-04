CREATE  DATABASE PROJET1

--CREATION TABLE CLIENT
create table CLIENTS (
CustomersId int not null,
Prénom varchar (100) not null,
Nom_de_famille varchar (70) not null,
E_mail varchar (150) not null,
Téléphone int not null,
Adresse varchar (100) not null,
Ville varchar (70) not null,
État varchar (70) not null,
Code_postal  int not null,
constraint pkCUSTOMERSID primary key (CustomersId)
);


--CREATION TABLE PRODUITS
create table PRODUITS (
ProductID int not null,
Nom_du_produit varchar (70) not null,
Descriptions varchar (255) not null,
Prix money not null ,
Quantité_en_stock int not null,
CategoryID int not null,
constraint pkProductID primary Key (ProductID),
constraint fkCategoryID foreign Key (CategoryID) references CATEGORIES (CategoryID),
);




--CREATION TABLE CATEGORIES

create table CATEGORIES (
CategoryID int not null,
Nom_de_la_catégorie varchar (100) not null,
Descriptions varchar (255) not null,
constraint pkCategoryID primary key (CategoryID),
);


--CREATION TABLE ORDERS

create table ORDERS (
OrderID int not null,
CustomersId int not null,
Date_de_commande date not null,
Montant_total money not null,
constraint pkOrderID primary key (OrderID),
constraint fkCustomersId foreign key (CustomersId) references CLIENTS (CustomersId),
);


--CREATION TABLE DETAILS DE LA COMMANDE

create table DETAILS_DE_LA_COMMANDE (
Order_Detail_ID int not null ,
OrderID int not null,
ProductID int not null,
Quantité int not null,
Prix_unitaire money not null,
constraint pkOrderDetailID primary key (Order_Detail_ID),
constraint fkOrderID foreign key (OrderID) references ORDERS (OrderID),
constraint fkProductID foreign key (ProductID) references PRODUITS (ProductID),
);