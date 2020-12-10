/*
1) 	Créer la table "sales" (commerciaux) et ajouter 5 commerciaux

2) 	Créer la table "clients" et ajouter 5 clients dans la table
	Chaque client est associé à un commercial différent 
    
3) 	Sélectionnez tous les clients (nom du commercial associé inclus)
*/

use usal37_agence;

CREATE TABLE sales
(
	sale_code VARCHAR(5) NOT NULL,
	sale_name VARCHAR(64) NOT NULL,
    sale_password VARCHAR(60) NOT NULL,
    PRIMARY KEY (sale_code)
);

CREATE TABLE clients
(
	client_id INT AUTO_INCREMENT,
    client_lastname VARCHAR(32) NOT NULL,
    client_firstname VARCHAR(32) NOT NULL,
    client_email VARCHAR(128) NOT NULL,
    client_phone VARCHAR(16) NOT NULL,
    client_added DATE NOT NULL,
    client_password VARCHAR(60) NOT NULL,
    sale_code VARCHAR(5) NOT NULL,
    PRIMARY KEY (client_id)
);

INSERT INTO clients
(client_lastname, client_firstname, client_email, client_phone, client_added, client_password, sale_code)
VALUES
('Demacia', 	'Garen', 		'garen.demacia@live.fr', 		'03 89 68 78 12', 		'2020-12-04', 		'lebronjames', 'PA'),
('Vice', 		'Lucian', 		'lucian.vice@live.fr', 			'03 89 67 12 57', 		'2020-07-14', 		'cyberpunk2077', 'RG'),
('Zebi', 		'Spartacus', 	'spartacus.zebi@live.fr', 		'06 12 24 57 78',		'2020-08-07', 		'bordel23', 'BL'),
('Ghetto', 		'Mattias', 		'mattias.ghetto@live.fr', 		'06 48 57 16 54', 		'2020-01-16', 		'inthebrain98', 'WI'),
('Dupont', 		'Jean', 		'jean.dupont@live.fr', 			'06 23 45 87 19', 		'2020-08-17', 		'ouiouioui45', 'LJ')
;

INSERT INTO sales
(sale_code, sale_name, sale_password)
VALUES
('PA', 		'Panzer', 		'ahyes123'),
('RG', 		'Riot Games', 	'riot123'),
('BL', 		'Blizzard', 	'bizarreblizzard'),
('WI', 		'Wizard', 		'wizard123'),
('LJ', 		'Lebron James', 'lebroooon')
;

ALTER TABLE clients
	ADD	CONSTRAINT fk_clients
    FOREIGN KEY (sale_code) REFERENCES sales(sale_code)
;

select * from clients join sales on clients.sale_code = sales.sale_code;
