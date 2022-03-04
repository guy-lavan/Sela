Write-Host(
"""
Hello!
My name is Guy Orr-Lavan 
I'm 26 years old & Happily married, i work in the Government ICT Authority where I have 2 Jobs:
1) NOC/SOC tech lead where i work with many tools such as:
Cyber Defense tools like: FW / IPS / WAF / Splunk / many more!
And IT Infrastructure tools like: SOA XML FW / Web SERVERS / Load balancers and more!  
2) DevOps Automation where i mostly use IT Automation and Orchestration System to Automate Continuous Delivery and work on AWS & GCP

""")

write-host("Now i will check the content of the txt file...")
$content = Get-Content 'C:\Users\User\Desktop\Sela Bootcamp\Sela\Check_Content_Sela.txt'
Write-Host("content of the file is: " + '"' + $content + '"')
$string_list = @('i should be here','i should NOT be in the file')
foreach ( $string in $string_list){
    if($string -eq $content){
     Write-Host("the string: " +'"' + $string + '"'+ " is in the file")}
    else{
        Write-Host("the string: " +'"' + $string + '"'+ " is NOT in the file")}
     }