
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>


<!-- 방문자가 보는 페이지 -->
   
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>TakeYourTime</title>
    <!-- in your header -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/devicons/devicon@v2.12.0/devicon.min.css">


    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="shortcut icon" sizes="76x76" type="image/x-icon"
        href="https://a0.muscache.com/airbnb/static/logotype_favicon-21cc8e6c6a2cca43f061d2dcabdf6e58.ico">
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/slick.min.js"></script>
</head>
</head>
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
             
               

                <h1><a href="home.do"><i class="devicon-spring-plain"></i></a></h1>
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
    <section>
        <article id="article1">
            <div class="slide_group">
                <div class="slide slide1"></div>
                <div class="slide slide2"></div>
                <div class="slide slide3"></div>
                <div class="slide slide4"></div>
                <div class="slide slide5"></div>
            </div>
            <div class="search_box">
                <div class="search_title">
                    <h2>당신의 마스터를<br>검색해보세요.</h2>
                </div>
                <form action="userShowSearchListPage.do" method="post" class="cf">
                    <table>
                        <tr>
                            <td colspan="2" class="search_sub_title">위치로 검색하기</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <select class="search_input" name="mentoraddress">
                                    <option value="서울특별시">서울특별시</option>
                                    <option value="경기도">경기도</option>
                                    <option value="강원도">강원도</option>
                                    <option value="충청북도">충청북도</option>
                                    <option value="충청남도">충청남도</option>
                                    <option value="전라북도">전라북도</option>
                                    <option value="전라남도">전라남도</option>
                                    <option value="경상북도">경상북도</option>
                                    <option value="경상남도">경상남도</option>
                                    <option value="인천광역시">인천광역시</option>
                                    <option value="세종특별자치시">세종특별자치시</option>
                                    <option value="울산광역시">울산광역시</option>
                                    <option value="대구광역시">대구광역시</option>
                                    <option value="부산광역시">부산광역시</option>
                                    <option value="제주특별시">제주특별시</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="search_sub_title">분야별 검색하기</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <select class="search_input" name="mentorMajor" onchange="handleOnChange(this)">
                            
                                    <option value="0" selected="selected">
                                                전공을 선택해주세요!
                                    </option>
                                        
                                    <c:forEach items="${list}" var = "dto"> 
                                     <option>${dto.majorName }</option> 
                                     </c:forEach>     
                        
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="search_sub_title">세부분야 검색하기</td>
                        </tr>
                        <tr>
                            <td colspan="2"><input class="search_input" type="text" name="mentorSubMajor"></td>
                        </tr>
                    </table>
                    <div class="search_button">
                        <input class="button" type="submit" value="검색">
                    </div>
                </form>
            </div>
        </article>
        <article id="article2">
            <div class="row">
                <div class="sec_title">
                    Take Your Time 분야별 둘러보기
                </div>
                <ul class="cf">
                    <li>
                        <div class="imgbox">
                            <img src="./img/banner01.jpg" alt="">
                            <div class="sbox">
                                <a href="/MentoringProject/HompageCategorySearch.do?majornum=1"><p>소프트웨어개발</p></a>
                            </div>
                            <div class="line">
                                <div class="topline"></div>
                                <div class="bottomline"></div>
                                <div class="rightline"></div>
                                <div class="leftline"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="imgbox">
                            <img src="./img/design.jpg" alt="">
                            <div class="sbox">
                                <a href="/MentoringProject/HompageCategorySearch.do?majornum=2"><p>디자인</p></a>
                            </div>
                            <div class="line">
                                <div class="topline"></div>
                                <div class="bottomline"></div>
                                <div class="rightline"></div>
                                <div class="leftline"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="imgbox">
                            <img src="./img/art.jpg" alt="">
                            <div class="sbox">
                                <a href="/MentoringProject/HompageCategorySearch.do?majornum=3"><p>예술</p></a>
                            </div>
                            <div class="line">
                                <div class="topline"></div>
                                <div class="bottomline"></div>
                                <div class="rightline"></div>
                                <div class="leftline"></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="imgbox">
                            <img src="./img/health.jpg" alt="">
                            <div class="sbox">
                                <a href="/MentoringProject/HompageCategorySearch.do?majornum=4"><p>운동</p></a>
                            </div>
                            <div class="line">
                                <div class="topline"></div>
                                <div class="bottomline"></div>
                                <div class="rightline"></div>
                                <div class="leftline"></div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </article>
        <article id="article3">
            <div class="row">
                <div class="art3_box">
                    <img src="./img/master_2.jpg" alt="">
                    <div>
                        <h2>Take Your Time Premium을<br>만나보세요!</h2>
                        <p>퀄리티와 실력이 검증된 마스터 PICK!</p>
                        <a href="#none">자세히 알아보기</a>
                    </div>
                </div>
            </div>
        </article>
        <article id="article4">
        </article>
                <article id="article5">
            <div class="row">
                <div class="sec_title">마스터 프로필</div>
                <div class="home_container">
                    <div class="home_box">
                        <ul>
                            <li><img src="./img/kangjiyouel.jpg" alt="">
                                <ul class="home_txt">
                                    <li>소프트웨어개발</li>
                                    <li>JAVA</li>
                                    <li>JAVA</li>
                                    <li>강지율</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="home_box">
                        <ul>
                            <li><img src="./img/kangseowoo.jpg" alt="">
                                <ul class="home_txt">
                                    <li>소프트웨어개발</li>
                                    <li>HTML</li>
                                    <li>HTML</li>
                                    <li>강서우</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="home_box">
                        <ul>
                            <li><img src="./img/kangminhyeuk.jpg" alt="">
                                <ul class="home_txt">
                                    <li>소프트웨어개발</li>
                                    <li>Python</li>
                                    <li>Python</li>
                                    <li>강민혁</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="home_box">
                        <ul>
                            <li><img src="./img/kanggeumin.jpg" alt="">
                                <ul class="home_txt">
                                    <li>소프트웨어개발</li>
                                    <li>MYSql</li>
                                    <li>MYSql</li>
                                    <li>강규민</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="home_box">
                        <ul>
                            <li><img src="img/kangseongjun.jpg" alt="">
                                <ul class="home_txt">
                                    <li>소프트웨어개발</li>
                                    <li>C</li>
                                    <li>C</li>
                                    <li>강성준</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
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

    <script src="js/index.js"></script>
</body>

</html>