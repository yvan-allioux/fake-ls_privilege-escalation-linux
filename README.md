# fake-ls_privilege-escalation-linux

Replacing the linux LS command for privilege elevation.

You have access to a ROOT session but you don't know the password to run useful commands ?
Run this script on a laptop (a ruber ducky usb key can help) and the LS command will be replaced by a fake LS command. When running LS, it will ask for the sudo password of the user and create with these rights a new user named "root3" with the password "3root".
the LS command is displayed normally after that


Remplacement de la commande linux LS pour une élévation de privilège.

Vous avez avec un accès sur une session ROOT mais vous ne connaissez pas le mot de pass pour lancer des commandes utiles ?
Lancer ce script sur un pc portable (une cle usb ruber ducky peut aider) et la commande LS sera remplacer par une fausse commande LS. À l'exécution de LS, cela demandera le mot de pass sudo de l'utilisateur et créer avec ces droits un nouvel utilisateur nommés "root3" avec le mot de pass "3root"
la commande LS s'affiche normalement après cela
