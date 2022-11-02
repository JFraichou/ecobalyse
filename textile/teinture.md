# 🌈 Etape 3 - Ennoblissement

## Description

L’ennoblissement consiste à donner aux tissus l'aspect visuel et les propriétés physiques et esthétiques exigées par les consommateurs. Il peut s'agir d'opérations mécaniques ou chimiques.

L’étape d’ennoblissement se décompose en 3 sous-étapes :&#x20;

* Pré-traitement = Traitement et nettoyage du tissu\
  (les procédés de pré-traitement des fibres sont rattachés à la filature)&#x20;
* Teinture et Impression = Application de colorants&#x20;
* Finition = Application d’apprêts

Une description détaillée de ces sous-étapes est proposée en bas de page.

## Modélisation Ecobalyse

### Paramètres mobilisés

<details>

<summary>Pré-traitement</summary>

Non applicable

_En l’absence de données suffisamment précises dans la Base Impacts, l’étape de Pré-traitement n’est pas paramétrable dans le calculateur. La mise en place d’une nouvelle base de données permettra de répondre à cette limite._&#x20;

_NB : Un procédé de “désencollage” est inclus par défaut dans les procédés Teinture/Impression._

</details>

<details>

<summary>Teinture / Impression</summary>

* Support de teinture : sur Fil, Tissu, Article
* Procédé d'impression : fixé-lavé, pigmentaire
* Pays\
  _Impacte les procédés d'arrière plan suivants : mix électrique, mix chaleur, efficacité du traitement des eaux usées_
* Quantité d'énergie consommée (électricité et chaleur)

Prochainement disponibles :&#x20;

* Procédé de teinture : discontinu, continu
* Colorants de teinture : dispersés, acides, réactifs, cationiques, de cuve&#x20;
* Source de chaleur (gaz naturel, fuel, etc.)

</details>

<details>

<summary>Finition</summary>

* Type(s) d'apprêt(s) (anti-acarien, déperlant, etc.)
* Pays\
  _Impacte les procédés d'arrière plan suivants : mix électrique, mix chaleur, efficacité du traitement des eaux usées_
* Quantité d'énergie consommée (électricité et chaleur)

</details>

### Méthodologie de calcul

L'étape Ennoblissement est modélisée comme suit :&#x20;

|                                                                                                                  Teinture / Impression                                                                                                                  |                                                                                                                                   Finition                                                                                                                                  |
| :-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: |
|    ![Procédés Teinture](https://lh5.googleusercontent.com/jqLuWcT2QKxQbN-RCWaoRzgUVpRxDJMb6QLzsbnhNG9xh7ksarvEbYH0lhw2GBkGVDYm6jaRa-iItg2GxagVaqbQKcfrZgcj45tM2Q-spgIw7BQd5F8xHE8Y66df6YS1FKgq8NS6ZbGJJuGyE3wrGIrqThW6BVuMiVN1ALSdvbNlIvGCb2iM9JSATg)   | ![Procédés Finition (apprêts chimiques)](https://lh6.googleusercontent.com/OMLBrxTzLifDKI8-yBAht3NcDsMbGZzbAQvti-D33Pp\_\_vKa\_b6bKWed8P7FqoH7ZqbbPTXu1SmpIfWUQZUurSI6u6sRLKbdNpBaFnUODDx\_1RcuA\_W6znyWPgQmJ1zXW-mADTxdeKX9PWBsuy0KisNRSMbaQABm5G4mY-rd-gE1PHtMKuObW0Ha4A) |
| ![Procédés Impression](https://lh6.googleusercontent.com/WFXgakkV04JekfM2Cn-vkgOLU2QJv7m96A\_8SLg\_DWYqx8ko7cblFcaNafhUgBvH4brkdVZ2lksYJbixn8Lx74VBwqObrmHx5iPT3sWc4Otg2jgHeRnAma71VWeuPN96VKC2ufIYsghG80M7eiWRxOZPDQ3GCFOVf3Df-s8cUSqo\_NGYnqWsmYsrNQ) |                                                                                                                                                                                                                                                                             |

L'impact global de l'étape Ennoblissement se comprend donc comme résultant de la somme des impacts résultant des :&#x20;

* procédé retenus \
  (cf. intérieur du _system boundaries_)
* flux externes devant être ajoutés à chaque procédé \
  ([chaleur](chaleur.md) et/ou [électricité](electricite.md))

L'impact de chaque procédé pris séparement correspond au produit de la masse "sortante" avec le coefficient d'impact considéré (cf. [Impacts considérés](impacts-consideres.md)).

$$
ImpactProcédé = MasseSortante(kg) * CoefImpactProcédé
$$

Plus de détail sur la gestion des masses : [Pertes et rebut](pertes-et-rebus.md).

### Procédés disponibles

<details>

<summary>Pré-traitement (0 procédé)</summary>

Non applicable

_En l’absence de données suffisamment précises dans la Base Impacts, l’étape de Pré-traitement n’est pas paramétrable dans le calculateur. La mise en place d’une nouvelle base de données permettra de répondre à cette limite._&#x20;

_NB : Un procédé de “désencollage” est inclus par défaut dans les procédés Teinture/Impression._

</details>

<details>

<summary>Teinture / Finition (5 procédés)</summary>

* teinture sur fil, procédé représentatif
* teinture sur tissu, procédé représentatif
* teinture sur article, procédé représentatif
* impression pigmentaire, procédé représentatif
* impression fixé-lavé, procédé représentatif

</details>

<details>

<summary>Finition (8 procédés)</summary>

* apprêt chimique moyen, procédé représentatif (par défaut)
* apprêt chimique anti-acarien, procédé représentatif
* apprêt chimique anti-bactérien, procédé représentatif
* apprêt chimique anti-tache, procédé représentatif
* apprêt chimique déperlant, procédé représentatif
* apprêt chimique retardateur de flamme, procédé représentatif&#x20;
* apprêt mécanique grattage, procédé représentatif
* apprêt mécanique rasage, procédé représentatif

</details>

### Hypothèses par défaut

#### Support de teinture <=> Vêtement

Un procédé de teinture est appliqué par défaut selon la catégorie du produit modélisé (jean, jupe, t-shirt, etc.).

| Support de teinture |                                                Catégorie                                                |                  Energie consommée                  |
| :-----------------: | :-----------------------------------------------------------------------------------------------------: | :-------------------------------------------------: |
|         Fil         |                                                   jean                                                  | <p>électricité : 2,82 kWh<br>chaleur : 33,42 MJ</p> |
|        Tissu        | cape, châle, chemisier, débardeur, écharpe,  gilet, jupe, manteau, pantalon, pull, robe, t-shirt, veste | <p>électricité : 1,99 kWh<br>chaleur : 25,87 MJ</p> |
|       Article       |                                                                                                         | <p>électricité : 2,56 kWh<br>chaleur : 39,28 MJ</p> |

{% hint style="warning" %}
Après une série d'interviews auprès d'industriels et experts de l'ennoblissement, nous avons constaté que la consommation d'énergie n'est pas maîtrisée par les industriels aujourd'hui. Nous ne permettons donc pas de modifier la quantité d'énergie.\
\
Les quantités d'énergie par défaut proviennent de la Base Impacts.&#x20;
{% endhint %}

#### Finition (apprêts chimiques et mécaniques)

Un procédé moyen d'apprêt chimique est appliqué par défaut à chaque produit modélisé. &#x20;

Dans la majorité des cas, tous les agents d'apprêt chimiques nécessaires pour donner à la matière textile les propriétés souhaitées sont appliqués en un seul bain plutôt qu'au cours de phases différentes.&#x20;

<details>

<summary>Plus d'info</summary>

Comme expliqué précédemment, si plusieurs apprêts chimiques sont utilisés, la consommation d’énergie pour actionner le procédé ne varie pas. De plus et pour rappel, l’écotoxicité aquatique et la consommation d’eau ne sont pas modélisables actuellement dans le calculateur. Ainsi, appliquer un ou plusieurs procédés chimiques n'a que peu d'impact sur les résultats.

De plus, deux procédés mécaniques sont proposés dans le calculateur. Ces procédés sont différents de ceux mécaniques et consomment une très faible quantité d'énergie.

Par défaut, la mise en place d'un apprêt chimique moyen est proposé dans Ecobalyse (_Apprêt chimique moyen, procédé représentatif_). L'utilisateur a la possibilité de sélectionner un ou plusieurs apprêt(s) chimique(s) spécifique(s); dès lors la consommation d'énergie retenue sera celle du procédé le plus énergivore.&#x20;

L'ajout d'apprêt(s) mécanique(s) est aussi possible; ces procédés consomment une quantité d'énergie très faible par rapport aux apprêts chimiques. &#x20;



**Focus sur la consommation d'énergie des procédés**

_"Procédé : chaleur (MJ) & électricité (kWh)"_

Apprêt chimique moyen : 12,78 MJ & 0,59 kWh

Apprêt chimique max : 20,95 MJ & 1,17 kWh

Apprêt chimique min : 10,74 MJ & 0,45 kWh

Apprêt mécanique max : 0 MJ & 0,03 kWh

Apprêt mécanique min : 0 MJ & 0,03 kW

</details>

#### Type de fibre <=> Consommation d'énergie&#x20;

La quantité d'énergie consommée par le procédé de teinture (teinture sur fil / tissu / article) est pondérée selon le type de fibre.&#x20;

| Fibre             | Matières                                                                                                                      |           Energie consommée          |
| ----------------- | ----------------------------------------------------------------------------------------------------------------------------- | :----------------------------------: |
| cellulosique      | cotton, flax, chanvre, jute, lyocell, modal, viscose                                                                          | <p>Valeur par défaut</p><p>(Ref)</p> |
| synthétique       | Acrylic, Nylon, Polyester, Polylactic Acid (PLA), Polypropylene (PP), Polytrimethylene terephthalate (PTT), Polyurethane (PU) |               Ref -25%               |
| naturelle (autre) | Acetate Triacetate, Alpaca, Laine                                                                                             |               Ref +25%               |
| mix               | Non applicable                                                                                                                |               Ref +50%               |

{% hint style="warning" %}
Suite à différents travaux thématiques (interviews d'experts, revue bibliographique, analyse de sensibilité), nous avons constaté que le type de fibre (mélange de fibres, laine, polyester, etc.) sur lequel est appliqué la teinture a une influence directe sur la quantité d'énergie consommée.&#x20;

Par exemple, la teinture des mélanges prend toujours plus de temps et est une opération plus difficile que la teinture de fibres pures.

Nous proposons en première approche une classification des fibres teintes et un niveau de consommation d'énergie.

\
:bulb: Vous souhaitez partager votre expertise sur ce sujet ? Rdv dans la rubrique Contribuer.&#x20;
{% endhint %}

#### Type de fibre <=> Procédé de teinture (en cours)

Il n’est pas encore possible de différencier les procédés de teinture (continu vs discontinu) ni les colorants (dispersés, acides, réactifs, cationiques, de cuve) utilisés.

Cela s’explique en partie par le manque de profondeur de la base de données utilisée (Base Impacts).

Ces paramétrages seront prochainement disponibles sur le calculateur.

## Limites

* Les indicateurs "Consommations d'eau" et "Ecotoxicité aquatique" ne sont pas modélisés
* Les principaux pocédés de Pré-Traitement de tissus ne sont pas encore disponibles
* Les principaux procédés (continu vs discontinu) et colorants de teinture ne sont pas encore disponibles
