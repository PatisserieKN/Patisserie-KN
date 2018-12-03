**ETAT du document : DRAFT**

## Ce document regroupe l'ensemble des features du site
Il permettra d'établir la liste des stories sur pivotaltracker ainsi que la liste des tests nécessaires.<br />

### Priorisation des features
![P5](https://i.goopics.net/LOGOd.jpg) Chaque feature a une note définissant sa priorité dans le projet.<br />
![P4](https://i.goopics.net/AmYmw.jpg) Les notes vont de 1 (moins prioritaire) à 5 (plus prioritaire).<br />
![P3](https://i.goopics.net/7YyYN.jpg) L'ensemble des features de priorité 5 forme le MVP du produit.<br />
![P2](https://i.goopics.net/vvZvZ.jpg) L'ensemble des features de priorités 4 et 5 représente l'objectif à atteindre pour les demo days.<br />
![P1](https://i.goopics.net/R8X8w.jpg) La priorité d'une feature est visible par son nombre d'étoile<br />


### Sources d'inspiration 
[Eric Kayser](https://www.maison-kayser.com/)


### Listes des features
#### A - UX/UI client
**Habillages du site :**<br />
![P5](https://i.goopics.net/LOGOd.jpg) :<br />
Le site a un habillage de base<br />

![P3](https://i.goopics.net/7YyYN.jpg) :<br />
Le site a un habillage spécial fêtes de fin d'années<br />

![P2](https://i.goopics.net/vvZvZ.jpg) :<br />
Le site a un habillage spécial Pacques<br />
Le site a un habillage spécial Toussaint<br />

**Header :**<br />
![P5](https://i.goopics.net/LOGOd.jpg) :<br />
un client doit pouvoir revenir à la page d'accueil en cliquant sur le logo<br />
un client doit pouvoir accéder à la patisserie<br />
un client doit pouvoir se connecter à son compte<br />
un client doit pouvoir accéder à son panier<br />

![P4](https://i.goopics.net/AmYmw.jpg) :<br />
un client doit pouvoir accéder au traiteur<br />
un client doit pouvoir accéder à la charcuterie<br />
un client doit pouvoir demander un devis<br />


**Footer :**<br />
![P5](https://i.goopics.net/LOGOd.jpg) :<br />
CGV<br />
Mentions légales<br />
Politiques de données personnelles<br />
Les pages existent, mais sont redirigés vers [**Page en construction**](https://i.goopics.net/w4vQ3.jpg)<br />

![P3](https://i.goopics.net/7YyYN.jpg) :<br />
Création des pages suscitées.<br />

**Page d'accueil :**<br />
![P5](https://i.goopics.net/LOGOd.jpg) :<br />
La page d'accueil est redirigé vers la boutique patisserie<br />

![P3](https://i.goopics.net/7YyYN.jpg) :<br />
Création d'une vraie page d'accueil<br />
Ajout d'une section des produits populaires / produits du moment<br />

![P2](https://i.goopics.net/vvZvZ.jpg) :<br />
Ajout d'un carroussel prenant l'ensemble de la page (avant la section des produits populaires) et présentant :<br />
\- Les différentes boutiques (1 slide / boutique ?)<br />
\- La prise de devis pour les événements (mariage / baptême ?)<br />
\- Les promos du moment ? (Black Friday ?)<br />
\- Les événements du moment ? (Noël / Pacques)<br />

**Boutique :**<br />
![P5](https://i.goopics.net/LOGOd.jpg) :<br />
Visuellement, les boutiques patisserie, traiteur et charcuterie auront la même architecture.<br />
Une boutique est composée de produits. Chaque produit est présenté dans une card.<br />
Une card est composée d'une photo, d'un nom, et d'un prix.<br />
Cliquer sur la card redirige vers la page produit.<br />

![P3](https://i.goopics.net/7YyYN.jpg) :<br />
La page produit s'ouvre dans une modal.<br />

**Produit / Page produit :**<br />
![P5](https://i.goopics.net/LOGOd.jpg) :<br />
Un produit est composé :<br />
\- Un titre<br />
\- Une photo<br />
\- Une description<br />
\- Un prix<br />
Un client peut ajouter X produits au panier.<br />

![P3](https://i.goopics.net/7YyYN.jpg) :<br />
Un client peut spécifier un nombre de part au produit<br />

![P2](https://i.goopics.net/vvZvZ.jpg) :<br />
Un client peut choisir un thème / une décoration pour le produit.<br />
Les thèmes sont classés par catégories.<br />

**Process de commande :**<br />
![P5](https://i.goopics.net/LOGOd.jpg) :<br />
Un visiteur peut ajouter des produits dans un panier sans être connecté.<br />
Le panier peut contenir plusieurs produits identiques.<br />
Si un visiteur souhaite passer une commande, il doit se connecter au site.<br />
Il peut se connecter via facebook ou s'enregistrer (utilisation de devise et omniauth).<br />
Au moment de passer la commande, le panier est transféré dans une instance order (La différence entre panier et order sera détaillée dans la section DB)<br />
Le paiement se fait via Stripe.<br />

![P4](https://i.goopics.net/AmYmw.jpg) :<br />
Une fois le paiement effectué, le client recoit un email de confirmation.

**Demande de devis :**<br />
![P5](https://i.goopics.net/LOGOd.jpg) :<br />
Le client peut faire une demande de devis.<br />
Il doit fournir les informations suivantes :<br />
\- Nom<br />
\- Email<br />
\- Demande<br />
<br />
Doit-on enregistrer le user lors d'une demande de devis ? <br />
Si oui, il faut demander un mdp => Pas certains de que ce soit top niveau UX<br />
Ou alors on demande au client d'etre authentifié pour faire une demande de devis<br />

Une fois la demande de devis envoyée, il reçoit un mail de confirmation pour sa demande.<br />
Puis un autre mail avec le devis quand celui ci a été établi.<br />

![P4](https://i.goopics.net/AmYmw.jpg) :<br />
La demande de devis s'ouvre dans une modal<br />
Le client peut retrouver ses demande de devis sur le site<br />


#### B - UX/UI administrateur
**Header :**<br />
![P5](https://i.goopics.net/LOGOd.jpg) :<br />
un admin doit pouvoir revenir à sa page d'accueil en cliquant sur le logo<br />
un admin doit pouvoir accéder aux différentes boutiques (vue client)<br />

**Navbar à gauche + pages associées:**<br />
![P5](https://i.goopics.net/LOGOd.jpg) :<br />
un admin doit pouvoir accéder à la gestion des différentes boutiques (Ajout/edit/suppresion d'un produit, d'une catégorie, ou d'une option)<br />
un admin doit pouvoir accéder à la page qui liste les commandes (orders/index)<br />
En cliquant sur une commande il en voit le détail (orders/show). Il doit voir notamment le nom du client, l'adresse, la date de livraison souhaitée, et la liste des produits avec leurs options<br />
un admin doit pouvoir accèder au demande de devis<br />
un admin doit recevoir un mail quand une nouvelle demande de devis est transmise sur le site<br />

![P3](https://i.goopics.net/7YyYN.jpg) :<br />
Un admin doit pouvoir accéder à la gestion des opérations commerciales<br />
Les pages de modifications d'un produit particulier ou de détail d'une commande souvrent dans des modals<br />

![P2](https://i.goopics.net/vvZvZ.jpg) :<br />
un admin doit pouvoir accéder à la gestion des pages facebook et instagram (ajout/edit/suppression de posts)<br />

#### C - DataBase tables
![P5](https://i.goopics.net/LOGOd.jpg) :<br />
**Users** : configuré par devise<br />
\- cart_id:references => un user a un seul panier<br />
\- phone_number:un type spécial pour les numéros de téléphone ? facultatif<br />
**Administrators** : configuré par devise<br />
<br />
2 tables pour **active_storage** => Toutes les photos seront stockées sur S3<br />
<br />
**Products** :<br />
\- title:string<br />
\- description:text<br />
\- price:decimal<br />
\- product_category_id:references<br /> => un produit a une seule catégorie<br />
\- image:j'ai pas l'impression qu'il y est besoin d'une colonne image avec active storage<br />
<br />
**Product_categories** :<br />
\- title:string<br />
<br />
**Carts** :<br />
\- pas de user_id pour permettre à un visiteur d'avoir un panier. Ou alors un user_id facultatif si c'est possible ?<br />
<br />
**Cart_items** :<br />
\- cart_id:references<br />
\- item_id:references<br />
\- quantity:integer<br />
<br />
**Orders** :<br />
\- user_id:references => Une commande est forcèment liée à un client, et un client peut avoir plusieurs commandes<br />
\- status_id:references => une commande a un statut <br />
\- date:datetime => On peut surement utiliser la date générée d'office <br />
<br />
**Order_status** : (Payée / Livrée ...)<br />
\- name:string <br />
<br />
**Order_items** : Reprend les items du cart<br />
\- order_id:references<br />
\- item_id:references<br />
\- quantity:integer<br />

![P4](https://i.goopics.net/AmYmw.jpg) :<br />
**Users** : un user peut se connecter via facebook<br />
**Users** : un user peut se connecter via son email OU son username<br />
<br />
**Estimates** : (Les devis sont accessibles sur le site si l'utilisateur était authentifié quand il l'a demandé)<br />
\- user_id:references<br />
\- title:string<br />
\- description:text<br />

![P3](https://i.goopics.net/7YyYN.jpg) :<br />
**Products** :<br />
\- quantity_option_id:references => un produit a une seule option concernant la quantité<br />
Il faudra aussi changé la facon dont est géré le prix (prix à la part)<br />
<br />
**Quantity_options** :<br />
\- type:string (exemple: nombre de part / poids / ...)<br />
\- quantity:integer (unité pour le nombre de part / gr pour le poids ...)<br />

![P2](https://i.goopics.net/vvZvZ.jpg) :<br />
**Products** :<br />
\- decoration_id:references => Tous les produits ne peuvent pas avoir de décoration, élément facultatif<br />

**Decorations** :<br />
\- name:string<br />
\- description:text<br />
\- image:active_record<br />
\- price_base:decimal => Le prix de la déco est composée d'une base (figurine ?)<br />
\- price_variable:decimal => Et varie en fonction du nombre de part (taille de la feuille d'azyme ?)<br />

**Decoration_tags ou Decoration_categories** :<br />
A voir entre les 2, la différence étant qu'une déco peut avoir plusieurs tags mais une seule catégorie (donc 1..n ou n..n)<br />


[**Template page en construction**](https://i.goopics.net/w4vQ3.jpg)<br />
