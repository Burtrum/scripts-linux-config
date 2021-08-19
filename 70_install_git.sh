## 70_install_git.sh
## https://git-scm.com/downloads
## 2019-07-31A

echo "START: 70_install_git.sh"
sudo apt update
sudo apt-get --yes --no-install-recommends install \
		git \
		gitk
echo "END: 70_install_git.sh"


# gitk - commit viewer
# The following additional packages will be installed:
#   tcl tcl8.6 tk tk8.6
# Suggested packages:
#   git-doc tcl-tclreadline
# The following NEW packages will be installed:
#   gitk tcl tcl8.6 tk tk8.6
