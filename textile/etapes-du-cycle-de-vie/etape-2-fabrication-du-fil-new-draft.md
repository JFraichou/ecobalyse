# 🧶 Etape 2 - Fabrication du fil (new - draft)

## Description

La fabrication d’un fil consiste à assembler un ensemble de fibres (filé de fibres) ou filaments (fil continu) afin de le rendre utilisable pour la fabrication de produits textiles. Les propriétés recherchées sont nombreuses (élasticité, régularité, résistance, finesse, etc.) et dépendent de besoins métier eux aussi variés (habillement, ameublement, chaussures, etc.).

La fabrication d’un fil peut prendre deux formes :&#x20;

* la **filature** pour les fibres discontinues (staple yarn)\
  Une fibre discontinue se caractérise par une courte longueur; les fibres naturelles ou artificielles sont majoritairement des fibres discontinues. \
  Le fil résultant de l’assemblage de fibres discontinues est un filé (spun yarn).
* &#x20;le **filage** pour les fibres continues (filaments)\
  Un filament se caractérise par une très grande longueur; les fibres synthétiques sont des fibres continues. \
  Les filaments peuvent aussi être découpés afin de devenir des fibres discontinues (par craquage ou convertissage) permettant de mélanger des fibres de nature différente. \
  Le fil résultant de cette opération s’appelle un fil monofilamentaire ou multifilamentaire (si le fil est constitué de plusieurs filaments).

<details>

<summary>Focus Filature</summary>

Les fibres discontinues sont de différentes **longueurs**, on distingue généralement :&#x20;

* les fibres courtes => longueur inférieure à 5cm (ex : coton),
* les fibres longues => longueur supérieure à 5cm (ex : laine).

De plus, la filature permet de fabriquer des fils plus ou moins **gros.** Plus un fil est fin, plus le fil nécessite des fibres de bonne qualité - donc longues -. La filature d'un fil fin nécessite généralement une étape supplémentaire dans la préparation du fil : le peignage.

En **synthèse**, les procédés de filature peuvent être appréhendés comme suit :&#x20;

![](<../../.gitbook/assets/Filature 2.png>)



Cinq principales **étapes** sont nécessaires pour la filature :&#x20;

1. Epurer et nettoyer les fibres afin d’enlever le maximum d’impuretés
2. Démêler les fibres et les isoler afin de les disposer sous la forme d’un ruban continu (tout en poursuivant l’épuration des éléments non souhaités)
3. Paralléliser les fibres constituant ce ruban et parfaire l’opération en éliminant complètement les poussières/duvets/débris/fibres très courtes
4. Régulariser et affiner progressivement le ruban de fibres parallélisées afin d’obtenir la grosseur et la régularité requise
5. Tordre sur elle-même cette mèche afin de donner la cohésion et solidité nécessaire au fil obtenu; puis l’enrouler sur un support&#x20;
6. Fabriquer le fil (filature)\
   Deux techniques existent : \
   \- Conventionnelle = filature à anneaux (ring spun)\
   \- Non conventionnelle = filature à bouts libérées (open-end)\
   Productivité : 5x à 10x plus élevée (ne permet cependant pas de fabriquer des fils aussi fins que la filature à anneaux (la limite étant autour de 50 Nm). \
   En moyenne, la filature conventionnelle permet de fabriquer des fils constitués de 50 fibres tandis que celle non conventionnelle nécessite à minima 80 fibres.&#x20;

</details>

<details>

<summary>Focus Filage</summary>

Plusieurs étapes sont nécessaires pour filer des filaments :&#x20;

1. Extrusion de la matière afin de former des filaments via le passage de la matière dans les orifices de la filière
2. Etirage des filaments pour former des fibres continues&#x20;
3. Filage des filaments afin d’obtenir un fil (3 options possibles)
   * à sec : les polymères en solution passent une filière qui se situe dans un courant d’air chaud qui solidifie les filaments
   * par voie humide : les polymères en solution sont immergés dans un bain coagulant qui solidifie les filaments
   * par fusion : les polymères fondus passent dans une filière qui se situe dans un courant d’air froid qui solidifie les filaments

A la sortie de la filière les multi-filaments obtenus sont soit étirés entre plusieurs rouleaux pour former des fils continus soit coupés en fibres discontinues.

</details>

<details>

<summary>Différents types de fil existent (filé, fil simple-retors-cablé-etc.)</summary>

Les principaux types de fil sont les suivants :&#x20;

* filé (de fibres) ou multifilament : fil composé de plusieurs filaments (fibres continues) avec ou sans torsion
* fil simple : fil sans torsion (thread yarn)
* fil retors : fil composé de plusieurs fils simples avec torsion (plied yarn)
* fil cablé (cabled yarn) : fil composé de plusieurs fils, dont au moins un retors
* fil assemblé : fil sans torsion composé de plusieurs fils simple/retors/câblé&#x20;
* fil fantaisie : fil avec un esthétisme différent
* fil guipé : fil composé d’un fil d’âme sur lequel on vient enrouler un autre fil afin de le recouvrir&#x20;

</details>

<details>

<summary>La notion de titrage (épaisseur) des fils</summary>

Le titrage indique la grosseur d’un fil textile. L'industrie textile se sert de fils de différentes grosseurs. Le titrage (ou titre) est un système qui identifie la finesse des fils. Il est représenté par le rapport entre le poids et la longueur de ce fil.

Il existe deux systèmes permettant d’exprimer le titrage : \
\- le système direct : plus le fil est fin, plus le numéro est petit (ex : Dtex)\
\- le système indirect : plus le fil est fin, plus le numéro est élevé (ex : Nm)

Ecobalyse permet de préciser le titrage selon les deux systèmes via des unités de référence : le Numéro Metric (Nm) et le Décitex (Dtex).

</details>

## Modélisation Ecobalyse

### Paramètres mobilisés

<details>

<summary>Type de fibre (naturelle, synthétique, artificielle)</summary>

Le choix des matières (laine, coton, mix, polyester, etc.) impacte directement les étapes nécessaires pour la fabrication du fil (ex : filature vs filage, pré-traitements appliqués, etc.).

</details>

<details>

<summary>Titrage </summary>

Le titrage du fil est mobilisé à double titre :&#x20;

* lors de l'étape **Tissage** : permet de calculer la densité de fils du tissu et donc la consommation d'électricité (kWh) de l'étape,
* lors de l'étape de **Fabrication du fil**  :  la consommation d'électricité moyenne de la filature/filage d'un kg de fil dépend directement de son titrage (plus le fil est fin, plus la quantité de matière à transformer est élevée pour produire la quantité de fil désirée).&#x20;

</details>

<details>

<summary>Filature conventionnelle (ring) vs non-conventionnelle (open-end)</summary>

Les deux principales techniques de filature sont disponibles dans l'outil :&#x20;

* ring / à bouts libérés (filature conventionnelle)
* open-end / à anneaux (filature non conventionnelle) \
  (technique plus efficace = moins énergivore)

</details>

### Méthodologie de calcul

A compléter

### Hypothèses par défaut

<details>

<summary>Fibre &#x3C;=> Procédé</summary>

**Filature** = fibres naturelles et artificielles

* fibres longues (>5cm) = filature conventionnelle (ring spinning)
* fibres courtes (<5cm) = filature non-conventionnelle (open-end spinning)

**Filage** = filaments (matières synthétiques)

Cf. l'[Explorateur Matière](https://ecobalyse.beta.gouv.fr/#/explore/textile/materials) pour la catégorisation par défaut des matières selon leurs fibres (fibres longues, fibres courtes, filaments).&#x20;

</details>

<details>

<summary>Consommation d'électricité (kWh)</summary>

La consommation d'électricité d'un fil dépend :&#x20;

* du choix de procédé (cf. précédemment),
* de son titrage\
  (plus le fil est épais, plus la quantité de fil à produire est faible pour un poids donné).&#x20;

**Valeurs par défaut** (source : revue bibliographique Ecobalyse) :

Filature conventionnelle (ring) : 4 kwh/kg de fil

Filature non conventionnelle (open-end) : 2,2 kwh/kg de fil

Filage : 2,2 kwh/kg de fil

Pour plus d'info sur les données moyennes de l'industrie => cf. la revue bibliographique réalisée dans le cadre des travaux Ecobalyse [ici](https://docs.google.com/presentation/d/1NKjkK9IiWRp7aMC\_lmG6cju2XWMgExHR5t-\_GTsq\_jY/edit?usp=sharing).&#x20;

</details>

#### Taux de pertes (%)

Des taux de perte par défaut sont appliqués selon le type de fibres (naturelle/artificielle vs synthétique) et la technique de filature pour les fibres naturelle/artificielle (conventionnelle vs non-conventionnelle) :&#x20;

<table><thead><tr><th width="227.33333333333331">Fibre</th><th width="354">Procédé</th><th>Taux de pertes (%)</th></tr></thead><tbody><tr><td>Naturelle &#x26; Artificielle</td><td>Filature non-conventionnelle (open-end)</td><td>10%</td></tr><tr><td>Naturelle &#x26; Artificielle</td><td>Filature conventionnelle (ring) </td><td>14%</td></tr><tr><td>Synthétique</td><td>Filage</td><td>2%</td></tr></tbody></table>

## Limites

<details>

<summary>Titrage &#x3C;=> Procédé de filature (peigné vs cardé)</summary>

Lors de la filature, la fabrication du fil peut être "cardée" ou "peignée" selon la longueur des fibres et les propriétés finales souhaitées. Un fil peigné nécessite une étape supplémentaire par rapport au cardage. De plus, le titrage souhaité du fil impacte aussi le choix d'ajouter une étape de "peignage".&#x20;

Ce niveau de détails n'est pas reflété dans l'outil pour plusieurs raisons, dont :&#x20;

* l'absence de maîtrise de ce niveau de détails par les marques,
* la faible disponibilité de données (ICV/procédés) permettant de différencier la filature cardée vs peignée),
* l'aspect potentiellement "non significatif" de cet enjeu dans une logique ACV

**Illustration de paramètres modélisables :**&#x20;

![](<../../.gitbook/assets/image (12).png>)

</details>

