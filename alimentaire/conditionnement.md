---
description: Choix du mode de conditionnement du produit modélisé
---

# 🥫 Conditionnement

La troisième étape du paramétrage d'un produit alimentaire dans Ecobalyse est le choix du mode de conditionnement. Cette étape est optionnelle, un produit pouvant ne pas avoir de conditionnement.&#x20;

Le paramétrage se fait à travers :

* le choix d'une liste de matières ==> en première approche, une seule matière peut être sélectionnée
* pour chaque matière, le paramétrage de la masse mobilisée, exprimée en grammes (g) \[**A confirmer**]

{% hint style="danger" %}
Dans la modélisation des produits CIQUAL de la base Agribalyse, des procédés de transport sont également mobilisés pour caractériser le conditionnement. En première approche, au regard de l'impact limité que semble avoir ce transport, il n'est pas pris en compte.
{% endhint %}

## Liste de matières proposées

Les matières proposées sont dans la documentation d'agribalyse&#x20;

<figure><img src="../.gitbook/assets/image (7).png" alt=""><figcaption><p>Methodology AGB 3.0- 20200528_ANNEXES-CLEAN_vf.pdf, p205</p></figcaption></figure>

La liste complète est :&#x20;

| steel      | Steel, unalloyed {RER}\| steel production, converter, unalloyed \| Cut-off, S - Copied from Ecoinvent                                           |
| ---------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| ps         | Polystyrene, expandable {RER}\| production \| Cut-off, S - Copied from Ecoinvent                                                                |
| glass      | Packaging glass, white {RER w/o CH+DE}\| production \| Cut-off, S - Copied from Ecoinvent                                                       |
| pp         | Polypropylene, granulate {RER}\| production \| Cut-off, S - Copied from Ecoinvent                                                               |
| cardboard  | Corrugated board box {RER}\| production \| Cut-off, S - Copied from Ecoinvent                                                                   |
| paper      | Kraft paper, unbleached {RER}\| production \| Cut-off, S - Copied from Ecoinvent                                                                |
| pvc        | Polyvinylchloride, suspension polymerised {RER}\| polyvinylchloride production, suspension polymerisation \| Cut-off, S - Copied from Ecoinvent |
| pet-bottle | Polyethylene terephthalate, granulate, bottle grade {RER}\| production \| Cut-off, S - Copied from Ecoinvent                                    |
| hdpe       | Polyethylene, high density, granulate {RER}\| production \| Cut-off, S - Copied from Ecoinvent                                                  |
| ldpe       | Packaging film, low density polyethylene {RER}\| production \| Cut-off, S - Copied from Ecoinvent                                               |

## Caractérisation de chaque matière

La matière sélectionnée est caractérisée par :&#x20;

* Masse (g)

{% hint style="warning" %}
La masse est exprimée en grammes (g) pour la configuration du conditionnement. Dans le calcul (cf. ci-après), c'est toutefois une masse en kg qui est considérée (kg). Une conversion est donc réalisée.
{% endhint %}

&#x20;

## Calcul des impacts

L'impact du conditionnement est la somme des impacts de chaque matière mobilisée.

$$
ImpactConditionnement = ImpactMatière1 + ImpactMatière 2 + ...
$$

​L'impact de chaque matière est proportionnel à la masse paramétrée et à l'impact massique de l'ingrédient \[_**TODO : préciser ce que cela veut dire dans la base ACV**_]

$$
ImpactMatièreN = Masse (kg) * ImpactMassiqueMatièreN
$$

​

Les impacts considérés peuvent être indifféremment :&#x20;

* l'un des 16 impact PEF proposés dans la base Agribalyse (cf. [impacts-consideres.md](../textile/impacts-consideres.md "mention")) - \[_**TODO : une modif à prévoir sur cette page, voire sur l'explorateur, pour dissocier l'alimentaire et le textile**_]
* le score PEF calculé comme une somme pondérée des 16 impacts, en application de la méthode PEF (cf. [https://fabrique-numerique.gitbook.io/ecobalyse/textile/impacts-consideres#score-pef](https://fabrique-numerique.gitbook.io/ecobalyse/textile/impacts-consideres#score-pef) )
