robocopy '.\Sublime3' "$env:APPDATA\Sublime Text 3" /W:1 /R:3



#install sublimetext_indentxml
Push-Location
cd C:\github
if(![System.IO.Directory]::Exists("C:\github\alek-sys\sublimetext_indentxml"))
{
	git clone https://github.com/alek-sys/sublimetext_indentxml.git alek-sys\sublimetext_indentxml
	cd alek-sys\sublimetext_indentxml
}
else
{
	cd alek-sys\sublimetext_indentxml
	git pull
}
robocopy '.\' "$env:APPDATA\Sublime Text 3\Packages\sublimetext_indentxml" /W:1 /R:3


#install hasher
Push-Location
cd C:\github
if(![System.IO.Directory]::Exists("C:\github\dangelov\hasher"))
{
	git clone https://github.com/dangelov/hasher.git dangelov\hasher
	cd dangelov\hasher
}
else
{
	cd dangelov\hasher
	git pull
}
robocopy '.\' "$env:APPDATA\Sublime Text 3\Packages\hasher" /W:1 /R:3
Pop-Location
