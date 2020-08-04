<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book</title>
<link rel="stylesheet" href="style.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
<div class="container">

<%@ include file="header.html"%>
	<div class="col-md-5">
	<form action="addbook.jsp" method="post">
	
	
	<div class="form-group">
    <label >Title</label>
    <input type="text" name="title" value="${param.title}" class="form-control" required>
    </div>
    <div class="form-group">
    <label>Author</label>
    <input type="text" name="author"  value="${param.author}" class="form-control" required>
    </div>
    <div class="form-group">
    <label>Price</label>
    <input  type="number" name="price" value="${param.price}" class="form-control" required>
    </br>
   </div>
<button type="submit" class="btn btn-success" value="Add Book">Add Book</button>
	
	</form>

	<c:if test="${!empty param.title}">

		<sql:update dataSource="${applicationScope.oracleDataSource}"
			var="count">
	        insert into books values(book_id_seq.nextval,?,?,?)
	        <sql:param value="${param.title}" />
			<sql:param value="${param.author}" />
			<sql:param value="${param.price}" />
		</sql:update>

		<c:if test="${count > 0}">
			<h5>[${param.title}] has been added successfully!</h5>
		</c:if>

		<c:if test="${count == 0}">
			<h5>Sorry! [${param.title}] could not be added due to error!</h5>
		</c:if>
	</c:if>
	
	</div>


</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>