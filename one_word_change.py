# -*- coding: utf-8 -*-
import re
import sys

###########################################################################
# This code is not work yet!!
# Target file(Already morphological analysis file) to process to word only.
###########################################################################

argvs = sys.argv
argc = len(argvs)
if (argc != 2):
    print('Usage: # python %s filename' % argvs[0])
    quit()

r = re.compile("(.*)(\s)(.*)")

with open(argvs[1],mode='r', encoding='utf-8') as read_file:
    line = read_file.readline()
    while line:
        m = r.match(str(line))
        print(m.group(1))




