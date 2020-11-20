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
    message msg=(message)session.getAttribute("name");
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
    <body class="profile edit-info">
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
                    <h1>Edit your info</h1>
                    <p>Basic info, like your name and photo, that you use on Myshoot services</p>
                </div>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">  
                            <div class="contains">
                                <div class="edit-body">                                
                                    <div class="form-img" id="Images">
                                        <img src="img/<%=user.getImg()%>" class="img" alt="<%=user.getImg()%>"/>
                                        <p>Edit</p>
                                    </div>
                                    <%
                                        if(msg!=null){
                                    %>
                                    <div class="error">
                                        <%= msg.getConntent() %>
                                        "<%= msg.getMsg() %>"
                                    </div>
                                    <%
                                        session.removeAttribute("name");
                                        }
                                    %>
                                    <ul class="list" id="name">
                                        <li class="uname">Name</li>
                                        <li class="name"><p><%=user.getName()%></p> <span class="fa fa-angle-double-right"></span></li>
                                    </ul>
                                    <ul class="list" id="Email">
                                        <li class="uname">Email</li>
                                        <li class="name"><p><%=user.getEmail()%></p> <span class="fa fa-angle-double-right"></span></li>
                                    </ul>
                                    <ul class="list" id="Pass">
                                        <li class="uname">Password</li>
                                        <li class="name"><p><b>.......</b></p> <span class="fa fa-angle-double-right"></span></li>
                                    </ul>                                    
                                </div> 
                            </div>                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Img-->
        <div class="add-form">
            <div class="con">
                <div class="data">
                    <div class="header">
                        <p id="Title">Insert your profile image</p>
                        <span class="fa fa-icon"></span>
                    </div>
                    <div class="form" >
                        <form action="editimg" id="Action-edit" method="post" enctype="multipart/form-data">
                            <input type="file" name="updateimg" id="form-update" title="Do not insert images more then 2mb" />
                            <input type="hidden" name="hidden" id="hidden" />
                            <input type="submit" value="Save" />
                            <p id="close-form">Close</p>
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
                $('#name').on('click',function (){
                    $('#form-update').attr({
                        "type":"text",
                        "placeholder":"Name",
                        "name":"name"
                    });
                    $('#form-update').removeAttr("title");
                    $('#Title').html("Enter your<b> New </b>name");
                    $('#Action-edit').attr("action","edit_form");
                    $('#hidden').attr("value","name");
                    $('#Action-edit').removeAttr("enctype");
                });
                $('#Images').on('click',function (){
                    $('#form-update').attr({
                        "type":"file",
                        "placeholder":"Images",
                        "name":"updateimg"
                    });
                    $('#form-update').attr("title","Do not insert images more then 2mb");
                    $('#Title').html("Insert your <b>profile image</b>");
                    $('#Action-edit').attr("action","editimg");
                    $('#Action-edit').attr("enctype","multipart/form-data");
                });
                $('#Email').on('click',function (){
                    $('#form-update').attr({
                        "type":"email",
                        "placeholder":"Email",
                        "name":"email"
                    });
                    $('#form-update').removeAttr("title");
                    $('#Title').html("Enter your <b>New Email</b>");
                    $('#Action-edit').attr("action","edit_form");
                     $('#hidden').attr("value","email");
                    $('#Action-edit').removeAttr("enctype");
                });
                $('#Pass').on('click',function (){
                    $('#form-update').attr({
                        "type":"password",
                        "placeholder":"Password",
                        "name":"pass"
                    });
                    $('#form-update').removeAttr("title");
                    $('#Title').html("Enter your <b>New Password</b>");
                    $('#Action-edit').attr("action","edit_form");
                     $('#hidden').attr("value","pass");
                    $('#Action-edit').removeAttr("enctype");
                });
                
                
                
                $('.form-img').on('click',function (){
                   $('.add-form').css({
                      "display":"table",
                      "bottom":"0",
                      "-webkit-transition": "1s"
                   });
                });
                $('.form-img').on('click',function (){
                   $('#close').css({
                       "display":"none",
                       "bottom":"50%"
                   }); 
                });
                $('.list').on('click',function (){
                    $('.add-form').css({
                        display:'table',
                        bottom:'0'
                    });
                });
                $('#close-form').on('click',function (){
                    $('.add-form').css({
                        display:'none',
                        bottom:'50%'
                    });
                });
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
