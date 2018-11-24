# Pâtisserie Traiteur Événementielle KN

Un site web (très) userfriendly pour un pâtissier/traiteur événementiel (Baptême, mariage, toussa quoi)

# Avant-propos

Avant tout, sache que ce site web est pour mon frère, et que c'est l'une des raisons qui m'a amené à faire THP. <br />
Il est pâtissier / traiteur / charcutier dans l'événementiel et ce site web sera son principal contact avec sa clientèle (pas de point de vente en dur). Pour le moment, il utilise une simple page facebook. Ca lui permet à peine de faire sa com, il gère les commandes au téléphone, bref c'est un joyeux bordel et Winter is coming... <br />
Bref, tu l'auras compris, dans l'idéal, il aurait besoin de ce site pour gérer Noël ! Et ça tombe (presque) bien avec les dates du projet final (si toi aussi tu kiffes les deadlines bien short 🙃)<br />

# Dive into the project

## Coté clientèle

Une boutique dynamique et bien pensée (probablement 3 : Pâtisserie, Traiteur, et Charcuterie).<br />
Un CRUD user complet, avec l'utilisation de **devise**.<br />
Une authentification via facebook avec **omniauth**.<br />
La possibilité de passer des commandes, les éditer et les annuler. Mise en place du paiement en ligne. Bref, une boutique somme toute assez classique.<br />
Demande de devis.<br />

Un front à faire des envieux, avec un UI/UX Design aux petits oignons (simple et intuitif) et des habillages thématiques (Noël, Pacques, Toussaint ...)<br />

## Dashboard administrateur

C'est **LE** gros morceau !<br />
Au début, j'avais peur que ce soit un peu léger comme projet, surtout avec une première boutique codée la semaine d'avant, puis j'ai cuisiné le frérot pour savoir ce dont il a besoin...<br />

### Une gestion complète des boutiques.

3 boutiques : La pâtisserie, la charcuterie, et le traiteur<br />
Chaque boutique est composée de catégories. Par exemple pour la pâtisserie : entremets, mignardises, tartes ...<br />
Les produits sont donc situés dans une catégorie (une seule par produit).<br />
Pour chaque produit, il peut y avoir des options. Par exemple pour un entremet : 
- le nombre de part, au choix dans une liste déterminée (6, 8, 10, 12 ...)
- le thème / décoration (Disney, sport, voiture ...)

Les thèmes pourront être classés par catégorie (eg cars ou la reine des neiges dans la catégorie Disney).<br />
Il doit donc être capable d'ajouter/éditer/supprimer tout ca (Ca fait quand même quelques CRUDs... ).

### Une gestion des commandes avec un panel récapitulatif

Avoir la liste des commandes (Encore un CRU(D) ! (ou presque, je sais pas s'il faut supprimer ou archiver la commande une fois livrée)).
Pour chaque commande, être capable de voir le nom du client, l'adresse, la date de livraison souhaitée, et la liste des produits avec leurs options (puisque c'est le thème du jour, un petit modal ici ne serait-il pas parfait ? ❤️).<br />

Avoir un panel qui liste la liste de tous les produits à faire, indépendamment de la commande. ~~(Et soyons fous, un petit algo qui détermine quoi faire et dans quel ordre et qui liste les ingrédients en fonction des recettes (CRUUUUD) )~~

### Gestion des pages facebook et instagram depuis le site

Pour partager ses news/photos avec la communauté **#APIs**

### Gestion des opérations commerciales

Possibilité de modifier un produit en quelques clics pour qu'il soit affichée en promo sur la boutique (filtre photo ? alert ?) pour une durée déterminée. Et ensuite partager l'info sur les RS ainsi que via un petit système de mailing.

## Des tests en béton armé

Mon frère est pâtissier, et il aura beaucoup de CRUD entre les mains. S'il y a la moindre faille, tu peux être sur qu'il s'engouffrera dedans et fera voler ta chère DB -ainsi que le reste du site- vers d'autres cieux.<br />
**Minitests**, **RSpec**, **Capybara**, who knows ? Mais ils seront la, et ils seront costauds.
 
# MVP

Yep, that's a lot to be done !

On va donc cibler en priorité : 
- partie clientèle : Tout excepté omniauth et on peut se contenter de l'habillage de base (et celui de Noël si possible ;)
- coté gestion des boutiques : on mettra les thèmes de coté dans un premier temps
- pannel commandes : La liste et le détail de chaque commande sont indispensables. Pas le reste.
- **Aucun compromis** ne sera fait sur les tests. 

L'implémentation de facebook, instagram et des opés spés sont secondaires.

# Pourquoi rejoindre ce projet ?

Parce qu'il est ambitieux et qu'il y a du taf dans tous les domaines : de l'UX design à la database en passant par les services, il couvre tout ce que tu as pu voir pendant THP et plus encore.<br />
Parce que, comme ça t'arrivera souvent dans le monde réel si tu continues, tu travailleras sur le projet de quelqu'un qui n'y connait rien en web, avec ses exigences à la con et ses demandes de dernière minute...<br />
Parce qu'il a pour vocation d'être la première ligne de nos portfolios, il sera rigoureux et prouvera ton savoir faire à tes futurs clients.<br />
Parce qu'on va surement travailler en remote (#TeamCampagnesDuNord).<br />
Parce qu'on a des cookies (mais faudra venir les chercher !)

### L'équipe déjà en place
- Tony : Touche à tout, avec une préférence pour le back-end. Javascript ne me fait pas peur !<br />
- Félix : Un peu plus d'affinités pour le front, même si j'aimerais faire un peu de tout également :)<br />
- Josh : Maître photographe, mon rôle sera de faire un design qui déchire !<br />
