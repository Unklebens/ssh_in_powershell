# Structure globale


## test mire de connexion

Verifier que les champs sont bien présents sur la mire 

    Necessite l'installation de la chaine de certificats CA pour la prise en charge du Https lors de l'invokeURL


## Test API sans authentification 

(HTTP 200 ET resultats cohérents)


# Action possibles par le script

en cas de retour non OK : restart des containers et retest

si toujours KO : redemarrage du service Docker sur le l'hôte (systemctl restart docker)

# Exigence coté environnement

Jenkins Plugin powershell 

    Hpi posé le 24/03/2022 prise en compte par jenkins des le 28 dû au reboot de chaque weekend

Mot de passe ssh OU clé ssh dans les credentials de jenkins pour que le code soit publiable (on passe par .gitignore pour l'instant)

Installation du module PowerShell "Posh-SSH" sur hwzuyr0pfm03

    necessite PS v5.1 au lieu de 4.0 (planifié pour la nuit du 24 au 25/03/2022 en loosdé)

droit d'execution de scripts powershell non signés

    Set-ExecutionPolicy Bypass sur jenkins (fait le 24/03/2022)
    
## Manquant suite à l'abandon du projet

une logique qui Invoke les .ps1 dans une ordre logique
