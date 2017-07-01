<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">
<link href="${pageContext.request.contextPath}/css/catalogue.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/menu.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/footer.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/slider.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>Catalogue page</title>
</head>
<body>
	<div>
		<div id="wrapper">
			<header>
				<a href="/"><img
					src="${pageContext.request.contextPath}/image/logoF.png"
					width="180"> </a>
				<c:if test="${customer==null}">
					<form name="sign_in" action="${pageContext.request.contextPath}/jsp/log_in_page.jsp">
						<button type="submit">SIGN IN</button>
					</form>

					<form name="sign_up"
						action="${pageContext.request.contextPath}/Controller"
						method="GET">
						<input type="hidden" value="sign_up_page" name="command" />
						<button type="submit">SIGN UP</button>
					</form>
				</c:if>
				<c:if test="${customer!=null}">
					<form name="sign_up">
						<tr>
							<td>${customer.getLogin()}</td>
						</tr>
						<button type="submit">
							<a
								href="${pageContext.request.contextPath}/Controller?command=log_out">
								LOG OUT </a>
						</button>
					</form>
				</c:if>

			</header>
			<jsp:include page="/jspf/menu.jspf" />
			<hr>
			<div>
				<aside>
					<nav>
						<div class="aside-menu">
							<div class="head-cont">Star rate:</div>
							<td><input type="checkbox" name="id" value="3" />3 &#9733;
								(Cat. B)</td> <br />
							<td><input type="checkbox" name="id" value="4" />4 &#9733;
								(Cat. A)</td> <br />
							<td><input type="checkbox" name="id" value="5" />5 &#9733;
								(Cat. De Luxe)</td>
							<hr>
							<div class="head-cont">Number of persons:</div>
							<td><input type="radio" name="id" value="3" />1 (single)</td> <br />
							<td><input type="radio" name="id" value="3" />2 (double)</td> <br />
							<td><input type="radio" name="id" value="3" />2 + 1
								additional bed</td> <br />
							<td><input type="radio" name="id" value="3" />2 + 2
								additional beds</td>
							<hr>
							<div class="head-cont">Price:</div>
							<label for="minCost" >From: </label> <input class="inp_price" type="text"
								id="minCost" value="0" /> <label for="maxCost">Till: </label> <input
								class="inp_price" type="text" id="maxCost" value="500" />
							<hr class="div_tr">
							<div id="slider" style=""></div>
						</div>
					</nav>
				</aside>
				<div>
					<form action="Controller" method="GET">
						<input type="hidden" name="command" value="make_order_hotel">
						<div>
							<table>
								<tr>
									<th id="ckeck">
									<th class="col1">HOTEL</th>
									<th class="col2">ADDRESS</th>
									<th class="col3">STAR RATE</th>
									<th class="col4">NUMBER OF PERSONS</th>
									<th class="col5">PRICE</th>
								</tr>
								<c:forEach items="${list_apartment}" var="i">
									<tr>
										<td><input type="radio" name="id"
											value="${i.getApartmentId()}" /></td>
										<td><img src="${i.getImage()}"></td>
										<td>${i.Hotel.getTitle()}</td>
										<td>${i.Hotel.getAddress()}</td>
										<td>${i.Hotel.getStars()}</td>
										<td>${i.Room.getCapacity()}</td>
										<td>${i.getPrice()}</td>
									</tr>
								</c:forEach>
							</table>
							<div style="text-align: center">
								<input value="ORDER" type="submit">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div id="foot">
			<jsp:include page="/jspf/footer.jspf" />
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/js/slider.js" charset="utf-8"></script>
</body>
</html>