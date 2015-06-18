$oldErrorPreference = $ErrorActionPreference
$ErrorActionPreference = 'stop'

try { if(Get-Command choco) {
#install vim, git, clone vimrc, autohotkey, clone keycommands, chrome, cmdr, pscx, node, 
}}
catch {
    Write-Host "INSTALLING CHOCOLATY"
    iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
}
finally {
    $ErrorActionPreference = $oldErrorPreference
}