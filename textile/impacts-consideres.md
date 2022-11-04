# Indicateurs environnementaux

## Indicateurs mobilisés

12 indicateurs environnementaux sont actuellement modélisés sur Ecobalyse, conformément au référentiel méthodologique de l’Ademe :

| Indicateur                                                                                                                                        | Ref | UUID                                   |        Unité       | Niveau de recommandat° |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | :-: | -------------------------------------- | :----------------: | :--------------------: |
| [Acidification](https://www.base-impacts.ademe.fr/personalspace/read-impact-category/id/379977/idVersion/32)                                      | acd | `b5c611c6-def3-11e6-bf01-fe55135034f3` |      mol H+ eq     |           II           |
| [Appauvrissement de la couche d'ozone](https://www.base-impacts.ademe.fr/personalspace/read-impact-category/id/379978/idVersion/32)               | ozd | `b5c629d6-def3-11e6-bf01-fe55135034f3` |    kg CFC-11 eq    |            I           |
| [Changement climatique](https://www.base-impacts.ademe.fr/personalspace/read-impact-category/id/379979/idVersion/32)                              | cch | `b2ad6d9a-c78d-11e6-9d9d-cec0c932ce01` |      kg CO2 eq     |            I           |
| [Eutrophisation eaux douces](https://www.base-impacts.ademe.fr/personalspace/read-impact-category/id/379983/idVersion/32)                         | fwe | `b53ec18f-7377-4ad3-86eb-cc3f4f276b2b` |       kg P eq      |           II           |
| [Eutrophisation marine](https://www.base-impacts.ademe.fr/personalspace/read-impact-category/id/379984/idVersion/32)                              | swe | `b5c619fa-def3-11e6-bf01-fe55135034f3` |       kg N eq      |           II           |
| [Eutrophisation terrestre](https://www.base-impacts.ademe.fr/personalspace/read-impact-category/id/379985/idVersion/32)                           | tre | `b5c614d2-def3-11e6-bf01-fe55135034f3` |      mol N eq      |           II           |
| [Formation d'ozone photochimique](https://www.base-impacts.ademe.fr/personalspace/read-impact-category/id/379986/idVersion/32)                    | pco | `b5c610fe-def3-11e6-bf01-fe55135034f3` |     kg NMVOC eq    |            I           |
| [Particules](https://www.base-impacts.ademe.fr/personalspace/read-impact-category/id/379987/idVersion/32)                                         | pma | `b5c602c6-def3-11e6-bf01-fe55135034f3` | disease incidences |           II           |
| [Radiations ionisantes](https://www.base-impacts.ademe.fr/personalspace/read-impact-category/id/379988/idVersion/32)                              | ior | `b5c632be-def3-11e6-bf01-fe55135034f3` |    kg Bq-U235 eq   |           II           |
| [Utilisation de ressources fossiles](https://www.base-impacts.ademe.fr/personalspace/read-impact-category/id/379989/idVersion/32)                 | fru | `b2ad6110-c78d-11e6-9d9d-cec0c932ce01` |         MJ         |           III          |
| [Utilisation de ressources minérales et métalliques](https://www.base-impacts.ademe.fr/personalspace/read-impact-category/id/379990/idVersion/32) | mru | `b2ad6494-c78d-11e6-9d9d-cec0c932ce01` |      kg Sb eq      |           III          |
| [Utilisation des sols](https://www.base-impacts.ademe.fr/personalspace/read-impact-category/id/379991/idVersion/32)                               | ldu | `b2ad6890-c78d-11e6-9d9d-cec0c932ce01` |         pt         |           III          |

En revanche, les 4 indicateurs suivants du référentiel européen PEF ne sont pas pris en compte.&#x20;

| Indicateur                                          |
| --------------------------------------------------- |
| Ecotoxicité pour écosystèmes aquatiques d'eau douce |
| Epuisement des ressources en eau                    |
| Toxicité humaine, cancer                            |
| Toxicité humaine, non cancer                        |

Une synthèse des indicateurs mobilisés est présente dans l’onglet Explorateur ([ici](https://ecobalyse.beta.gouv.fr/#/textile/explore/impacts)).

Deux correctifs sont appliqués temporairement par Ecobalyse  :&#x20;

1\) pour les **radiations ionisantes**, un correctif est appliqué sur les procédés Mix Electriques nationaux : une division par 4,5 du total.\
En effet, les données Base Impacts datent de 2010 et surestiment considérablement les radiations ionisantes liées aux déchets radioactifs générés par l'utilisation du nucléaire dans les mix électriques nationaux. Sur la base d'une analyse de sensibilité réalisée avec les données EF 2.0 (qui datent de 2018), un écart moyen de 4,5 est constaté.

2\) pour l'**épuisement des ressources en eau**, un impact est proposé, en construction, à partir des données de la [base EP\&L de Kering](https://kering-group.opendatasoft.com/explore/dataset/raw-material-intensities-2020/information/).

<details>

<summary>Données EP&#x26;L Kering</summary>

_Les données EP\&L considérées pour l'épuisement des ressources en eau ne concernent que l'étape "matières". Des travaux complémentaires sont nécessaires pour apprécier cet impact sur les autres étapes du cycle de vie._

_Toutefois, au regard notamment des RP studies publiées à l'été 2021 dans le cadre de la consultation publique sur le projet de PEFCR Apparel & Footwear, il apparaît que l'étape "matière" représente l'essentiel de l'impact en matière d'épuisement de la ressource en eau. Par exemple, pour le produit représentatif T-shirt (RP1), l'étape "matière" (LCS1) représente 91% de l'impact total (table 49 - ligne 1086)._

</details>

## **Niveaux de recommandation**

| Niveau     | Description succincte                                    | Description complète                                                                                                                                                                                                                                                                                                                                                                       |
| ---------- | -------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Niveau I   | Qualité satisfaisante                                    | <ul><li>Il s’agit de la meilleure méthode disponible et dont la qualité a été jugée satisfaisante.</li><li>Elle peut être appliquée à tous types d’études basées sur des approches de cycle de vie.</li></ul>                                                                                                                                                                              |
| Niveau II  | Qualité satisfaisante mais nécessitant des améliorations | <ul><li>Il s’agit de la meilleure méthode disponible et dont la qualité a été jugée satisfaisante mais nécessitant des améliorations futures.</li><li>Elle peut être appliquée à tous types d’études basées sur des approches de cycle de vie.</li><li>Les résultats issus de cet indicateur doivent cependant être interprétés avec précaution notamment en cas de comparaison.</li></ul> |
| Niveau III | Donnée incomplète à utiliser avec prudence               | <ul><li>Il s’agit de la meilleure méthode disponible mais à utiliser avec beaucoup de prudence compte tenu de la grande incertitude et du manque de complétude de la méthode.</li><li>Elle doit être utilisé avec réserve en cas de comparaison. Il est ainsi recommandé de présenter les résultats et discuter de la comparaison avec et sans cette méthode.</li></ul>                    |
| N/A        | Niveau affiché pour l'utilisation de ressource en eau    |                                                                                                                                                                                                                                                                                                                                                                                            |

## Score PEF

En s'appuyant sur la documentation adossée au projet de PEFCR Apparel & Footwear, tel que mis en consultation à l'été 2021, un calcul d'un score PEF est réalisé, suite aux opérations suivantes :

* normalisation de chacun des impacts
* pondération des impacts normalisés pour obtenir le score

### Normalisation

$$
ImpactNormalisé = Impact / CoefNormalisation
$$

### Pondération

$$
ScorePEF = Somme (ImpactNormalisé * CoefPondération)
$$

### Coefficients

| Impact                                              | Coef de normalisation                      |         Coef de pondération         |
| --------------------------------------------------- | ------------------------------------------ | :---------------------------------: |
| Changement climatique                               | 8,10E+03 kg CO2e                           |               21,06 %               |
| Appauvrissement de la couche d'ozone                | 5,36E-02 kg CFC-11                         |                6,31 %               |
| Toxicité humaine (cancer)                           | <p>1,69E-05<br>Non pris en compte</p>      | <p>2,13 %<br>Non pris en compte</p> |
| Toxicité humaine (non cancer)                       | <p>2,30E-04<br>Non pris en compte</p>      | <p>1,84 %<br>Non pris en compte</p> |
| Particules                                          | 5,95E-04 diseases incicences               |                8,96 %               |
| Radiations ionisantes                               | 4,22E+03 kBq U-235 eq                      |                5,01 %               |
| Formation d'ozone photochimique                     | 4,01E+01 kg NMVOC eq                       |                4,78 %               |
| Acidification                                       | 5,56E+01 mol H+eq                          |                6,20 %               |
| Eutrophisation terrestre                            | 1,77E+02 mol N eq                          |                3,71 %               |
| Eutrophisation eaux douces                          | 1,61E+00 kg P eq                           |                2,80 %               |
| Eutrophisation marine                               | 1,95E+01 kg N eq                           |                2,96 %               |
| Utilisation des sols                                | 8,19E+05 pt                                |                7,94 %               |
| Ecotoxicité eaux douces                             | <p>4,27E+04 CTUe<br>Non pris en compte</p> | <p>1,92 %<br>Non pris en compte</p> |
| Epuisement des ressources en eau                    | 1,15E+04 m3 water eq of deprived water     |                8,51 %               |
| Utilisation de ressources fossiles                  | 6,50E+04 MJ                                |                8,32 %               |
| Utilisation des ressources minérales et métalliques | 6,36E-02 kg Sb eq                          |                7,55 %               |

{% hint style="info" %}
Le total des pondérations considérées est par conséquent inférieur à 100% (85,6%). Il n'est pas appliqué de "règle de 3" pour rapporter à un score qui serait calculé avec une somme de pondération de 100%.
{% endhint %}

### Unité

Le score PEF ainsi calculé est sans unité. Il s'exprime en "Points".&#x20;

Comme la normalisation s'effectue à partir de l'impact annuel moyen d'un européen pour chaque indicateur, le total des points pour un vêtement est très faible. Une conversion en millipoints (mPt) est donc systématiquement appliquée dans l'outil Ecobalyse.

$$
1 mpt = 1 pt / 1 000
$$