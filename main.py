def get_small_string(s: str):
    word = list(s)
    for i in range(len(word)):
        if word[i] != "a":
            word[i] = chr(ord(word[i]) - 1)
        else:
            break

    return "".join(word)


if __name__ == "__main__":
    word = "bbcad"
    print(get_small_string(word))
