<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	    <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <title>Home</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
        <link rel="stylesheet" href="css/style.css">
</head>
<body>
        <!--Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light py-3 fixed-top">
            <div class="container">
              <a class="navbar-brand" href="#">HandLoom Fashions</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span><i id="bar" class="fas fa-bars"></i></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                  
                  <li class="nav-item">
                    <a class="nav-link" href="/">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/shop">Shop</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Blog</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Contact Us</a>
                  </li>
                  <c:choose>
   					<c:when test="${ sessionScope.id ne null }">
   						<li class="nav-item">
                    		<a class="nav-link" href="/logout">Logout</a>
                  		</li>
                  		<p>Welcome,${name}</p>
   					</c:when>
   					<c:otherwise>
   						<li class="nav-item">
                    		<a class="nav-link" href="/login">Login/Register</a>
                  		</li>
   					</c:otherwise>
   				  </c:choose>
                  
                  <li class="nav-item">
                    <a href="/cart"><i class="fas fa-shopping-bag"></i></a>
                  </li>
                 </ul>
              </div>
            </div>
        </nav>
        <section id="home" style="background-image: url('imagedata/back.jpg');">
            <div class="container">
                <h5>New Arrivals</h5>
                <h1><span>Best Price </span>This Year</h1>
                <p>shoomatic offers your very comfortable time<br>on walking ad excercises</p>
                <button>Shop Now</button>
            </div>
        </section>
        <section id="brand" class="container">
          <div class="row m-0 py-4">
            <img class="img-fluid col-lg-2 col-md-4 col-6" src="image/brand/1.png">
            <img class="img-fluid col-lg-2 col-md-4 col-6" src="image/brand/2.png">
            <img class="img-fluid col-lg-2 col-md-4 col-6" src="image/brand/3.jpg">
            <img class="img-fluid col-lg-2 col-md-4 col-6" src="image/brand/4.png">
          </div>
        </section>
        <section id="new" class="my-5 pb-5">
            <div class="row mx-auto container-fluid">
              <div class="one col-lg-4 col-md-12 col-12">
                <img class="img-fluid" src="image/new/7.jpg" alt=" ">
                <div class="details">
                    <button class="text-uppercase">Shop Now</button>
                </div>
              </div>
                <div class="one col-lg-4 col-md-12 col-12 ">
                    <img class="img-fluid" src="image/new/4.jpg" alt=" ">
                    <div class="details">
                        <button class="text-uppercase">Shop Now</button>
                    </div>
                </div>
                <div class="one col-lg-4 col-md-12 col-12">
                    <img class="img-fluid" src="image/new/5.jpg" alt=" ">
                    <div class="details">
                        <button class="text-uppercase">Shop Now</button>
                    </div>
                </div>
            </div>
        </section>
        <section id="featured" class="my-5 pb-5">
          <div class="container text-center mt-5 py-5">
            <h3>Our Products</h3>
            <hr class="mx-auto">
            <p>Here you can check out our new products with fair price</p>
          </div>
          <div class="row mx-auto container-fluid">
            <div class="product text-center col-lg-3 col-md-4 col-12">
              <img class="img-fluid mb-3" src="image/featured/1.jpg" alt="">
              <div class="star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
              </div>
              <h5 class="p-name">Towel</h5>
              <h4 class="p-price">$92.00</h4>
              <button class="buy-btn">Buy Now</button>
            </div>
            <div class="product text-center col-lg-3 col-md-4 col-12">
              <img class="img-fluid mb-3" src="image/featured/2.jpg" alt="">
              <div class="star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
              </div>
              <h5 class="p-name">Towel</h5>
              <h4 class="p-price">$92.00</h4>
              <button class="buy-btn">Buy Now</button>
            </div>
            <div class="product text-center col-lg-3 col-md-4 col-12">
              <img class="img-fluid mb-3" src="image/featured/1.jpg" alt="">
              <div class="star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
              </div>
              <h5 class="p-name">Towel</h5>
              <h4 class="p-price">$92.00</h4>
              <button class="buy-btn">Buy Now</button>
            </div>
            <div class="product text-center col-lg-3 col-md-4 col-12">
              <img class="img-fluid mb-3" src="image/featured/3.jpg" alt="">
              <div class="star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
              </div>
              <h5 class="p-name">Towel</h5>
              <h4 class="p-price">$92.00</h4>
              <button class="buy-btn">Buy Now</button>
            </div>
          </div>
        </section>
        <section id="banner" class="my-5 py-5" style="background-image: url('image/back.jpg');">
          <div class="container">
            <h4>SEASON'S SALES</h4>
            <h1>Collections <br> up to 20% off</h1>
            <button class="text-uppercase">Shop Now</button>
          </div>
        </section>
        <section id="clothes" class="my-5 pb-5">
          <div class="container text-center mt-5 py-5">
            <h3>Chanderi Sarees</h3>
            <hr class="mx-auto">
          </div>
          <div class="row mx-auto container-fluid">
            <div class="product text-center col-lg-3 col-md-4 col-12">
              <img class="img-fluid mb-3" src="image/sarees/chanderi/1.jpg" alt="">
              <div class="star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
              </div>
              <h5 class="p-name">Towel</h5>
              <h4 class="p-price">$92.00</h4>
              <button class="buy-btn">Buy Now</button>
            </div>
            <div class="product text-center col-lg-3 col-md-4 col-12">
              <img class="img-fluid mb-3" src="image/sarees/chanderi/2.jpg" alt="">
              <div class="star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
              </div>
              <h5 class="p-name">Towel</h5>
              <h4 class="p-price">$92.00</h4>
              <button class="buy-btn">Buy Now</button>
            </div>
            <div class="product text-center col-lg-3 col-md-4 col-12">
              <img class="img-fluid mb-3" src="image/sarees/chanderi/3.jpg" alt="">
              <div class="star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
              </div>
              <h5 class="p-name">Towel</h5>
              <h4 class="p-price">$92.00</h4>
              <button class="buy-btn">Buy Now</button>
            </div>
            <div class="product text-center col-lg-3 col-md-4 col-12">
              <img class="img-fluid mb-3" src="image/sarees/chanderi/5.jpg" alt="">
              <div class="star">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
              </div>
              <h5 class="p-name">Towel</h5>
              <h4 class="p-price">$92.00</h4>
              <button class="buy-btn">Buy Now</button>
            </div>
          </div>
        </section>
        <footer class="mt-5 py-5">
          <div class="row container mx-auto pt-5">
            <div class="footer-one col-lg-3 col-md-6 col-12">
              <h2 class="logo">HandLoom <br> Fashions</h2>
            </div>
            <div class="footer-one col-lg-3 col-md-6 col-12">
              <h5 class="pb-2">Featured</h5>
              <ul class="text-uppercase list-unstyled">
                <li><a href="#">Men</a></li>
                <li><a href="#">Women</a></li>
                <li><a href="#">Child</a></li>
                <li><a href="#">Bags</a></li>
                <li><a href="#">PaperWorks</a></li>
              </ul>
            </div>
            <div class="footer-one col-lg-3 col-md-6 col-12">
              	<h5 class="pb-2">Contact Us</h5>
                <div>
                  <h6 class="text-uppercase">Address</h6>
                  <p>123 STREET NAME, CITY, US</p> 
                </div>
                <div>
                  <h6 class="text-uppercase">PHONE</h6>
                  <p>(123) 456-7890</p>
                </div>
                <div>
                  <h6 class="text-uppercase">Email</h6>
                  <p>MAIL@EXAMPLE.COM</p>
                </div>
            </div>
            <div class="copyright mt-5">
              <div class="row container mx-auto">
                <div class="col-lg-3 col-md-6 col-12">
                    <img src="image/brand/pay.png" alt="">
                </div>
                
                <div class="col-lg-4 col-md-6 col-12 ml-5">
                  <a href="#"><i class="fab fa-facebook-f"></i></a>
                  <a href="#"><i class="fab fa-twitter"></i></a>
                  <a href="#"><i class="fab fa-linkedin-in"></i></a>
                </div>
                <div class="col-lg-4 col-md-6 col-12 text-nowrap mb-2">
                  <p>HandloomFashions eCommerce © 2021.
                    All Rights Reserved</p>
                </div>
              </div>
            </div>
          </div>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

    </body>
</html>