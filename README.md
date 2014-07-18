#MySetup#

This will be my one-stop-solution to configure a fresh machine the way I like it.


#Automated Steps#

##Installation##

 - Install Chocolatey (`install_software.ps1`)
 - Commom Software will be installed using Chocolatey (`install_software.ps1`)
	* git
	* 7zip
	* Sublime 3
	* VLC
	* Notepad++
	* Paint.net
	* KeePass
	* Google Chrome
	* Firefox

##Configuration##
My own default settings are applied (`configure_*.ps1`)
 	* Git (aliases, notepad++ as editor)
 	* PowerShell (including startup path)
		* [posh-git](https://github.com/dahlbyk/posh-git) (A PowerShell environment for Git)
 	* Windows Command window size and font
 	* Sublime (settings + plugins)
		* [sublimetext_indentxml](https://github.com/alek-sys/sublimetext_indentxml) plugin
			* format: `strg+k,strg+f`
		* [hasher](https://github.com/dangelov/hasher) plugin
			* entity encode: `strg+e,strg+e`
			* entity decode: `strg+e,strg+d`
 	* KeePass (basically _every_ checkbox differs from the default)
