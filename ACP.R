library(FactoMineR)
library(MASS)


chemin_fichier <- "../donnees/voitures"
voitures <- read.table(chemin_fichier, header=T)
print(voitures)

donnees_centrees_reduites <- scale(voitures)
print(donnees_centrees_reduites)

res.pca <- PCA(donnees_centrees_reduites)
summary(res.pca)

plot(res.pca,choix="ind", cex=0.7)
plot(res.pca,choix="var", cex=0.7)

res.pca$ind$cos2[,1:2]


# Question 1

# Le pourcentage d'inetrie expliquée par les 3 premiers facteurs est d'environ 95%.
# Le pourcentage d'inetrie expliquée par le premier plan factoriel 
# est d'environ 89%


# Question 2 

# Sur l'axe 1 on retrouve la performance du véhicule (la variable "acceleration"
# est opposé au autres variables de performance car plus une voiture accèlere
# rapidement moins la valeur associée dans la base de données est grande 
# (temps pour faire 0-100km/h)
# Sur l'axe 2 on retrouve les caractéristiques physiques, d'apparence,
# de design des voitures,


# Question 3 

# (a) Les individus sont-ils bien représentés sur le premier plan factoriel?
# Oui plutôt car les individus sont bien répartis sur le premier plan factoriel. 
# Ils sont aussi bien le long du premier axe factoriel qui discrimine 
# au mieux les observations que le long du second axe.
# Cependant il y aussi quelques individus qui sont mal représentés
# car la somme de leurs cosinus carré sur les deux premiers axes est faible

# (b) Quelles sont les caractéristiques des individus en haut du graphe?
# Ce sont des voitures longues, larges et lourdes type SUV haut de gamme.

# (c) Quelles sont les caractéristiques des individus à droite du graphe?
# Ce sont les voitures très performantes, les voitures de sport (voitures rapides,
# puissantes, qui accelèrent vite, consomment beaucoup et ont beaucoup de cylindres)

# (d) Quelles sont les caractéristiques des individus en bas à gauche du graphe?
# Ce sont les voitures petites, légères et qui sont peu performantes type citadine

# (e) Peut-on dire que les individus PEUGEOTRCZ et JAGUARF ont un profil semblable? 
# Si oui quel est-il?
# PEUGEOTRCZ est très mal représenté sur le plan factoriel car 
# la somme de ses cosinus carré sur les deux premières dimensions 
# est largement inférieure à 0.5. En conséquence, il n'est pas possible de conclure 
# sur la proximité entre ces deux voitures à partir du plan factoriel.

# (f) Peut-on dire que les individus LANCIA et LANDROVER ont un profil semblable? 
# Si oui quel est-il?
# D'après les cosinus carré des deux premiers axes pour ces deux individus, 
# ces deux voitures sont bien representés sur le premier plan factoriel 
# et on peut donc conclure sur leur proximité. 
# Les individus LANCIA et LANDROVER sont proches sur le plan factoriel
# et on conclue donc qu'ils ont des profils semblables. 
# Ce sont des voitures longues, larges et lourdes type SUV haut de gamme.

# (g) Interpréter la représentation graphique des individus.
# Le graphique oppose plusieurs types de véhicules. 
# Il y a les voitures de sport à droite, les SUV haut de gamme en haut, 
# les petites citadines légères en bas à gauche, les voitures 
# pour plus "grand public" au centre/gauche qui sont peu performantes. Ces dernières sont des voitures
# avec des caracteristiques plus générales, de basse/moyenne gamme. 
# Vers le centre/centre-droite ce sont des voitures un peu plus performantes avec des attributs néanmoins courants (dimensions, poids..)





