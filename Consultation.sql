/*=====================================================*/
/* Nom de la base :  BALNEO Iseea                      */
/* Nom de SGBD :     ORACLE                            */
/*=====================================================*/


/*==============================================================*/
/* Question A : logement situ�s au Canet                        */
/* numero nom adresse type                               */  
/* Select loge_no,loge_lib,loge_adr,loge_categ from logement where loge_ville='Le Cannet' ;     */                     
/*==============================================================*/

/*==============================================================*/
/* Question B :une liste de logements, par propri�taire, ayant vue sur la mer                      */
/* cara_lib -> cara_no -> loge_no -> prop_no -> prop_nom   */  
/* num�ro du propri�taire, son nom, le num�ro de logement et son adresse //prop_nom,loge_no,loge_adr */

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
/* Question C : les propri�taires dont les logements ont fait objet de r�servations pour l�ann�e en cours                    */
/*Affichez le num�ro du propri�taire, son nom et adresse, le num�ro de logement et les dates d�but de r�servation*/                    
/*==============================================================*/

/* select proprietaire.prop_no,proprietaire.prop_nom,proprietaire.prop_adr,logement.loge_no,reservation.rese_arrivee 
from proprietaire,logement,reservation
where proprietaire.prop_no=logement.prop_no
and logement.loge_no=reservation.loge_no
and to_char(reservation.rese_arrivee,'YYYY')='2018'
order by reservation.rese_arrivee desc;


/*==============================================================*/
/* Question D : les logements (informations du logement et du propri�taire) et le nombre de r�servations pour les 6 mois � venir.                   */
/*le num�ro du propri�taire, le num�ro de logement, l�adresse du logement et le nombre de r�servations en tout.
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
/* Question E : Compl�tez la requ�te pr�c�dente afin d�afficher �galement la dur�e totale que les logements 
seront occup�s.
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
/* Question F: Affichez le nom du propri�taire et par logement :
Le num�ro du logement, la cat�gorie du logement, le type de travaux � facturer avec la dur�e totale et le co�t. Le tout tri� sur le nom du propri�taire, la cat�gorie de logement et le co�t du travail (descendant).
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
