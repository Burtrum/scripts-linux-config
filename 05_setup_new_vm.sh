# 2020-09-14-A sudo ./05_setup_new_vm.sh vm-server-1 robertbc

if [ $# -eq 0 ]
  then
    echo "Using default MYUNMAE and USER"
fi

if [ -z $1 ]; then
    MYUNAME="vm-base"
else
    MYUNAME="$1"
fi

if [ -z $2 ]; then
    USER=robertbc
else
    USER="$2"
fi

echo "Linux Setup of uname = $MYUNAME; user = $USER"


echo "Let's Begin: 05_setup_new_vm.sh"\
&& read -p "Press [Enter] after GUEST ADDITIONS is manually mounted via virtualbox devices->Mount Guest Additions ..." dummy\
&& ./10_install_linux.sh\
&& ./11_config_linux.sh\
&& ./13_install_hp_printer.sh\
&& ./30_vm_install_linux.sh\
&& ./31_vm_install_guest_additions.sh\
&& echo "The End: 05_setup_new_vm.sh"

