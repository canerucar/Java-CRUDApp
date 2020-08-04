<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Author</title>
<link rel="stylesheet" href="style.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
<div class="container">

	<c:if test="${!empty param.authorid}">
		<sql:query var="result" dataSource="${applicationScope.oracleDataSource}">
          select * from authors where authorid = ? 
           <sql:param value="${param.authorid}"></sql:param>
		</sql:query>
	</c:if>

	<%@ include file="header.html"%>
	<div class="col-md-5">
	<form action="updateauthor.jsp" method="post">
	<input type="hidden" value="${param.authorid}" name="authorid" />
	
	<div class="form-group">
    <label >Author Name</label>
    <input type="text" name="author_name" value="${result.rows[0].author_name}" class="form-control" required>
    </div>
    <div class="form-group">
    <label>Author LastName</label>
    <input type="text" name="author_lastname"  value="${result.rows[0].author_lastname}" class="form-control" required>
    </div>
    <div class="form-group">
    <label>Author Age</label>
    <input  type="number" name="author_age"  value="${result.rows[0].author_age}" class="form-control" required>
    </br>
   </div>
   <div class="form-group">
    <label>Book ID</label>
    <input  type="number" name="book_id"  value="${result.rows[0].book_id}" class="form-control" required>
    </br>
   </div>
	<button type="submit" class="btn btn-success" value="Update Author">Update Book</button>
	
	</form>
	</div>
	
	
	
	
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>