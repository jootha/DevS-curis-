-- Doctors
insert into doctor(id, firstname, lastname, address, zipcode, arrival) values (1, 'Yolande', 'Moreau', '3 rue Deschiens', '59000',TO_DATE('03/02/1974', 'DD/MM/YYYY'));
insert into doctor(id, firstname, lastname, address, zipcode, arrival) values (2, 'Heloise', 'Letissier', '5 rue Bowie', '95360',TO_DATE('16/10/1975', 'DD/MM/YYYY'));
insert into doctor(id, firstname, lastname, address, zipcode, arrival) values (3, 'Jenny', 'Letellier', '105 rue a l envers', '93000',TO_DATE('11/12/1979', 'DD/MM/YYYY'));
insert into doctor(id, firstname, lastname, address, zipcode, arrival) values (4, 'Chiara', 'Brichot', '10 rue de maubeuge', '59600',TO_DATE('20/04/1990', 'DD/MM/YYYY'));
insert into doctor(id, firstname, lastname, address, zipcode, arrival) values (5, 'Pablo', 'Picasso', '3 avenue d Antibes', '02000',TO_DATE('23/01/1986', 'DD/MM/YYYY'));
insert into doctor(id, firstname, lastname, address, zipcode, arrival) values (6, 'Frank', 'Fontaine', '363 bis bvd rapture', '75000',TO_DATE('03/11/1968', 'DD/MM/YYYY'));


-- Animal
insert into Animal(name, race, birth, death) values ('Boby', 'chien', TO_DATE('01/02/2015', 'DD/MM/YYYY'), TO_DATE('11/09/2020', 'DD/MM/YYYY'));
insert into Animal(name, race, birth) values ('Bill', 'chien', TO_DATE('01/05/2018', 'DD/MM/YYYY'));
insert into Animal(name, race, birth) values ('Darius', 'chien', TO_DATE('01/05/2016', 'DD/MM/YYYY'));
insert into Animal(name, race, birth, parent_1_id, parent_2_id) values ('Rex', 'chien', TO_DATE('01/11/2020', 'DD/MM/YYYY'), 1, 2);
insert into Animal(name, race, birth, parent_1_id) values ('Splat', 'chien', TO_DATE('01/02/2018', 'DD/MM/YYYY'), 4);
insert into Animal(name, race, birth) values ('Bring', 'chien', TO_DATE('21/11/2019', 'DD/MM/YYYY'));


-- RDV
insert into rdv(id, date, doctor_id, animal_id) values (1, '2020-05-03T14:00', 1, 1);
insert into rdv(id, date, doctor_id, animal_id) values (2, '2020-07-05T07:00', 2, 1);
insert into rdv(id, date, doctor_id, animal_id) values (3, '2020-05-09T21:00', 3, 2);
insert into rdv(id, date, doctor_id, animal_id) values (4, '2020-06-06T18:00', 4, 5);
insert into rdv(id, date, doctor_id, animal_id) values (5, '2020-06-03T17:00', 5, 4);
insert into rdv(id, date, doctor_id, animal_id) values (6, '2020-07-07T15:00', 1, 1);
insert into rdv(id, date, doctor_id, animal_id) values (7, '2020-08-22T12:00', 2, 3);
insert into rdv(id, date, doctor_id, animal_id) values (8, '2020-05-14T09:00', 3, 5);
insert into rdv(id, date, doctor_id, animal_id) values (9, '2020-04-09T13:00', 4, 3);
insert into rdv(id, date, doctor_id, animal_id) values (10, '2020-04-07T14:00', 5, 2);

-- authentification + role admin + user
insert into ROLE values (1, '"ROLE_ADMIN');
insert into ROLE values (2, 'ROLE_USER');

insert into USER(num, username, password) values (1, 'Chiara', 'justPixel');
insert into USER(num, username, password) values (2, 'Adrien', 'justPixel');
insert into USER(num, username, password) values (3, 'Jeff', 'justPixel');

insert into USER_ROLES values (1, 1),
(2, 2),
(1, 2),
(3, 1);
