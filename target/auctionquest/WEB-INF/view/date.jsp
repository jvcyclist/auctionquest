<html>
<head>
<meta charset="UTF-8">
<title>Oblicz termin zadawania pytan</title>
<style>
* {
	margin: 0;
	padding: 0;
}

a {
	text-underline: none;
}

.container {
	width: 762px;
	margin: 0 auto;
}

#calendar1 {
	padding: 10px;
	float: left;
}

#calendar2 {
	padding: 10px;
	float: left;
}

.calendar1-msg, .calendar2-msg {
	width: 100%;
	height: 30px;
	line-height: 30px;
	color: #000;
	text-align: center;
	font-size: 14px;
	display: block;
}

h1 {
	width: 100%;
	height: 40px;
	line-height: 40px;
	font-family: Arial;
	text-align: center;
	padding-top: 50px;
}

h4 {
	width: 100%;
	height: 30px;
	line-height: 30px;
	font-weight: normal;
	padding-bottom: 10px;
}

.btn {
	width: 200px;
	height: 40px;
	line-height: 40px;
	text-align: center;
	border-radius: 5px;
	background-color: #f00;
	text-decoration: none;
	color: #fff;
	font-size: 14px;
	margin: 0 auto;
	display: block;
	margin-bottom: 30px;
}

#button {
	height: 40px;
	background-color: red;
}

#bbutton {
	position: absolute;
	margin-left: auto;
	margin-right: auto;
}

#result {
	height: 40px;
	background-color: yellow;
}

.myButton {
	-moz-box-shadow: inset 0px 39px 0px -24px #e67a73;
	-webkit-box-shadow: inset 0px 39px 0px -24px #e67a73;
	box-shadow: inset 0px 39px 0px -24px #e67a73;
	background-color: #e4685d;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	border-radius: 4px;
	border: 1px solid #ffffff;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Arial;
	font-size: 18px;
	padding: 6px 15px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #b23e35;
}

.myButton:hover {
	background-color: #eb675e;
}

.myButton:active {
	position: relative;
	top: 1px;
}

#text {
	height: 120px;
	background-color: orange;
	display: block;
}

.date-picker {
	display: block;
}

.date-picker2 {
	display: block;
}


#body{
background-color: #ffffff;
}

</style>


<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/base/jquery-ui-1.10.4.custom.css">
<script
	src="<%=request.getContextPath()%>/resources/js/jquery-1.10.2.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/jquery-ui-1.10.4.custom.js"></script>
<body id="body">
	<div>
		<div class="container">
			<h1>Obliczanie terminu skladania zapytan do Zamawiajacego</h1>
			<br> <br> <br> <br>



		</div>
		<div>
			<div style="clear: both"></div>

		</div>
	</div>

	<div id="text">
		<form:form action="calcDate" modelAttribute="datec">
			<div>Data wyslania ogloszenia</div>
			<div>
				<form:input path="dateStart" cssClass="date-picker" />
			</div>
			<div style="clear: both"></div>




			<div>Data Skladania ofert</div>
			<div>
				<form:input path="dateStop" cssClass="date-picker2" />
			</div>
			<div style="clear: both"></div>
			<input type="submit" value="Oblicz" />
		</form:form>
		<div id="result">
			Termin zadawania pytan: <b>${datec.result}</b>
		</div>
	</div>



	</div>

	<script>
		$(function() {
			$(".date-picker").datepicker();
		});
	</script>


	<script>
		$(function() {
			$(".date-picker2").datepicker();
		});
	</script>


</body>
</html>
