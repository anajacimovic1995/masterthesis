<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Glavna forma</title>
</head>
<body>
	<table>
		<tr>
			<td>Dobrodosao korisnice ${ime}</td>
		</tr>
		<tr>
		</tr>
		<tr>
		</tr>
		<tr>
			<td><a href="home.jsp">Home</a></td>
			<td><a href="/springmvc-user-reg-login/nmf" class="active">NMF klasterizacija</a></td>
		</tr>
	</table>
	<div id="piechart"></div>

	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>	
	<script type="text/javascript">
	
	google.charts.load('current', {'packages':['corechart']});
	google.charts.setOnLoadCallback(drawChart);
	
	
	function drawChart() {
	  var data = google.visualization.arrayToDataTable([
	  ['Segment', 'Udeo'],
	  ['${segmenti.get(0).getNazivSeg()}', ${segmenti.get(0).getUdeo()}],
	   ['${segmenti.get(1).getNazivSeg()}', ${segmenti.get(1).getUdeo()}],
	   ['${segmenti.get(2).getNazivSeg()}', ${segmenti.get(2).getUdeo()}]
	]);
	
	  // Optional; add a title and set the width and height of the chart
	  var options = {'title':'Raspodela segmenata', 'width':550, 'height':400};
	
	  // Display the chart inside the <div> element with id="piechart"
	  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
	  chart.draw(data, options);
	}
	</script>
	
</body>
</html>