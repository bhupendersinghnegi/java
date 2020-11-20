<nav class="navbar navbar-expand-lg navbar-dark nav-color">
            <div class="container">
                <a class="navbar-brand" href="#">MyShoot</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav mr-auto">
                        
                    </ul>
                    <ul class="navbar-nav mr-right">
                        <li class="nav-item dropdown login">
                            <a class="nav-link dropdown-toggle pro-img" href="#" id="navbardrop" data-toggle="dropdown">
                                <img src="img/<%= user.getImg() %>" alt="Login">
                            </a>
                            <div class="dropdown-menu">
                                <div class="edit-login">
                                    <div class="first-conterner container text-center">
                                        <div class="login-img">
                                            <img src="img/<%= user.getImg() %>" alt="Login img" title="<%= user.getName() %>" class="mean"/>
                                            <img src="img/add-img.png" alt="add img" id="click">
                                        </div>
                                        <a href="edit-id" class="text name"><%= user.getName() %></a>
                                        <p class="text email"><%= user.getEmail() %></p>
                                        <div class="ent">
                                            <a href="manage_profile.jsp" class="text logout">Manage Your ID</a>
                                            <a href="LogoutServlet" class="text logout">LogOut</a>
                                        </div>
                                    </div>   
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>