$URL="https://tty10-perftech.ca-technologies.fr/tests-techniques-integration/v1/demande/3"
$Mire2=""

try {
    $Mire2=Invoke-WebRequest $URL
    $output=ConvertFrom-Json $Mire2.Content
    if ($output.groupesDeTests.idDemande -eq '3' ) {
        Write-Output "API ok"
    }
    else{
        Write-Output "Resultat API incohérant"
    }
}

catch {
    Write-Output "L'api ne reponds pas "
}