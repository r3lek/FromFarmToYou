<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Some of the design was snipped from bootsipp
	 More specifically - http://bootsnipp.com/snippets/MRlbB, http://bootsnipp.com/snippets/featured/admin-navigation
	 Used under MIT license
	 Copyright (c) 2013 Bootsnipp.com
 -->
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>From The Farm To You</title>

<!-- Custom css  -->
<link rel="stylesheet" href="../css/indexStyle.css">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Jquery cdn -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous">
</script>
<!-- Font by google -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	
<script>

</script>	
	
	
</head>

<body>

<!-- Nav bar below modified from bootsnip -->
<!-- i class="material-icons">face</i><!-- Can delete this with no prob -->

<div class = "hold">
<div class="container">

	
    <nav class="navbar navbar-default" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                    class="icon-bar"></span><span class="icon-bar"></span>
            </button>
            <!--<a class="navbar-brand" href="#">Brand</a>-->
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span>Home</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-book"></span>About Us</a></li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span
                    class="glyphicon glyphicon-list-alt"></span>Farms <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="../Farms/FarmController">Dixon Farm</a></li>
                        <li><a href="../Farms/Farm2Controller">Generic Farm</a></li>
                        <li><a href="../Farms/Farm3Controller">Other Farm</a></li>
                        <li class="divider"></li>
                        <li><a href="../Review/CustomerReviews">Reviews</a></li>
                        <li class="divider"></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
                <li class=""><a href="#"><span class="glyphicon glyphicon-pencil"></span>Contact Us</a></li>
                
            </ul>
            <ul class="nav navbar-nav navbar-right">
                
                
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span
                    class="glyphicon glyphicon-cog"></span>Sign Up
                </a>
                    <ul class="dropdown-menu">
                        <li><a href="../Login/Registration"><!--  <span class="label label-warning">4:00 AM</span> -->Register Now!</a></li>
                        <li><a href="../Login/Signin"><!--  <span class="label label-warning">4:30 AM</span> --> Login</a></li>
                        <!--  <li><a href="#"><span class="label label-warning">5:00 AM</span>Subscriber focused email
                            design</a></li>
                        <li class="divider"></li>-->
                        <li><a href="#" class="text-center">View All</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span
                    class="glyphicon glyphicon-user disabled"></span>User 
	                    <c:forEach items="${UserList}" var="entry">
						  <tr>
						    <td>${entry.username}</td>
						    
						    
						  </tr>
						</c:forEach>
                    <b class="caret"></b></a> <!-- ADD JSP HERE THAT REFLECTS USER STATUS AND/OR NAME -->
                    <ul class="dropdown-menu">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span>Profile</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-cog"></span>Settings</a></li>
                        <li class="divider"></li>
                        <li><a href="#"><span class="glyphicon glyphicon-off"></span>Logout</a></li>
                    </ul>
                </li>
                
                <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
               
               	<!-- How to add a label next to cart. MAY BE USEFUL WHEN IMPLEMENTING CART!!!!!!!!!!!!
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span
                    class="glyphicon glyphicon-envelope"></span>Inbox <span class="label label-info">32</span>
                </a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><span class="label label-warning">4:00 AM</span>Favourites Snippet</a></li>
                        <li><a href="#"><span class="label label-warning">4:30 AM</span>Email marketing</a></li>
                        <li><a href="#"><span class="label label-warning">5:00 AM</span>Subscriber focused email
                            design</a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="text-center">View All</a></li>
                    </ul>
                </li>
                 -->
                
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </nav>
</div>

  
  
<!-- Below code is modified from bootsnipp -->  
<div class="container">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
    
      <!-- Wrapper for slides -->
      <div class="carousel-inner">
      
        <div class="item active">
          <img src="../images/Farm2HomePic1.jpeg">
           <div class="carousel-caption">
            <h4><a href="#">Farm 1 (Dixon Farm)</a></h4>
            <p>This farm has white, brown, and omega eggs. This farm specializes in white eggs. <a class="label label-primary" href="insertHereURL" target="_blank">Farm 1</a></p>
          </div>
        </div><!-- End Item -->

         <div class="item">
          <img src="../images/Farm3HomePic1.jpg">
           <div class="carousel-caption">
            <h4><a href="#">Farm 2 (Generic Farm)</a></h4>
            <p>A family owned farm, that guarantees the freshness of their eggs. Caring about their livestock and customers, this farm offers a variety of eggs. Check them out here!  <a class="label label-primary" href="InserURLHERE" target="_blank">Farm 2</a></p>
          </div>
        </div><!-- End Item -->
        
        <div class="item">
          <img src="../images/HomePic.jpg">
           <div class="carousel-caption">
            <h4><a href="#">Farm 3 (Other Farm)</a></h4>
            <p>After the battling and triumphing the recession, this family owned farm has grown together. This farm treats its chickens as part of the family. Check out the hens here, and maybe the owners!  <a class="label label-primary" href="InsertURLHERE" target="_blank">Farm3</a></p>
          </div>
        </div><!-- End Item -->
        
        <div class="item">
          <img src="http://placehold.it/760x400/999999/cccccc">
           <div class="carousel-caption">
            <h4><a href="#">Farm 4 (Different Farm)</a></h4>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. <a class="label label-primary" href="DELETEURLHERE" target="_blank">NOT NEEDED</a></p>
          </div>
        </div><!-- End Item -->

        <div class="item">
          <img src="http://placehold.it/760x400/dddddd/333333">
           <div class="carousel-caption">
            <h4><a href="#">Farm 5 (More Farms)</a></h4>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. <a class="label label-primary" href="DELETEURLHERE" target="_blank">NOT NEEDED</a></p>
          </div>
        </div><!-- End Item -->
                
      </div><!-- End Carousel Inner -->


    <ul class="list-group col-sm-4">
      <li data-target="#myCarousel" data-slide-to="0" class="list-group-item"><h4>Farm 1 (Dixon Farm)</h4></li>
      <li data-target="#myCarousel" data-slide-to="1" class="list-group-item"><h4>Farm 2 (Generic Farm)</h4></li>
      <li data-target="#myCarousel" data-slide-to="2" class="list-group-item"><h4>Farm 3 (Other Farm)</h4></li>
      <li data-target="#myCarousel" data-slide-to="3" class="list-group-item"><h4>Farm 4 (Different Farm)</h4></li>
      <li data-target="#myCarousel" data-slide-to="4" class="list-group-item"><h4>Farm 5 (More Farms)</h4></li>
    </ul>

      <!-- Controls -->
      <div class="carousel-controls">
          <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
          </a>
          <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
          </a>
      </div>
      

    </div><!-- End Carousel -->
</div>   
</div>

<<<<<<< HEAD
=======

>>>>>>> 98fd36533a9a518cfbd1b0ac3f2126212901b527
<section id="sec">
 <div class="container">
 	<div class="row">

		<div class="col-md-4">
	<!-- Bottom of page, includes webcam, and truck icon -->
			<div class = "center-block">
			<div class = "textOverImage" style = "background-image: url('https://olimex.files.wordpress.com/2013/03/webcam.png')" 
			data-text="Webcams
We offer a webcams for all the farms we partner with. 
You will see the hens in their home and view their lifestyle, 24/7.">
			</div>
			</div>
		</div>
		
		
	<div class="col-md-4">
		<div class = "center-block">
			<div class = "textOverImage" style = "background-image: url(../images/chickenResize.png)" 
			data-text="Natural
	Since the webcams are available for all farms, this ensures that all the chickens are cage free.
	">
		</div>
		</div>
	</div>
	
	
	<div class="col-md-4">
		<div class = "center-block">
			<div class = "textOverImage" style = "background-image: url(../images/truckicon.png)" 
			data-text="Shipping
Offering overnight shipping we guarantee that the eggs will be fresh upon arrival. ">
			</div>
		</div>
	</div>
	
	</div>
</div>
<<<<<<< HEAD
</section>
=======
</section>	
>>>>>>> 98fd36533a9a518cfbd1b0ac3f2126212901b527

</body>
</html>