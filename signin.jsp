<%-- 
    Document   : signin
    Created on : 24 Apr, 2020, 8:10:37 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register your self here</title>
        <!--css-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
        <link rel="icon" href="img/logo.png">        
    </head>
    <body>
        <%@include file="includeFile/header.jsp" %>
        <!--Sign in-->
         <div class="enter register">    <!--Register class is not in use-->
            <div class="jumbotron">
                <div class="container-fluid">
                    <div class="form">
                        <h1 class="heading">Register here</h1>
                        <form id="userData" action="RegisterServlet" method="POST">
                            <div class="form-input">
                                <label></label>
                                <input type="text" required="" name="name" placeholder="Enter Your Name"/>
                            </div>
                            <div class="form-input">
                                <label></label>
                                <input type="email" required="" name="email" placeholder="Enter Your Email"/>
                            </div>
                            <div class="form-input">
                                <label></label>
                                <input type="password" required="" name="pass" placeholder="Enter Your Password"/>
                            </div>
                            <input type="submit" value="Register now" class="btn btn-primary"/>
                            <p id="process">Loading...</p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <!--Script-->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script>
        $(document).ready(function(){
            $('#userData').on('submit',function (event){
                $('#process').fadeIn(1000);
                event.preventDefault();
                let form=new FormData(this);
                $.ajax({
                    url: "RegisterServlet",
                    type: 'POST',
                    data: form,
                    success: function (data, textStatus, jqXHR) {
                        $('#process').fadeOut(1000);                        
                        if(data!=='done'){
                            $('#process').html("This email is used onec");
                        }   
                        else{                                                                                    
                            var page=confirm("Your data is inserted.\nGo to login page.");
                            if(page===true){
                                window.location="login.jsp";
                            }
                            else{
                                window.location="index.jsp";
                            }
                        }
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        $('#process').text("Your data is not insertedes.");
                    },
                    processData: false,
                    contentType: false
                });
            });
        });
    </script>
</html>
