#config
$code="5538785"
$amount=10
$nimi="Stuut"

#code
$wshell = New-Object -ComObject wscript.shell;
Start-Sleep -Seconds 5
$n=0
$r=Get-Random
while ($n -lt $amount) {
$wshell.SendKeys('^tkahoot.it{enter}')
Start-Sleep -Milliseconds 1000
$wshell.SendKeys('{tab}')
Start-Sleep -Milliseconds 10
$wshell.SendKeys('{tab}')
Start-Sleep -Milliseconds 10
$wshell.SendKeys($code)
Start-Sleep -Milliseconds 10
$wshell.SendKeys('{tab}')
Start-Sleep -Milliseconds 10
$wshell.SendKeys('{enter}')
Start-Sleep -Milliseconds 800
$wshell.SendKeys('{tab}')
Start-Sleep -Milliseconds 10
$wshell.SendKeys('{tab}')
Start-Sleep -Milliseconds 10
$wshell.SendKeys($nimi+" "+$r+'.'+$n)
Start-Sleep -Milliseconds 10
$wshell.SendKeys('{tab}')
Start-Sleep -Milliseconds 10
$wshell.SendKeys('{enter}')
$n++
Start-Sleep -Milliseconds 500
}