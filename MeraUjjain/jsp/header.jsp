<%@taglib uri='/WEB-INF/mytags/mutags.tld' prefix='mu'%>
<mu:Guard>
<jsp:forward page='/LoginForm.jsp' />
</mu:Guard>
<!DOCTYPE HTML>
<html lang='en'>
<meta charset='utf-8'>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">    
<link rel="stylesheet" href="css/footer.css">    
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<!header starts here!>
<div class="navbar navbar-inverse" id="navbar">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">

                    <div class="navbar-header">
                        <a href="LoginForm.jsp" class="navbar-brand">MERA UJJAIN</a>
                    </div>

                    <mu:If condition='${module==HOME}'>                    
                    <div class="navbar-collapse collapse" id="mobile_menu">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="prominentplaces.jsp">Prominent Places</a></li>
                            <li><a href="education.jsp">Education</a></li>
                            <li><a href="malls.jsp">Malls</a></li>
                            <li><a href="hotels.jsp">Hotels</a></li>
                        </ul>
    
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="profile.jsp"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
                            <li><a href="/meraujjain/logout" ><span class="glyphicon glyphicon-log-in"></span>Logout</span></a></li>
                        </ul>
                    </div>
                    </mu:If>

                    <mu:If condition='${module==PROMINENTPLACES}'>
                    <div class="navbar-collapse collapse" id="mobile_menu">
                        <ul class="nav navbar-nav">
                            <li><a href="homepage.jsp">Home</a></li>
                            <li class="active"><a href="prominentplaces.jsp">Prominent Places</a></li>
                            <li><a href="education.jsp">Education</a></li>
                            <li><a href="malls.jsp">Malls</a></li>
                            <li><a href="hotels.jsp">Hotels</a></li>
                        </ul>
                        <ul class="nav navbar-nav">
                            <li>
                                <form action="" class="navbar-form">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <input type="search" name="search" id='searchBar' onkeyup='prominentPlaces()' placeholder="Search Prominent Places..." class="form-control">
                                            <span class="input-group-addon"><span class="glyphicon glyphicon-search"></span></span>
                                        </div>
                                    </div>
                                </form>
                            </li>
                        </ul>

                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="profile.jsp"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
                            <li><a href="/meraujjain/logout" ><span class="glyphicon glyphicon-log-in"></span>Logout</span></a></li>
                        </ul>
                    </div>
                    </mu:If>


                    <mu:If condition='${module==EDUCATION}'>
                    <div class="navbar-collapse collapse" id="mobile_menu">
                        <ul class="nav navbar-nav">
                            <li><a href="homepage.jsp">Home</a></li>
                            <li><a href="prominentplaces.jsp">Prominent Places</a></li>
                            <li class="active"><a href="education.jsp">Education</a></li>
                            <li><a href="malls.jsp">Malls</a></li>
                            <li><a href="hotels.jsp">Hotels</a></li>
                        </ul>
                        <ul class="nav navbar-nav">
                            <li>
                                <form action="" class="navbar-form">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <input type="search" name="search" id='searchBar' onkeyup='education()' placeholder="Search Colleges..." class="form-control">
                                            <span class="input-group-addon"><span class="glyphicon glyphicon-search"></span></span>
                                        </div>
                                    </div>
                                </form>
                            </li>
                        </ul>

                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="profile.jsp"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
                            <li><a href="/meraujjain/logout" ><span class="glyphicon glyphicon-log-in"></span>Logout</span></a></li>
                        </ul>
                    </div>
                    </mu:If>
                    
                    <mu:If condition='${module==MALLS}'>
                    <div class="navbar-collapse collapse" id="mobile_menu">
                        <ul class="nav navbar-nav">
                            <li><a href="homepage.jsp">Home</a></li>
                            <li><a href="prominentplaces.jsp">Prominent Places</a></li>
                            <li><a href="education.jsp">Education</a></li>
                            <li class="active"><a href="malls.jsp">Malls</a></li>
                            <li><a href="hotels.jsp">Hotels</a></li>
                        </ul>
                        <ul class="nav navbar-nav">
                            <li>
                                <form action="" class="navbar-form">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <input type="search" name="search" id='searchBar' onkeyup='malls()' placeholder="Search Malls..." class="form-control">
                                            <span class="input-group-addon"><span class="glyphicon glyphicon-search"></span></span>
                                        </div>
                                    </div>
                                </form>
                            </li>
                        </ul>

                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="profile.jsp"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
                            <li><a href="/meraujjain/logout" ><span class="glyphicon glyphicon-log-in"></span>Logout</span></a></li>
                        </ul>
                    </div>
                    </mu:If>

                    <mu:If condition='${module==HOTELS}'>
                    <div class="navbar-collapse collapse" id="mobile_menu">
                        <ul class="nav navbar-nav">
                            <li><a href="homepage.jsp">Home</a></li>
                            <li><a href="prominentplaces.jsp">Prominent Places</a></li>
                            <li><a href="education.jsp">Education</a></li>
                            <li><a href="malls.jsp">Malls</a></li>
                            <li class="active"><a href="hotels.jsp">Hotels</a></li>
                        </ul>
                        <ul class="nav navbar-nav">
                            <li>
                                <form action="" class="navbar-form">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <input type="search" name="search" id='searchBar' onkeyup='hotels()' placeholder="Search Hotels..." class="form-control">
                                            <span class="input-group-addon"><span class="glyphicon glyphicon-search"></span></span>
                                        </div>
                                    </div>
                                </form>
                            </li>
                        </ul>

                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="profile.jsp"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
                            <li><a href="/meraujjain/logout" ><span class="glyphicon glyphicon-log-in"></span>Logout</span></a></li>
                        </ul>
                    </div>
                    </mu:If>

                    <mu:If condition='${module==PROFILE}'>
                    <div class="navbar-collapse collapse" id="mobile_menu">
                        <ul class="nav navbar-nav">
                            <li><a href="homepage.jsp">Home</a></li>
                            <li><a href="prominentplaces.jsp">Prominent Places</a></li>
                            <li><a href="education.jsp">Education</a></li>
                            <li><a href="malls.jsp">Malls</a></li>
                            <li><a href="hotels.jsp">Hotels</a></li>
                        </ul>
                        <ul class="nav navbar-nav">
                            <li>
                                <form action="" class="navbar-form">
                                    <div class="form-group">
                                        <div class="input-group">
                                        </div>
                                    </div>
                                </form>
                            </li>
                        </ul>

                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="profile.jsp"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
                            <li><a href="/meraujjain/logout" ><span class="glyphicon glyphicon-log-in"></span>Logout</span></a></li>
                        </ul>
                    </div>
                    </mu:If>


                </div>
            </div>
        </div>
    </div>
<!header ends here!>
<style>
.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}
</style>
<script>
window.onscroll = function() {myFunction()};

// Get the navbar
var navbar = document.getElementById("navbar");

// Get the offset position of the navbar
var sticky = navbar.offsetTop;

// Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}
</script>
<br>