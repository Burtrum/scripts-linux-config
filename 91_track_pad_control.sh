## 91_track_pad_control.sh
## 2020-01-30-A

# identify

xinput list

⎡ Virtual core pointer                    	id=2	[master pointer  (3)]
⎜   ↳ Virtual core XTEST pointer              	id=4	[slave  pointer  (2)]
⎜   ↳ PixArt Dell MS116 USB Optical Mouse     	id=8	[slave  pointer  (2)]
⎜   ↳ Elan Touchpad                           	id=10	[slave  pointer  (2)]
⎣ Virtual core keyboard                   	id=3	[master keyboard (2)]
    ↳ Virtual core XTEST keyboard             	id=5	[slave  keyboard (3)]
    ↳ Video Bus                               	id=6	[slave  keyboard (3)]
    ↳ Power Button                            	id=7	[slave  keyboard (3)]
    ↳ EasyCamera: EasyCamera                  	id=9	[slave  keyboard (3)]
    ↳ Ideapad extra buttons                   	id=11	[slave  keyboard (3)]
    ↳ AT Translated Set 2 keyboard            	id=12	[slave  keyboard (3)]


# Find id=10
# disable
xinput set-prop 10 "Device Enabled" 0
# ensable
robertbc@laptop-1:~$ xinput set-prop 10 "Device Enabled" 1

