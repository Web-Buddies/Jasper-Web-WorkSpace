<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<style>
@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,600;1,600&display=swap');
* {
  box-sizing: border-box; 
}
body {
  display: flex;
  min-height: 100vh;
  flex-direction: column;
  margin: 0;
}
#main {
  display: flex;
  flex: 1;
}
#main > article {
	text-align: center;
  flex: 1;
}
#main > nav, 
#main > aside {
  flex: 0 0 17vw;
  background: ;
}
#main > nav {
  order: -1;
}
header {
  background: #285943;
  height: 35vh;
  position: relative;
  text-align: right;
}
 footer {
  background: #285943;
  height: 25vh;
  position: relative;
  text-align: right;
}
header, footer, article, nav, aside {
  padding: 1em;
}
button {
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
}
button {
    width:180px;
    background-color: #285943;
    border: none;
    color:#D7FFF1;
    padding: 30px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-family: 'Montserrat', sans-serif;
    font-size: 20px;
    margin: 5px;
    cursor: pointer;
    border-radius:10px 0 10px 0;
}
button.now {
    background-color: #8CD790;
}
div.row {
	color:#D7FFF1;
}
a.footer{
	color:#77AF9C;
}
</style>
<head>
 <link rel="stylesheet" type="text/css" href="css/starwars.css">
 <link rel="stylesheet" href="css/adminstyle.css">
<meta charset="UTF-8">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header>
  <div class="starwars-demo">
    <img src="//cssanimation.rocks/demo/starwars/images/star.svg" alt="Star" class="star">
    <img src="//cssanimation.rocks/demo/starwars/images/wars.svg" alt="Wars" class="wars">
    <h2 class="byline" id="byline">The Force Awakens</h2>
  </div>
</header>
  <div id="main">
    <article>
		<form action="AdminAnnouncementModify.do?noticepk=${adminAnnouncementContentPage.noticepk }" method="post" name="updateForm">
			<table>
			<tr>
				<th>??????</th>
				<td class="l"><input type="text" name="noticetitle" size="50" value="${adminAnnouncementContentPage.noticetitle }"></td>
			</tr>
			<tr>
				<th>??????</th>
				<td><textarea rows="10" cols="50" name="noticetext">${adminAnnouncementContentPage.noticetext }</textarea></td>
			</tr>
			<tr>
				<td colspan="2" class="c"><input type="button" value="??????" onclick="update()">&nbsp;&nbsp;&nbsp;<a href="AdminAnnouncementList.do">????????????</a>
				&nbsp;&nbsp;&nbsp;<a href="AdminAnnouncementDelete.do?noticepk=${adminAnnouncementContentPage.noticepk }" class="confirmationB">??????</a></td>
			</tr>
			</table>
		</form>
		</article>
		  <nav>
	<button type="button" class="now" onclick="location.href='AdminAnnouncementList.do' ">Announcement</button>
 	<button type="button" onclick="location.href='adminUserListShowPage.do' ">User</button>
 	<button type="button" onclick="location.href='adminMajorListShowPage.do' ">Force</button> <br>
 	<button type="button" onclick="location.href='adminReviewList.do' ">Review</button>
 	<button type="button" onclick="location.href='adminQnaList.do' ">QnA</button>
 	<button type="button" onclick="location.href='adminPageShowPayResult.do' ">?????? ?????? ??????</button>
</nav>
    <aside></aside>
  </div>
    <footer>
   <div class="row">
            <p>
                <a href="#none" class="footer">????????????</a>
                <a href="#none" class="footer">????????????</a>
                <a href="#none" class="footer">?????????</a>
                <a href="#none" class="footer">???????????????</a>
                <a href="#none" class="footer">????????????</a>
            </p>
            <p><span>?????? : ??????????????? ???????????? ?????? 273-10</span> <span class="hide"> / </span> <span>?????? : ??????????????????</span> <span
                    class="hide"> / </span>????????????????????? : 123-456-7890<br>
                <a href="tel:070-7155-19749" class="footer">Tel : 070-7155-19749</a> <span class="hide"> / </span><span>Fax :
                    02-2139-1142</span> <span class="hide"> / </span><a href="mailto:gijung23@nate.com" class="footer">E-mail :
                    gijung23@nate.com</a></p>
            <p>Copyright &copy; Sunsine.com All Rights Reserved.</p>
        </div>
  </footer>
		
</body>
<script type="text/javascript">
    var elems = document.getElementsByClassName('confirmationB');
    var confirmIt = function (e) {
        if (!confirm('?????? ?????????????????????????')) e.preventDefault();
    };
    for (var i = 0, l = elems.length; i < l; i++) {
        elems[i].addEventListener('click', confirmIt, false);
    }
    function update(){
        var updateForm = document.updateForm;
        var noticetext = updateForm.noticetext.value;
        var noticetitle = updateForm.noticetitle.value;
        
        if(!noticetext || !noticetitle){
            alert("????????? ???????????????.")
        }else{
        	  if (!confirm('?????? ?????? ????????? ???????????? ?????????????????????????')) e.preventDefault();
        	    for (var i = 0, l = elems.length; i < l; i++) {
        	        elems[i].addEventListener('click', confirmIt, false);
        	    }
        	updateForm.submit();
        }
    }
</script>
</html>