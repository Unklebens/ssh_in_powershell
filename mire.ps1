$URL="https://ttp10-perftech.ca-technologies.fr/connexion/"
$Mire=""
$Mire=Invoke-WebRequest $URL

try {
    if ($Mire.InputFields[0].name = "username")
        {
            Write-Output "la mire de connexion semble correcte"
        }
    else {
        Write-Output "CPT"
        # pas sur que ca soit le meilleure endroit pour call le script ssh a voir
        & .\sshviapowershell.ps1
    }
}
catch { Write-Output "Portal Down" }

