 create database viagens;
        use viagens;
        drop database viagens;
        
        create table usuario (
        nome varchar(255),
        email varchar(255) primary key,
        senha varchar(255));
        select * from usuario;
        
        create table viagens(
        id INT NOT NULL AUTO_INCREMENT,
        tipo VARCHAR(45) NOT NULL,
        nome VARCHAR(255) NOT NULL,
        descricao varchar(255) NOT NULL,
        imagem VARCHAR(80) NOT NULL,
        preco DECIMAL (6,2) NOT NULL,
        PRIMARY KEY (id));
		select * from viagens;
	
	
        INSERT INTO viagens (tipo, nome, descricao, imagem, preco) VALUES ('viagem', 'Brasil','Maior nação da América do Sul, conhecida por sua diversidade cultural, vasta Amazônia e praias deslumbrantes. Famosa pelo futebol e festivais vibrantes.', 'brasil.jpg', '580.99');
        INSERT INTO viagens (tipo, nome, descricao, imagem, preco) VALUES ('viagem', 'China','Gigante asiático, líder mundial em tecnologia e produção. Possui uma rica história, a Grande Muralha e influência global crescente na economia e política.', 'china.jpg', '785.50');
        INSERT INTO viagens (tipo, nome, descricao, imagem, preco) VALUES ('viagem', 'Espanha','Nação ibérica famosa por suas animadas festas, flamenco e arquitetura única. Oferece uma rica cultura gastronômica, praias ensolaradas e cidades históricas encantadoras.', 'espanha.jpg', '950.00');
        INSERT INTO viagens (tipo, nome, descricao, imagem, preco) VALUES ('viagem', 'México','Colorido país latino-americano, berço das antigas civilizações asteca e maia. Celebrado por sua culinária picante, música mariachi e vibrante cultura folclórica.', 'mexico.jpg', '670.00');
        INSERT INTO viagens (tipo, nome, descricao, imagem, preco) VALUES ('viagem', 'Irlanda',' Ilha verde no noroeste da Europa, conhecida por paisagens exuberantes, lendas celtas e pubs acolhedores. Sede de escritores renomados, como James Joyce, e folclore encantador.', 'irlanda.jpg', '682.00');