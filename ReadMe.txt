
Folders in root:------------------------------------------------------------------
	Ros_lib: are ros libraries for the arduino boards. Just move them into the corresponding sketch/libraries folder.
	Catkin_ws: Contains the code for the packages that were downloaded (rosserrial, ros_opentld, arduinoserial)





Common troubleshooting problems and workarounds:-----------------------------------------
	Ros_TLD tracker node crashing instantly:
		Try restarting the TLD_GUI service before starting the tracker node
	
	Cannot access device/Arduino ports greyed out: 
		Give yourself access to the /dev/ttyACM# in question with chmod a+rw <insert device path here>
	
	
	Roslib_Hydro line 68 compile errors with arduino in ArduinoHardware.H: 
		Try changing the port to iostream. (e.g. iostream = &Serial1//was Serial before)
		


	Odriod U3:----------------------------------------------------------------------
	
		SD Card out of space after apt-get update: 
			Not all of the space may be used on the SD card. Use something like GParted to expand the partition with the unallocated space.
		
		Odroid not booting: 
			A blue LED will be visible if the Odriod is booting or running its kernel. If there is no blue LED, it could mean:
			It is not turned on.
			Not enough power (should get around 5V)
			Image on the SD card is bad/formatted incorrectly.
			Image on the SD card is not compatible with ARM chips (e.g. x86)
			
		The OS is only displaying 2 cores when there should be 4: 
			Version of OS was probably for another board and does not support the U3. (e.g. Linaro 12.11 for the U2)




Useful Links related to Odriod:
	Ubuntu SD card setup: http://odroid.us/mediawiki/index.php?title=Step-by-step_Ubuntu_SD_Card_Setup
	Building your own Ubuntu card from scratch: http://forum.odroid.com/viewtopic.php?f=52&t=3662








