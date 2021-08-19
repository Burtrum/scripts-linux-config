## NOT AS root: ./42_target-esp32s2.sh
## 2020-09-22-A: WIP
##
## allowable target: esp32 (default), esp32s2

# NOT USED caution only used once on new esp32s2 project, or
# to switch from esp32s2 to (default) esp32.
#  fullclean..sdkconig..reconfigure
## idf.py set-target esp32s2
## then
## idf.py menuconfig

# NOT USED sets esp32s2 only for entire login
# echo "export IDF_TARGET=esp32s2" >> ~/.profile

echo "START: 42_target-esp32s2.sh"
echo

idf.py set-target esp32s2
echo "Run once per new project. Set target: esp32s2"

echo
echo "END: 42_target-esp32s2.sh"


# per build
# idf.py -DIDF_TARGET=esp32s2

# per project
# echo "export CONFIG_IDF_TARGET="esp32s2" >> ./sdkconfig.defaults
