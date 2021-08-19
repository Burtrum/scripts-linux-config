## 12_install_thunar_for_nemo.sh
## 2020-09-12-A Add bulk rename to nemo file manager using thunar
# Run as `root`
# Run ONCE afer new linux install.
# Use for bare-metal host linux running Linux MINT Cinnamon.
# Not for most VM setups.
#

# $ apt search "package"
# $ apt-get --yes --no-install-recommends install "package"

# Give  Cinnamon nemo to get bulk rename
# Enter "thunar -B"
apt-get --yes --no-install-recommends install \
	thunar

echo "EOF 12_install_thunar_for_nemo.sh"
# EOF











