
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <!--<link rel="icon" href="../../favicon.ico">-->

    <title>Music In2U</title>

    <!-- Bootstrap core CSS -->
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
  <link href="carousel.css" rel="stylesheet">
  </head>

  <body>
 
    <div class="navbar-wrapper">
      <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">Music In2U</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li><a href="home.asp">Home</a></li>
			<li class="dropdown active" >
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Genres <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="rock.asp">Rock</a></li>
                <li><a href="hiphop.asp">Hip Hop</a></li>
                <li><a href="blues.asp">Blues</a></li>
				<li><a href="country.asp">Country</a></li>
				<li class="active"><a href="rnb.asp">Rhythm and Blues</a></li>
                <li role="separator" class="divider"></li>
                
              </ul>
            </li>
			<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Albums <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="albums.asp">View Albums</a></li>
                <li><a href="#">Add Album</a></li>
				<li role="separator" class="divider"></li>
              </ul>
            </li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="../navbar/">Hey <%
			if(Session("user")<>"") then
				response.write(session("user"))
			else
				response.write("Guest")
			end if
			%></a></li>
			<%
			if(Session("user")<>"") then
				response.write("<li><a href='logout.asp'>Logout</a></li>")
			else
				response.write("<li><a href='login.html'>Login</a></li>")
			end if
			%>
            
          </ul>
              </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>
	<img class="cover" src="images/rnbcarousel.jpg">
	<br>
	<br>
	
	<div class="container marketing">
	<p>Rhythm and blues, often abbreviated as R&B or RnB, is a genre of popular African-American music that originated in the 1940s. The term was originally used by record companies to describe recordings marketed predominantly to urban African Americans, at a time when "urbane, rocking, jazz based music with a heavy, insistent beat" was becoming more popular. In the commercial rhythm and blues music typical of the 1950s through the 1970s, the bands usually consisted of piano, one or two guitars, bass, drums, saxophone, and sometimes background vocalists. R&B lyrical themes often encapsulate the African-American experience of pain and the quest for freedom and joy. Lyrics focus heavily on the themes of triumphs and failures in terms of relationships, freedom, economics and aspirations</p>
	<p>The term rhythm and blues has undergone a number of shifts in meaning. In the early 1950s it was frequently applied to blues records.[4] Starting in the mid-1950s, after this style of music contributed to the development of rock and roll, the term "R&B" became used to refer to music styles that developed from and incorporated electric blues, as well as gospel and soul music. In the 1960s, several British rock bands such as the Rolling Stones, The Who and The Animals were referred to and promoted as being RnB bands; posters for The Who's residency at the Marquee Club in 1964 contained the slogan, "Maximum R&B". This tangent of RnB is now known as "British rhythm and blues". By the 1970s, the term rhythm and blues changed again and was used as a blanket term for soul and funk. In the 1980s, a newer style of R&B developed, becoming known as "Contemporary R&B". It combines elements of rhythm and blues, soul, funk, pop, hip hop and dance. Popular R&B vocalists at the end of the 20th century included Michael Jackson, R. Kelly, Stevie Wonder, Whitney Houston, and Mariah Carey.</p>
	<iframe class="xmltable" src="rnbsongs.xml"></iframe>
	<br>
	<br>
	
	<!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2016 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>
    </div><!-- /.container -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="dist/js/bootstrap.min.js"></script>
  </body>
</html>
