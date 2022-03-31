CREATE SCHEMA `YPF` DEFAULT CHARACTER SET utf8mb4;

USE YPF;
-- Table: Proveedor
CREATE TABLE Proveedor(
ID_Proveedor INT NOT NULL AUTO_INCREMENT,
Nombre_Proveedor varchar(250) NOT NULL, 
Apellido_Proveedor varchar(250) NOT NULL,
DNI_Proveedor INT NOT NULL,
Empresa varchar(250) NULL,
CONSTRAINT PK_Proveedor PRIMARY KEY (ID_Proveedor)
);

-- Table: Cliente
CREATE TABLE Cliente ( 
ID_Cliente INT NOT NULL AUTO_INCREMENT,
Nombre_Cliente varchar(200) NOT NULL,
Apellido_cliente varchar(200) NOT NULL,
DNI_Cliente INT NOT NULL,
Preferencial_Cliente varchar(2) NULL,
CONSTRAINT PK_Cliente PRIMARY KEY (ID_Cliente)
);

-- Table: Vendedor
CREATE TABLE Vendedor ( 
ID_Vendedor INT NOT NULL AUTO_INCREMENT,
Nombre_Vendedor varchar(200) NOT NULL,
Apellido_Vendedor varchar(200) NOT NULL,
DNI_Vendedor INT NOT NULL,
Puesto_Vendedor varchar (150) NOT NULL,
CONSTRAINT PK_Vendedor PRIMARY KEY (ID_Vendedor)
);

-- Table: Producto
CREATE TABLE Producto (
Id_producto INT NOT NULL AUTO_INCREMENT,
ID_Proveedor INT NOT NULL,
Nombre_producto varchar(250) NOT NULL,
Marca_producto varchar(250) NOT NULL,
Codigo_producto varchar (150) NOT NULL,
CONSTRAINT PK_PRODUCTO PRIMARY KEY (Id_producto),
FOREIGN KEY (ID_Proveedor) REFERENCES Proveedor (ID_Proveedor)
);

-- Table: Ventas
CREATE TABLE Ventas (
ID_Producto INT NOT NULL,
ID_Cliente INT NOT NULL,
ID_Vendedor INT NOT NULL,
FECHA DATETIME NOT NULL,
PRECIO NUMERIC (5,5) NOT NULL,
CANTIDAD INT NOT NULL,
TOTAL NUMERIC (5,5),
FOREIGN KEY (ID_Producto) REFERENCES Producto (ID_Producto),
FOREIGN KEY (ID_Cliente) REFERENCES Cliente (ID_Cliente),
FOREIGN KEY (ID_Vendedor) REFERENCES Vendedor (ID_Vendedor)
);
