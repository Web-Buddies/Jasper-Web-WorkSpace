<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>TakeYourTime</title>
	
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/components/loginPage.css">
    <link rel="stylesheet" href="css/join.css">
	<link rel="stylesheet" href="css/subpage.css">
    <link rel="shortcut icon" sizes="76x76" type="image/x-icon"
        href="https://a0.muscache.com/airbnb/static/logotype_favicon-21cc8e6c6a2cca43f061d2dcabdf6e58.ico">
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/slick.min.js"></script>
    
    </head>
<script type="text/javascript">
function findPw(){
	if(!document.findPwForm.userid.value ){
		alert("ID 를 입력해 주세요");
		return;
		
	}
	if(!document.findPwForm.username.value){
		alert("이름을 입력해 주세요");
		return ;
	}
	
	if(!document.findPwForm.userphone.value){
		alert("번호을 입력해 주세요");
		return ;
	}
	
	findPwForm.submit();
	
}
</script>
<c:choose>
<c:when test="${findPwResult=='0'}">
	<script>		
		alert("입력하신 정보의 비밀번호가 없습니다. 다시 확인해주세요.");
	</script>
</c:when>
<c:when test="${!empty findPwResult}">
	<script type="text/javascript">
	var findPwResult = '<c:out value="${findPwResult}"/>';
		alert("당신의 비밀번호는 "+findPwResult+" 입니다." );
		location.href='userLoginPage.jsp';
	</script>
</c:when>
</c:choose>
 <style>
    .findpw {max-width: 1000px; margin: 120px 0 100px;margin: 0 auto; }
	.findpw input[type='text'], .findpw input[type='email'], 
	.findpw input[type='tel'], .findpw input[type='password'],
	.findpw select {height: 30px; border: 1px solid #ddd; text-indent: 0em; text-align: 1em; 
					vertical-align: middle; width: 45%}
	.findpw col:nth-child(1) {width: 20%; background: #eee}
	.findpw col:nth-child(2) {width: 80%;}
 
</style>
<body>
<header id="header">
        <div class="topmenu">
            <div class="row">
                <a href="#none"><i class="fab fa-facebook-square"></i></a>
                <a href="#none"><i class="fab fa-twitter"></i></a>
                <a href="#none"><i class="fab fa-instagram"></i></a>
                <a href="#none"><i class="fas fa-comment-dots"></i></a>
            </div>
        </div>
        <div class="menubar row">
            <div class="logo cf">
                <!-- <svg viewBox="0 0 1000 1000" role="presentation" aria-hidden="true" focusable="false"
                        style="height: 1em; width: 1em; display: inline-block; fill: currentcolor;">
                        <path
                            d="m499.3 736.7c-51-64-81-120.1-91-168.1-10-39-6-70 11-93 18-27 45-40 80-40s62 13 80 40c17 23 21 54 11 93-11 49-41 105-91 168.1zm362.2 43c-7 47-39 86-83 105-85 37-169.1-22-241.1-102 119.1-149.1 141.1-265.1 90-340.2-30-43-73-64-128.1-64-111 0-172.1 94-148.1 203.1 14 59 51 126.1 110 201.1-37 41-72 70-103 88-24 13-47 21-69 23-101 15-180.1-83-144.1-184.1 5-13 15-37 32-74l1-2c55-120.1 122.1-256.1 199.1-407.2l2-5 22-42c17-31 24-45 51-62 13-8 29-12 47-12 36 0 64 21 76 38 6 9 13 21 22 36l21 41 3 6c77 151.1 144.1 287.1 199.1 407.2l1 1 20 46 12 29c9.2 23.1 11.2 46.1 8.2 70.1zm46-90.1c-7-22-19-48-34-79v-1c-71-151.1-137.1-287.1-200.1-409.2l-4-6c-45-92-77-147.1-170.1-147.1-92 0-131.1 64-171.1 147.1l-3 6c-63 122.1-129.1 258.1-200.1 409.2v2l-21 46c-8 19-12 29-13 32-51 140.1 54 263.1 181.1 263.1 1 0 5 0 10-1h14c66-8 134.1-50 203.1-125.1 69 75 137.1 117.1 203.1 125.1h14c5 1 9 1 10 1 127.1.1 232.1-123 181.1-263.1z">
                        </path>
    	                <h2>Take Your Time</h2>
                    </svg> -->
                <h1><a href="home.do">LOGO</a></h1>
            </div>
            <nav>
                <ul>
                    <!-- <li><a href="userBeMentorPage.jsp">마스터가 되어보세요</a></li> -->
                        <li><a href="/MentoringProject/help.do">도움말</a></li>
                        <li><a href="userSignUpPage.jsp">회원가입</a></li>
                        <li><a href="userLoginPage.jsp">로그인</a></li>
                        <!-- <li><a href="#article2">Force</a></li>
                        <li><a href="#article4">Master</a></li>
                        <li><a href="#article5"></a></li>
                        <li><a href="#none">도움말</a></li> -->
                </ul>
            </nav>
        </div>
    </header>
<section id="section" >
		
<form action="userFindPwResult.do" method="post" name="findPwForm" class="findpw">
	<table>
	<colgroup>
	<col>
	<col>
	</colgroup>
		<tr>
			<th>ID : </th>
			<td>
				<input type="text" name="userid" placeholder="아이디를 입력해주세요">
			</td>
		</tr>
		<tr>
			<th>이름 :</th>
			<td><input type="text" name="username" placeholder="이름을 입력해주세요"></td>
		</tr>	
		<tr>
			<th>핸드폰 : </th>
			<td><input type="tel" name="userphone" placeholder="01011112222"></td>
		</tr>
		
	</table>
	<input type="button" value="PW 찾기" onClick="findPw(this.form)">
	<a href="userLoginPage.jsp">로그인 페이지로 이동</a>
</form>
</section>
<footer id="footer">
        	<div class="row">
            <p>
                <a href="#none">회사소개</a>
                <a href="#none">사업분야</a>
                <a href="#none">갤러리</a>
                <a href="#none">온라인문의</a>
                <a href="#none">고객센터</a>
            </p>
            <p><span>주소 : 부산광역시 해운대구 좌동 273-10</span> <span class="hide"> / </span> <span>상호 : 디자인선사인</span> <span
                    class="hide"> / </span>사업자등록번호 : 123-456-7890<br>
                <a href="tel:070-7155-19749">Tel : 070-7155-19749</a> <span class="hide"> / </span><span>Fax :
                    02-2139-1142</span> <span class="hide"> / </span><a href="mailto:gijung23@nate.com">E-mail :
                    gijung23@nate.com</a></p>
            <p>Copyright &copy; Sunsine.com All Rights Reserved.</p>
        </div>
    </footer>
</body>
</html>