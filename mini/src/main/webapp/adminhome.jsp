  <%
     if(session.getAttribute("name")==null){
    	 response.sendRedirect("login.jsp");
     } %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Home Page</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav" style="height: 65px;">
	
		<div class="container">
			<a class="navbar-brand" href="#page-top">V-update</a>
		   
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">About</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Contact</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="/mini/logout">Logout</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="btn btn-primary btn-lg mx-2" name="logout"><%= session.getAttribute("name") %></a></li>
					
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	
      
<!-- Portfolio Section-->
<section class="page-section portfolio bg-primary" id="portfolio">
    <div class="container">
        <!-- Portfolio Section Heading with white text color -->
        <h2 class="page-section-heading text-center text-uppercase text-white mb-5" style="margin-top: 30px;">Admin </h2>
        <!-- Icon Divider-->
        <div class="divider-custom">
            <div class="divider-custom-line"></div>
            <div class="divider-custom-icon">
                <i class="fas fa-star"></i>
            </div>
            <div class="divider-custom-line"></div>
        </div>

        <div class="row justify-content-center">
            <!-- Portfolio Item 1 -->
            <!-- Portfolio Item 1 -->
<div class="col-md-6 col-lg-4 mb-5">
    <a href="timetable.jsp">
        <div class="portfolio-item mx-auto text-white" style="transform: none;">
            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                <div class="portfolio-item-caption-content text-center text-white">
                    <i class="fas fa-plus fa-3x"></i>
                </div>
            </div>
            <img class="img-fluid" src="assets/img/portfolio/create.jpeg" alt="..." />
            <h2 class="page-section-heading text-center text-uppercase text-secondary mb-2 text-white" style="margin-top: 20px;">Create TT</h2>
        </div>
    </a>
</div>

<div class="col-md-6 col-lg-4 mb-5">
   <a href="exportexcel.java" target="_blank">Download Excel</a>
   
        <div class="portfolio-item mx-auto text-white" style="transform: none;">
            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                <div class="portfolio-item-caption-content text-center text-primary">
                    <i class="fas fa-plus fa-3x"></i>
                </div>
            </div>
            <img class="img-fluid" src="assets/img/portfolio/update (2).jpg" alt="..." />
            <h2 class="page-section-heading text-center text-uppercase text-secondary mb-2 text-white"  style="margin-top: 20px;">DLR</h2>
        </div>

</div>
            
          
        </div>
    </div>
</section>
<script>
    // Remove hover effect for portfolio items
    const portfolioItems = document.querySelectorAll('.portfolio-item');
    portfolioItems.forEach(item => {
        item.addEventListener('mouseenter', () => {
            item.style.transform = 'none';
            const caption = item.querySelector('.portfolio-item-caption');
            caption.style.opacity = 0;
        });
    });
</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="js/scripts.js"></script>
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	
		
</body>
</html>
    
