<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Jquery Veri Çekme</title>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<script>
$(document).ready(function() {

$("#div").load("verilisteleme.php");

});


</script>

</head>

<body>

<div id="div"></div>

</body>

</html>