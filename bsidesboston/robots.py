import requests

indices = []
mydic = {}

for _ in range(10):
    uri = "http://challenge.ctf.games:31879/robots.txt"

    req = requests.get(uri)

    data = req.text
    count = 0
    for line in data.split('\n'):
        if line.startswith("User"):
            ua = str(line)
            useragent = ua[12:]
        elif line.startswith("Disallow"):
            temp = line.split(" ")
            location = "http://challenge.ctf.games:31879" + temp[-1]

            headers = {
                'User-Agent': useragent,
                'Content-Length': '2'
            }
            req2 = requests.get(location, headers=headers)
            response = req2.text
            if response != 'HELLO ROBOT. UNFORTUNATELY I DO NOT HAVE A FLAG FOR YOU HERE.':
                resplist = response.split(' ')
                if resplist[9] in mydic.keys():
                    mydic[resplist[9]].append(resplist[-4])
                elif resplist[-4] in mydic.keys() or resplist[-4] in mydic.values():
                    mydic[resplist[-4]].append(resplist[9])
                else:
                    mydic[resplist[9]] = [resplist[-4]]
                print(mydic)

print(mydic)