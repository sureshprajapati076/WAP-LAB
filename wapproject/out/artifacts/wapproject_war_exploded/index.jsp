<%--
  Created by IntelliJ IDEA.
  User: suresh
  Date: 2019-08-09
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>






<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="icon" href="favicon.ico">
  <link href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.2/cerulean/bootstrap.min.css" rel="stylesheet" integrity="sha384-EmRcsPP774S9MOi4ywB+JXUWjYnBdyInMzG2XsC5siZEUpexqxOMJW358dCYEjPu" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>



  <style>
    html {
      position: relative;
      min-height: 100%;
    }
    body {
      /* Margin bottom by footer height */
      margin-bottom: 40px;
    }
    .footer {
      position: absolute;
      bottom: 0;
      width: 100%;
      /* Set the fixed height of the footer here */
      height: 40px;
      line-height: 40px; /* Vertically center the text there */
      background-color: #f5f5f5;
    }
    tr.datarow {
      cursor: pointer;
    }


    .menubar {
      width: 30px;
      height: 3px;
      background-color: white;
      margin: 6px 0;
    }

.floatright{
  float:right;
}


    .dropbtn {
      background-color: red;
      color: white;
      padding: 16px;
      font-size: 16px;
      border: none;
      cursor: pointer;
    }
    .login, .login>a{
      display:inline-block;
      margin-left: 20px;
      color:white;
      text-decoration: none;

    }

    #id01{
      display: none;
    }

    .dropdown {
      position: relative;
      display: inline-block;
    }

    .dropdown-content {
      display: none;
      position: absolute;
      right: 0;
      background-color: #f9f9f9;
      min-width: 160px;
      box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
      z-index: 1;
    }

    .dropdown-content a {

      color: black;
      padding: 12px 16px;
      text-decoration: none;
      display: block;
    }

    .dropdown-content a:hover {text-decoration:none;background-color: #f1f1f1;}
    .dropdown:hover .dropdown-content {display: block;}
    .dropdown:hover .dropbtn {background-color: #3e8e41;}



    /* Full-width input fields */
    .alert {
      padding: 20px;
      background-color: #f44336;
      color: white;
      opacity: 1;
      transition: opacity 0.6s;
      margin-bottom: 15px;
    }
    .closebtn {
      margin-left: 15px;
      color: white;
      font-weight: bold;
      float: right;
      font-size: 22px;
      line-height: 20px;
      cursor: pointer;
      transition: 0.3s;
    }

    .alert.warning {background-color: #ff9800;}



   #id01 input[type=text], input[type=password] {
      width: 100%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
    }

    /* Set a style for all buttons */
    #id01  button {

      background-color: #4CAF50;
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 100%;
    }

    #id01   button:hover {
      opacity: 0.8;
    }

    /* Extra styles for the cancel button */
    #id01 .cancelbtn {
      width: auto;
      padding: 10px 18px;
      background-color: #f44336;
    }

    /* Center the image and position the close button */
    .imgcontainer {
      text-align: center;
      margin: 24px 0 12px 0;
      position: relative;
    }

    img.avatar {
      width: 40%;
      border-radius: 50%;
    }

    .container1 {
      padding: 16px;
    }

    span.psw {
      float: right;
      padding-top: 16px;
    }

    /* The Modal (background) */
    .modal {
      display: block; /* Hidden by default */
      position: fixed; /* Stay in place */
      z-index: 1; /* Sit on top */
      left: 0;
      top: 0;
      width: 100%; /* Full width */
      height: 100%; /* Full height */
      overflow: auto; /* Enable scroll if needed */
      background-color: rgb(0,0,0); /* Fallback color */
      background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
      padding-top: 60px;
    }


    /* Modal Content/Box */
    .modal-content {
      background-color: #fefefe;
      margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
      border: 1px solid #888;
      width: 50%; /* Could be more or less, depending on screen size */
    }




    /* The Close Button (x) */
    .close {
      position: absolute;
      right: 25px;
      top: 0;
      color: #000;
      font-size: 35px;
      font-weight: bold;
    }

    .close:hover,
    .close:focus {
      color: red;
      cursor: pointer;
    }

    /* Add Zoom Animation */
    .animate {
      -webkit-animation: animatezoom 0.6s;
      animation: animatezoom 0.6s
    }

    @-webkit-keyframes animatezoom {
      from {-webkit-transform: scale(0)}
      to {-webkit-transform: scale(1)}
    }

    @keyframes animatezoom {
      from {transform: scale(0)}
      to {transform: scale(1)}
    }

    /* Change styles for span and cancel button on extra small screens */
    @media screen and (max-width: 300px) {
      span.psw {
        display: block;
        float: none;
      }
      .cancelbtn {
        width: 100%;
      }
    }
  </style>



</head>
<body>









<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
  <a class="navbar-brand" href="/"><img height="30px" width="70px" src="images/logo.gif" /></a>
  <span style="color: #ffffff;"> &nbsp; | &nbsp;</span>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>



  <div class="dropdown" style="float:left;">
    <a href="#">
      <div class="menubar"></div>
      <div class="menubar"></div>
      <div class="menubar"></div>
    </a>
    <div class="dropdown-content" style="left:0;">




      <a href="listAll">All Products</a>
      <a href="#">Drinks</a>
      <a href="#">Clothes</a>
      <a href="#">Books</a>
      <a href="#">Electronics</a>
      <a href="#">Food</a>

    </div>
  </div>



  <div  class="collapse navbar-collapse login" id="navbarsExampleDefault">

    Hi, ${uname}

    <a href="#" >Cart</a>

    <c:if test="${logintest}">



      <a href="logout">Log Out</a>

    </c:if>
    <c:if test="${!logintest}">



      <a href="#" id="showlogin">Login</a>
      <a href="SignUp">Sign Up</a>
    </c:if>



  </div>

  <form  class="form-inline my-2 my-lg-0" method="get" action="#">       <!--  th:object="${product}">-->


    <input class="form-control mr-sm-2" type="text" name="searchword" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </form>

</nav>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div class="container">


<table>
  <c:forEach items="${allProducts}" var="product">
    <tr>

      <td>${product.name}</td>
      <td>${product.description}</td>
      <td>${product.price}</td>
      <td>${product.stock}</td>
    </tr>
  </c:forEach>
</table>








  <p>
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.

  </p>

  <p>
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.

  </p>

  <p>
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.

  </p>

  <p>
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.

  </p>

  <p>
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
    PUBLISHER'S DESCRIPTION
    From Aleksandar Josifoski:
    Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.

  </p>
  <p>
  PUBLISHER'S DESCRIPTION
  From Aleksandar Josifoski:
  Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
  PUBLISHER'S DESCRIPTION
  From Aleksandar Josifoski:
  Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
  PUBLISHER'S DESCRIPTION
  From Aleksandar Josifoski:
  Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
  PUBLISHER'S DESCRIPTION
  From Aleksandar Josifoski:
  Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
  PUBLISHER'S DESCRIPTION
  From Aleksandar Josifoski:
  Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
  PUBLISHER'S DESCRIPTION
  From Aleksandar Josifoski:
  Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.
  PUBLISHER'S DESCRIPTION
  From Aleksandar Josifoski:
  Any Text File is a program to read text files. .TXT file should be in format starting with $$$ for chapters and in every line sentence. Sentence does not have to end with a dot can be a logical block but in the text file must be in a single row.

</p>








  <div id="id01" class="modal">

    <form class="modal-content animate" action="login" method="post">
      <div class="imgcontainer">
        <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
        <img src="images/avatar.png" height="69" width="100" alt="Avatar" class="avatar">
      </div>

      <c:if test="${errormsg}">
        <div id="errormessage" class="alert warning">
          <span class="closebtn">&times;</span>
          <strong>Invalid UserId / Password</strong>
        </div>
      </c:if>





      <div class="container1">
        <label for="uname"><b>Username</b></label>
        <input type="text" placeholder="Enter Username"  id="uname" name="uname" required>

        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" id="psw" name="psw" required>

        <button id="loginform">Login</button>
        <label>
          <input type="checkbox" checked="checked" name="remember"> Remember me
        </label>
      </div>

      <div class="container1" style="background-color:#f1f1f1">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
        <span class="psw">Forgot <a href="#">password?</a></span>
      </div>

    </form>

  </div>


</div>











<!--End placeholder-->
<footer class="footer">
  <div class="container">
    <span class="text-muted">Online Shopping Project WAP</span><span style="float:right;" class="text-muted">&copy; August 2019</span>
  </div>
</footer>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->


<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
</body>
<script>


"use strict";

  $(function(){

    $("#showlogin").click(function(){
      $("#id01").show();
    });
  $(".closebtn").click(function (){
    $("#errormessage").hide();

  });





  });





</script>
</html>
