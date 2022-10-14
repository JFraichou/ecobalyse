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



Pour établir la liste des procédés de transformation, voilà les critères que l'on utilise :

* process utilisé dans un produit CIQUAL
* de catégorie `processing`
* ne produisant pas un ingrédient de base (viande, lait, …). Dans ce cas on part du principe que l’utilisateur utilisera directement l’ingrédient de base (viande, lait, …) dans sa recette

Voilà la liste des procédés de transformation retenus

| Cooking, industrial, 1kg of cooked product/ FR U                      |
| --------------------------------------------------------------------- |
| Mixing, processing, at plant \\"dummy process\\                       |
| Canning fruits or vegetables, industrial, 1kg of canned product/ FR U |

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
