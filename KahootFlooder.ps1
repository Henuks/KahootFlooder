#config
$code="7097915"
$amount=50
$name="Test"

#code
$wshell = New-Object -ComObject wscript.shell
echo 3
Start-Sleep -Milliseconds 1000
echo 2
Start-Sleep -Milliseconds 1000
echo 1
Start-Sleep -Milliseconds 1000
$wshell.AppActivate((Get-Process Chrome).Where({ $_.MainWindowTitle }, 'First').Id)
Start-Sleep -Milliseconds 1000
$n=0
$r=Get-Random -Maximum 100000
while ($n -lt $amount) {
$wshell.SendKeys('^tkahoot.it{enter}')
Start-Sleep -Milliseconds 1500
$wshell.SendKeys('{tab}')
Start-Sleep -Milliseconds 10
$wshell.SendKeys('{tab}')
Start-Sleep -Milliseconds 10
$wshell.SendKeys($code)
Start-Sleep -Milliseconds 10
$wshell.SendKeys('{enter}')
Start-Sleep -Milliseconds 700
$wshell.SendKeys('{tab}')
Start-Sleep -Milliseconds 10
$wshell.SendKeys('{tab}')
Start-Sleep -Milliseconds 10
$wshell.SendKeys($name+" "+$r+$n)
Start-Sleep -Milliseconds 10
$wshell.SendKeys('{enter}')
Start-Sleep -Milliseconds 20
$n++
}
