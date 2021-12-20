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
                 	nextText: '���� ��',
                 	prevText: '���� ��', 
                 	dayNames: ['�Ͽ���', '������', 'ȭ����', '������', '�����', '�ݿ���', '�����'],
                 	dayNamesMin: ['��', '��', 'ȭ', '��', '��', '��', '��'], 
                 	monthNamesShort: ['1��','2��','3��','4��','5��','6��','7��','8��','9��','10��','11��','12��'],
                 	monthNames: ['1��','2��','3��','4��','5��','6��','7��','8��','9��','10��','11��','12��'],
                 	dateFormat: "yymmdd",
                 	maxDate: 0,                       // �����Ҽ��ִ� �ּҳ�¥, ( 0 : ���� ���� ��¥ ���� �Ұ�)
                 	onClose: function( selectedDate ) {    
                      	//������(startDate) datepicker�� ������
                      	//������(endDate)�� �����Ҽ��ִ� �ּ� ��¥(minDate)�� ������ �����Ϸ� ����
                     	$("#endDate").datepicker( "option", "minDate", selectedDate );
                 	}    
 
            	});
            	$( "#endDate" ).datepicker({
                 	changeMonth: true, 
                 	changeYear: true,
                 	nextText: '���� ��',
                 	prevText: '���� ��', 
                 	dayNames: ['�Ͽ���', '������', 'ȭ����', '������', '�����', '�ݿ���', '�����'],
                 	dayNamesMin: ['��', '��', 'ȭ', '��', '��', '��', '��'], 
                 	monthNamesShort: ['1��','2��','3��','4��','5��','6��','7��','8��','9��','10��','11��','12��'],
                 	monthNames: ['1��','2��','3��','4��','5��','6��','7��','8��','9��','10��','11��','12��'],
                 	dateFormat: "yymmdd",
                 	maxDate: 0,                       // �����Ҽ��ִ� �ִ볯¥, ( 0 : ���� ���� ��¥ ���� �Ұ�)
                 	onClose: function( selectedDate ) {    
                     	// ������(endDate) datepicker�� ������
                     	// ������(startDate)�� �����Ҽ��ִ� �ִ� ��¥(maxDate)�� ������ �����Ϸ� ����
                     	$("#startDate").datepicker( "option", "maxDate", selectedDate );
                 	}    
 
            	});    
    		});

    		function checkOnlyOne(element){
        		const check = document.getElementsByName("");
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
                        <h2 class="text-white mb-5">������� ���⿡ ���� ������ ��õ</h2>
                	</div>
        		</div>
        		<div class="row gx-0 mb-5 mb-lg-0 justify-content-center">
        			<div class="col-lg-6">
        				<h4 class="text-white">����� ���� �Է�</h4>
        				<!-- 
        				<div class="d-flex h-100" style="overflow:scroll; flex-direction : column; flex-wrap : wrap; word-break : break-all; hight:100%;">
        					<p class="mb-0 text-white-50">data</p>
        				</div>
        				-->
        				<div class="d-flex h-100 text-white-50">
        					<form action="/dataget" method="post">
        						1. ���� ����<br>
        						<input type="text" id="startDate"> <input type="text" id="endDate">
        						<br><br>
        						2. ������ ���ý� ���� �߿�� �����ϴ� ��<br>
        						<input type='checkbox' name='A2' onclick='checkOnlyOne(this)'>������ ����<br>
        						<input type='checkbox' name='A2' onclick='checkOnlyOne(this)'>���Ÿ� ����<br>
        						<input type='checkbox' name='A2' onclick='checkOnlyOne(this)'>������ ������<br>
        						<input type='checkbox' name='A2' onclick='checkOnlyOne(this)'>�̵��Ÿ�<br>
        						<input type='checkbox' name='A2' onclick='checkOnlyOne(this)'>������ �� �ִ� �ð�<br>
        						<input type='checkbox' name='A2' onclick='checkOnlyOne(this)'>���ڽü�<br>
        						<input type='checkbox' name='A2' onclick='checkOnlyOne(this)'>����<br>
        						<input type='checkbox' name='A2' onclick='checkOnlyOne(this)'>����<br>
        						<input type='checkbox' name='A2' onclick='checkOnlyOne(this)'>������<br>
        						<input type='checkbox' name='A2' onclick='checkOnlyOne(this)'>ü�����α׷� ����<br>
        						<input type='checkbox' name='A2' onclick='checkOnlyOne(this)'>�������� ��õ<br>
        						<input type='checkbox' name='A2' onclick='checkOnlyOne(this)'>�������� ���ǽü�<br>
        						<input type='checkbox' name='A2' onclick='checkOnlyOne(this)'>������(������ ����)<br>
        						<input type='checkbox' name='A2' onclick='checkOnlyOne(this)'>���ൿ��������<br>
        						<input type='checkbox' name='A2' onclick='checkOnlyOne(this)'>��Ÿ<br>
        						<br>
        						3. ���ϴ� ���� ����<br>
        						<input type='checkbox' name='A3' onclick='checkOnlyOne(this)'>�ڿ� �� ǳ�� ����(����)<br>
        						<input type='checkbox' name='A3' onclick='checkOnlyOne(this)'>���� ����<br>
        						<input type='checkbox' name='A3' onclick='checkOnlyOne(this)'>�߿�Ȱ��<br>
        						<input type='checkbox' name='A3' onclick='checkOnlyOne(this)'>����<br>
        						<input type='checkbox' name='A3' onclick='checkOnlyOne(this)'>���� ��ȭ ���� �� ����/�ܼ�Ʈ/���� ����<br>
        						<input type='checkbox' name='A3' onclick='checkOnlyOne(this)'>���� ���� �� �̺�Ʈ ����<br>
        						<br>
        						4. �ֿ� �̵� ���� ����<br>
        						<input type='checkbox' name='A5' onclick='checkOnlyOne(this)'>�ڰ���<br>
        						<input type='checkbox' name='A5' onclick='checkOnlyOne(this)'>ö��<br>
        						<input type='checkbox' name='A5' onclick='checkOnlyOne(this)'>�װ���<br>
        						<input type='checkbox' name='A5' onclick='checkOnlyOne(this)'>����/�ػ� ����<br>
        						<input type='checkbox' name='A5' onclick='checkOnlyOne(this)'>����ö<br>
        						<input type='checkbox' name='A5' onclick='checkOnlyOne(this)'>���/�ÿ�/�ó� ����<br>
        						<input type='checkbox' name='A5' onclick='checkOnlyOne(this)'>�����뿩/��Ʈ<br>
        						<input type='checkbox' name='A5' onclick='checkOnlyOne(this)'>������<br>
        						<input type='checkbox' name='A5' onclick='checkOnlyOne(this)'>�ý�<br>
        						<input type='checkbox' name='A5' onclick='checkOnlyOne(this)'>��Ÿ<br>
        						<br>
        						5. ���� �ü�<br>
        						<input type='checkbox' name='A6' onclick='checkOnlyOne(this)'>ȣ��<br>
        						<input type='checkbox' name='A6' onclick='checkOnlyOne(this)'>���<br>
        						<input type='checkbox' name='A6' onclick='checkOnlyOne(this)'>�ܵ��̴Ͼ�/����Ʈ<br>
        						<input type='checkbox' name='A6' onclick='checkOnlyOne(this)'>�Խ�Ʈ�Ͽ콺<br>
        						<br>
        						6. ���� ������ ��(��������)<br>
        						<input type='text' name='A7_1'><br>
        						<br>
        						7. ������ ����<br>
        						<input type='checkbox' name='A7' onclick='checkOnlyOne(this)'>����(�θ�, �����, �ڳ�, ����)<br>
        						<input type='checkbox' name='A7' onclick='checkOnlyOne(this)'>ģ��<br>
        						<input type='checkbox' name='A7' onclick='checkOnlyOne(this)'>ģ��/����<br>
        						<input type='checkbox' name='A7' onclick='checkOnlyOne(this)'>(����)����<br>
        						<input type='checkbox' name='A7' onclick='checkOnlyOne(this)'>ģ�� ��ü/����(��ȣȸ, ������ü ��)<br>
        						<input type='checkbox' name='A7' onclick='checkOnlyOne(this)'>�б� ��ü(��ǳ, ���п���)<br>
        						<input type='checkbox' name='A7' onclick='checkOnlyOne(this)'>��Ÿ<br>
        						<br>
        						8. ���� ����� ����<br>
        						<input type='text' name='A10'><br>
        						<br>
        						9. ����<br>
        						<input type='checkbox' name='gender' onclick='checkOnlyOne(this)'>����<br>
        						<input type='checkbox' name='gender' onclick='checkOnlyOne(this)'>����<br>
        						<br>
        						10. ����<br>
        						<input type='checkbox' name='age' onclick='checkOnlyOne(this)'>15~19��<br>
        						<input type='checkbox' name='age' onclick='checkOnlyOne(this)'>20��<br>
        						<input type='checkbox' name='age' onclick='checkOnlyOne(this)'>30��<br>
        						<input type='checkbox' name='age' onclick='checkOnlyOne(this)'>40��<br>
        						<input type='checkbox' name='age' onclick='checkOnlyOne(this)'>50��<br>
        						<input type='checkbox' name='age' onclick='checkOnlyOne(this)'>60��<br>
        						<input type='checkbox' name='age' onclick='checkOnlyOne(this)'>70�� �̻�<br>
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
