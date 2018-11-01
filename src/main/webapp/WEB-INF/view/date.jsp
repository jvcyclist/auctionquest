<html>
<head>
<meta charset="UTF-8">
<title>Oblicz termin zadawania pytan</title>



<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/style.css">

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
	
	<div class="datacon1">
	
		<form:form action="calcDate" modelAttribute="datec" style="float:left;padding-left:100px;">
			<div>Data wyslania ogloszenia</div>
			<div>
				<form:input path="dateStart" cssClass="date-picker" />
			</div>
			
	
			<div style="clear: both"></div>

</div>
	

<div class="datacon1">
			Data Skladania ofert
			
				<form:input path="dateStop" cssClass="date-picker2" />
			
			<div style="clear: both"></div>
			<input type="submit" value="Oblicz" />
		</form:form>
</div>
		<div id="result" style="padding-left:100px">
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
