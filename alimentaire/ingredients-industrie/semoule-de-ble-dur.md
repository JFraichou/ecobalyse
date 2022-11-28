# 🌾 Semoule de blé dur

{% hint style="danger" %}
**Page en construction**
{% endhint %}

## Construction de l'ingrédient industrie à partir d'ingrédients agricoles

Les procédés proposés dans Agribalyse pour la semoule de blé dur (intervenant dans la recette des pâtes) sont :&#x20;

* Durum wheat, bran, at plant (WFLDB 3.1)' (kilogram, GLO, None)
* Durum wheat, semolina, at plant (WFLDB 3.1)' (kilogram, GLO, None)
* Durum wheat, semolina, at plant' (kilogram, FR, None)

\=> le procédé retenu devrait être un procédé "sortie de moulin" (at mill), donc :

{% hint style="danger" %}
Attente des graphes Simapro des 3 procédés ci-dessus pour identifier le procédé mobilisé à l'étape précédente&#x20;
{% endhint %}

Le procédé retenu est finalement :

* **XXX**

$$
huilecolzaREF
$$

{% hint style="danger" %}
A confirmer avec le graphe Simapro
{% endhint %}



Ce procédé est construit à partir :&#x20;

* de

$$
BléREF
$$

* d'opérations industrielles : mouture (milling), réception, prélavage, stockage.&#x20;

<figure><img src="../../.gitbook/assets/Image collée à 2022-11-9 17-42.png" alt=""><figcaption><p>Arborescence du procédé Wheat flour at industrial mill</p></figcaption></figure>

On construit différents procédés de farine **(N)**, sur la base du procédé de référence (Wheat flour at industrial mill), en appliquant les opérations industrielles à différents procédés de blé tendre **(N)**.

$$
ImpactFarine_N = (ImpactFarineREF - ImpactBléREF )+ImpactBlé_N
$$

## Procédés retenus

| Label / Origine        | France                                                                                                                                                        | Autres pays                                                                                                                                                   |
| ---------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Conventionnelle        | <p><strong>FarineREF</strong><br>Wheat flour, at industrial mill<br>Blé : Soft wheat grain, conventional, breadmaking quality, 15% moisture, at farm gate</p> | <p><strong>FarineREF</strong><br>Wheat flour, at industrial mill<br>Blé : Soft wheat grain, conventional, breadmaking quality, 15% moisture, at farm gate</p> |
| Agriculture biologique | <p><strong>FarineBio</strong><br>Procédé construit (cf. formule)<br>Blé : Soft wheat grain, organic, 15% moisture, Central Region, at farm gate</p>           | <p><strong>FarineBio</strong><br>Procédé construit (cf. formule)<br>Blé : Soft wheat grain, organic, 15% moisture, Central Region, at farm gate</p>           |

{% hint style="info" %}
Le blé bio considéré dans un premier temps pour le calcul de la farine bio est celui dont le taux d'humidité correspond au taux d'humidité du blé panifiable (principal usage du blé tendre)
{% endhint %}

Les impacts comparés de ces procédés sont :&#x20;

_<mark style="color:red;">\[Intégration d'un graphique comparant les scores PEF décomposés des deux Farines qui seraient considérées]</mark>_&#x20;
