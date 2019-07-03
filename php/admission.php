<!DOCTYPE html>
<html lang="en">
<head>
<title>SAMCIS</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<!--* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
  background-color: #666;
  padding: 5px;
  text-align: center;
  font-size: 35px;
  color: white;
}

article {
  float: left;
  padding: 0px;
  width: 70%;
  background-color: #f1f1f1;
  height: 600px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the footer */
footer {
  background-color: #777;
  padding: 10px;
  text-align: center;
  color: white;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
}
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style> -->
</head>
<body>
<header>
  <h2>SAMCIS</h2>
</header>

<section>
 
 <div class="topnav">
  <a href="samcis.html">About Samcis</a>
  <a class="active" href="#news">Admission</a>
  <a href="#contact">Campus Life</a>
  <a href="#about">Contact Us</a>
</div>
<h1>Requirements for student</h1>
  <ul>
    <li>Credentials in Senior High</li>
    <li>NSO Birth certificate</li>
    <li>8 pieces of 2x2 ID pictures</li>
    <li>Examination number</li>
  </ul>  

<h1>Requirements for Employees</h1>
<ul>
  <li>Transcript of Record</li>
  <li>4 pieces of 2x2 ID Pictures</li>
  <li>Application Form</li>
  <li>Other credential forms</li>
</ul>
<form method="post" action="form.php">
<h2>Registration Form</h2>
<table border="0" cellspacing="3" cellpadding="3" width="80%">

  <tr>
    <td><label>Last Name</label></td>
    <td><input type="text" name="last_name" autofocus="autofocus"></td>
  </tr>
  <tr>
    <td><label>First Name</label></td>
    <td><input type="text" name="first_name" autofocus="autofocus"></td>
  </tr>
  <tr>
    <td><label>Middle Name</label></td>
    <td><input type="text" name="middle_name" autofocus="autofocus"></td>
  </tr>

  <tr>
    <td><label>Birthdate (YYYY-MM-DD)</label></td>
    <td><input type="text" name="birthdate" autofocus="autofocus"></td>
  </tr>


  <tr>
    <td><label>Provincial Address</label></td>
    <td><input type="text" name="provincial_add" autofocus="autofocus"></td>
  </tr>

 <tr>
    <td><label>Baguio Address</label></td>
    <td><input type="text" name="baguio_add" autofocus="autofocus"></td>
  </tr>

    <td><label>Contact No.</label></td>
    <td><input type="text" name="contactno" autofocus="autofocus"></td>
  </tr>

  <tr>
    <td><label>Position</label></td>
    <td><input type="text" name="position" autofocus="autofocus"></td>
  </tr>

  <tr>
    <td><label>Status</label></td>
    <td><input type="text" name="status" autofocus="autofocus"></td>
  </tr>



  <tr>
    <td><label>Requirements</label></td>
    <td><input type="text" name="requirements" autofocus="autofocus"></td>
  </tr>

 
<tr>
    <td colspan="2">
      <button class="submit_btn" type="submit" name="submit">Register</button>
      <button class="cancel_btn" type="reset" name="cancel">Cancel</button>
    </td>
  </tr>

</form>



<footer>
  <p>Footer</p>
</footer>

</body>
</html>
