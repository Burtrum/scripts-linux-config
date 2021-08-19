## 60_install_atom_editor.sh
# Run as `root`
# Run ONCE afer new linux install.
# Use for bare-metal host linux running Linux MINT Cinnamon.
# Use for VM setups running Linux MINT xfce.
# https://atom.io/

# Since this is on the apt/sources, atom will be updated on demand
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update

# Install Atom
sudo apt-get install atom
echo "EOF 60_install_atom_editor.sh"
# EOF
