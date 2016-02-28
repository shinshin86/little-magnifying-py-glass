# -*- coding: utf-8 -*-
import re
import sys

###########################################################################
# This code is developing yet!!
# Target file(Already morphological analysis file) to process to word only.
###########################################################################

argvs = sys.argv
argc = len(argvs)
if (argc != 2):
    print('Usage: # python %s filename' % argvs[0])
    quit()

with open(argvs[1],mode='r', encoding='utf-8') as read_file:
    line = read_file.readlines()
    for l in line:
        split_text_list = str(l).split()
        print(split_text_list[0])


