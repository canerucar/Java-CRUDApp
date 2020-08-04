<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Of Authors</title>
<link rel="stylesheet" href="style.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
<div class="container">
	<%@ include file="header.html"%>

	<sql:query var="authors"  dataSource="${applicationScope.oracleDataSource}">
     SELECT * FROM AUTHORS
     order by authorid
    </sql:query>

<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Author Name</th>
      <th scope="col">Author LastName</th>
      <th scope="col">Author Age</th>
      <th scope="col">Book ID</th>
      <th scope="col"></th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
    
    	<c:forEach var="author" items="${authors.rows}">
	
		<tr>
			<td>${author.authorID}</td>
			<td>${author.author_name}</td>
			<td>${author.author_lastname}</td>
			<td>${author.author_age}</td>
			<td>${author.book_id}</td>
			
			<td>
				<a href="editauthor.jsp?authorid=${author.authorid}">Edit</a>
			</td>
			<td>
				<a href="deleteauthor.jsp?authorid=${author.authorid}">Delete</a>
			</td>
			
		</tr>
	</c:forEach>
    
  </tbody>
</table>


</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>