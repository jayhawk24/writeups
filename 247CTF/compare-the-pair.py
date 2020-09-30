
def clear():
    os.system( 'clear' )

if __name__ == "__main__":

    import hashlib
    import os
    i = 0
    salt = "f789bbc328a3d1a3"
    while True:

        buildstr = salt+str(i)
        res = hashlib.md5(buildstr.encode())
        print(buildstr,res.hexdigest())

        clear()

        if res.hexdigest().startswith("0e"):
            if res.hexdigest()[2:].isnumeric():
                print(buildstr,res.hexdigest)
                break
        i+=1
