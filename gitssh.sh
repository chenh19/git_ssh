#!/bin/bash
# This script configures git ssh (ref: https://youtu.be/YnSMYgIybFU)

# set terminal font color
TEXT_YELLOW='\e[1;33m'
TEXT_GREEN='\e[1;32m'
TEXT_RESET='\e[0m'

# set working directory
echo ""
echo -e "${TEXT_YELLOW}Initializing...${TEXT_RESET} \n" && sleep 1
[ ! -d ~/Licenses/ ] && mkdir ~/Licenses/
[ ! -d ~/.ssh/ ] && mkdir ~/.ssh/
cd ~

# detect ssh keys
if [ -z "$(ls -al ~/.ssh | grep id_ed25519)" ]
then

  # ask whether to set up an ssh key for github
  read -n1 -s -r -p "$(echo -e $TEXT_YELLOW'Would you like to set up an SSH key for your GitHub account? [y/n/c]'$TEXT_RESET)"$' \n' choice
  case "$choice" in

    y|Y ) # notify start
        echo ""
        echo -e "${TEXT_YELLOW}Setting up Git SSH key...${TEXT_RESET} \n" && sleep 1

        # check for existing keys
        #ls -al ~/.ssh

        # ask for name
        read -p "$(echo -e $TEXT_YELLOW'Please enter your full name: '$TEXT_RESET)"$' \n' fullname
        git config --global user.name $fullname

        # ask for email
        echo ""
        read -p "$(echo -e $TEXT_YELLOW'Please enter your GitHub email address: '$TEXT_RESET)"$' \n' email
        git config --global user.email $email

        # create a key if it does not exist
        #echo -e " \n${TEXT_YELLOW}When asked "Enter a file in which to save the key", please ${TEXT_GREEN}press [Enter]${TEXT_YELLOW} (default file location). Then, please ${TEXT_GREEN}input a passphrase${TEXT_YELLOW} (anything you can remember).${TEXT_RESET} \n"
        #ssh-keygen -t ed25519 -C $email
        echo -e " \n${TEXT_YELLOW}Please enter your passphrase: ${TEXT_RESET} \n"
        printf "\n" | ssh-keygen -t ed25519 -C $email

        # add SSH key to ssh-agent
        eval `ssh-agent -s`
        ssh-add ~/.ssh/id_ed25519

        # get the key
        echo -e " \n${TEXT_GREEN}All done! Git SSH key: ${TEXT_RESET} \n"
        cat ~/.ssh/id_ed25519.pub
        cat ~/.ssh/id_ed25519.pub > ~/Licenses/gitssh.txt

        # notify end
        unset email fullname
        echo -e " \n${TEXT_GREEN}You may copy the above key and add it to your GitHub. Or, it's also saved in ~/Licenses/gitssh.txt file in case you want to work on it later.${TEXT_RESET} \n" && sleep 5;;

    * ) # notify cancellation
        echo -e " \n${TEXT_YELLOW}Git SSH not configured.${TEXT_RESET} \n" && sleep 1;;

  esac

else

  echo -e "${TEXT_GREEN}Git SSH already configured.${TEXT_RESET} \n" && sleep 1

fi
