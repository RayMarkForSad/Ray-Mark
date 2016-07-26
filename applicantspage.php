<?php
require_once 'core/init.php';

if(Session::exists('home')) {
	echo '<p>' . Session::flash('home') . '</p>';
}

$user = new User();
if($user->isLoggedIn()) {
?>
    <p>Hello <a href="profile.php?user=<?php echo escape($user->data()->username); ?>"><?php echo escape($user->data()->username); ?></a>!</p>

    <ul>
    	<li><a href="logout.php">Log out</a></li>
    	<li><a href="update.php">Update details</a></li>
    	<li><a href="changepassword.php">Change password</a></li>
    </ul>

<?php 

   if($user->hasPermission('admin')) {
       echo '<p>You are an Administrator!</p>';
   }


}
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Applicants Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet" />


<!-- Theme skin -->
<link href="skins/default.css" rel="stylesheet" />

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>
<body>
<div id="wrapper">
  <!-- start header -->
  <header>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><span>P</span>eso Department</a>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.html">Home</a></li>
                        
                        <li><a href="login.php">Log in</a></li>
                        <li><a href="register.php">Register</a></li>
                        <li><a href="#">Contacts</a></li>
                        
                    </ul>
                </div>
            </div>
        </div>
  </header>
  <!-- end header -->
  <section id="featured">
  <!-- start slider -->
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
  
      
            
          </ul>
          </section>
        </div>
      </div>
    </div>

  </div>
  </section>
  <footer>
  <div class="container">
    <div class="row">
      <div class="col-lg-3">
        <div class="widget">
          <h5 class="widgetheading">Get in touch with us</h5>
          <address>
          <strong>PESO DEPARTMENT</strong><br>
           <br>
            </address>
          <p>
            <i class="icon-phone"></i>  <br>
            <i class="icon-envelope-alt"></i> e
          </p>
        </div>
      </div>
      <div class="col-lg-3">
        <div class="widget">
          <h5 class="widgetheading">Pages</h5>
          <ul class="link-list">
            <li><a href="#">Press release</a></li>
            <li><a href="#">Terms and conditions</a></li>
            <li><a href="#">Privacy policy</a></li>
            <li><a href="#">Career center</a></li>
            <li><a href="#">Contact us</a></li>
          </ul>
        </div>
      </div>
      <div class="col-lg-3">
        <div class="widget">
          <h5 class="widgetheading">Latest posts</h5>
          <ul class="link-list">
            <li><a href="#"> </a></li>
            <li><a href="#"> </a></li>
            <li><a href="#"> </a></li>
          </ul>
        </div>
      </div>
      
  <div id="sub-footer">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="copyright">
            <p>
              <span>&copy; 2016 All right reserved. </span> 
            </p>
                        
          </div>
        </div>
        <div class="col-lg-6">
          <ul class="social-network">
            <li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a></li>
            <li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
            <li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
            <li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
            <li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus"></i></a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  </footer>
</div>
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
<!-- javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.fancybox.pack.js"></script>
<script src="js/jquery.fancybox-media.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/animate.js"></script>
<script src="js/custom.js"></script>
</body>
</html>