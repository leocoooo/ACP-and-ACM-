library(FactoMineR)
library(MASS)
library(dplyr)

chemin_fichier <- "../donnees/chiens"
chiens <- read.table(chemin_fichier, header=T)
print(chiens)

chiens <- data.frame(lapply(chiens, factor))
chiens.mca <- MCA(chiens, graph = TRUE, quali.sup=7)
plot(chiens.mca)
plot(chiens.mca,select="cos2 20", selectMod="cos2 8")
summary(chiens.mca, nbelements = Inf)

chiens <- read.table(chemin_fichier, header=T)
chiens$Indice <- seq_len(nrow(chiens))
print(chiens)

# Interprétations

# Le pourcentage d’inertie expliquée par le premier plan
# factoriel en d’environ 52%.

# Le premier axe factoriel semble opposer les chiens de par leurs poids, 
# tailles, affectuosités ou encore aggressivités. 
# Le second axe factoriel est plus compliqué à interpreter,
# il n'y a pas de tendance explicite qui se dégage. 

# Au milieu à gauche/haut à gauche les gros chiens de garde (lourds, gros, peu affectueux,
# peu intelligents et assez agressifs)comme les mastiffs, les saint-bernards ou les dobermans. 
# En bas à droite un groupe de chiens avec des caractéristiques homogènes (de tailles, vélocités 
# et poids moyens) et qui sont des chiens de chasse ou de compagnie (labrador, boxer...)
# Au milieu à droite/haut à droite les chiens de compagnie (petits, légers, assez affectueux 
# et peu véloces) comme les caniches, chihuahuas ou teckels.
# Au milieu à gauche/bas à gauche les chiens très véloces, intelligents, de poids moyen,
# plutôt des chiens de chasse (caractéristiques adaptées à la chasse) comme les pointer 
# ou les lévriers. 
