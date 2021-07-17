<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/join.css">
    <link rel="shortcut icon" sizes="76x76" type="image/x-icon"
        href="https://a0.muscache.com/airbnb/static/logotype_favicon-21cc8e6c6a2cca43f061d2dcabdf6e58.ico">
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/slick.min.js"></script>
<link rel="stylesheet" href="css/join.css">
</head><head>
<c:choose>
<c:when test="${userSignUpResult == '0'}">
	<script>
	alert("회원가입이 실패하였습니다. 입력한 데이터를 다시 확인해 주세요.");
	</script>	
</c:when>
<c:when test="${userSignUpResult == '1' }">
	<script>
	alert("축하드립니다 가입되었습니다.");
	window.location.href = 'visitorPage.jsp';
	</script>	
</c:when>
</c:choose>


</head>
<style>
  .joinBox {max-width: 900px; margin-bottom: 30px}
.joinBox input[type='text'], .joinBox input[type='email'], 
.joinBox input[type='tel'], .joinBox input[type='password'],
.joinBox select {height: 30px; border: 1px solid #ddd; text-indent: 0em;text-align: 1em; vertical-align: middle;}
 
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
                
                <h1><a href="home.do">LOGO</a></h1>
            </div>
            <nav>
                <ul>
                    <li><a href="visitorShowHelpPage">도움말</a></li>
                        <li><a href="userSignUpPage">회원가입</a></li>
                        <li><a href="userLoginPage">로그인</a></li>
                </ul>
            </nav>
        </div>
    </header>
    
    <section id="section" style="margin: 120px 0 80px">
       <div class="joinBox row">
		<form action="userSignUpPage.do" method="post" name="loginform" onsubmit="return check()">
		<table border="0">
			
			<tr>
				<th><label for="idbox">아이디</label></th>
				<td><input type="text" name="userid" id="idbox" placeholder="아이디를 입력해 주세요" autocapitalize="none">
				<input type="button" value="ID 중복확인" name="confirm_id" onClick="confirmId(this.form)"/></td>
			</tr>
			
			<tr>
				<th><label for="pwbox">비밀번호</label></th>
				<td> <input type="password" id="pwbox" name="userpw" placeholder="비밀번호를 입력해 주세요" size="20"></td>
			</tr>
			<tr>
				<th><label for="pwbox">비밀번호 재입력</label></th>
				<td> <input type="password" id= "pwbox2" name="userpw2" placeholder="비밀번호를 한번더 입력해 주세요" size="30"></td>
			</tr>
			<tr>
				<th><label for="irum">이름</label></th>
			 	<td> <input type="text" name="username" id="irum" placeholder="이름을 입력해 주세요"> </td>
			</tr>
			<tr>
				<th><label for="emailid">이메일</label></th>
				<td><input type="email" name="useremail" ></td>
			</tr>
			<tr>
				<th><label for="hp">휴대전화</label></th>
				<td><input name="fuserphone" value="010" readonly="readonly" type="tel"> - <input type="tel" name="muserphone" pattern="[0-9]{4}"> - <input type="tel" name="euserphone" pattern="[0-9]{4}"></td>
			</tr>
		</table>
			
			<div class="btn">
				<input type="button" value="가입하기" onclick="check()" >
			</div>
			
		</form>
		</div>
	
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
    <div class="gotop"><a href="#"><i class="fas fa-angle-up"></i><br><span>top</span></a></div>
    
    <script type="text/javascript">




	function check(){
		var repw = /^[a-zA-Z0-9]{4,12}$/;
		var rephone = /^\d{3,4}$/; 
		if(!document.loginform.userid.value){
			alert("ID 를 입력해 주세요");
			return false;
		}
		if(!document.loginform.userpw.value){
			alert("Password 입력해 주세요");
			return false;
		}
		if(!document.loginform.userpw2.value){
			alert("Re-Password 입력해 주세요");
			return false;
		}
		if(!repw.test(document.loginform.userpw.value)){
			alert("비밀번호는 영문 대소문자와 숫자 4~12 자리로 입력해주셔야 합니다.");
			loginform.userpw.value='';
		/* 	loginform.userpw2.value=''; */
			loginform.userpw.focus();
			return false;
		}
		
		if(document.loginform.userpw.value != loginform.userpw2.value){
			alert("비밀번호가 일치하지 않습니다.");
			loginform.userpw.value='';
			loginform.userpw2.value='';
			loginform.userpw.focus();
			return false;
		}
		
		if(!document.loginform.username.value){
			alert("이름을 입력해 주세요");
			return false;
		}
		if(!document.loginform.useremail.value){
			alert("이메일을 입력해 주세요");
			return false;
		}
		if(!document.loginform.muserphone.value){
			alert("번호을 입력해 주세요");
			return false;
		}
		if(!document.loginform.euserphone.value){
			alert("번호을 입력해 주세요");
			return false;
		}
		if(!rephone.test(document.loginform.muserphone.value) || !rephone.test(document.loginform.euserphone.value)){
			alert("전화번호를 양식에 맞게 기입해주세요.");
			loginform.euserphone.value='';
			loginform.euserphone.focus();
			return false;
		}
		document.loginform.submit();
		return true;
	}
	function confirmId(){
		if(document.loginform.userid.value == ""){
			alert("ID 를 입력하세요");
			return;
		}
		
		url = "confirmId.jsp?userid=" + document.loginform.userid.value;
		open(url , "confirm","toolbar=no,location=no,status=no,scrollbar=no,resizable=no,width=300,height=200");
		
	}



</script>
</body>
</html>