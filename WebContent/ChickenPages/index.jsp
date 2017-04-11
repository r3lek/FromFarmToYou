<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Some of the design was snipped from bootsipp
	 More specifically - http://bootsnipp.com/snippets/MRlbB, http://bootsnipp.com/snippets/featured/admin-navigation
	 Used under MIT license
	 Copyright (c) 2013 Bootsnipp.com
 -->
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test page</title>

<!-- Custom css  -->
<link rel="stylesheet" href="css/indexStyle.css">

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
<i class="material-icons">face</i>

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
                        <li><a href="#">Dixon Farm</a></li>
                        <li><a href="#">Generic Farm</a></li>
                        <li><a href="#">Other Farm</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Separated link</a></li>
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
                        <li><a href="#"><span class="label label-warning">4:00 AM</span>Register Now!</a></li>
                        <li><a href="#"><span class="label label-warning">4:30 AM</span>Login</a></li>
                        <li><a href="#"><span class="label label-warning">5:00 AM</span>Subscriber focused email
                            design</a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="text-center">View All</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span
                    class="glyphicon glyphicon-user disabled"></span>User<b class="caret"></b></a> <!-- ADD JSP HERE THAT REFLECTS USER STATUS AND/OR NAME -->
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
          <img src="http://placehold.it/760x400/cccccc/ffffff">
           <div class="carousel-caption">
            <h4><a href="#">Lorem ipsum dolor sit amet consetetur sadipscing</a></h4>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. <a class="label label-primary" href="http://sevenx.de/demo/bootstrap-carousel/" target="_blank">Free Bootstrap Carousel Collection</a></p>
          </div>
        </div><!-- End Item -->
 
         <div class="item">
          <img src="http://placehold.it/760x400/999999/cccccc">
           <div class="carousel-caption">
            <h4><a href="#">consetetur sadipscing elitr, sed diam nonumy eirmod</a></h4>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. <a class="label label-primary" href="http://sevenx.de/demo/bootstrap-carousel/" target="_blank">Free Bootstrap Carousel Collection</a></p>
          </div>
        </div><!-- End Item -->
        
        <div class="item">
          <img src="http://placehold.it/760x400/dddddd/333333">
           <div class="carousel-caption">
            <h4><a href="#">tempor invidunt ut labore et dolore</a></h4>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. <a class="label label-primary" href="http://sevenx.de/demo/bootstrap-carousel/" target="_blank">Free Bootstrap Carousel Collection</a></p>
          </div>
        </div><!-- End Item -->
        
        <div class="item">
          <img src="http://placehold.it/760x400/999999/cccccc">
           <div class="carousel-caption">
            <h4><a href="#">magna aliquyam erat, sed diam voluptua</a></h4>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. <a class="label label-primary" href="http://sevenx.de/demo/bootstrap-carousel/" target="_blank">Free Bootstrap Carousel Collection</a></p>
          </div>
        </div><!-- End Item -->

        <div class="item">
          <img src="http://placehold.it/760x400/dddddd/333333">
           <div class="carousel-caption">
            <h4><a href="#">tempor invidunt ut labore et dolore magna aliquyam erat</a></h4>
            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. <a class="label label-primary" href="http://sevenx.de/demo/bootstrap-carousel/" target="_blank">Free Bootstrap Carousel Collection</a></p>
          </div>
        </div><!-- End Item -->
                
      </div><!-- End Carousel Inner -->


    <ul class="list-group col-sm-4">
      <li data-target="#myCarousel" data-slide-to="0" class="list-group-item"><h4>Lorem ipsum dolor sit amet consetetur sadipscing</h4></li>
      <li data-target="#myCarousel" data-slide-to="1" class="list-group-item"><h4>consetetur sadipscing elitr, sed diam nonumy eirmod</h4></li>
      <li data-target="#myCarousel" data-slide-to="2" class="list-group-item"><h4>tempor invidunt ut labore et dolore</h4></li>
      <li data-target="#myCarousel" data-slide-to="3" class="list-group-item"><h4>magna aliquyam erat, sed diam voluptua</h4></li>
      <li data-target="#myCarousel" data-slide-to="4" class="list-group-item"><h4>tempor invidunt ut labore et dolore magna aliquyam erat</h4></li>
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

<div class = "container"> 
	    <h3 style="font-size: 36px;font-weight: 300;text-align: center;margin:70px 0;">El Servicio Legal que Necesita a un Precio a su Alcance</h3>
    
    <div class="row features-home-left">
        <div class="col-md-7">
            <h3>Rápido</h3>
            <h4>Nuestro 1er. envío de documentos es en 24 hrs.</h4>
            <p>En términos de velocidad nuestra tecnología nos permite volar. LegalProm realiza el primer envío en unas 24 horas hábiles. Con Sociedades 24 Hrs. Ud. puede incluso suscribir de inmediato con firmas electrónicas</p>
        </div>
        <div class="col-md-5">
            <img alt="rapidez de legalprom" src="http://legalprom.cl/wp-content/uploads/2014/05/rapidez.jpg"/>
        </div>
    </div>
  
    <div class="row features-home-right">
        <div class="col-md-5">
            <img alt="legalprom es economico" src="http://legalprom.cl/wp-content/uploads/2014/05/economico.jpg"/>
        </div>
        <div class="col-md-7">
            <h3>Económico</h3>
            <h4>Un servicio del mas elevado estándar al mejor precio</h4>
            <p>Apoyado por CORFO y Banco BCI nuestro equipo abogados, de la Pontificia Universidad Católica de Chile y Universidad de Concepción, utilizan las soluciones y cláusulas mas eficientes, afinadas durante sus mas de 10 años de experiencia</p>
        </div>
    </div>
    
    <div class="row features-home-left">
        <div class="col-md-7">
            <h3>Fácil y Claro</h3>
            <h4>LegalProm es simple</h4>
            <p>Queremos dejar atrás el tiempo en que los temas legales eran un asunto opaco en que el cliente quedaba indefenso ante una cortina de tecnicismos. Nuestros clientes agradecen que les hablemos en un idioma claro y sin ambigüedades</p>
        </div>
        <div class="col-md-5">
            <img alt="claridad y facilidad de legalprom" src="http://legalprom.cl/wp-content/uploads/2014/05/claridad.jpg"/>
        </div>
    </div>
    
    <div class="row features-home-right">
        <div class="col-md-5">
            <img alt="rapidez de legalprom" src="http://legalprom.cl/wp-content/uploads/2014/05/rapidez.jpg"/>
        </div>
        <div class="col-md-7">
            <h3>Seguro</h3>
            <h4>Productos legales seguros a su alcance</h4>
            <p>LegalProm registra una tasa de satisfacción de prácticamente un 100%. Nuestras sociedades han superado todos los controles bancarios y de otras entidades tales como ministerios, ChileCompra, municipalidades, etc.</p>
        </div>
        <a href="http://legalprom.com/por-que-legalprom/" class="btn btn-primary btn-lg" style="float:right;margin-top:50px;padding:20px;">Ver más razones para elegirnos</a>
    </div>
    
    <div class="line">
        <hr/>
    </div>
    
    <h3 style="font-size: 36px;font-weight: 300;text-align: center;margin:70px 0;">Miles de Clientes Satisfechos desde 2012</h3>
    
    <center><img alt="" src="http://legalprom.cl/wp-content/uploads/2014/05/clientes.jpg"/></center>
    
    <div class="line">
        <hr/>
    </div>    
    
    <div class="row">
        <div class="col-md-12 one-column-text">
            <h2 style="font-size:36px;">Olvídese de Trámites y Complicaciones</h2>
            <h3 style="font-size:24px;">Déje sus asuntos en manos de nuestro equipo y ocupe su tiempo su negocio</h3>
        </div>
    </div>
    
    <div class="row buttons-who-we-are">
        <div clas="col-md-6">
            <a class="btn btn-primary btn-lg" style="float:left; width:30%;margin:10%; padding:30px;">Registrar su marca</a>
        </div>
        <div clas="col-md-6">
            <a class="btn btn-info btn-lg" style="float:right;width:30%; margin:10%; padding:30px;">Crear su empresa</a>
        </div>
        
    </div>

</div>




</body>
</html>