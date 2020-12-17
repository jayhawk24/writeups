import requests
import re

response = requests.get("https://finger-warmup.chals.damctf.xyz/f1ff0jtx8vv8uszy6463n5")
arr = response.text.split('"')
while(True):
    resp = requests.get("https://finger-warmup.chals.damctf.xyz/"+arr[1])
    print(resp.text)
    arr = resp.text.split('"')