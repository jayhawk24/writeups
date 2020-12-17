# f = open("my_magic_bytes.jpg.enc")
# cyphertext = f.readline()
# paintext = b'JIFF'
# key = "".join(chr(c^m) for c,m in zip(cyphertext,plaintext)
# print(key)

with open("hexdumpmagicbytes.txt") as f:
    hexval = f.readline()
    temp = hexval.split(" ")
    cypher = []
    
    for c in range(1, len(temp)):
        cypher.append("0x"+temp[c].strip())

    tempdecrypt = "0000000 ffd8 ffe0 0010 4a46 4946 0001 0101 0048"
    
    decrypt = []
    temp = tempdecrypt.split(" ")
    for m in range(1, len(temp)):
        decrypt.append("0x"+temp[m])

    
    key = " ".join(hex(int(c,16) ^ int(m,16)) for c,m in zip(cypher, decrypt))

with open("hexdumpmagicbytes.txt") as f:
    for lines in f.readlines():
        temp = hexval.split(" ")
        cyphertext = []

        for c in range(1, len(temp)):
            cyphertext.append("0x"+temp[c].strip())
        
        kind = key.split(" ")

        res = " ".join(hex(int(c,16) ^ int(k,16)) for c,k in zip(cyphertext,kind))

        print(res)