Write-Host """Password Cheack - password should contain at least: one lower case letter, one upper case letter, One number and be over 10 chars long"""

$s='aAA23as'

Write-Host  "password is $s"
# loop to check content of password var and validate it
if (($s -cmatch '[a-z]') -and ($s -cmatch '[A-Z]') -and ($s -match '\d') -and ($s.length -ge 10)) 
{
       Write-Host "Pass! Password is Good!"
        exit 0
}
else
{
        Write-Host "Fail! Password does not meet required pattern !"
        exit 1
}