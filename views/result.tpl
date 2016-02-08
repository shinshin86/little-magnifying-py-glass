<!DOCTYPE html>
<html>
    <head>
    <link href="{{url('static_file', filepath='./static/style.css') }}"rel="stylesheet" type="text/css" />
    <link href="{{url('static_file', filepath='./static/tabulous/tabulous.css') }}"rel="stylesheet" type="text/css" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=10">
    <title>Result of analysis!!</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script src="{{url('static_file', filepath='./static/jquery-1.10.2.min.js') }}" type="text/javascript"></script>
    <script src="{{url('static_file', filepath='./static/tabulous/tabulous.js') }}" type="text/javascript"></script>
    <script src="{{url('static_file', filepath='./static/tabulous/js.js') }}" type="text/javascript"></script>
    <script src="{{url('static_file', filepath='./static/script.js') }}" type="text/javascript"></script>
    </head>
<body>

<div class="title_bar>Result of analysis</div>
    <div class="content">
    <div id="tabs3">
    <ul>
    <li><a href="#tabs-1" title="">Result File Path</a></li>
    <li><a href="#tabs-2" title="">TOTAL COUNT</a></li>
    <li><a href="#tabs-3" title="">Result Texts</a></li>
    </ul>
    <div id="tabs_container">
        <div id="tabs-1">
            <p>Result File Path</p>
            <div class="title_bar">Result file of path is "{{result_file}}"</div>
        </div>
    <div id="tabs-2">
        <p>Total Count=> TODO</p>
        <div class="title_bar">TOTAL COUNT => TODO</div>
            <p>Word Count</p>
            <ul id="result_lists" class="">
            % for count in word_count:
            <li id="result_text">{{count}}</li>
            % end
            </ul>
    </div>
    <div id="tabs-3">
            <p>Result Texts</p>
            <ul id="result_lists" class="">
            % for text in result_text:
                <li id="result_text">{{text}}</li>
            % end
            </ul>
    </div>
</div>
</div>
</body>
</html>