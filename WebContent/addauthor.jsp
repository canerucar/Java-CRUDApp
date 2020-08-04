<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Author</title>
<link rel="stylesheet" href="style.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
<div class="container">

<%@ include file="header.html"%>
	<div class="col-md-5">
	<form action="addauthor.jsp" method="post">
	
	
	<div class="form-group">
    <label >Author Name</label>
    <input type="text" name="author_name" value="${param.author_name}" class="form-control" required>
    </div>
    <div class="form-group">
    <label>Author LastName</label>
    <input type="text" name="author_lastname"  value="${param.author_lastname}" class="form-control" required>
    </div>
    <div class="form-group">
    <label>Author Age</label>
    <input  type="number" name="author_age" value="${param.author_age}" class="form-control" required>
    </br>
   </div>
   <div class="form-group">
    <label>BookID</label>
    <input  type="number" name="book_id" value="${param.book_id}" class="form-control" required>
    </br>
   </div>
<button type="submit" class="btn btn-success" value="Add Author">Add Author</button>
	
	</form>

	<c:if test="${!empty param.author_name}">

		<sql:update dataSource="${applicationScope.oracleDataSource}"
			var="count">
	        insert into authors values(book_id_seq.nextval,?,?,?,?)
	        <sql:param value="${param.author_name}" />
			<sql:param value="${param.author_lastname}" />
			<sql:param value="${param.author_age}" />
			<sql:param value="${param.book_id}" />
		</sql:update>

		<c:if test="${count > 0}">
			<h5>[${param.author_name}] has been added successfully!</h5>
		</c:if>

		<c:if test="${count == 0}">
			<h5>Sorry! [${param.author_name}] could not be added due to error!</h5>
		</c:if>
	</c:if>
	
	</div>


</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>