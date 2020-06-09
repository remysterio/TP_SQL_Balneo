/*=====================================================*/
/* Nom de la base :  BALNEO Iseea                      */
/* Nom de SGBD :     ORACLE                            */
/*=====================================================*/


/*==============================================================*/
/* Question A : logement situés au Canet                        */
/* numero nom adresse type                               */  
/* Select loge_no,loge_lib,loge_adr,loge_categ from logement where loge_ville='Le Cannet' ;     */                     
/*==============================================================*/

/*==============================================================*/
/* Question B :une liste de logements, par propriétaire, ayant vue sur la mer                      */
/* cara_lib -> cara_no -> loge_no -> prop_no -> prop_nom   */  
/* numéro du propriétaire, son nom, le numéro de logement et son adresse //prop_nom,loge_no,loge_adr */

/*Select proprietaire.prop_no,proprietaire.prop_nom,logement.loge_no,logement.loge_adr 
from proprietaire,logement,caracteristique,avoir
where proprietaire.prop_no=logement.prop_no 
and logement.loge_no=avoir.loge_no 
and avoir.cara_no=caracteristique.cara_no
and caracteristique.cara_lib='Vue sur la mer'
order by proprietaire.prop_no desc,logement.loge_no desc;                 
/*==============================================================*/
/*select loge_lib, prop_nom from proprietaire,logement where proprietaire.prop_no = logement.prop_no and loge_ville='Cannes';/*
/*==============================================================*/
/*			TEST							*/
	/*	 Select prop_nom from (Select prop_no from Proprietaire where prop_no=1) ;			
/*==============================================================*/

/*==============================================================*/
/* Question C : les propriétaires dont les logements ont fait objet de réservations pour l’année en cours                    */
/*Affichez le numéro du propriétaire, son nom et adresse, le numéro de logement et les dates début de réservation*/                    
/*==============================================================*/

/* select proprietaire.prop_no,proprietaire.prop_nom,proprietaire.prop_adr,logement.loge_no,reservation.rese_arrivee 
from proprietaire,logement,reservation
where proprietaire.prop_no=logement.prop_no
and logement.loge_no=reservation.loge_no
and to_char(reservation.rese_arrivee,'YYYY')='2018'
order by reservation.rese_arrivee desc;


/*==============================================================*/
/* Question D : les logements (informations du logement et du propriétaire) et le nombre de réservations pour les 6 mois à venir.                   */
/*le numéro du propriétaire, le numéro de logement, l’adresse du logement et le nombre de réservations en tout.
/*==============================================================*/
/*
select proprietaire.prop_no,logement.loge_no,logement.loge_adr, count(logement.loge_no)
from proprietaire,logement,reservation
where proprietaire.prop_no=logement.prop_no
and logement.loge_no=reservation.loge_no
and reservation.rese_arrivee between sysdate and sysdate+180
group by proprietaire.prop_no,logement.loge_no,logement.loge_adr;
*/

/*==============================================================*/
/* Question E : Complétez la requête précédente afin d’afficher également la durée totale que les logements 
seront occupés.
/*==============================================================*/
/*
select proprietaire.prop_no,logement.loge_no,logement.loge_adr, count(logement.loge_no), sum(reservation.rese_duree)
from proprietaire,logement,reservation
where proprietaire.prop_no=logement.prop_no
and logement.loge_no=reservation.loge_no
and reservation.rese_arrivee between sysdate and sysdate+180
group by proprietaire.prop_no,logement.loge_no,logement.loge_adr;
*/
/*==============================================================*/
/* Question F: Affichez le nom du propriétaire et par logement :
Le numéro du logement, la catégorie du logement, le type de travaux à facturer avec la durée totale et le coût. Le tout trié sur le nom du propriétaire, la catégorie de logement et le coût du travail (descendant).
/*==============================================================*/
/*
select Proprietaire.prop_nom, Logement.loge_no, Logement.loge_categ, Travail.trav_type, Travail.trav_duree, Travail.trav_cout
from Proprietaire, Logement, Service, Travail
where Proprietaire.prop_no=Logement.prop_no
and Logement.loge_no = Service.loge_no
and Service.serv_no=Travail.serv_no
and travail.trav_date between sysdate-30 and sysdate
order by Proprietaire.prop_nom desc;

/*==============================================================*/
/*Vue et autorisation		*/
/*==============================================================*/
/*
/*create view LOGE_TRAV as select logement.loge_no, travail.trav_type,travail.trav_cout,travail.trav_duree from logement,travail;*/
/*GRANT select on LOGE_TRAV to mbensalem;  
/* Faire select * from rsenay.loge_trav */
