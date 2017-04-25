<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>    



	
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Dixon Farm</title>
    <link type="text/css" rel="stylesheet" href="../ChickenPages/FarmersTemplate/FarmersTemplateCss.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
	<script src="../ChickenPages/FarmersTemplate/script.js"></script>
</head>

<body>
    <sql:setDataSource var="farmedit" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/cs3220stu63"
     user="cs3220stu63"  password="abcd"/>

	<sql:query dataSource="${farmedit}" var="result">
	SELECT * from farmerInfo WHERE id = 1;
	</sql:query>
    


<form action="EditFarm1" method="post">    
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
            <h1>
          		<c:forEach var="row" items="${result.rows}">
					Your title header: <input type="text" name="h1_header" style="background-color:black;" value="${row.h1_header}"/>
				</c:forEach>  
            </h1>
            
            <h href=""></h>
        </div>
    </header>
    
    
    <!-- Our Service Portion -->
    <section class="OurService" id="OurService">
        <h3 class="text-center">Our Service</h3>
        
        <p class="ServiceText">
           	<c:forEach var="row" items="${result.rows}">
				<textarea name="service_text" rows="6" cols="120">${row.service_text}</textarea><br>
			</c:forEach>  
        	
        </p>
        
        <!-- The "<div class="col-md-3">" contains each individual section Our Service column -->
        <div class="container">
            <div class="row">
                
                <div class="col-md-3">
                    <span class="glyphicon glyphicon-heart-empty"></span>
                    <h4>
                    	<c:forEach var="row" items="${result.rows}">
						Your title header: <input type="text" name="first_h4" value="${row.first_h4}"/>
						</c:forEach> 
                    </h4>
                    <p class="arranging">
                    	<c:forEach var="row" items="${result.rows}">
							Description: <textarea name="arranging_text" rows="6" cols="35">${row.arranging_text}</textarea><br>
						</c:forEach>  
                    </p>
                </div>
                
                <div class="col-md-3">
                    <span class="glyphicon glyphicon-certificate"></span>
                    <br>
                    <h4>
                    	<c:forEach var="row" items="${result.rows}">
						Your 2nd title header: <input type="text" name="second_h4" value="${row.second_h4}"/>
						</c:forEach> 
                    </h4>
                    <p class="arranging">
                         <c:forEach var="row" items="${result.rows}">
							Description: <textarea name="arranging2_text" rows="6" cols="35">${row.arranging2_text}</textarea><br>
						</c:forEach>  
                    </p>
                </div>
                
                <div class="col-md-3">
                    <span class="glyphicon glyphicon-grain"></span>
                    <h4>
                    	<c:forEach var="row" items="${result.rows}">
						Your 3rd title header: <input type="text" name="third_h4" value="${row.third_h4}"/>
						</c:forEach> 
                    </h4>
                    <p class="arranging">
                         <c:forEach var="row" items="${result.rows}">
							Description: <textarea name="arranging3_text" rows="6" cols="35">${row.arranging3_text}</textarea><br>
						</c:forEach>  
                    </p>
                </div>
                
                <div class="col-md-3">
                    <span class="glyphicon glyphicon-road"></span>
                    <h4>
                    	<c:forEach var="row" items="${result.rows}">
						Your 4th title header: <input type="text" name="fourth_h4" value="${row.fourth_h4}"/>
						</c:forEach> 
                    </h4>
                    <p class="arranging">
                         <c:forEach var="row" items="${result.rows}">
							Description: <textarea name="arranging4_text" rows="6" cols="35">${row.arranging4_text}</textarea><br>
						</c:forEach>  
                    </p>
                </div>
            </div>
        </div>
        
    </section>
    <br><div style="text-align:center;"> <input type="submit" name="save" value="Save" /> </div>
</form> 											<!-- this is where button that edits save page goes into -->
    
    
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
                <div class="col-md-3">
                    <img src="../ChickenPages/FarmersTemplate/img/WhiteEgg1.png" align="center">
                    <h4 class="text-center">White Eggs</h4>
                    <p class="text-center"> The best of it's kind is the original white egg that can be eaten with many other dishes. We are known for these eggs!
                    </p>
                    <div align="center"><button type="button" class="btn btn-primary" id="countnum1"><span class="glyphicon glyphicon-shopping-cart"></span>Add to cart</button></div>
                </div>
                
                <div class="col-md-3">
                    <img src="../ChickenPages/FarmersTemplate/img/BrownEgg1.jpg" align="center">
                    <h4 class="text-center">Brown Eggs</h4>
                    <p class="text-center"> The brown eggs have been cleaned after the hens have produced them. They are nice and firm too!
                    </p>
                    <div align="center"><button type="button" class="btn btn-primary" id="countnum2"><span class="glyphicon glyphicon-shopping-cart"></span>Add to cart</button></div>
                </div>
                
                <div class="col-md-3">
                    <img src="../ChickenPages/FarmersTemplate/img/Omega1.jpg" align="center">
                    <h4 class="text-center">Omega Eggs</h4>
                    <p class="text-center"> The best of it's kind is the Omega egg. This egg features many more vitamins and minerals than all the other eggs!
                    </p>
                    <div align="center"><button type="button" class="btn btn-primary" id="countnum3"><span class="glyphicon glyphicon-shopping-cart"></span>Add to cart</button></div>
                </div>
                
                <div class="col-md-3">
                    <img src="../ChickenPages/FarmersTemplate/img/FreeRange1.png" align="center">
                    <h4 class="text-center">Caged Free Eggs</h4>
                    <p class="text-center"> Even though all of our hens are caged free, these are the real eggs that are produced while the hens are outside.
                    </p>
                    <div align="center"><button type="button" class="btn btn-primary" id="countnum4"><span class="glyphicon glyphicon-shopping-cart"></span>Add to cart</button></div>
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
                            "The eggs arrived on time and it was delicately handled by the farmers." - Jill Valentine
                        </p>
                    </blockquote>
                </div>
                
                <div class="col-md-4">
                    <blockquote>
                        <p>
                            "The website was easy to use and my eggs came in with hours!" - Bob Renolds
                        </p>
                    </blockquote>
                </div>
                
                <div class="col-md-4">
                    <blockquote>
                        <p>
                            "I really recommend there premium white egg, because of how fresh it was!" - Amanda Winchester
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
