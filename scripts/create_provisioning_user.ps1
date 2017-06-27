& net user "vagrant" "$($env:PROVISIONING_PASSWORD)" /add
& net user "vagrant" /expires:never
& net localgroup "Administrators" "vagrant" /add
