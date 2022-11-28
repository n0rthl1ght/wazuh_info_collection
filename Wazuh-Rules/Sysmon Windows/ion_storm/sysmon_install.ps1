if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process PowerShell -Verb RunAs "-NoProfile -ExecutionPolicy Bypass -Command `"cd '$pwd'; & '$PSCommandPath';`"";
    exit;
}

#Sysmon
Set-Location C:\Windows\
Invoke-WebRequest -Uri https://download.sysinternals.com/files/Sysmon.zip -Outfile Sysmon.zip
Expand-Archive Sysmon.zip -force
Write-Host "Unzip Complete."
Invoke-WebRequest -Uri https://raw.githubusercontent.com/ion-storm/sysmon-config/master/sysmonconfig-export.xml -OutFile sysmonconfig-export.xml

./Sysmon/sysmon64.exe -accepteula -i sysmonconfig-export.xml
