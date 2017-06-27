if (-not(get-command Get-WUList -ErrorAction Ignore)) {
  choco install --yes pswindowsupdate
} else {
  write-output "PSWindowsUpdates already installed"
}
Get-WUInstall -IgnoreUserInput -AcceptAll -Verbose
Get-WURebootStatus
