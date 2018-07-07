sudo add-apt-repository ppa:symengine/ppa 
#sudo add-apt-repository ppa:webupd8team/indicator-kdeconnect 

sudo apt-get update

sudo apt-get install -y build-essential

#ubuntu stuff
sudo apt-get install -y vim-gtk okular texlive biber screenfetch
sudo apt-get install -y indicator-kdeconnect kdeconnect 

#python3 stuff
sudo apt-get install -y python3 python3-dev python3-setuptools python3-pip python3-tk
sudo apt-get install -y python3-numpy python3-matplotlib python3-scipy python3-nose 

#sympy 
sudo apt-get install -y libsymengine-dev python-symengine python3-sympy
sudo apt-get install -y ipython3 pandoc python3-pip

#pip 
python3 -m pip install wheel
python3 -m pip install --user projectq

#for notebooks
#python3 -m pip install jupyter

#sudo add-apt-repository universe
#sudo apt install python3-proselint

#python linters
sudo apt-get install python3-colorama python3-click python3-future 
sudo dpkg -i python3-proselint_0.7.0-1_all.deb
sudo apt-get install flake8 
sudo apt-get install -y autopep8

#text linters
sudo apt-get install npm
sudo npm install -g write-good
sudo npm install --global prettier

#Vim theme paste with "+p 
#wget "https://raw.githubusercontent.com/TroyFletcher/vim-colors-synthwave/master/colors/synthwave.vim" -P ~/.vim/colors/
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
