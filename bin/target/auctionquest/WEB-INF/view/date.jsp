<html>
<head>
  <meta charset="UTF-8">
    <title>Oblicz termin zadawania pytan</title>
    <style>
        *{margin:0;padding:0;}
        a{
            text-underline: none;
        }
        .container{
            width:762px;
            margin:0 auto;
        }
        #calendar1{
            padding:10px;
            float: left;
        }
        #calendar2{
            padding:10px;
            float: left;
        }
        .calendar1-msg,.calendar2-msg{
            width:100%;
            height:30px;
            line-height:30px;
            color:#000;
            text-align: center;
            font-size:14px;
            display:block;
        }
        h1{
            width:100%;
            height:40px;
            line-height:40px;
            font-family: Arial;
            text-align: center;
            padding-top:50px;

        }
        h4{
            width:100%;
            height:30px;
            line-height:30px;
            font-weight: normal;
            padding-bottom:10px;
        }
        .btn{
            width:200px;
            height:40px;
            line-height:40px;
            text-align: center;
            border-radius:5px;
            background-color:#f00;
            text-decoration: none;
            color:#fff;
            font-size:14px;
            margin:0 auto;
            display: block;
            margin-bottom:30px;
        }
        #button{
    	height:40px;
        background-color: red;
        }
        #bbutton{
        position:absolute;
        margin-left: auto;
        margin-right: auto;
        }
        
        
        #result{
    	height:40px;
        background-color: yellow;
        }
        
      
        .myButton {
	-moz-box-shadow:inset 0px 39px 0px -24px #e67a73;
	-webkit-box-shadow:inset 0px 39px 0px -24px #e67a73;
	box-shadow:inset 0px 39px 0px -24px #e67a73;
	background-color:#e4685d;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
	border-radius:4px;
	border:1px solid #ffffff;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:18px;
	padding:6px 15px;
	text-decoration:none;
	text-shadow:0px 1px 0px #b23e35;
	
}
.myButton:hover {
	background-color:#eb675e;
}
.myButton:active {
	position:relative;
	top:1px;
}
#text {
height: 120px;
background-color: orange;

}
        
    </style>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/js/nice-date-picker.css">
    <script src="<%=request.getContextPath()%>/resources/js/nice-date-picker.js"></script>

   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<body>
<div>
<div class="container">
    <h1>Obliczanie terminu skladania zapytan do Zamawiajacego</h1>
  <br>  <br>  <br>  <br>

    <div id="calendar1">Zaznacz termin wyslania ogloszenia
        <div id="calendar1-wrapper1"></div>
        <span class="calendar1-msg"></span>
    </div>
    <div id="calendar2">Zaznacz termin skladania ofert
        <div id="calendar1-wrapper2"></div>
        <span class="calendar2-msg"></span>
    </div>

</div>
<div>
<div style="clear:both"></div>

</div></div>

<div id="result"></div>
<div id="text">
<form:form action="calcDate" modelAttribute="datec">
<div>First Date</div>
<div><form:input path="dateStart"/></div>
<div style="clear:both"></div>
<br><br><br>
<div>Second Date</div>
<div><form:input path="dateStop"/></div>
<div style="clear:both"></div>
<input type="submit" value="Oblicz"/>




</form:form>
<div id="result">Termin zadawania pytan: ${datec.result}</div>
</div>



</div>
<script>

    new niceDatePicker({
        dom:document.getElementById('calendar1-wrapper1'),
        year:2018,
        month:5,
        mode:'en',
        onClickDate:function(date)
        {
            document.querySelector('.calendar1-msg').innerHTML='Data wyslania ogloszenia '+date;
        }
    });

    new niceDatePicker({
        dom:document.getElementById('calendar1-wrapper2'),
        year:2018,
        month:5,
        mode:'en',
        onClickDate:function(date)
        {
            document.querySelector('.calendar2-msg').innerHTML='Data skladania ofert '+date;
        }
    });
</script>

</body>
</html>
