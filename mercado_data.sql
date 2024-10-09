create database Mercado;
use Mercado;

drop database Mercado;

create table Usuarios (
	UsuarioID  int auto_increment primary key not null,
    Nome varchar(100) NOT NULL,
    Email varchar(100) NOT NULL UNIQUE,
    Senha varchar(255) NOT NULL
 );
CREATE TABLE Produtos (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    image text not null
    );
    
-- alter table Produtos
-- modify column preco decimal (10,2) not null;
    
    -- Inserir clientes
    
ALTER TABLE  Usuarios ADD COLUMN perfil ENUM ('admin', 'usuario') DEFAULT ('usuario');
INSERT INTO Usuarios (Nome, Email, Senha, perfil)
VALUES ('arthur', 'arthur@example.com', 1234, 'admin');
SELECT UsuarioID, nome, email, senha, perfil FROM Usuarios WHERE email = 'arthur@example.com';
SELECT * FROM Usuarios;
SELECT * FROM Produtos;