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

</details>

<details>

<summary>Teinture / Impression</summary>

* Support de teinture (sur fil, tissu, article)
* Procédé d'impression (fixé-lavé, pigmentaire)
* Pays
* Quantité d'énergie consommée (électricité et chaleur)

Prochainement disponibles : \
\=> Procédé de teinture (discontinu, continu)\
\=> Colorants de teinture (dispersés, acides, réactifs, etc.)\
\=> Source de chaleur (gaz naturel, fuel, etc.)

</details>

<details>

<summary>Finition</summary>

* Type(s) d'apprêt(s) (anti-acarien, déperlant, etc.)
* Pays
* Quantité d'énergie consommée (électricité et chaleur)

</details>

### Méthodologie de calcul

L'étape Ennoblissement est modélisée comme suit :&#x20;

|                                                                                                                                                  Teinture / Impression                                                                                                                                                 |                                                                                                                                                                 Finition                                                                                                                                                                |
| :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: |
|   <p><em>procédé de teinture</em></p><p><em></em><img src="https://lh5.googleusercontent.com/jqLuWcT2QKxQbN-RCWaoRzgUVpRxDJMb6QLzsbnhNG9xh7ksarvEbYH0lhw2GBkGVDYm6jaRa-iItg2GxagVaqbQKcfrZgcj45tM2Q-spgIw7BQd5F8xHE8Y66df6YS1FKgq8NS6ZbGJJuGyE3wrGIrqThW6BVuMiVN1ALSdvbNlIvGCb2iM9JSATg" alt="Procédés Teinture"></p>  | <p><em>procédé de finition</em></p><p><em></em><img src="https://lh6.googleusercontent.com/OMLBrxTzLifDKI8-yBAht3NcDsMbGZzbAQvti-D33Pp__vKa_b6bKWed8P7FqoH7ZqbbPTXu1SmpIfWUQZUurSI6u6sRLKbdNpBaFnUODDx_1RcuA_W6znyWPgQmJ1zXW-mADTxdeKX9PWBsuy0KisNRSMbaQABm5G4mY-rd-gE1PHtMKuObW0Ha4A" alt="Procédés Finition (apprêts chimiques)"></p> |
| <p><em>prodédé d'impression</em></p><p><em></em><img src="https://lh6.googleusercontent.com/WFXgakkV04JekfM2Cn-vkgOLU2QJv7m96A_8SLg_DWYqx8ko7cblFcaNafhUgBvH4brkdVZ2lksYJbixn8Lx74VBwqObrmHx5iPT3sWc4Otg2jgHeRnAma71VWeuPN96VKC2ufIYsghG80M7eiWRxOZPDQ3GCFOVf3Df-s8cUSqo_NGYnqWsmYsrNQ" alt="Procédés Impression"></p> |                                                                                                                                                                                                                                                                                                                                         |

L'impact global de l'Ennoblissement se comprend donc comme résultant de la somme des impacts des :&#x20;

* procédé retenus \
  (cf. intérieur du _system boundaries_)
* flux externes devant être ajoutés à chaque procédé \
  ([chaleur](../parametres-transverses/chaleur.md) et/ou [électricité](../parametres-transverses/electricite.md))

L'impact de chaque procédé pris séparement correspond au produit de la masse "sortante" avec le coefficient d'impact considéré (cf. [Impacts considérés](../impacts-consideres.md)).

$$
ImpactProcédé = MasseSortante(kg) * CoefImpactProcédé
$$

Plus de détail sur la gestion des masses : [Pertes et rebut](../parametres-transverses/pertes-et-rebus.md).

### Procédés disponibles

<details>

<summary>Pré-traitement (0 procédé)</summary>

Non applicable

_En l’absence de données suffisamment précises dans la Base Impacts, l’étape de Pré-traitement n’est pas paramétrable dans le calculateur. La mise en place d’une nouvelle base de données permettra de répondre à cette limite._&#x20;

</details>

<details>

<summary>Teinture / Impression (5 procédés)</summary>

* teinture sur fil, procédé représentatif
* teinture sur tissu, procédé représentatif
* teinture sur article, procédé représentatif
* impression pigmentaire, procédé représentatif
* impression fixé-lavé, procédé représentatif

</details>

<details>

<summary>Finition (7 procédés)</summary>

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

| Support de teinture |                                                Catégorie                                                |      Energie consommée par kg de produit teint      |
| :-----------------: | :-----------------------------------------------------------------------------------------------------: | :-------------------------------------------------: |
|         Fil         |                                                   jean                                                  | <p>électricité : 2,82 kWh<br>chaleur : 33,42 MJ</p> |
|        Tissu        | cape, châle, chemisier, débardeur, écharpe,  gilet, jupe, manteau, pantalon, pull, robe, t-shirt, veste | <p>électricité : 1,99 kWh<br>chaleur : 25,87 MJ</p> |
|       Article       |                                                                                                         | <p>électricité : 2,56 kWh<br>chaleur : 39,28 MJ</p> |

{% hint style="warning" %}
Après une série d'interviews auprès d'industriels et experts de l'ennoblissement, nous avons constaté que la consommation d'énergie n'est pas un paramètre maîtrisé par les industriels aujourd'hui.&#x20;

Nous ne permettons donc pas de modifier la quantité d'énergie.

Les quantités d'énergie par défaut proviennent de la Base Impacts.&#x20;
{% endhint %}

#### Finition (apprêts chimiques et mécaniques)

Un procédé d'apprêt chimique anti-accarien est appliqué par défaut à chaque produit modélisé. &#x20;

Dans la majorité des cas, tous les agents d'apprêt chimiques nécessaires pour donner à la matière textile les propriétés souhaitées sont appliqués en un seul bain plutôt qu'au cours de phases différentes.&#x20;

<details>

<summary>Plus d'info</summary>

Comme expliqué précédemment, si plusieurs apprêts chimiques sont utilisés, la consommation d’énergie pour actionner le procédé ne varie pas. De plus et pour rappel, l’écotoxicité aquatique et la consommation d’eau ne sont pas modélisables actuellement dans le calculateur. Ainsi, appliquer un ou plusieurs procédés chimiques n'a que peu d'impact sur les résultats.

De plus, deux procédés mécaniques sont proposés dans le calculateur. Ces procédés sont différents de ceux mécaniques et consomment une très faible quantité d'énergie.

Par défaut, la mise en place d'un apprêt chimique anti-acarien __ est proposé dans Ecobalyse. L'utilisateur a la possibilité de sélectionner un ou plusieurs apprêt(s) chimique(s) spécifique(s); dès lors la consommation d'énergie retenue sera celle du procédé le plus énergivore.&#x20;

L'ajout d'apprêt(s) mécanique(s) est aussi possible; ces procédés consomment une quantité d'énergie très faible par rapport aux apprêts chimiques. &#x20;

**Focus sur la consommation d'énergie des procédés**

_"Procédé : chaleur (MJ) & électricité (kWh)"_

Apprêt chimique max : 20,95 MJ & 1,17 kWh

Apprêt chimique min : 10,74 MJ & 0,45 kWh

Apprêt mécanique max : 0 MJ & 0,03 kWh

Apprêt mécanique min : 0 MJ & 0,03 kW

</details>

#### Type de fibre <=> Consommation d'énergie&#x20;

La quantité d'énergie nécessaire pour actionner le procédé de teinture est pondérée selon le type de fibre.&#x20;

| Fibre             | Matières                                                                                      |           Energie consommée          |
| ----------------- | --------------------------------------------------------------------------------------------- | :----------------------------------: |
| cellulosique      | cotton, flax, chanvre, jute, lyocell, modal, viscose                                          | <p>Valeur par défaut</p><p>(Ref)</p> |
| synthétique       | acrylic, nylon, polyester, PU, PTT, PBT, PP, PLA, PE, PET, PA, acrylique, néoprène, aramide,  |               Ref -25%               |
| naturelle (autre) | laine, soie, lin, cachemire, angora, acetate triacetate, alpaca,                              |               Ref +25%               |
| mix               | non applicable                                                                                |               Ref +50%               |

{% hint style="warning" %}
Suite à différents travaux thématiques (interviews d'experts, revue bibliographique, analyse de sensibilité), nous avons constaté que le type de fibre (mélange de fibres, laine, polyester, etc.) sur lequel est appliqué la teinture a une influence directe sur la quantité d'énergie consommée.&#x20;

Par exemple, la teinture des mélanges prend toujours plus de temps et est une opération plus difficile que la teinture de fibres pures.

Nous proposons en première approche une classification des fibres teintes et une pondération de la consommation d'énergie.

:bulb: N'hésitez pas à nous partager votre retour d'expérience sur ce sujet par [mail](mailto:ecobalyse@beta.gouv.fr).&#x20;
{% endhint %}

#### Type de fibre <=> Procédé de teinture (en cours)

Il n’est pas encore possible de différencier les procédés de teinture (continu vs discontinu) ni les colorants (dispersés, acides, réactifs, cationiques, de cuve) utilisés.

Cela s’explique en partie par le manque de profondeur de la base de données utilisée (Base Impacts).

Ces paramétrages seront prochainement disponibles sur le calculateur.

## Limites

* Les indicateurs "Consommations d'eau" et "Ecotoxicité aquatique" ne sont pas modélisés
* Les principaux pocédés de Pré-Traitement du tissu ne sont pas encore disponibles
* Les principaux procédés (continu vs discontinu) et colorants de teinture ne sont pas encore disponibles

## En savoir plus sur l'ennoblissement

### Pré-traitement

Les procédés de pré-traitement consistent à traiter et nettoyer le tissu, généralement en préparation de la teinture. Cependant, même si le tissu n’est pas teint, l’étape de pré-traitement est nécessaire pour le nettoyer. Plusieurs procédés peuvent être utilisés selon la matière traitée (lavage, désencollage, flambage, mercerisage, débouillissage, blanchiment, etc.). Le pré-traitement des fibres naturelles est en général plus complexe que celui des fibres synthétiques et artificielles.

### Teinture / Impression

Les procédés de teinture et impression consistent tous les deux à appliquer un colorant sur le tissu. Toutefois, le procédé d’impression, au lieu de colorer l'ensemble du support, se concentre sur des zones définies afin d'obtenir le motif désiré.

Le calculateur permet de modéliser cette étape directement après la fabrication du tissu. Dans certains cas, la teinture/impression peut être effectuée en amont (sur fil) ou en aval (sur article). Ecobalyse permet aussi de modéliser ces configurations dans cette sous-étape “Teinture et Impression” afin de faciliter les comparaisons.

<details>

<summary>En savoir plus</summary>

Concernant la **teinture**, deux principaux procédés sont utilisés dans l’industrie : la teinture en discontinue et la teinture en continue (et semi-continue).&#x20;

La teinture en **discontinu** (également appelée teinture par épuisement) consiste à tremper la matière dans une solution aqueuse contenant des colorants et produits auxiliaires pendant une période allant de quelques minutes à quelques heures. Un paramètre important en teinture discontinue est le rapport de bain (MLR = Mass to Liquor Ratio). Il s'agit du rapport de poids entre la matière sèche totale et la solution totale. Ainsi, par exemple, un rapport de bain de 1:10 signifie 10 litres d'eau pour 1 kg de matière textile.&#x20;

La teinture en **continu** consiste à appliquer le bain de teinture soit par imprégnation (au moyen de foulards), soit en utilisant d'autres systèmes d'application. Dans ces procédés, le facteur dont il faut tenir compte est le taux d’emport ou taux d’exprimage (masse en grammes de solution absorbée pour 100 grammes d'étoffe sèche) et la concentration du colorant.

Les procédés de teinture en discontinu conduisent en général à des consommations d'eau et d'énergie plus élevées que les procédés continus. Cependant, bien que les procédés de teinture à la continu consomment moins d'eau, ces derniers nécessitent une concentration plus élevée de colorant dans le bain d’imprégnation. (entre 10 et 100g/l vs entre 0,1 et 1g/l pour les procédés en discontinu). Ainsi, le rejet de cet effluent concentré peut entraîner une charge de pollution plus élevée qu’en teinture discontinue.

**L’impression** consiste systématiquement à préparer la pâte d’impression, appliquer la pâte au support, fixer les colorants sur l’étoffe préalablement séchée puis laver et sécher l’étoffe. Deux techniques d'impression existent : l'impression avec des pigments (qui n'ont aucune affinité pour la fibre) : technique la plus utilisée aujourd’hui dans l’industrie l'impression avec des colorants (réactifs, de cuve, dispersés, etc.).

</details>

### Finition

Cette sous-étape regroupe les traitements qui servent à donner aux textiles les propriétés d'usage final souhaitées (les “apprêts”). Celles-ci peuvent inclure des propriétés relatives à l'effet visuel, au toucher et à des caractéristiques spéciales telles que l'imperméabilisation et d'ininflammabilité. Les apprêts peuvent impliquer des traitements mécaniques/physiques et chimiques. Dans la majorité des cas, la solution d’apprêts chimiques est appliquée sous la forme d’une solution aqueuse au moyen de la technique de foulardage.