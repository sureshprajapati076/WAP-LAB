







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
    <link href="css/productdisplay.css" rel="stylesheet" />
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






        <c:forEach items="${listofproducts}" var="product">
            <div style="float:left; width:33%; padding:10px 10px 10px 10px; border: 1px;">
            <table class="table table-hover">

                <tr><td>
                    <img style="display: block;margin-left: auto;margin-right: auto;width: 50%;" src="${product.icon}"  height="150" width="150" />
                </td></tr>
                <tr>

                <td>${product.name}</td></tr><tr>
                <td>${product.description}</td></tr><tr>
                <td>${product.price}</td></tr><tr>
                <td>${product.stock}</td></tr>
                <td><a href="#">Add to Cart</a></td></tr>
            </tr>
            </table>
            </div>
        </c:forEach>













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
