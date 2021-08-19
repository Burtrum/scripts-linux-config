## 40_install-esp32-tools.sh
## 2019-07-14-E more prints, all in one merged with 

echo "START: 40_install-esp32-tools.sh"

export IDF_TOOLS_PATH=~/esp32
export IDF_PATH=${IDF_TOOLS_PATH}/esp-idf
mkdir -p ${IDF_TOOLS_PATH}

sudo apt update
sudo apt-get --yes --no-install-recommends install \
		git wget libncurses-dev flex bison gperf \
		python python-pip python-setuptools python-serial python-click \
		python-cryptography python-future python-pyparsing python-pyelftools \
		cmake ninja-build ccache

# Get latest (1) esp32-idf, (2)esp-idf-template, (3) hello_world example from ${IDF_PATH}
git clone --recursive https://github.com/espressif/esp-idf.git ${IDF_PATH}
git clone --recursive https://github.com/espressif/esp-idf-template.git ${IDF_TOOLS_PATH}/esp-idf-template
cp -r ${IDF_PATH}/examples/get-started/hello_world ${IDF_TOOLS_PATH}

# ESPRESSIF SCRIPT - install xtensa-gcc, esp32-ocd, python and more into ${IDF_TOOLS_PATH} not default hidden '.espressif'
${IDF_PATH}/install.sh
echo "Ignore 'install.sh' message above, do not run 'export.sh', will be handled by '.profile' on login"

#Append  ESPRESSIF SCRIPT - 'export.sh' into '.profile' set needed variables for 'export.sh'
echo "" >> ~/.profile
echo "# 40_install-esp32-tools.sh" >> ~/.profile
echo "export IDF_TOOLS_PATH=${IDF_TOOLS_PATH}" >> ~/.profile
echo "export CDF_PATH=${IDF_PATH}" >> ~/.profile
echo "source ${IDF_PATH}/export.sh" >> ~/.profile

echo "END: 40_install-esp32-tools.sh"






