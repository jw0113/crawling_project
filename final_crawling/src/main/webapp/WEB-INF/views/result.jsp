<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Crawling Project</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="./resources/css/styles.css" rel="stylesheet" />
        
        <script type = "text/javascript" src="./resources/js/jquery-3.6.0.min.js"></script>
        
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
		<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
		
		<script type="text/javascript">
    		

    		
		</script>



    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#page-top">Crawling Project</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="/">HOME</a></li>
                        
                    </ul>
                </div>
            </div>
        </nav>
        <section class="contact-section bg-black">
        	<div class="container px-4 px-lg-5">
        		<div class="row gx-4 gx-lg-5">
        			<div class="col-md-7 col-lg-5 mx-auto text-center">
                        <h2 class="text-white mb-5">사용자의 성향에 따른 여행지 추천</h2>
                	</div>
        		</div>
        		<div class="row gx-0 mb-5 mb-lg-0 justify-content-center">
        			<div class="col-lg-6">
        				<h4 class="text-white">추천 여행지 : ${dbdata[0].location} </h4>
        					<c:forEach var="a" items="${dbdata}" varStatus="status">
        					
        						<p class="text-white"> ${a.title}</p>
        						<img src="./resources/img/${si}/${status.count}.jpg">
        					</c:forEach>
        				
        				<!-- 
        				<div class="d-flex h-100" style="overflow:scroll; flex-direction : column; flex-wrap : wrap; word-break : break-all; hight:100%;">
        					<p class="mb-0 text-white-50">data</p>
        				</div>
        				-->
        				<div class="d-flex h-100 text-white-50">
        					
        				</div>
        			</div>
        		</div>
        	</div>
        </section>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="./resources/js/scripts.js"></script>
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>
