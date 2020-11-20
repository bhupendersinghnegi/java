<%-- 
    Document   : profile
    Created on : 28 Apr, 2020, 8:55:12 AM
    Author     : Dell
--%>

<%@page import="com.myshoot.bean.message"%>
<%@page import="com.myshoot.bean.saveUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp" %>
<%
    saveUser user=(saveUser)session.getAttribute("loginuser");
    if(user==null){
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= user.getName() %></title>
        <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css"> 
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="icon" href="img/logo.png">
    </head>
    <body class="profile edit-home">
        <!--Header-->
        <%@include file="includeFile/profileHeader.jsp" %>
        <!--Img-->
        <div class="add-modal">
            <div class="con">
                <div class="data">
                    <div class="header">
                        <p>Insert your profile image</p>
                        <span class="fa fa-icon"></span>
                    </div>
                    <div class="form">
                        <form action="editimg" method="post" enctype="multipart/form-data">
                            <input type="file" name="updateimg" title="Do not insert images more then 2mb" />
                            <input type="submit" value="Save" />
                            <p id="close">Close</p>
                        </form>
                    </div>                    
                </div>
            </div>
        </div>
        <!--manage data-->
        <div class="row manage-profile">
            <%@include file="includeFile/profile_slider.jsp" %>
            <!--Data ajax-->
            <div id="data" class="col-md-9 profile-data">
                <div class="info">
                    <div class="set-img">
                        <img src="img/<%= user.getImg() %>" alt="<%= user.getName() %>"/>                        
                    </div>
                    <h1>Welcome, <%=user.getName()%></h1>
                    <p>Manage your info, privacy, and security to make Google work better for you</p>
                </div>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6">  
                            <div class="contain">
                                <img src="img/miscellaneous.png"/>
                                <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. </p>                       
                                <a href="#">Secure Account</a>                       
                            </div>
                        </div>
                        <div class="col-md-6">  
                            <div class="contain">
                                <img src="img/miscellaneous.png"/>
                                <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. </p>                       
                                <a href="#">Secure Account</a>                       
                            </div>
                        </div>
                    </div>
                    <div class="row mg-1">
                        <div class="col-md-6">  
                            <div class="contain">
                                <img src="img/miscellaneous.png"/>
                                <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. </p>                       
                                <a href="#">Secure Account</a>                       
                            </div>
                        </div>
                        <div class="col-md-6">  
                            <div class="contain">
                                <img src="img/miscellaneous.png"/>
                                <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. </p>                       
                                <a href="#">Secure Account</a>                       
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Script-->        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function(){                
                $('#click').on('click',function (){
                   $('.add-modal').css({
                      "display":"table",
                      "bottom":"0",
                      "-webkit-transition": "1s"
                   });
                });
                $('#close').on('click',function (){
                   $('.add-modal').css({
                       "display":"none",
                       "bottom":"50%"
                   }); 
                });
            });
        </script>            
    </body>
</html>
