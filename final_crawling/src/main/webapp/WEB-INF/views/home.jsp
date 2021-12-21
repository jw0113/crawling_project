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
    		$(document).ready(function () {
            	$.datepicker.setDefaults($.datepicker.regional['ko']); 
            	$( "#startDate" ).datepicker({
                 	changeMonth: true, 
                 	changeYear: true,
                 	nextText: '다음 달',
                 	prevText: '이전 달', 
                 	dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 	dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                 	monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 	monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 	dateFormat: "mmdd",
                 	maxDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
                 	onClose: function( selectedDate ) {    
                      	//시작일(startDate) datepicker가 닫힐때
                      	//종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                     	$("#endDate").datepicker( "option", "minDate", selectedDate );
                 	}
 
            	});
            	$( "#endDate" ).datepicker({
                 	changeMonth: true, 
                 	changeYear: true,
                 	nextText: '다음 달',
                 	prevText: '이전 달', 
                 	dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 	dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                 	monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 	monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 	dateFormat: "mmdd",
                 	maxDate: 0,                       // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가)
                 	onClose: function( selectedDate ) {    
                     	// 종료일(endDate) datepicker가 닫힐때
                     	// 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
                     	$("#startDate").datepicker( "option", "maxDate", selectedDate );
                 	}    
 
            	});    
    		});

    		function checkOnlyOne1(element){
        		
        		const check = document.getElementsByName("importA2");
        		check.forEach((cb) => {
            		cb.checked = false;	
            	})
            	element.checked = true;
        	}

			function checkOnlyOne2(element){
        		
        		const check = document.getElementsByName("playA3");
        		check.forEach((cb) => {
            		cb.checked = false;	
            	})
            	element.checked = true;
        	}
			function checkOnlyOne3(element){
        		
        		const check = document.getElementsByName("trafficA5");
        		check.forEach((cb) => {
            		cb.checked = false;	
            	})
            	element.checked = true;
        	}
			function checkOnlyOne4(element){
        		
        		const check = document.getElementsByName("sleepA6");
        		check.forEach((cb) => {
            		cb.checked = false;	
            	})
            	element.checked = true;
        	}
			function checkOnlyOne5(element){
        		
        		const check = document.getElementsByName("withA7");
        		check.forEach((cb) => {
            		cb.checked = false;	
            	})
            	element.checked = true;
        	}
			function checkOnlyOne6(element){
        		
        		const check = document.getElementsByName("gender");
        		check.forEach((cb) => {
            		cb.checked = false;	
            	})
            	element.checked = true;
        	}
			function checkOnlyOne7(element){
        		
        		const check = document.getElementsByName("age");
        		check.forEach((cb) => {
            		cb.checked = false;	
            	})
            	element.checked = true;
        	}
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
        				<h4 class="text-white">사용자 정보 입력</h4>
        				<!-- 
        				<div class="d-flex h-100" style="overflow:scroll; flex-direction : column; flex-wrap : wrap; word-break : break-all; hight:100%;">
        					<p class="mb-0 text-white-50">data</p>
        				</div>
        				-->
        				<div class="d-flex h-100 text-white-50">
        					<form action="/finalcrawling/dataget" method="post">
        						1. 여행 일자<br>
        						<input type="text" id="startDate" name = 'startDate'> <input type="text" id="endDate" name = 'endDate'>
        						<br><br>
        						2. 여행지 선택시 가장 중요시 생각하는 것<br>
        						<input type='checkbox' name='importA2' value = 1 onclick='checkOnlyOne1(this)'>여행지 지명도<br>
        						<input type='checkbox' name='importA2' value = 2 onclick='checkOnlyOne1(this)'>볼거리 제공<br>
        						<input type='checkbox' name='importA2' value = 3 onclick='checkOnlyOne1(this)'>저렴한 여행경비<br>
        						<input type='checkbox' name='importA2' value = 4 onclick='checkOnlyOne1(this)'>이동거리<br>
        						<input type='checkbox' name='importA2' value = 5 onclick='checkOnlyOne1(this)'>여행할 수 있는 시간<br>
        						<input type='checkbox' name='importA2' value = 6 onclick='checkOnlyOne1(this)'>숙박시설<br>
        						<input type='checkbox' name='importA2' value = 7 onclick='checkOnlyOne1(this)'>쇼핑<br>
        						<input type='checkbox' name='importA2' value = 8 onclick='checkOnlyOne1(this)'>음식<br>
        						<input type='checkbox' name='importA2' value = 9 onclick='checkOnlyOne1(this)'>교통편<br>
        						<input type='checkbox' name='importA2' value = 10 onclick='checkOnlyOne1(this)'>체험프로그램 유무<br>
        						<input type='checkbox' name='importA2' value = 11 onclick='checkOnlyOne1(this)'>경험자의 추천<br>
        						<input type='checkbox' name='importA2' value = 12 onclick='checkOnlyOne1(this)'>관광지의 편의시설<br>
        						<input type='checkbox' name='importA2' value = 13 onclick='checkOnlyOne1(this)'>교육성(교육적 측면)<br>
        						<input type='checkbox' name='importA2' value = 14 onclick='checkOnlyOne1(this)'>여행동반자유형<br>
        						<input type='checkbox' name='importA2' value = 15 onclick='checkOnlyOne1(this)'>기타<br>
        						<br>
        						3. 원하는 여행 유형<br>
        						<input type='checkbox' name='playA3_1' value = 1 onclick='checkOnlyOne2(this)'>자연 및 풍경 감상(힐링)<br>
        						<input type='checkbox' name='playA3_2' value = 2 onclick='checkOnlyOne2(this)'>음식 관광<br>
        						<input type='checkbox' name='playA3_3' value = 3 onclick='checkOnlyOne2(this)'>야외활동<br>
        						<input type='checkbox' name='playA3_8' value = 8 onclick='checkOnlyOne2(this)'>쇼핑<br>
        						<input type='checkbox' name='playA3_9' value = 9 onclick='checkOnlyOne2(this)'>지역 문화 예술 및 공연/콘서트/전시 관람<br>
        						<input type='checkbox' name='playA3_11' value = 11 onclick='checkOnlyOne2(this)'>지역 축제 및 이벤트 참가<br>
        						<br>
        						4. 주요 이동 교통 수단<br>
        						<input type='checkbox' name='trafficA5' value = 1 onclick='checkOnlyOne3(this)'>자가용<br>
        						<input type='checkbox' name='trafficA5' value = 2 onclick='checkOnlyOne3(this)'>철도<br>
        						<input type='checkbox' name='trafficA5' value = 3 onclick='checkOnlyOne3(this)'>항공기<br>
        						<input type='checkbox' name='trafficA5' value = 4 onclick='checkOnlyOne3(this)'>선박/해상 교통<br>
        						<input type='checkbox' name='trafficA5' value = 5 onclick='checkOnlyOne3(this)'>지하철<br>
        						<input type='checkbox' name='trafficA5' value = 6 onclick='checkOnlyOne3(this)'>고속/시외/시내 버스<br>
        						<input type='checkbox' name='trafficA5' value = 8 onclick='checkOnlyOne3(this)'>차량대여/렌트<br>
        						<input type='checkbox' name='trafficA5' value = 9 onclick='checkOnlyOne3(this)'>자전거<br>
        						<input type='checkbox' name='trafficA5' value = 10 onclick='checkOnlyOne3(this)'>택시<br>
        						<input type='checkbox' name='trafficA5' value = 11 onclick='checkOnlyOne3(this)'>기타<br>
        						<br>
        						5. 숙박 시설<br>
        						<input type='checkbox' name='sleepA6_1' value = 1 onclick='checkOnlyOne4(this)'>호텔<br>
        						<input type='checkbox' name='sleepA6_3' value = 3 onclick='checkOnlyOne4(this)'>펜션<br>
        						<input type='checkbox' name='sleepA6_4' value = 4 onclick='checkOnlyOne4(this)'>콘도미니엄/리조트<br>
        						<input type='checkbox' name='sleepA6_9' value = 9 onclick='checkOnlyOne4(this)'>게스트하우스<br>
        						<br>
        						6. 여행 동반자 수(본인포함)<br>
        						<input type='text' name='countA7_1'><br>
        						<br>
        						7. 동반자 유형<br>
        						<input type='checkbox' name='withA7_1' value = 1 onclick='checkOnlyOne5(this)'>가족(부모, 배우자, 자녀, 형제)<br>
        						<input type='checkbox' name='withA7_2' value = 2 onclick='checkOnlyOne5(this)'>친적<br>
        						<input type='checkbox' name='withA7_3' value = 3 onclick='checkOnlyOne5(this)'>친구/연인<br>
        						<input type='checkbox' name='withA7_4' value = 4 onclick='checkOnlyOne5(this)'>(직장)동료<br>
        						<input type='checkbox' name='withA7_5' value = 5 onclick='checkOnlyOne5(this)'>친목 단체/모임(동호회, 종교단체 등)<br>
        						<input type='checkbox' name='withA7_6' value = 6 onclick='checkOnlyOne5(this)'>학교 단체(소풍, 수학여행)<br>
        						<input type='checkbox' name='withA7_7' value = 7 onclick='checkOnlyOne5(this)'>기타<br>
        						<br>
        						8. 예상 여행비 총합<br>
        						<input type='text' name='costA10'><br>
        						<br>
        						9. 성별<br>
        						<input type='checkbox' name='gender' value = 1 onclick='checkOnlyOne6(this)'>남자<br>
        						<input type='checkbox' name='gender' value = 2 onclick='checkOnlyOne6(this)'>여자<br>
        						<br>
        						10. 나이<br>
        						<input type='checkbox' name='age' value = 1 onclick='checkOnlyOne7(this)'>15~19세<br>
        						<input type='checkbox' name='age' value = 2 onclick='checkOnlyOne7(this)'>20대<br>
        						<input type='checkbox' name='age' value = 3 onclick='checkOnlyOne7(this)'>30대<br>
        						<input type='checkbox' name='age' value = 4 onclick='checkOnlyOne7(this)'>40대<br>
        						<input type='checkbox' name='age' value = 5 onclick='checkOnlyOne7(this)'>50대<br>
        						<input type='checkbox' name='age' value = 6 onclick='checkOnlyOne7(this)'>60대<br>
        						<input type='checkbox' name='age' value = 7 onclick='checkOnlyOne7(this)'>70대 이상<br>
        						<br>
        						<input type='submit'>
        						
        					</form>
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
