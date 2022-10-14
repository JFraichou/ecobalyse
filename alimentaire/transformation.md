---
description: Choix des procédés de transformation du produit alimentaire modélisé
---

# 🏭 Transformation

La seconde étape du paramétrage d'un produit alimentaire dans Ecobalyse est le choix des procédés de transformation : cuisson, mise en boîte ...

Le paramétrage se fait à travers :&#x20;

* le choix d'un procédé de transformation (optionnel) ==> en première approche, le choix d'un seul procédé est possible
* pour chaque procédé de transformation, le paramétrage de la masse mobilisée, exprimée en grammes (g)

{% hint style="danger" %}
Certains produits CIQUAL proposés dans la base Agribalyse mobilisent deux procédés de transformation \[_**préciser combien ?**_]. Il pourra être envisagé, dans un second temps, de rendre possible l'ajout d'un second procédé de transformation.
{% endhint %}

{% hint style="danger" %}
Dans un second temps, la masse mobilisée pour le procédé de transformation pourrait être automatiquement calculée à partir de la masse des ingrédients mobilisés (cf. [ingredients.md](ingredients.md "mention"))
{% endhint %}

## Liste des procédés de transformation proposés

Les procédés de transformation proposés sont l'ensemble des proposés mobilisés entrant pour les \~2600 produits CIQUAL référencés dans la base Ecobalyse.

En termes ACV, il s'agit des procédés _at plant,_ relevant de la catégorie _processing_. à l'exception des procédés qui correspondent à une opération de transformation _(cooking, pasteurisation...)._

Un choix de 12 procédés de transformation est ainsi proposé : Mise en conserve, Thermoformage, Evaporation d'eau, Cuisson industrielle, Abattage, Extrusion du plastique, de l'acier ou de l'aluminium, Extraction du sucre, Production de poudre de lait...

## Caractérisation du procédé de transformation

Chaque procédé de transformation est caractérisé par :&#x20;

* Masse (g)

La masse est considérée en sortie de procédé de transformation \[_**à confirmer**_]

{% hint style="warning" %}
La masse est exprimée en grammes (g) pour la configuration du conditionnement. Dans le calcul (cf. ci-après), c'est toutefois une masse en kg qui est considérée (kg). Une conversion est donc réalisée.
{% endhint %}

## Calcul des impacts

Les impacts du procédé de transformation qui peut être sélectionné sont calculés à partir de la masse renseignée et de l'impact massique, tel que disponible dans \[_**A préciser**_]

$$
ImpactTransfo = MasseTransfo (kg) * ImpactMassiqueTransfo
$$

​

Les impacts considérés peuvent être indifféremment :&#x20;

* l'un des 16 impact PEF proposés dans la base Agribalyse (cf. [impacts-consideres.md](../textile/impacts-consideres.md "mention")) - \[_**TODO : une modif à prévoir sur cette page, voire sur l'explorateur, pour dissocier l'alimentaire et le textile**_]
* le score PEF calculé comme une somme pondérée des 16 impacts, en application de la méthode PEF (cf. [https://fabrique-numerique.gitbook.io/ecobalyse/textile/impacts-consideres#score-pef](https://fabrique-numerique.gitbook.io/ecobalyse/textile/impacts-consideres#score-pef) )
