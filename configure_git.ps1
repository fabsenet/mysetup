Copy-Item .\git\.gitconfig $env:HOMEDRIVE$env:HOMEPATH\.gitconfig


$title = "git proxy"
$message = "Set git proxy to 127.0.0.1:8888 (Fiddler)?"
$yes = New-Object System.Management.Automation.Host.ChoiceDescription "&Yes", "Sets git proxy to 127.0.0.1:8888 (Fiddler)"
$no = New-Object System.Management.Automation.Host.ChoiceDescription "&No", "Does nothing"
$options = [System.Management.Automation.Host.ChoiceDescription[]]($yes, $no)
$result = $host.ui.PromptForChoice($title, $message, $options, 0) 

if($result -eq 0){
    git config --global http.proxy http://127.0.0.1:8888
    git config --global https.proxy http://127.0.0.1:8888
}


$title = "ssl cert"
$message = "Should git IGNORE ssl certs?"
$yes = New-Object System.Management.Automation.Host.ChoiceDescription "&Yes", "git will not validate ssl certificates"
$no = New-Object System.Management.Automation.Host.ChoiceDescription "&No", "Does not change default (default=always validate certificate)"
$options = [System.Management.Automation.Host.ChoiceDescription[]]($yes, $no)
$result = $host.ui.PromptForChoice($title, $message, $options, 0) 

if($result -eq 0){
    git config --global http.sslVerify false
}