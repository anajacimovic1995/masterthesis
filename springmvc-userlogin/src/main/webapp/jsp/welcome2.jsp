<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Glavna forma</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">

</head>
<body>
	

	<header class="w3-container w3-theme w3-padding" id="myHeader">
	  <i onclick="w3_open()" class="fa fa-bars w3-xlarge w3-button w3-theme"></i> 
	  <div class="w3-center">
	  <h4>BEAUTIFUL RESPONSIVE WEB SITES</h4>
	  <h1 class="w3-xxxlarge w3-animate-bottom">Dobrodosao korisnice ${ime}</h1>
	    <div class="w3-padding-32">
	      <button class="w3-btn w3-xlarge w3-dark-grey w3-hover-light-grey" onclick="document.getElementById('id01').style.display='block'" style="font-weight:900;">LEARN W3.CSS</button>
	    </div>
	  </div>
	</header>
	
	<div class="w3-container">
	<hr>	
	<div class="w3-bar w3-theme">
	  
	  <a href="/springmvc-user-reg-login/nmf" class="w3-bar-item w3-button w3-padding-16">NMF</a>	  
	  <a href="/springmvc-user-reg-login/noviCitalac" class="w3-bar-item w3-button w3-padding-16">Pokreni za novog korisnika</a>

	  <a href="home.jsp" class="w3-bar-item w3-button w3-padding-16">Logout</a>
	</div>
	</div>
	<hr>
  	<div class="w3-center">
	    <h2>Raspodela segmenata</h2>
		<div id="piechart" align = "center"></div>
	
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
		  var options = {'title':'', 'width':550, 'height':400};
		
		  // Display the chart inside the <div> element with id="piechart"
		  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
		  chart.draw(data, options);
		}
		</script>
	</div>	
	<div class="w3-container">
	  <hr>
	  <div class="w3-center">
	    <h2>Parametri segmenata</h2>
	    <p w3-class="w3-large">Prosecne vrednosti atributa svakog od segmenata.</p>
	  </div>
		<div class="w3-responsive w3-card-4">
		<table class="w3-table w3-striped w3-bordered">
		<thead>
		<tr class="w3-theme">
		  	<th>Segment</th>
		    <th>Broj ocena</th>
		    <th>Suma ocena</th>
		    <th>Prosecna ocena</th>
		    <th>Broj recenzija autora</th>
		    <th>Suma ocena autora</th>
		    <th>Broj ocena na omiljeni zanr</th>
		</tr>
		</thead>
		<tbody>
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
		</tbody>
		</table>
		</div>
	<hr>
	<h2 class="w3-center">Opis segmenata</h2>
	<p w3-class="w3-large">Diferenciraju se tri segmenta dobijena kmeans klasterizacijom.</p>
	<button onclick="myAccFunc('Demo1')" class="w3-padding-16 w3-theme w3-button w3-block w3-left-align">${segmenti.get(0).getNazivSeg()}</button>
	<div id="Demo1" class="w3-hide">
	  <div class="w3-container">
	    <p>	Prvi segment cine ${segmenti.get(0).getNazivSeg()}. Ovaj segment cine citaoci koji su slabje aktivni kada se radi o ocenjivanju
	knjiga koje citaju. Autori koje citaju imaju najmanje recenzija u poredjenju sa druga dva segmenta. Prosecne ocene autora su, pak,
	priblizne kao u kod segmenta ${segmenti.get(1).getNazivSeg()}. Ocenjivanje najcitanijeg zanra kod prvog i drugog segmenta je isto.
	    </p>
	  </div>
	</div>
	<button onclick="myAccFunc('Demo2')" class="w3-padding-16 w3-theme w3-button w3-block w3-left-align">${segmenti.get(1).getNazivSeg()}</button>
	<div id="Demo2" class="w3-hide">
	    <p>		Drugi segment cine ${segmenti.get(1).getNazivSeg()}. Ovaj segment cine ljudi koji su najaktivniji kada se radi o ocenjivanju, i daju najvise ocena
	knjigama koje su procitali. Takodje, autore koje citaju su najvise puta ocenjeni.</p>
	</div>
	<button onclick="myAccFunc('Demo3')" class="w3-padding-16 w3-theme w3-button w3-block w3-left-align">${segmenti.get(2).getNazivSeg()}</button>
	<div id="Demo3" class="w3-hide w3-black">
	  <div class="w3-container">
	    	<p>
	Treci segment cine ${segmenti.get(2).getNazivSeg()}. Poslednji segment cine citaoci koji su za nijansu aktivniji od prvog segmenta.
	Broj ocena koje ostavljaju na knjige koje su procitali je malo visi, a razlika je da citaju autore sa vecim brojem recenzija od prvog segmenta.
	Razlika ovog segmenta od prethodna dva je slabije ocenjivanje najcitanije zanra citanja, kao i citanje autora sa za nijansu slabijom ocenom 
	od prva dva segmenta.</p>
	  </div>
	</div>
	<footer class="w3-container w3-padding-64 w3-center w3-opacity w3-light-grey w3-xlarge">
	  <i class="fa fa-facebook-official w3-hover-opacity"></i>
	  <i class="fa fa-instagram w3-hover-opacity"></i>
	  <i class="fa fa-snapchat w3-hover-opacity"></i>
	  <i class="fa fa-pinterest-p w3-hover-opacity"></i>
	  <i class="fa fa-twitter w3-hover-opacity"></i>
	  <i class="fa fa-linkedin w3-hover-opacity"></i>
	  <p class="w3-medium">Powered by Ana Jacimovic</p>
	</footer>
	<script>		
		function myAccFunc(id) {
		  var x = document.getElementById(id);
		  if (x.className.indexOf("w3-show") == -1) {
		    x.className += " w3-show";
		  } else { 
		    x.className = x.className.replace(" w3-show", "");
		  }
		}
	</script>

</body>
</html>