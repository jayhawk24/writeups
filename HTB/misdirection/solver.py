import base64

arr = ["_"] * 36
with open(".secret/files") as f:

    for i in f.readlines():
        if i == '\n':
            continue
        elif i.startswith("./"):
            char = i[-3]
        else:
            arr[int(i) - 1] = char

temp = ""
flag64 = temp.join(arr)
flag64 = bytes(flag64, "utf-8")
flag = base64.decodebytes(flag64)
print(str(flag))
