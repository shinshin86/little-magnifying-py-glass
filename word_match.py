# -*- coding: utf-8 -*-
import re

def word_check(check_word):

    # Not process case
    # => TODO this function
    if check_word == "。":
        return True
    elif check_word == "、":
        return True
    elif check_word == " ":
        return True
    elif check_word == "":
        return True
    elif check_word == "の":
        return True
    elif check_word == "・":
        return True
    elif check_word == "!":
        return True
    elif check_word == "?":
        return True


    return False
