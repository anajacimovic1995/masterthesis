<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>NMF klasteri</title>
	<style>
	table {
	  font-family: arial, sans-serif;
	  border-collapse: collapse;
	  width: 100%;
	}
	
	td, th {
	  border: 1px solid #dddddd;
	  text-align: left;
	  padding: 8px;
	}
	
	tr:nth-child(even) {
	  background-color: #dddddd;
	}
	</style>
</head>
<body>
	<table>
		<tr>
		</tr>
		<tr>
		</tr>
		<tr>
			<td><a href="home.jsp">Home</a></td>
			<td><a href="/springmvc-user-reg-login/welcome" class="active">Kmeans klasterizacija</a></td>
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
		<h2>Parametri segmenata</h2>

	<table>
	  <tr>
	  	<th>Segment</th>
	    <th>Broj ocena</th>
	    <th>Suma ocena</th>
	    <th>Prosecna ocena</th>
	    <th>Broj recenzija autora</th>
	    <th>Suma ocena autora</th>
	    <th>Broj ocena na omiljeni zanr</th>
	  </tr>
	  <tr>
	  	<th>${segmenti.get(0).getNazivSeg()}</th>
	    <th>${segmenti.get(0).getRatingCount()}</th>
	    <th>${segmenti.get(0).getRatingSum()}</th>
	    <th>${segmenti.get(0).getAverageRating()}</th>
	    <th>${segmenti.get(0).getAuthorReviewSum()}</th>
	    <th>${segmenti.get(0).getAuthorRatingSum()}</th>
	    <th>${segmenti.get(0).getCount()}</th>
	  </tr>
	  <tr>
	  	<th>${segmenti.get(1).getNazivSeg()}</th>
	    <th>${segmenti.get(1).getRatingCount()}</th>
	    <th>${segmenti.get(1).getRatingSum()}</th>
	    <th>${segmenti.get(1).getAverageRating()}</th>
	    <th>${segmenti.get(1).getAuthorReviewSum()}</th>
	    <th>${segmenti.get(1).getAuthorRatingSum()}</th>
	    <th>${segmenti.get(1).getCount()}</th>
	  </tr>
	  <tr>
	  	<th>${segmenti.get(2).getNazivSeg()}</th>
	    <th>${segmenti.get(2).getRatingCount()}</th>
	    <th>${segmenti.get(2).getRatingSum()}</th>
	    <th>${segmenti.get(2).getAverageRating()}</th>
	    <th>${segmenti.get(2).getAuthorReviewSum()}</th>
	    <th>${segmenti.get(2).getAuthorRatingSum()}</th>
	    <th>${segmenti.get(2).getCount()}</th>
	  </tr>
	</table>
	<p>
	Opis klastera NMF klasterizacije
	<p>
	Razlike izmedju klastera su jako male, najmanje izmedju prvog i treceg klastera. Zapazeno je da su kod drugog 
	klastera broj i stepen ocenjivanja manji nego kod druga dva klastera. Takodje, primetno je da je i stepen 
	ocenjivanja najcitanijeg zanra manji nego kod ostalih.
</body>
</html>