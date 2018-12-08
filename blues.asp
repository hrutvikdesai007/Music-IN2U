
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
                <li class="active"><a href="blues.asp">Blues</a></li>
				<li><a href="country.asp">Country</a></li>
				<li><a href="rnb.asp">Rhythm and Blues</a></li>
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
	<img class="cover" src="images/bluescarousel.jpg">
	<br>
	<br>
	
	<div class="container marketing">
	<p>Blues is a genre and musical form originated by African Americans in the Deep South of the United States around the end of the 19th century. The genre developed from roots in African musical traditions, African-American work songs, spirituals, and European-American folk music. Blues incorporated spirituals, work songs, field hollers, shouts, chants, and rhymed simple narrative ballads. The blues form, ubiquitous in jazz, rhythm and blues and rock and roll, is characterized by the call-and-response pattern, the blues scale and specific chord progressions, of which the twelve-bar blues is the most common. Blue notes (or "worried notes"), usually thirds or fifths flattened in pitch, are also an essential part of the sound. Blues shuffles or walking bass reinforce the trance-like rhythm and form a repetitive effect known as the groove.</p>
	<p>Blues as a genre is also characterized by its lyrics, bass lines, and instrumentation. Early traditional blues verses consisted of a single line repeated four times. It was only in the first decades of the 20th century that the most common current structure became standard: the AAB pattern, consisting of a line sung over the four first bars, its repetition over the next four, and then a longer concluding line over the last bars. Early blues frequently took the form of a loose narrative, often relating the troubles experienced in African-American society.</p>
	<iframe class="xmltable" src="bluessongs.xml"></iframe>
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
