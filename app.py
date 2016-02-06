# -*- coding: utf-8 -*-
from bottle import route, run, template, static_file,url,request
from janome.tokenizer import Tokenizer
from collections import Counter
import os
import re


# read "css","javascript"
@route('/static/<filepath:path>',name='static_file')
def static(filepath):
    return static_file(filepath, root='./static')

@route('/<filepath:path>', name='static_file')
def static(filepath):
    return static_file(filepath, root="./view/")


@route('/')
def index():
    # Logic
    return template("index",url=url)

@route('/upload', method='POST')
def do_upload():
    p = re.compile(r'\s(.*)')
    
    category   = request.forms.get('category')
    upload     = request.files.get('upload')
    name, ext = os.path.splitext(upload.filename)
    if ext not in ('.csv','.json','.txt'):
        return 'File extension not allowed.'
    
    save_path = get_save_path_for_category(category)
    upload.save(save_path,True) # appends upload.filename automatically

    analyzed_file = str(save_path) + str(upload.filename)

    result_file_path = do_analysis(analyzed_file)

    with open(result_file_path,mode='r', encoding='utf-8') as read_file:
        texts = read_file.readlines()

    counter = Counter(texts)
    word_count = []
#    total_count = []
    for word,cnt in counter.most_common():
        word_count.append(str(p.sub('',word)) + " : " + str(cnt))
#        total_count.append(cnt)

#   total_count = sum([cnt])
    return template("result",url=url, result_file=result_file_path,result_text=texts,word_count = word_count)



# create a filepath of result file
def get_save_path_for_category(category):
    if category == '':
        return "./"
    return "tmp/" + str(category) + "/"

def do_analysis(analyzed_file):
    result_file_name = "result/" + str(analyzed_file)
    
    t = Tokenizer()
    
    with open(analyzed_file,mode='r', encoding='utf-8') as read_file:
        texts = read_file.read()
    
    with open(result_file_name, mode='a', encoding='utf-8') as result_file:
        for token in t.tokenize(str(texts)):
            result_file.write(str(token) + "\n")
        
    return result_file_name



# サーバーの設定(開発用) - debugとreloaderを有効にしている
run(host='localhost', port=8081, debug=True, reloader=True)
