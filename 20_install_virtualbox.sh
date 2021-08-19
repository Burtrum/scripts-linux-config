## 20_install_virtualbox.sh
## 2018-11-25-A
# Run as `root`
# Run ONCE afer new linux install.
# ONLY for bare-metal linux; the linux that hosts the VirtualBox virtual machines.
#

echo "START 20_install_virtualbox.sh"

##### START: VirtualBox Host
apt-get --yes --no-install-recommends install  \
	virtualbox-qt \
	virtualbox-guest-additions-iso

echo "User response required to virtualbox-ext-pack license pop-ups."
# 1st Pop-Up: <TAB> to [OK] <ENTER>
# 2nd Pop-Up: <ENTER> for <YES>
apt-get --yes --no-install-recommends install  \
	virtualbox-ext-pack

echo "DONE 20_install_virtualbox.sh"
# EOF
