Create database ProyectoWinform

use ProyectoWinform

CREATE TABLE Categorias (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Descripcion NVARCHAR(255) NOT NULL
);

CREATE TABLE Marcas (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Descripcion NVARCHAR(255) NOT NULL
);

CREATE TABLE Articulos (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Codigo NVARCHAR(50) NOT NULL,
    Precio DECIMAL(18, 2) NOT NULL,
    Nombre NVARCHAR(255) NOT NULL,
    Descripcion NVARCHAR(MAX),
    IdMarca INT NOT NULL,
    IdCategoria INT NOT NULL,
    FOREIGN KEY (IdMarca) REFERENCES Marcas(Id),
    FOREIGN KEY (IdCategoria) REFERENCES Categorias(Id)
);

CREATE TABLE Imagenes (
    Id INT PRIMARY KEY IDENTITY(1,1),
    IdArticulo INT NOT NULL,
    ImagenUrl NVARCHAR(MAX) NOT NULL,
    FOREIGN KEY (IdArticulo) REFERENCES Articulos(ID)
);



INSERT INTO Categorias (Descripcion) VALUES ('Electrónica');
INSERT INTO Categorias (Descripcion) VALUES ('Ropa');
INSERT INTO Categorias (Descripcion) VALUES ('Hogar');
INSERT INTO Categorias (Descripcion) VALUES ('Juguetes');

INSERT INTO Marcas (Descripcion) VALUES ('Samsung');
INSERT INTO Marcas (Descripcion) VALUES ('Nike');
INSERT INTO Marcas (Descripcion) VALUES ('Sony');
INSERT INTO Marcas (Descripcion) VALUES ('Mattel');

INSERT INTO Articulos (Codigo, Precio, Nombre, Descripcion, IdMarca, IdCategoria) 
VALUES 
('A001', 299.99, 'Televisor 4K', 'Televisor Ultra HD de 55 pulgadas', 1, 1),
('A002', 59.99, 'Camiseta Nike', 'Camiseta deportiva de Nike', 2, 2),
('A003', 89.99, 'Auriculares Bluetooth', 'Auriculares inalámbricos con cancelación de ruido', 3, 1),
('A004', 19.99, 'Muñeca Barbie', 'Muñeca Barbie con accesorios', 4, 4);



