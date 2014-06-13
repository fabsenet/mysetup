MySetup
=======

This will be my one-stop-solution to configure a fresh machine the way I like it.


Automated Steps
===============

 1. Install Chocolatey (install_software.ps1)
 2. Commom Software will be installed using Chocolatey (`install_software.ps1`)
	* git
	* posh-git (A PowerShell environment for Git)
	* 7zip
	* Sublime 3
	* VLC
	* Notepad++
	* Paint.net
	* KeePass
	* Google Chrome
	* Firefox

 3. My own default settings are applied (`configure_*.ps1`)
 	* Git (aliases, notepad++ as editor)
 	* PowerShell (including startup path)
 	* Windows Command window size and font
 	* Sublime (settings + plugins)
 	* KeePass (basically _every_ checkbox differs from the default)
