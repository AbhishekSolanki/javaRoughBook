<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link
	href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">
<script type="text/JavaScript"
	src="<%=request.getContextPath()%>/core/jquery-1.11.0.min.js"></script>
<script type="text/JavaScript"
	src="<%=request.getContextPath()%>/core/jquery-ui-1.10.3.minimal.min.js"></script>
<style>

#wrapper {
     width: 1000px;
     margin: 0 auto;
     padding: 0;
     overflow: auto;
}

#leftcolumn {
     width: 400px;
    
     padding: 0;
     margin: 0;
     display: block;
     border: 1px solid white;
     position: fixed;
}

#rightcolumn {
     width: 400px;
    
     display: block;
     float: right;
     border: 1px solid white;
}

#sortable-1,#sortable-2 {
	list-style-type: none;
	margin: 0;
	padding: 0;
	width: 100%;
	float: left
}
h3 {
	list-style-type: none;
	margin: 0;
	padding: 0;
	
}

#sortable-1 li,#sortable-2 li {
	margin: 0 3px 3px 3px;
	padding: 0.4em;
	padding-left: 1.5em;
	font-size: 17px;
	height: 16px;
	color: white;
}

.default {
	background: #3090C7;
	border: 1px solid #DDDDDD;
	border-radius: 25px;
	color: #333333;
}

.myButton {
	-moz-box-shadow: 0px 0px 0px 2px #9fb4f2;
	-webkit-box-shadow: 0px 0px 0px 2px #9fb4f2;
	box-shadow: 0px 0px 0px 2px #9fb4f2;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #7892c2), color-stop(1, #476e9e));
	background:-moz-linear-gradient(top, #7892c2 5%, #476e9e 100%);
	background:-webkit-linear-gradient(top, #7892c2 5%, #476e9e 100%);
	background:-o-linear-gradient(top, #7892c2 5%, #476e9e 100%);
	background:-ms-linear-gradient(top, #7892c2 5%, #476e9e 100%);
	background:linear-gradient(to bottom, #7892c2 5%, #476e9e 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#7892c2', endColorstr='#476e9e',GradientType=0);
	background-color:#7892c2;
	-moz-border-radius:10px;
	-webkit-border-radius:10px;
	border-radius:10px;
	border:1px solid #4e6096;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:arial;
	font-size:18px;
	padding:12px 37px;
	text-decoration:none;
	text-shadow:0px 1px 0px #283966;
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #476e9e), color-stop(1, #7892c2));
	background:-moz-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background:-webkit-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background:-o-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background:-ms-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background:linear-gradient(to bottom, #476e9e 5%, #7892c2 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#476e9e', endColorstr='#7892c2',GradientType=0);
	background-color:#476e9e;
}
.myButton:active {
	position:relative;
	top:1px;
}

li:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #476e9e), color-stop(1, #7892c2));
	background:-moz-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background:-webkit-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background:-o-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background:-ms-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background:linear-gradient(to bottom, #476e9e 5%, #7892c2 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#476e9e', endColorstr='#7892c2',GradientType=0);
	background-color:#476e9e;
}
</style>
<script>
	$(document).ready(function() {
		$("#sortable-1, #sortable-2").sortable({
			connectWith : "#sortable-1, #sortable-2",
			cancel : "h3"

		});

		$("#sortable-1").find("#ID_1").remove();
		
	});

	function saveOrder() {
		var order = $("ul#sortable-2").sortable("serialize");
		$('#categorysavemessage').html('Saving changes..');
		console.log(order);
		
// 		var productOrder = $("#sortable-2").sortable('toArray').toString();
// 		$("#txt").text(productOrder);

	}
</script>

<title>Customization</title>
</head>
<body>
<body>

<div id="wrapper">
<input id="saveChangebtn" name="saveChangeBtn" class="myButton" type="button" value="Save Changes"
		onClick="saveOrder();" />
		
	<p id="txt" name="txt"></p>
<div id="leftcolumn">
<h3>Charts Available</h3>
	<ul id="sortable-1">
		<li id="ID_1" class="default">1</li>
		<li id="ID_2" class="default">2</li>
		<li id="ID_3" class="default">3</li>
		<li id="ID_4" class="default">4</li>
	</ul>
</div>
<div id="rightcolumn">
	<h3>Charts on Dashboard </h3>
	<ul id="sortable-2">
		<li id="ID_5" class="default">5</li>
		<li id="ID_6" class="default">6</li>
		<li id="ID_7" class="default">7</li>
		<li id="ID_8" class="default">8</li>
	</ul>
	</div>
</div>

	
</body>
</body>
</html>