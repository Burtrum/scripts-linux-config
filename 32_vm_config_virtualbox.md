### 32_vm_config_virtualbox.md
### 2018-11-24-A

### Run 'virtualbox' on Host

	**$** virtualbox
	
1. See home screen *Oracle VM VirtualBox Manager*.
2. See no virtual machines (VM) in list.
3. No LinuxISO has been installed yet.

### Configure where to install **all** virtual machines, their LinuxISO data

VirtualBox has an undesirible default folder name that has a space in it.

	<Machine> <Settings> <General>
	
Change *Defalut Machine Folder*
	from:	/home/robertbc/VirtualBox VMs
	to:		/home/robertbc/virtualbox_data

### Configure this *first* linux machine: name, ram, disk.

	<New>

1. See pop-up *Create Virtual Machine*
	*Name:*			== vm-base
	*Type:*			-> linux
	*Version:*		-> Ubuntu (64-bit)
	*Memory size*	-> 4096 MB

	<Create>

2. See pop-up *Create Virtual Hard Disk*
	*File size*		-> 30 GB

	<Create>
	
1. See home screen *Oracle VM VirtualBox Manager*.
2. Confirm 1st virtual machine in list **vm-base @ Powered Off**
3. No LinuxISO has been installed yet.

### Configure this new specific VM *before* installing LinuxISO.

Select **vm-base** (only) virtual machine in list.

	<Settings> <General> <Advanced>
	
*Shared Clipboard*	-> Bidirectional
*Drag\'n\'Drop*		-> Bidirectional

	<Settings> <System> <Processor>
	
*Processors* -> 4 (max)

	<Settings> <System> <Dispaly>
	
*Video Memory*	-> 128 MB (max)
*Monitor Count* -> 2
*Acceleration*	-> Enable 3D

	<Settings> <System> <Network>  <Adapter 1>
	
*Attached to:*	-> Bridged Adapter

	<Settings> <System> <Network>  <Adapter 1> <Advanced>
	
*Adapter Type:*	-> Paravirtualized Network (virtio-net)
*MAC Address:* -> 080027E08C8D

	<Settings> <System> <USB>
	
*USB 3.0 (xHCI) Controller*	-> Enabled

Note: *USB Device Filters* set when VM running and desired usb device is plugged in.

	<Ok>

1. See home screen *Oracle VN VirtualBox Manager*.
2. Confirm 1st virtual machine in list **vm-base @ Powered Off**
3. No LinuxISO has been installed yet.

####Installing & running 1st linux iso.

Start the only virtual machine in list. **vm-base**

	<Start> <Normal Start>

1. See *Select start-up disk* pop-up.
2. Browse to find and open linux iso.

	<Start>

1. Standard linux install live image displayed.
2. Install Linux as normal.
3. Enable *Log in automatically* in *Install, Who are you?*
4. Eject the linix iso if needed and reboot into live image.
5. Reboot VM.

### In running virual macine, enable second disply.
<View> <Virtual Screen 2 enable> 
<View> <Virtual Screen 2 choose resolution == 1448x900 dell> 
<View> <Virtual Screen 1 choose resolution == 1600x900 lenovo> 















