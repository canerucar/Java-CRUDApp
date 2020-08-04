<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

	<c:if test="${!empty param.authorid}">
		<sql:update dataSource="${applicationScope.oracleDataSource}"
			var="count">
	        update authors set author_name = ?, author_lastname = ? , author_age = ? , book_id = ?
	        where  authorid = ?
	        <sql:param value="${param.author_name}" />
	        <sql:param value="${param.author_lastname}" />
	        <sql:param value="${param.author_age}" />
	        <sql:param value="${param.book_id}" />
	        <sql:param value="${param.authorid}" />
		</sql:update>

		<c:redirect url="listauthors.jsp"></c:redirect>
	</c:if>
	

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>