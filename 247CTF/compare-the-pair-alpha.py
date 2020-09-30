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

        buildstr = salt + mystr
        res = hashlib.md5(buildstr.encode())

        if res.hexdigest().startswith("0e"):
            print(buildstr, res.hexdigest())
            clear()

            if res.hexdigest()[2:].isdigit():
                print(buildstr, res.hexdigest())
                print("password : %s", mystr)
                break

        sequence = next(sequence)


if __name__ == "__main__":
    main()
