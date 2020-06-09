/*=====================================================*/
/* Nom de la base :  BALNEO Iseea                      */
/* Nom de SGBD :  ORACLE                               */
/*=====================================================*/






/*==============================================================*/
/* Table : Caracteristique                                      */
/*==============================================================*/

create table Caracteristique (
   cara_no              NUMBER(4) not null                      ,
   cara_lib             varchar(50) not null            	,
   constraint PK_Caracteristique primary key(cara_no)         
);

/*==============================================================*/
/* Table : Reservation                                          */
/*==============================================================*/

create table reservation (
   rese_no              NUMBER(6) not null                         ,
   loge_no              NUMBER(4) not null                         ,
   clie_no              NUMBER(4) not null                         ,
   rese_date            DATE not null                              ,
   rese_arrivee         DATE not null                              ,
   rese_duree           NUMBER(3) not null  			 ,
   constraint PK_Reservation primary key(rese_no)	 ,
   constraint FK_Reservation_Logement foreign key(loge_no) references Logement(loge_no) , 
   constraint FK_Reservation_client foreign key(clie_no) references client(clie_no)                 
);

/*==============================================================*/
/* Table : Reglement                                      */
/*==============================================================*/

create table Reglement (
   regl_no              NUMBER(4) not null  ,
   constraint PK_Reglement primary key(regl_no)		                 
);

/*==============================================================*/
/* Table : Travail                                      */
/*==============================================================*/

create table Travail (
   trav_no              NUMBER(4) not null    ,
   serv_no              NUMBER(4) not null                         ,
   fact_no              NUMBER(4) not null                    ,
   trav_type			varchar(50) not null				,
   trav_duree			NUMBER(3) not null					,
   trav_cout			NUMBER(10) not null					,
   trav_date			DATE not null             ,
   constraint PK_Travail primary key(trav_no)		,
   constraint FK_Travail_Service foreign key(serv_no) references  Service(serv_no) ,      
   constraint FK_Travail_Facture foreign key(fact_no) references  Facture(fact_no)                     
);

/*==============================================================*/
/* Table : Facture                                      */
/*==============================================================*/

create table Facture (
   fact_no              NUMBER(4) not null                    ,
   regl_no              NUMBER(4) not null                      ,
   constraint PK_Facture primary key(fact_no)		,
   constraint FK_Facture_Reglement foreign key(regl_no) references Reglement(regl_no) 
);



/*==============================================================*/
/* Table : Logement                                             */
/*==============================================================*/

create table Logement (
   loge_no              NUMBER(4) not null                   ,
   prop_no              char(4) not null                    ,
   loge_lib             varchar(35) not null		 	,
   loge_adr             varchar(50) not null                   ,
   loge_cpos            varchar(6) not null                    ,
   loge_ville           varchar(50) not null                    ,
   loge_tel             varchar(10)		 	,
   loge_categ           varchar(35) not null		 	,
   loge_prixhs          NUMBER(6,2) not null                   ,
   loge_prixbs          NUMBER(6,2) not null                   ,
   constraint PK_Logement primary key(loge_no)		,
   constraint FK_Logement_Proprietaire foreign key(prop_no) references Proprietaire(prop_no) 
);


/*==============================================================*/
/* Table : Proprietaire                                         */
/*==============================================================*/

create table Proprietaire (
   prop_no               char(4) not null                          ,
   prop_nom              varchar(35) not null                      ,
   prop_adr              varchar(50) not null 			  ,
   prop_cpos             varchar(6) not null 			  ,
   prop_ville            varchar(50) not null 			  ,
   prop_tel              varchar(10) not null                       ,
   constraint PK_Proprietaire primary key(prop_no)
);




/*==============================================================*/
/* Table : Service                                              */
/*==============================================================*/

create table Service (
   serv_no              NUMBER(4) not null                         ,
   loge_no              NUMBER(4) not null                         ,
   serv_lib             varchar(50) not null 			 ,
   serv_type            varchar(50) not null 			 ,
   serv_forfait         NUMBER(6,2) not null   			 ,
   constraint PK_Service primary key(serv_no)		 ,
   constraint FK_Service_Logement foreign key(loge_no) references Logement(loge_no)                 
);


/*==============================================================*/
/* Table : avoir                                                */
/*==============================================================*/

create table avoir (
   loge_no              NUMBER(4) not null                         ,
   cara_no              NUMBER(4) not null    			 ,
  constraint PK_avoir primary key(loge_no, cara_no)				,
  constraint FK_avoir_Logement foreign key(loge_no) references Logement(loge_no) , 
  constraint FK_avoir_Caracteristique foreign key(cara_no) references Caracteristique(cara_no)              
);


/*==============================================================*/
/* Table : client                                               */
/*==============================================================*/

create table client (
   clie_no              NUMBER(4) not null                         ,
   clie_nom              varchar(35) not null                      ,
   clie_adr              varchar(35) not null                      ,
   clie_cpos             char(6) not null                          ,
   clie_ville            varchar(50) not null                      ,
   clie_tel              varchar(10)  			 ,
   constraint PK_client primary key(clie_no)		  
);

