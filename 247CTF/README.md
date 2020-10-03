# Writeups of 247/CTF

## Beginner challenges

### tips and tricks  
`  

	import socket  
	import re  

	HOST = 'a2befdcc18c9fdd3.247ctf.com'  
	PORT = 50441  
	templist = ['247', '500']  
	regexp = r'\d{1,4}'  
  
	con = socket.socket(socket.AF_INET, socket.SOCK_STREAM)  
	con.connect((HOST, PORT))  

	while True:  
    	total = 0  
    	data = con.recv(1024)  
    	 match = re.findall(regexp, repr(data))  
    
    	for num in match:  
        	if num not in templist:  
            		total += int(num)  
    		print(repr(data))  
    		print("Sending %d" % total)  
    		bt = bytes(total)  
    		con.sendall(bt)  

`
## Web

### Secured Session
Visiting the website shows this code.
`

    import os
    from flask import Flask, request, session
    from flag import flag
    
    app = Flask(__name__)
    app.config['SECRET_KEY'] = os.urandom(24)
    
    
    def secret_key_to_int(s):
        try:
            secret_key = int(s)
        except ValueError:
            secret_key = 0
        return secret_key
    
    
    @app.route("/flag")
    def index():
        secret_key = secret_key_to_int(
            request.args['secret_key']) if 'secret_key' in request.args else None
        session['flag'] = flag
        if secret_key == app.config['SECRET_KEY']:
            return session['flag']
        else:
            return "Incorrect secret key!"
    
    
    @app.route('/')
    def source():
        return "
    
    
    %s
    
    " % open(__file__).read()
    
    if __name__ == "__main__":
        app.run()
    
`
So a session is created always with this line.
`
	session['flag'] = flag
`
  
We can set our session by adding a get parameter called secret_key which will set our session and we will get our flag.  
so goto b12fa redacted .247ctf.com/flag?secret_key  
and you will get a cookie called   

session=eyJmbGFnIjp7Ii redacted ptPn6ECgKW2vT09o

decrypt it twice with base 64.
  
{"flag":{" b":"247CTF{da807 redacted 807b9a91}"fX0._lU-Q.LGd_µ4´~i´ùú(
[kÓ09o

### Trusted Client
Look into the source code and you will find a javascript function which runs on submiting.  
It is written in js fu*k so decrypt on this website https://enkhee-osiris.github.io/Decoder-JSFuck/ it get find the flag. 

### Compare The Pair 

I wrote the following script to get the flag. What we need to do is to get an md5 hash that starts with "0e" and has all digits after that also the md5 is done of salt.password so here is how I did it.  
```
#!/usr/bin/env python
import os
import hashlib
import string


def clear():
    os.system('clear')


ALLOWED_CHARACTERS = string.ascii_uppercase
NUMBER_OF_CHARACTERS = len(ALLOWED_CHARACTERS)


def characterToIndex(char):
    return ALLOWED_CHARACTERS.index(char)


def indexToCharacter(index):
    if NUMBER_OF_CHARACTERS <= index:
        raise ValueError("Index out of range.")
    else:
        return ALLOWED_CHARACTERS[index]


def next(string):
    if len(string) <= 0:
        string.append(indexToCharacter(0))
    else:
        string[0] = indexToCharacter(
            (characterToIndex(
                string[0]) + 1) %
            NUMBER_OF_CHARACTERS)
        if characterToIndex(string[0]) is 0:
            return list(string[0]) + next(string[1:])
    return string


def main():
    sequence = list()
    salt = "f789bbc328a3d1a3"
    while True:

        temp = ""
        mystr = temp.join(sequence)
        print(buildstr, res.hexdigest())
            clear()

            if res.hexdigest()[2:].isdigit():
                print(buildstr, res.hexdigest())
                print("password : %s", mystr)
                break

        sequence = next(sequence)


if __name__ == "__main__":
    main()
```

## Miscellanious

### The Text Editor Jail

Just enter :!ls to run command ls on vim  
the we can see that there is a file named run_for_flag or something
run it by first pressing escape and then :!./run_for_flag  
and there you will have the flag.  

### An impossible Number

Can you think of a number which at the same time is one more than itself?

Yes it is the maximum positive value an integer can store in a variable.

### 