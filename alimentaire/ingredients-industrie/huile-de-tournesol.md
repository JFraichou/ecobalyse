# 🌻 Huile de tournesol

## Construction de l'ingrédient industrie à partir d'ingrédients agricoles

Le procédé proposé dans Agribalyse pour l'huile de tournesol est :&#x20;

* Sunflower oil, at oil mill (WFLDB 3.1)

$$
HuiletournesolREF
$$

{% hint style="info" %}
**Attente du graphe Simapro pour confirmer ce procédé et identifier le procédé tournesol mobilisé pour l'huile de tournesol.**
{% endhint %}



Dans Agribalyse, ce procédé est construit à partir de :&#x20;

* Sunflower, at farm (WFLDB 3.1)/GLO U

$$
TournesolREF
$$

* d'opérations industrielles :&#x20;

<figure><img src="../../.gitbook/assets/sunflower.png" alt=""><figcaption></figcaption></figure>

On construit différents procédés d'huile de tournesol **(N)**, sur la base du procédé de référence (Sunflower oil, at oil mill), en appliquant les opérations industrielles à différents procédés de tournesol **(N)**.

$$
ImpactHuileTournesol_N = (ImpactHuileTournesolREF - ImpactTournesolREF )+ImpactTournesol_N
$$



## Procédés retenus

| Label / Origine        | France                                                                                                                                                                                                           | Autres pays                                                                                                                                                                                                      |
| ---------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Conventionnelle        | <p><strong>HuileTournesolFR</strong><br>Procédé construit (cf. formule)<br>Tournesol : Sunflower, at farm (WFLDB 3.1)/FR U</p>                                                                                   | <p><strong>HuileTournesolREF</strong><br>Sunflower oil, at oil mill (WFLDB 3.1)<br>Tournesol : Sunflower, at farm (WFLDB 3.1)/GLO U</p>                                                                          |
| Agriculture biologique | <p><strong>HuileTournesolBio</strong><br>Procédé construit (cf. formule)<br>Tournesol : <a href="../ingredients-agricoles/tournesol.md">y</a> = moyenne arithmétique des procédés tournesol bio d'Agribalyse</p> | <p><strong>HuileTournesolBio</strong><br>Procédé construit (cf. formule)<br>Tournesol : <a href="../ingredients-agricoles/tournesol.md">y</a> = moyenne arithmétique des procédés tournesol bio d'Agribalyse</p> |

{% hint style="info" %}
Le blé bio considéré dans un premier temps pour le calcul de la farine bio est celui dont le taux d'humidité correspond au taux d'humidité du blé panifiable (principal usage du blé tendre)
{% endhint %}

Les impacts comparés de ces procédés sont :&#x20;

_<mark style="color:red;">\[Intégration d'un graphique comparant les scores PEF décomposés des deux Farines qui seraient considérées]</mark>_&#x20;

