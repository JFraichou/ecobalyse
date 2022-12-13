# 🐑 Viande d'agneau (côte)



{% hint style="danger" %}
**Cette page est une duplication des pages "agneau" : en effet, nécessité de différencier les différentes pièces de l'animal dans la liste des ingrédients mais on fait l'hypothèse qu'AGB appelle le même procédé (post abattage) pour toutes les viandes d'agneau) => à vérifier**
{% endhint %}

## Construction de l'ingrédient côte d'agneau à partir du procédé agricole

La côte d'agneau correspond à l'ICV suivant :&#x20;

* Lamb, chop fillet, raw, processed in FR | Chilled | PS |&#x20;

On constate que toutes les viandes d'agneau appellent le procédé&#x20;

* Meat with bone, lamb/FR U

$$
ViandeAgneauREF
$$

Ce procédé est construit à partir de :&#x20;

* Lamb, conventional, indoor production system, at farm gate

$$
AgneauREF
$$

* de procédés d'abattage :&#x20;

<figure><img src="../../.gitbook/assets/agneau 1.png" alt=""><figcaption></figcaption></figure>

On construit différents procédés de viande d'agneau **(N)**, sur la base du procédé de référence (Meat with bone, lamb/FR U), en appliquant les opérations d'abattage à différents procédés d'agneau **(N)**.

$$
ImpactViandeAgneau_N = (ImpactViandeAgneauREF - ImpactAgneauREF )+ImpactAgneau_N
$$



## Procédés retenus

| Label / Origine        | France                                                                                                                                                                       | Autres pays                                                                                                                                                 |
| ---------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Conventionnelle        | <p><strong>ViandeAgneauREF</strong><br><strong></strong>Meat with bone, lamb/FR U<br>Agneau sortie de ferme : Lamb, conventional, indoor production system, at farm gate</p> | <p><strong>ViandeAgneauREF</strong><br>Meat with bone, lamb/FR U<br>Agneau sortie de ferme : Lamb, conventional, indoor production system, at farm gate</p> |
| Agriculture biologique | <p><strong>ViandeAgneauBio</strong><br>Procédé construit (cf. formule)<br>Agneau : </p>                                                                                      | <p><strong>ViandeAgneauBio</strong><br>Procédé construit (cf. formule)<br>Agneau : </p>                                                                     |

Les impacts comparés de ces procédés sont :&#x20;

_<mark style="color:red;">\[Intégration d'un graphique comparant les scores PEF décomposés des deux Farines qui seraient considérées]</mark>_&#x20;

