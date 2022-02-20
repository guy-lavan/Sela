print(
    """Hello!
My name is Guy Orr-Lavan 
I'm 26 years old & Happily married, i work in the Government ICT Authority where I have 2 Jobs:
1) NOC/SOC tech lead where i work with many tools such as:
Cyber Defense tools like: FW / IPS / WAF / Splunk / many more!
And IT Infrastructure tools like: SOA XML FW / Web SERVERS / Load balancers and more!  
2) DevOps Automation where i mostly use IT Automation and Orchestration System to Automate Continuous Delivery and work on AWS & GCP

""")

print("Now i will check the content of the txt file...")
my_file = open('Check_Content_Sela.txt', 'r')
content = my_file.read()
print("content of the file is: " + content)
my_file.close()
string_dict = ["i should be here", "i should NOT be in the file"]
for string in string_dict:
    if string in content:
        print(string + " is in the file")
    else:
        print(string + " isn't in the file")
