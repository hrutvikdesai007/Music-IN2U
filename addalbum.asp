
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
                <li class="active"><a href="home.asp">Home</a></li>
			<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Genres <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="rock.asp">Rock</a></li>
                <li><a href="hiphop.asp">Hip Hop</a></li>
                <li><a href="blues.asp">Blues</a></li>
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


    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
       <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
     <a href="rock.asp"><img src="images/rockcarousel.jpg" alt="Rock"></a>
      <div class="carousel-caption">
        Rock
      </div>
    </div>
    <div class="item">
      <a href="hiphop.asp"><img src="images/hiphopcarousel.jpg" alt="Hip Hop"></a>
      <div class="carousel-caption">
        Hip Hop
      </div>
    </div>
	<div class="item">
      <a href="blues.asp"><img src="images/bluescarousel.jpg" alt="Blues"></a>
      <div class="carousel-caption">
        Blues
      </div>
    </div>
    
  </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->


    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

      <%
	  if(Session("user")<>"") then
				%>
				<table>
				<form name="addalbum" method="post" action="addalbum.asp">
				<tr><td width="20%">Serial No.: </td><td><input type="text" name="sno" required></td></tr>
				<tr><td>Album Name: </td><td><input type="text" name="albumname" required></td></tr>
				<tr><td>Artist Name: </td><td><input type="text" name="artistname" required></td></tr>
				<tr><td>Year of Release: </td><td><input type="text" name="year" required></td></tr>
				<tr><td>Genre: </td><td><select name="genre" required>
											<option value="Rock">Rock</option>
											<option value="Hip Hop">Hip Hop</option>
											<option value="Blues">Blues</option>
											<option value="Country">Country</option>
											<option value="Rhythm and Blues">Rhythm and Blues</option>
										</select</td></tr>
				<tr><td colspan="2"><input type="submit" name="submit" value="Submit" class="btn btn-default" required></td></tr>
				</table>

	<%
			else
				response.write("You must be a member of the site to add albums.<br><br><br>")
			end if
	
	dim genrev
	set conn=Server.CreateObject("ADODB.Connection")
	conn.Provider="Microsoft.Jet.OLEDB.4.0"
	'conn.Open "C:\inetpub\wwwroot\wtwebsite\albums.mdb"
	conn.Open "D:\albums.mdb"

	set rs = Server.CreateObject("ADODB.recordset")
	if(request.form("sno")<>"") then
		sql="insert into view_albums(sr_no,album_name,album_artist,album_year,album_genre) values('"
		sql= sql & request.form("sno") & "','"
		sql= sql & request.form("albumname") & "','"
		sql= sql & request.form("artistname") & "','"
		sql= sql & request.form("year") & "','"
		sql= sql & request.form("genre") & "')"
		
		on error resume next
		conn.Execute sql,recaffected
		if err<>0 then
			Response.Write("Either the serial number is already used, or the album already exists!")
		else
			Response.Write("<h3>" & recaffected & " record added</h3>")
			if(response.cookies("albumsadded")("albumname")="") then
				response.cookies("albumsadded")("albumname")=request.form("albumname")
				response.cookies("albumsadded")("albumartist")=request.form("albumartist")
			end if
		end if
	conn.close
	end if
	%>

      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2017</p>
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
