<!DOCTYPE html>
<html>
    <head>
    <link href="{{url('static_file', filepath='./static/style.css') }}"rel="stylesheet" type="text/css" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=10">
    <title>Result of analysis!!</title>
    <script src="{{url('static_file', filepath='./static/script.js') }}" type="text/javascript"></script>
    </head>
<body>

    <div class="title_bar>Result of analysis</div>
    <div class="content">
    <p>Result File Path</p>
    <div class="title_bar">Result file of path is "{{result_file}}"</div>
    <p>Total Count=> TODO</p>
    <div class="title_bar">TOTAL COUNT => TODO</div>
    <p>Word Count</p>
    <ul id="result_lists" class="">
    % for count in word_count:
    <li id="result_text">{{count}}</li>
    % end
    </ul>
    <p>Result Texts</p>
    <ul id="result_lists" class="">
    % for text in result_text:
        <li id="result_text">{{text}}</li>
    % end
    </ul>
    </div>
</body>
</html>