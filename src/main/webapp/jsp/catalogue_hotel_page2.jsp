<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="${pageContext.request.contextPath}/css/catalogue.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/menu.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/slider.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/footer.css"
	rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>Hotel catalogue</title>
</head>
<body>
<div>
	<div id="wrapper">
		<header>
			<a href="/"><img
				src="${pageContext.request.contextPath}/image/logoF.png" width="180"></a>
			<form name="sign_in" action="#" method="get">
				<button type="submit">SIGN IN</button>
			</form>
			<form name="sign_up" action="#" method="get">
				<button type="submit">SIGN UP</button>
			</form>
		</header>
		<jsp:include page="/jspf/menu.jspf" />
		<hr>
		<aside>
			<nav>
				<div class="aside-menu">
					<div class="head-cont">Star rate:</div>
					<input type="checkbox" name="star_rate" value="3" id="star3" /><label
						for="star3">3 &#9733; (Cat. B)</label> <br /> <input
						type="checkbox" name="star_rate" value="4" id="star4" /><label
						for="star4">4 &#9733; (Cat. A)</label> <br /> <input
						type="checkbox" name="star_rate" value="5" id="star5" /><label
						for="star5">5 &#9733; (Cat. De Luxe)</label>
					<hr>
					<div class="head-cont">Number of persons:</div>
					<input type="radio" name="number_persons" value="1" id="number1" /><label
						for="number1">1 (single)</label> <br /> <input type="radio"
						name="number_persons" value="2" id="number2" /><label
						for="number2">2 (double)</label> <br /> <input type="radio"
						name="number_persons" value="3" id="number3" /><label
						for="number3">2 + 1 additional bed</label> <br />
					<hr>
					<div class="head-cont">Price:</div>
					<label for="minCost">From: </label> <input type="text" id="minCost"
						value="0" /> <label for="maxCost">Till: </label> <input
						type="text" id="maxCost" value="500" />
					<hr class="div_tr">
					<div id="slider" style=""></div>
				</div>
			</nav>
		</aside>
		<table>
			<col>
			<tr>
				<th id="photo">PHOTO</th>
				<th>HOTEL</th>
				<th style="width: 34%;">ADDRESS</th>
				<th style="width: 2%;">STAR RATE</th>
				<th style="width: 2%;">NUMBER OF PERSONS</th>
				<th style="width: 2%;">PRICE</th>
			</tr>
			<tr>
				<td><img
					src="http://res.cloudinary.com/javadevgroup/image/upload/v1497805539/hotel/tv4_vkohcp.jpg"></td>
				<td>gyyyyyy</td>
				<td>ftttttt</td>
				<td>tf</td>
				<td>ft</td>
				<td>cf</td>
			</tr>
		</table>
		
	</div>
	</div>
	<div id="foot">
			<jsp:include page="/jspf/footer.jspf" />
		</div>
	<script src="${pageContext.request.contextPath}/js/slider.js"
		charset="utf-8"></script>
</body>
</html>