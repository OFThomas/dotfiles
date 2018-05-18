#install python jupyter notebooks
sudo apt-get install -y python-pip pandoc python-setuptools
sudo pip install jupyter
#run on new install
sudo add-apt-repository ppa:webupd8team/indicator-kdeconnect 
sudo apt-get install indicator-kdeconnect kdeconnect
#Symengine
sudo add-apt-repository ppa:symengine/ppa
sudo apt-get update
sudo apt-get install libsymengine-dev python-symengine  
#Latex for vim and Linux
sudo apt-get install texlive-full biber
#Vim paste with "+p 
sudo apt-get install vim-gtk
sudo wget "https://raw.githubusercontent.com/TroyFletcher/vim-colors-synthwave/master/colors/synthwave.vim" -P ~/.vim/colors/
