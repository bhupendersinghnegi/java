<%-- 
    Document   : login
    Created on : 24 Apr, 2020, 8:21:24 AM
    Author     : Dell
--%>

<%@page import="com.myshoot.bean.message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your login page</title>
        <!--css--> 
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
        <link rel="icon" href="img/logo.png">       
    </head>
    <body>
        <%@include file="includeFile/header.jsp" %>
        <!--login-->
        <div class="enter ">
            <div class="jumbotron">
                <div class="container-fluid">
                    <div class="form">
                        <h1 class="heading">Login Here</h1>
                        <form action="loginuser" method="post">
                            <div class="form-input">
                                <label></label>
                                <input type="email" required="" name="email" placeholder="Enter Your Email"/>
                            </div>
                            <div class="form-input">
                                <label></label>
                                <input type="password" required="" name="pass" placeholder="Enter Your Password"/>
                            </div>
                            <input type="submit" value="Submit to login" class="btn btn-primary"/>
                            <%
                                message msg=(message)session.getAttribute("loginerror");
                                if(msg!=null){
                            %>
                            <p class="errors"><%= msg.getConntent()%></p>
                            <%
                                session.removeAttribute("loginerror");
                                }
                            %>
                           
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!--Script-->        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </body>
</html>
