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
        <link rel="icon" href="img/logo.png">
    </head>
    <body class="profile">
        <!--Header-->
        <%@include file="includeFile/profileHeader.jsp" %>
        
        <%=user.getName()%><br>
        <%=user.getEmail()%><br>
        <%=user.getImg()%><br>
        <%=user.getId()%><br>
        <%=user.getPass()%><br>
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
