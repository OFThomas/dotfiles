#sudo add-apt-repository ppa:symengine/ppa 

sudo apt-get update
sudo apt-get install -y build-essential

#python3 stuff
#sudo apt-get install -y python3 python3-dev 
#sudo apt-get install -y python3-setuptools python3-pip 
sudo apt-get install -y python3-tk
sudo apt-get install -y python3-numpy python3-matplotlib python3-scipy python3-nose 

#sympy 
sudo apt-get install -y libsymengine-dev python-symengine python3-sympy
sudo apt-get install -y ipython3 pandoc 
sudo apt-get install -y python3-isort

#pip 
#python3 -m pip install sympy
python3 -m pip install yapf
python3 -m pip install isort

#for notebooks
python3 -m pip install jupyter

#sudo add-apt-repository universe
sudo apt install python3-proselint

#python linters
sudo apt-get install python3-colorama python3-click python3-future 
sudo dpkg -i python3-proselint_0.7.0-1_all.deb
sudo apt-get install flake8 

#text linters
sudo apt-get install npm
sudo npm install -g write-good
sudo npm install --global prettier






