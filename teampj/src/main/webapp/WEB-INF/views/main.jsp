<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>minparkang</title>
	<link rel="stylesheet" href="/resources/css/common-style/reset.css">
	<link rel="stylesheet" href="/resources/css/common-style/side-nav.css">
	<link rel="stylesheet" href="/resources/css/common-style/contents.css">
	<link rel="stylesheet" href="/resources/css/main.css">
	<style>
html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
a:link,a:focus,a:visited,a:hover { color: black; text-decoration: none; }
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
	display: block;
}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
	border: 1px black solid;
}
/*사각형 버튼*/
.button_style{
	background-color: white;
	border:1px solid  black;
	font-weight: bolder;
	padding:8px;
	cursor: pointer;
}
.button_style:hover{
	background-color: black;
	color:white;
}
/*둥근 버튼*/
.btn-style{
    background-color: white;
    border:1px solid black;
    width:197px;
    margin-top:20px;
    border-radius: 40px;
    padding: 10px 0;
    font-size:11px;
}
.btn-style:hover{
    background-color: black;
    color:white;
}
/*입력창*/
.text-frame{
	position:relative;
	border:1px solid RGB(221,221,221);
	width: 90%;
	height: 20px;
}
.text-frame:focus{
	border:1px solid RGB(22,22,22);
	outline: none;
}
.text-frame:hover{
	border:1px solid RGB(22,22,22);
}
.text-frame-margin{
	margin-bottom: 5px;
}

nav{width:100%;top:50px;right:50px;position: fixed;}
nav > ul {float: right;}
nav > ul > li{float:left;}
nav > ul > li{margin-right: 10px;}
nav > ul > li:last-child{margin-right: 0;}


#side_navigation{vertical-align:top; width:200px;height:600px;position:fixed; padding-left:50px;padding-top:100px;}
#side_navigation>h1{font-size: 20px; margin:15px 0;font-weight: bolder;}


#s_nav > ul  li {float: left;margin-right: 10px;font-size: 8px;}

#s_category > ul{display: inline-block; margin-top: 50px;}
#s_category > ul > li{margin-bottom: 20px; font-weight: bolder;}
.search_wrap{
    margin:25px 0;
}
#search{
    border:none;
    border-bottom:1px solid gray;
}
#search:focus{
    outline: none;
    border-bottom:1px solid black;
}
#s_footer>h1 {font-weight: bolder;margin:30px 0 20px 0;}
#s_footer>p {font-size:10px;margin-bottom:5px;}

.search-btn-style{
    background-color: white;
    border:1px solid black;
    width:170px;
    margin-top:5px;
    border-radius: 40px;
    padding: 3px 0;
    font-size:11px;
}
.search-btn-style:hover{
    background-color: black;
    color:white;
}

html,body{
    width:100%;
    margin:0;
    padding:0;
}
#contents{
    width:100%;
    padding-left: 250px;
    box-sizing: border-box; /* 오페라(Opera) */
    -moz-box-sizing: border-box; /* 파이어폭스(Firefox)*/
    -webkit-box-sizing: border-box; /* 웹킷(Webkit) & 크롬(Chrome) */

}
#footer{
    width:100%;
    min-width:1280px;
    height:420px;
    box-sizing: border-box; /* 오페라(Opera) */
    -moz-box-sizing: border-box; /* 파이어폭스(Firefox)*/
    -webkit-box-sizing: border-box; /* 웹킷(Webkit) & 크롬(Chrome) */
    padding:75px 130px 75px 100px;
    background-color: #FAFAFA;
    font-size: 11px;
}

.footer-text{
    vertical-align: top;
    color:rgb(98, 98, 98);
    float: left;
}
.footer-text>li{
    margin-bottom: 15px;
}
.ft-1{
    margin-right:100px;
}
.ft-2>:last-child{
    margin-top: 50px;
	color:#999999;
}
.ft-title-style{
    font-weight: bolder;
    color:rgb(24, 24, 24);
    font-size: 13px;
}

#contents{
    padding-top: 100px;
}
#slide-warp{
    text-align: center;
    width:1600px;
    margin:0 auto;
    margin-bottom: 400px;
}
#slide-warp h1{
    font-size: 20px;
    font-weight: bolder;
    margin:0 0 80px 0;
}
.show-img>li:nth-child(1),.show-img>li:nth-child(2){
    display: none;
}
#slide-frame-1{
    margin-bottom: 150px;
}
#slide-frame-2{
    width:1070px;
    overflow: hidden;
    margin:0 auto;
}
.slide-img{
    position:relative;
    width:3000px;
    margin-bottom: 80px;
    animation: slide_img 30s ease-in-out 2s infinite alternate forwards;
}
@keyframes slide_img {
    0%{
        right:0;
    }
    10%{
        right:0;
    }
    15%{
        right:360px;
    }
    25%{
        right:360px;
    }
    30%{
        right:720px;
    }
    40%{
        right:720px;
    }
    45%{
        right:1080px;
    }
    55%{
        right:1080px;
    }
    60%{
        right:1440px;
    }
    70%{
        right:1440px;
    }
    80%{
        right:1440px;
    }
    85%{
        right:1800px;
    }
    100%{
        right:1800px;
    }
}
.slide-img >li{
    position: relative;
    float: left;
    color:#444444
}
.slide-img >li>img{
    width: 350px;
    height: 450px;
    margin-right: 10px;
}
#product-warp{
    width:1500px;
    margin:0 auto;
    margin-bottom: 150px;
    padding:0 80px;
    box-sizing: border-box; /* 오페라(Opera) */
    -moz-box-sizing: border-box; /* 파이어폭스(Firefox)*/
    -webkit-box-sizing: border-box; /* 웹킷(Webkit) & 크롬(Chrome) */
}
.product_unit{
    display: inline-block;
    margin:0 20px 110px 0;
}
#product-warp img{
    width: 310px; 
    height: 390px; 
}
.product_unit ul{
    text-align: left;
}
.product_unit ul>hr{
    margin:0;
    border:none;
    border-bottom:1px solid #EEEEEE;
    outline: none;
}
.product_unit ul>li:first-child{
    margin:15px 0 15px 0;
    font-size: 13px;
}
.product_unit ul>li:last-child{
    margin:15px 0 15px 0;
    font-size: 11px;
}

	</style>
</head>
<body>
	<header>
		<nav></nav>
	</header>
	<div id="side_navigation">
		<%@ include file="include_collection/navigation.jsp"%>
	</div>
	
	<div id="contents">
        <div id="slide-warp">
            <div id="slide-frame-1">
                <h1>BEST SELLER</h1>
                <ul class="side-img show-img">
					<li><img src="/resources/img/20210625_PC1.jpg" alt=""></li>
					<li><img src="/resources/img/20210625_PC2.jpg" alt=""></li>
					<li><img src="/resources/img/20210630_PC1.jpg" alt=""></li>
                </ul>
            </div>
            <div id="slide-frame-2">
                <h1>NEW ARRIVALS & RESTOCK</h1>
                <ul class="slide-img">
					<li><img src="/resources/img/slide-img_01.jpg" alt=""></li>
					<li><img src="/resources/img/slide-img_02.jpg" alt=""></li>
					<li><img src="/resources/img/slide-img_03.jpg" alt=""></li>
					<li><img src="/resources/img/slide-img_04.jpg" alt=""></li>
					<li><img src="/resources/img/slide-img_05.jpg" alt=""></li>
					<li><img src="/resources/img/slide-img_06.jpg" alt=""></li>
					<li><img src="/resources/img/slide-img_07.jpg" alt=""></li>
					<li><img src="/resources/img/slide-img_08.jpg" alt=""></li>
                </ul>
            </div>
        </div>
		<div id="product-warp">
			<div id="product_column">
				<c:forEach items="${MainProduct}" var="Product" end="7">
					<div class="product_unit">
						<a href="/detail?productId=${Product.productId}"> <img
							class="puoduct_img"
							src="/resources/upload/${Product.uploadPath}/${Product.uuid}_${Product.fileName}"
							alt="" onerror="this.src='/resources/img/noimg.jpg'">
						</a>
						<ul>
							<li><a href="/detail?productId=${Product.productId}"><c:out
										value="${Product.productName}" /></a></li>
							<hr>
							<li><c:out value="KRW ${Product.productPrice}" /></li>
						</ul> 
					</div>
				</c:forEach>
			</div>
		</div>
		<%@ include file="include_collection/footer.jsp"%>
    </div>
	
</body>
</html>