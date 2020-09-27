# Writeups of DarkCTF 2020
## Web 
### Source
check the source code we can change user agent in burp suite.
We have to enter a number greater than 10000 but its length should be less than 4  
so we can enter exponential number like '9e9' and that gives us the flag

### Simple SQL
When we look at source you can see that there is a comment saying 
`
 
    <br><!-- Try id as parameter  --> 

`
  
So just try every id as parameter and we get the flag at id=9
http://simplesql.darkarmy.xyz/?id=9

### So Simple
sqlmap -r req.txt --batch  

where req.txt is the captured request from burp of URL :  http://web.darkarmy.xyz:30001/?id=3


## Reverse Engineering
### So_much
open program in gdb you will find there is a comparison of a variable to zero .  
In gdb we set a breakpoint at the address where if statement is there and then we set the value of $eax register to zero.
so it passes that condition and we get our flag.
