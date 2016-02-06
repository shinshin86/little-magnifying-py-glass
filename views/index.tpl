<!DOCTYPE html>
<html>
    <head>
    <link href="{{url('static_file', filepath='./static/style.css') }}"rel="stylesheet" type="text/css" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=10">
    <title>Welcome Analyst!!</title>
    <script src="{{url('static_file', filepath='./static/script.js') }}" type="text/javascript"></script>
    </head>
<body>


<div class="member">
<p class="part">形態素解析</p>
<form action="/upload" method="post" enctype="multipart/form-data">
Category => TODO:      <input type="text" name="category" /><br>
Select a Analyzed file: <input type="file" name="upload" /><br>
<input type="submit" value="Start Analytics" />
</form>
</div>



</body>
</html>