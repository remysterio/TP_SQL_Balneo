/*=====================================================*/
/* Nom de la base :  BALNEO Iseea                      */
/* Nom de SGBD :     ORACLE                            */
/*=====================================================*/



/*==============================================================*/
/* Table : Caracteristique                                      */
/*    cara_no  N4,  cara_lib  VA50				*/
/*==============================================================*/

Insert into Caracteristique values ( 1, 'Mini-bar' );
Insert into Caracteristique values ( 2, 'Vue sur la mer' );
Insert into Caracteristique values ( 3, 'Vue sur la ville' );
Insert into Caracteristique values ( 4, 'TV-satelitte' );
Insert into Caracteristique values ( 5, 'Wifi' );
Insert into Caracteristique values ( 6, 'Douche' );
Insert into Caracteristique values ( 7, 'Bain' );
Insert into Caracteristique values ( 8, 'Jacuzzi' );
Insert into Caracteristique values ( 9, 'Piscine intérieure' );
Insert into Caracteristique values ( 10, 'Piscine extérieure' );
Insert into Caracteristique values ( 11, 'Piscine collective' );
Insert into Caracteristique values ( 12, 'Piscine privée');
Insert into Caracteristique values ( 13, 'Hammam');
Insert into Caracteristique values ( 14, 'Salle de fitness');
Insert into Caracteristique values ( 15, 'Bar');
Insert into Caracteristique values ( 16, 'Terrasse');

      

/*==============================================================*/
/* Table : Logement                                             */
/*   loge_no N4, prop_no C4, loge_lib VA35, loge_adr VA50	*/
/*   loge_cpos VA6, loge_ville VA50, loge_tel VA10, 		*/
/*   loge_categ VA35, loge_prixhs N6,2, loge_prixbs N6,2  	*/
/*==============================================================*/

-- Appartements (1)

insert into Logement values 
( 1001, 1, 'Studio Le clos verger', '10, chemin de la plage', 
  06400, 'Cannes', null, 'Appartement', 115.00, 43.00 );
insert into Logement values 
( 1002, 2, 'Studio 1pce', '35, rue Breduoille', 
  06400, 'Cannes', null, 'Appartement', 120.00, 45.00 );
insert into Logement values 
( 1003, 4, 'Appt 4pces', '78, rue des droits chemins', 
  06405, 'Cannes La Bocca', null, 'Appartement', 100.00, 35.00 );
insert into Logement values 
( 1004, 7, 'Appt Standing', '56, rue des droits bateaux', 
  06400, 'Cannes', null, 'Appartement', 130.00, 60.00 );
insert into Logement values 
( 1005, 1, 'Appt 2pces', '56, rue de la mer', 
  06400, 'Cannes', null, 'Appartement', 80.00, 40.00 );

-- Villas (2)

insert into Logement values 
( 2001, 3, 'Villa 6pces', '12, rue des Platanes', 
  06420, 'Adrets de l''Esterel', null, 'Villa', 315.00, 215.00 );
insert into Logement values 
( 2002, 5, 'Villa Cannet', '7, Chemin tortueux', 
  06112, 'Le Cannet', null, 'Villa', 145.00, 72.00 );
insert into Logement values 
( 2003, 6, 'Villa Cannet', '7, Chemin tortueux', 
  06112, 'Le Cannet', null, 'Villa', 145.00, 72.00 );
insert into Logement values 
( 2004, 7, 'Villa', '23, allée des champs', 
  06400, 'Cannes', null, 'Villa', 270.00, 120.00 );

-- Chambres d'hôtes (3)

insert into Logement values 
( 3001, 50, 'Val des Roses', '12, rue des Berges', 
  06160, 'Antibes-le-Cap', 0685060629, 'Chambre d''hôte', 315.00, 215.00 );
insert into Logement values 
( 3002, 51, 'Mas Samarcande', '5, rue Vallauris', 
  06220, 'Vallauris', 0493639773, 'Chambre d''hôte', 280.00, 160.00 );


-- Chambres d'hôtels (4)

insert into Logement values 
( 4001, 100, 'Beach Résidence', '11, rue Pierre Senard', 
  06150, 'Cannes', 0492193000, 'Chambre hôtel', 500.00, 150.00 );

insert into Logement values 
( 4002, 101, 'Eden', '133, rue Antibes', 
  06400, 'Cannes', 0493687800, 'Chambre hôtel', 460.00, 130.00 );
  
insert into Logement values 
( 4003, 102, 'Hôtel de l''olivier', '5, rue des Tambourinaires', 
  06400, 'Cannes', 0493395328, 'Chambre hôtel', 480.00, 160.00 );
  

/*==============================================================*/
/* Table : avoir                                                */
/*   loge_no N4,  cara_no n4					*/
/*==============================================================*/

-- Appartements (1)
Insert into avoir values( 1001, 2 );
Insert into avoir values( 1001, 6 );

Insert into avoir values( 1002, 2 );
Insert into avoir values( 1002, 6 );
Insert into avoir values( 1002, 11 );

Insert into avoir values( 1003, 2 );
Insert into avoir values( 1003, 7 );
Insert into avoir values( 1003, 11 );

Insert into avoir values( 1004, 2 );
Insert into avoir values( 1004, 7 );
Insert into avoir values( 1005, 2 );

-- Villas (2)
Insert into avoir values( 2001, 2 );
Insert into avoir values( 2001, 6 );
Insert into avoir values( 2001, 7 );

Insert into avoir values( 2002, 2 );
Insert into avoir values( 2002, 6 );
Insert into avoir values( 2002, 7 );
Insert into avoir values( 2002, 12 );

Insert into avoir values( 2003, 2 );
Insert into avoir values( 2003, 6 );
Insert into avoir values( 2003, 12 );

Insert into avoir values( 2004, 2 );
Insert into avoir values( 2004, 6 );

-- Chambre d'hôtes (3)

Insert into avoir values( 3001, 3 );
Insert into avoir values( 3001, 7 );

Insert into avoir values( 3002, 2 );
Insert into avoir values( 3002, 7 );

-- Hôtels (4)

Insert into avoir values( 4001, 2 );
Insert into avoir values( 4001, 7 );
Insert into avoir values( 4001, 10 );
Insert into avoir values( 4001, 15 );
Insert into avoir values( 4001, 16 );

Insert into avoir values( 4002, 2 );
Insert into avoir values( 4002, 7 );
Insert into avoir values( 4002, 10 );
Insert into avoir values( 4002, 13 );
Insert into avoir values( 4002, 8 );
Insert into avoir values( 4002, 5 );
Insert into avoir values( 4002, 14 );
Insert into avoir values( 4002, 15 );

Insert into avoir values( 4003, 2 );
Insert into avoir values( 4003, 7 );
Insert into avoir values( 4003, 15 );


/*==============================================================*/
/* Table : Proprietaire                                         */
/*   prop_no C4, prop_nom VA35, prop_adr VA50, prop_cpos VA6,	*/
/*   prop_ville VA50, prop_tel VA10 				*/
/*==============================================================*/

-- Particuliers (0)
insert into Proprietaire values 
( 1, 'Duranzo Paul', '2, allée Régussol', 95014, 'Cergy', '0134308254' );
insert into Proprietaire values 
( 2, 'Maestre Jean-Louis', '13, rue Mozart', 94400, 'Vitry-sur-Seine', '0133878934' );
insert into Proprietaire values 
( 3, 'Ederin Marion', '123, rue Saint Dominique', 75007, 'Paris', '0135226585' );                 
insert into Proprietaire values 
( 4, 'Lamare Isabelle', '78, rue des droits chemins', 06405, 'Cannes La Bocca', '0438218762' );                 
insert into Proprietaire values 
( 5, 'Lahaye Didier', '3, chemin tortueux', 06112, 'Le Cannet', '0422564401' );                 
insert into Proprietaire values 
( 6, 'Andrésy Paul', '123, rue des écoles', 94450, 'Villejuif', '0132659587' ); 
insert into Proprietaire values 
( 7, 'Lieder Marie', '56, rue des cerisiers', 75008, 'Paris', '0135456595' ); 

-- Chambre d'hôtes

insert into Proprietaire values 
(  50, 'M. vanderhoeven', '12, rue des Berges', 06160, 'Antibes-le-Cap', 0685060629);
insert into Proprietaire values 
(  51, 'Diot Mireille', '5, rue Vallauris', 06220, 'Vallauris', 0493639773);


-- Hôtels (100)

insert into Proprietaire values 
( 100, 'Beach Résidence', '11, rue Pierre Senard',  06150, 'Cannes', '0492193000' );
insert into Proprietaire values 
( 101, 'Eden', '133 rue Antibes',  06400, 'Cannes', '0493687800' );
insert into Proprietaire values 
( 102, 'Hôtel de l''olivier', '5, rue des Tambourinaires',  06400, 'Cannes', '0493395328' );



/*==============================================================*/
/* Table : Reservation                                          */
/*   rese_no N6, loge_no N4, clie_no N4, rese_date D		*/
/*   rese_arrivee D, rese_duree N3				*/
/*==============================================================*/

-- mai 2018
Insert into reservation values ( 070501, 2002, 18,  '05/09/2006', '01/05/2018', 15 );
/*
Insert into reservation values ( 070502, 3003, 16,  '15/10/2006', '08/05/2018', 10 );          
Insert into reservation values ( 070503, 2005, 13,  '11/11/2006', '01/05/2018', 7 );
*/
Insert into reservation values ( 070504, 3001, 14,  '07/12/2006', '15/05/2018', 12 );
Insert into reservation values ( 070505, 4001, 9,   '12/01/2018', '08/05/2018', 8 );
Insert into reservation values ( 070506, 4002, 10,  '04/01/2018', '08/05/2018', 5 );
-- juin 2018
Insert into reservation values ( 070601, 1002, 1,  '05/02/2018', '10/06/2018', 15 );
Insert into reservation values ( 070602, 2002, 2,  '15/04/2018', '15/06/2018', 10 );          
Insert into reservation values ( 070603, 1004, 3,  '11/03/2018', '20/06/2018', 7 );
Insert into reservation values ( 070604, 1003, 4,  '07/04/2018', '07/06/2018', 12 );
Insert into reservation values ( 070605, 2003, 5,  '12/01/2018', '12/06/2018', 8 );
Insert into reservation values ( 070606, 4002, 6,  '24/02/2018', '15/06/2018', 5 );
-- juillet 2018
Insert into reservation values ( 070701, 4003, 7,  '30/01/2018', '18/07/2018', 8 );
Insert into reservation values ( 070702, 4002, 8,  '15/02/2018', '14/07/2018', 10 );          
Insert into reservation values ( 070703, 4003, 9,  '11/02/2018', '01/01/2019', 3 );
/*
Insert into reservation values ( 070704, 2005, 10, '07/01/2018', '10/07/2018', 10 );
*/
Insert into reservation values ( 070705, 2003, 11, '28/01/2018', '18/07/2018', 8 );
Insert into reservation values ( 070706, 3002, 12, '24/02/2018', '22/07/2018', 7 );
-- août 2018
Insert into reservation values ( 070801, 4003, 13, '30/01/2018', '18/08/2018', 5 );
Insert into reservation values ( 070802, 1002, 14, '15/02/2018', '14/08/2018', 3 );          
Insert into reservation values ( 070803, 2003, 15, '11/02/2018', '06/08/2018', 6 );
/*Insert into reservation values ( 070804, 2005, 16, '07/01/2018', '10/08/2018', 13 );*/
Insert into reservation values ( 070805, 1003, 17, '28/01/2018', '18/08/2018', 10 );
/*Insert into reservation values ( 070806, 3003, 18, '24/02/2018', '22/08/2018', 9 );*/
Insert into reservation values ( 070807, 1005, 1,  '15/03/2019', '10/08/2019', 13 );
Insert into reservation values ( 070808, 2003, 2,  '28/04/2019', '18/08/2019', 10 );
Insert into reservation values ( 070809, 4003, 5,  '12/01/2019', '22/08/2019', 9 );

--  2019
Insert into reservation values ( 070820, 4003, 7,  '30/10/2019', '18/07/2018', 8 );
Insert into reservation values ( 070821, 4003, 7,  '30/01/2019', '02/01/2020', 8 );
/*==================================================================*/
/* Table : Travail                                                  */
/*   trav_no N4, serv_no VA50, fact_no VA50, trav_type N6,2, trav_duree N6,2  ,trav_cout N6,2   */
/*==================================================================*/

Insert into Travail values (1, 1, 1, 'pose d un parpaing', 2, 400, '15/09/2019');
Insert into Travail values (2, 2, 2, 'pose un mur en PVC', 1, 100, '01/10/2019');
Insert into Travail values (3, 5, 1, 'beton', 20, 4000, '15/09/2019');
Insert into Travail values (4, 5, 2, 'electricite', 10, 1000, '01/10/2018');

/*==================================================================*/
/* Table : Facture                                                  */
/*==================================================================*/

Insert into Facture values (1, 1);
Insert into Facture values (2, 2);
Insert into Facture values (3, 3);
Insert into Facture values (4, 4);
/*==================================================================*/
/* Table : Reglement                                                  */
/*==================================================================*/

Insert into Reglement values (1);
Insert into Reglement values (2);
Insert into Reglement values (3);
Insert into Reglement values (4);
/*==================================================================*/
/* Table : Service                                                  */
/*   serv_no N4, serv_lib VA50, serv_type VA50, serv_forfait N6,2   */
/*==================================================================*/

Insert into service values (1,3001, 'Forfait location', 'Location', 50.00 );
Insert into service values (2,3001, 'Nettoyage annuel', 'Nettoyage', 150.00 );
Insert into service values (3,3001, 'Nettoyage après location', 'Nettoyage', 70.00 );
Insert into service values (4,3002, 'Réparation toilettes', 'Plomberie', 65.00 );
Insert into service values (5,3002, 'Peinture', 'Remise en état', 125.00 );
Insert into service values (6,1001, 'Tapisserie', 'Remise en état', 125.00 );


/*==============================================================*/
/* Table : client                                               */
/*   clie_no N4, clie_nom VA35, clie_adr VA35,			*/
/*   clie_cpos C6, clie_ville VA50, clie_tel VA10		*/
/*==============================================================*/

insert into CLIENT values ( 1, 'Pierrot Michel',  	'12, rue Duhesme', 75018, 'Paris', null  );
insert into CLIENT values ( 2, 'Macahaut Boris',  	'34, rue des Accasias', 92000, 'Neuilly', '0132659587');
insert into CLIENT values ( 3, 'Citroen Benoit',  	'87, rue de Belleville', 75020, 'Paris',0135426258  );
insert into CLIENT values ( 4, 'Armand Michel',   	'25, rue Mireille', 75006, 'Paris', 0135426595  );
insert into CLIENT values ( 5, 'Leprince Roland', 	'117, rue Jules Lagaisse', 94400, 'Vitry-sur-Seine', 0132625987  );
insert into CLIENT values ( 6, 'Rinald Martin',   	'84, rue Mozart', 94300, 'Villejuif', 01345124566  );
insert into CLIENT values ( 7, 'Zerty Jacques',   	'1, Bd. de Verdun', 94000, 'Créteil', 0136256654  );
insert into CLIENT values ( 8, 'Boum Isaac',      	'12, allée des champs', 92300, 'Levallois', 0135203562  );
insert into CLIENT values ( 9, 'Lapere Alain',    	'34, rue Fouquet', 92100, 'Clichy', 0192587745  );
insert into CLIENT values ( 10, 'Renault Didier', 	'87, rue du Rocher', 75008, 'Paris', 0135266687  );
insert into CLIENT values ( 11, 'Kuoh Guy',       	'17, rue Rennequin', 75017, 'Paris', 0135226687  );
insert into CLIENT values ( 12, 'Zarrougi Raouf',  	'26, rue D. Papin', 94200, 'Ivry', 0136256988  );
insert into CLIENT values ( 13, 'Ambroise Gerald', 	'2, allée d''Italie', 94060, 'Massy', 0136558710  );
insert into CLIENT values ( 14, 'Durand Ronny',   	'12, allée des champs', 94300, 'Villejuif', 0135265600 );
insert into CLIENT values ( 15, 'Landon Vincent', 	'34, Av. du Maine', 75014, 'Paris', 0135269958 );
insert into CLIENT values ( 16, 'Bamwe Jaques',   	'87, Bd. Arago', 75013, 'Paris', 0135263511  );
insert into CLIENT values ( 17, 'Gartner Max',		'75, Av. des Noriets', 75004, 'Paris', 0135626315 );
insert into CLIENT values ( 18, 'Sarlabout Georges', 	'48, rue Stalingrad', 75003, 'Paris', 0135213691 );

commit;
