$targetServer='10.166.205.92'
$UserName=''
$PassWord=Get-Content ./password.file
$pass = ConvertTo-SecureString -AsPlainText $PassWord -Force
$cred = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $UserName,$pass
     try
          {
           $session = New-SSHSession -ComputerName $targetServer -Port "22" -Credential $cred -AcceptKey -Force -Verbose
            $result = Invoke-SSHCommand -SSHSession $session -Command "docker restart $(docker ps -aq)"
            Write-Host "OpenFirstSshConnection says: $($result.Output)"
          }

            catch
        {
            Write-Error "Exception in first ssh connection (session details: $session): $_"
            Write-Host $_.Exception.Message
            throw
        } 