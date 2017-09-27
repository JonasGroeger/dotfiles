# Dotfiles with Ansible

## Setting up a new machine

```
sudo apt-add-repository ppa:ansible/ansible --yes && sudo apt-get update && sudo apt-get install ansible git gnupg2 --yes && git clone https://github.com/JonasGroeger/dotfiles.git ~/Code/dotfiles && cd ~/Code/dotfiles/ && ./run
```

or in long form:

```
sudo apt-add-repository ppa:ansible/ansible --yes
sudo apt-get update
sudo apt-get install ansible git gnupg2 --yes
git clone https://github.com/JonasGroeger/dotfiles.git ~/Code/dotfiles
cd ~/Code/dotfiles/
./run
```

# License

GNU General Public License (GPL) v3.0
