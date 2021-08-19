## NOT AS root: ./41_install-esp32-s2-tools.sh
## 2020-09-19-A: WORKS
## https://docs.espressif.com/projects/esp-idf/en/latest/esp32s2/esp32s2.html 
## https://docs.espressif.com/projects/esp-idf/en/latest/esp32s2/get-started/index.html

## After Install, run 'env' in terminal
###
### IDF_TOOLS_PATH=/home/robertbc/esp32s2
### CDF_PATH=/home/robertbc/esp32s2/esp-idf
### PATH=
#### /home/robertbc/esp32s2/esp-idf/components/esptool_py/esptool:
#### /home/robertbc/esp32s2/esp-idf/components/espcoredump:
#### /home/robertbc/esp32s2/esp-idf/components/partition_table:
#### /home/robertbc/esp32s2/esp-idf/components/app_update:
#### /home/robertbc/esp32s2/esp-idf/tools:
#### /home/robertbc/esp32s2/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin:
#### /home/robertbc/esp32s2/tools/xtensa-esp32s2-elf/esp-2020r3-8.4.0/xtensa-esp32s2-elf/bin:
#### /home/robertbc/esp32s2/tools/esp32ulp-elf/2.28.51-esp-20191205/esp32ulp-elf-binutils/bin:
#### /home/robertbc/esp32s2/tools/esp32s2ulp-elf/2.28.51-esp-20191205/esp32s2ulp-elf-binutils/bin:
#### /home/robertbc/esp32s2/tools/openocd-esp32/v0.10.0-esp32-20200709/openocd-esp32/bin:
#### /home/robertbc/esp32s2/python_env/idf4.3_py3.8_env/bin:
#### /home/robertbc/.local/bin:
#### /home/robertbc/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

### OPENOCD_SCRIPTS=/home/robertbc/esp32s2/tools/openocd-esp32/v0.10.0-esp32-20200709/openocd-esp32/share/openocd/scripts

### IDF_TOOLS_EXPORT_CMD=/home/robertbc/esp32s2/esp-idf/export.sh
### IDF_TOOLS_INSTALL_CMD=/home/robertbc/esp32s2/esp-idf/install.sh

echo "START: 41_install-esp32-s2-tools.sh"
# IDF_TOOLS_PATH is special, used during Espressif install scripts to define install location for xtensa gcc ...
export IDF_TOOLS_PATH=~/esp32s2
export IDF_PATH=${IDF_TOOLS_PATH}/esp-idf
mkdir -p ${IDF_TOOLS_PATH}

# for installing python virtualenv in some Espressif script; avoids a no path/directory warning
mkdir -p ~/.local/bin

## esp32-s2, No python so use python 3 on Linux Mint
sudo apt-get --yes --no-install-recommends install \
		git wget flex bison gperf \
		cmake ninja-build ccache \
		libffi-dev libssl-dev dfu-util

sudo apt-get --yes --no-install-recommends install \
		python3 python3-pip python3-setuptools		

sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 10

# Get latest esp32-s2-idf
git clone --recursive https://github.com/espressif/esp-idf.git ${IDF_PATH}

# ESPRESSIF SCRIPT - install xtensa-gcc, esp32-ocd, python and more
# into ${IDF_TOOLS_PATH} NOT into the  default hidden '.espressif'
${IDF_PATH}/install.sh
echo "Ignore 'install.sh' message above, do not run 'export.sh', will be handled by updated '.profile' on login"

# Set up .profile, Replicate part of 'export.sh'. Sets needed variables permanently.
echo "" >> ~/.profile
echo "# 41_install-esp32-s2-tools.sh" >> ~/.profile
echo "export IDF_TOOLS_PATH=${IDF_TOOLS_PATH}" >> ~/.profile
echo "export CDF_PATH=${IDF_PATH}" >> ~/.profile
echo "source ${IDF_PATH}/export.sh" >> ~/.profile

echo
echo "END: 41_install-esp32-s2-tools.sh"






