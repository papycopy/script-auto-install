# Script auto install

Bonjour a tous, j ai crée il y a quelques temps un script que vous pouvez personnaliser a votre guise pour une installation automatique de plusieurs logiciels en 1 clic plutôt que de passer 1h a chercher et installer logiciels après logiciels.
les commandes vont s exécuter ligne par ligne, tant que la ligne n as pas fini d exécuter sa commande suivante attend son tour. 
Tout d abord l explication pour chaque commandes:

toujours commencer par #!/bin/bash

la première commande est echo
elle permet d afficher quelque chose, un texte le plus communément entre " "
exemple:
echo "Bonjour a tous"

la commande sleep  elle permet de marquer un arrêt de quelques secondes indiqué juste après sleep séparé par un espace
exemple:
sleep 10
le script attendra 10 secondes avant de passer a la ligne suivante

après la commande sleep (la ligne suivant si vous avez suivi), vous mettez la commande a exécuter
exemple:

apt update
apt install [le nom:du paquet]
apt install firefox
après une commande d installation ou avant le nom_du_paquet vous pouvez mettre l option -y  pour ne pas avoir besoin de confirmer avec y ou o
apt install firefox -y

il ne reste plus qu a enregistrer votre script en .sh
pour l exécuter, il faut le rendre exécutable soit en graphique, soir avec la commande
chmod +x le_nom_du_fichier.sh
il suffit de le mettre sur une clé USB ou vous l envoyer.
puis soit lancer en mode super utilisateur en graphique ou par commande avec les droits super utilisateur
sudo ./le_nom_du_fichier.sh et laisser faire

J ai fait ce script pour des distributions Debian et Ubuntu, mais libre a vous de le modifier selon vos besoins.
Archlinux, Fedora. etc

si vous ne voulez pas exécuter une commande(comme moi a la fin du script), vous pouvez commenter la ligne avec un #

Vous pouvez chercher les noms de vos paquets sur ce site :
https://pkgs.org/
