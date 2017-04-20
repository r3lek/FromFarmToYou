<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Hesperia Family Farm</title>
    <link type="text/css" rel="stylesheet" href="../ChickenPages/FarmersTemplate/FarmersTemplate2Css.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
	<script src="../ChickenPages/FarmersTemplate/script.js"></script>
</head>

<body>
    
    
    
    <header id="cartNum">   
        <div class="nav">
            
            <!-- NavBar -->
            <ul class="main-nav-bar">
            	<li><a href="#">User</a></li>
                <li><a href="#OurService">Our Service</a></li>
                <li><a href="#Webcam">Webcam</a></li>
                <li><a href="#Products">Products</a></li>
                <li><a href="#Reviews">Reviews</a></li>
                <li>
                	<a href="/cart"><i class="fa fa-2x fa-shopping-cart"></i></a>
               		<label id="cart-badge" class="badge badge-warning"><font id="num">0</font></label>
                </li>
            </ul>
        </div>
        
        <!--Displays Page Welcome-->
        <div class="Header">
            <h1>Welcome to,<br>The Hesperia Family Farm</h1>
        </div>
    </header>
    
    
    <!-- Our Service Portion -->
    <section class="OurService" id="OurService">
        <h3 class="text-center">Our Service</h3>
        
        <p class="ServiceText">
            We are family farm dedicated to providing the best eggs around! Like I said, we are family farm that has been around for generations
            and we know what our customers love! We stay committed to delivering the best quality eggs and delivering the freshness straight to your door.
            We care about our live stock, just as much as we care about our customers and their satisfaction. Since 1887 we have dedicated the best services
            and we plan on expanding our egg shipments to other locals in different areas!
        </p>
        
        <!-- The "<div class="col-md-3">" contains each individual section Our Service column -->
        <div class="container">
            <div class="row">
                
                <div class="col-md-3">
                    <span class="glyphicon glyphicon-tree-conifer"></span>
                    <h4>Natural Environment</h4>
                    <p class="arranging">
                         Our farm is located in a natural environment that takes great care of our live stock. By this we mean that our land has provided
                         some of the most beneficial environment by giving our animals water and some of the best food source.
                    </p>
                </div>
                
                <div class="col-md-3">
                    <span class="glyphicon glyphicon-calendar"></span>
                    <br><h4>Open 24/7</h4>
                    <p class="arranging">
						That's right! We are open 24/7 so that means you can order your eggs any time of the day, any day of the week, in any month.
						We want all our customers to enjoy all the eggs that they want at any given time, so as long as transportation services are 
						available, then the egg will be delivered to you! 
                    </p>
                </div>
                
                <div class="col-md-3">
                    <span class="glyphicon glyphicon-time"></span>
                    <h4>Fast Delivery</h4>
                    <p class="arranging">
                         Like many other farmers, we want to ensure our customers get their eggs as soon as possible, so that they can enjoy
                         the freshness of our eggs. There are many things we want our customers to enjoy, so we want them to enjoy the eggs as
                         fast as possible!
                    </p>
                </div>
                
                <div class="col-md-3">
                    <span class="glyphicon glyphicon-star"></span>
                    <h4>Satisfied Customers</h4>
                    <p class="arranging">
                         We enjoy seeing our farmers satisfied, that's why we deliver the best experience for our user, so that they
                         can return and buy more of our eggs. Don't believe us? Scroll down to the bottom of the page to see what our
                         customers are saying!
                    </p>
                </div>
            </div>
        </div>
    </section>
    
    
    <!-- Webcam Potion -->
    <section class="webcam" id="Webcam">
        <h3 class="text-center">Live Webcam</h3>
        
        <div align="center">
        <iframe width="853" height="480" src="https://www.youtube.com/embed/EVQtg5eTJvs?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
        </div>
    </section>
    
    
    <!-- Products -->
    <section class="Products">
        
        <h3 class="text-center" id="Products">Products</h3>

        <div class="container">
            <div class="row">
                
                <!-- Each indivudual product picture and product info and product name -->
                <div class="col-md-4">
                    <img src="../ChickenPages/FarmersTemplate/img/BrownEgg2.jpg" align="center">
                    <h4 class="text-center">Brown Eggs</h4>
                    <p class="text-center"> Our brown eggs are the most favored amongst our customers and recommend them to you!
                    </p>
                    <div align="center"><button type="button" class="btn btn-primary" id="countnum1"><span class="glyphicon glyphicon-shopping-cart"></span>Add to cart</button></div>
                </div>
                
                <div class="col-md-4">
                    <img src="../ChickenPages/FarmersTemplate/img/WhiteEgg2.jpeg" align="center">
                    <h4 class="text-center">White Eggs</h4>The white eggs has been our original from the start of this farm and our hens know it.
                    <p class="text-center">  
                    </p>
                    <div align="center"><button type="button" class="btn btn-primary" id="countnum2"><span class="glyphicon glyphicon-shopping-cart"></span>Add to cart</button></div>
                </div>
                
                <div class="col-md-4">
                    <img src="../ChickenPages/FarmersTemplate/img/Omega2.jpg" align="center">
                    <h4 class="text-center">Omega Eggs</h4>
                    <p class="text-center"> Amongst the most nutritionist eggs that we have and contain 39% less Arachidonic Acid.
                    </p>
                    <div align="center"><button type="button" class="btn btn-primary" id="countnum3"><span class="glyphicon glyphicon-shopping-cart"></span>Add to cart</button></div>
                </div>
                
            </div>
        </div>
    
    </section>
    
    <section class="Reviews" id="Reviews">
        
        <h3 class="text-center">See what our customers are saying</h3>
        
        <div class="container">
            <div class="row">
                
                <div class="col-md-4">
                    <blockquote>
                        <p>
                            "Last night I ordered some eggs for this morning and by next morning they were delivered even before I woke up.
                            That's some commitment to the way they treat their customers." - Roi Chico
                        </p>
                    </blockquote>
                </div>
                
                <div class="col-md-4">
                    <blockquote>
                        <p>
                            "Over the past few weeks I've been buying all the eggs from the selection they have. I can say that my favorite
                            would have to be the omega!" - Russel Martinez
                        </p>
                    </blockquote>
                </div>
                
                <div class="col-md-4">
                    <blockquote>
                        <p>
                            "I've been buy eggs from this farm for the past 10 years and they never fail to surprise me with their 
                            fresh eggs." - Jared Sanchez
                        </p>
                    </blockquote>
                </div>
                
            </div>
            
            
            <!-- Second row of reviews -->
            <div class="row">
                
                <div class="col-md-4">
                    <blockquote>
                        <p>
                            "I've been with Hesperia family farm from the beginning and they never fail to impress." - Matthew Rodriguez
                        </p>
                    </blockquote>
                </div>
                
                <div class="col-md-4">
                    <blockquote>
                        <p>
                            "My family has enjoyed the Omega eggs for the past week and soon I will give the white eggs a try as well." - Emma Lopez
                        </p>
                    </blockquote>
                </div>
                
                <div class="col-md-4">
                    <blockquote>
                        <p>
                            "The delivery was very fast and they kept track of my order! By the time it reached my home, all the eggs
                            were still in tact." - Mirasol Davila
                        </p>
                    </blockquote>
                </div>
                
            </div>
        </div>
    </section>
    
<!-- 
    <section>
        <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d13209.27002674189!2d-118.05343232575291!3d34.13821819134137!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sus!4v1492009553375" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    </section>
-->
    
</body>
</html>
