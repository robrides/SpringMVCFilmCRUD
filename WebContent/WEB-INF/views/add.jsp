<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Film</title>
</head>
<body>
	<div class="container">
		<form:form action="createFilm.do" method="POST" modelAttribute="film">
			<form:label path="title">Title:</form:label>
			<form:input path="title" />
			<form:errors path="title" />
			<br />
			<form:label path="description">Description:</form:label>
			<form:input path="description" />
			<form:errors path="description" />
			<br />
			<form:label path="releaseYear">Release Year:</form:label>
			<form:input path="releaseYear" />
			<form:errors path="releaseYear" />
			<br />

			<form:label path="rentalDuration">Rental Duration:</form:label>
			<form:input path="rentalDuration" />
			<form:errors path="rentalDuration" />
			<br />
			<form:label path="rentalRate">Rental Rate:</form:label>
			<form:input path="rentalRate" />
			<form:errors path="rentalRate" />
			<br />
			<form:label path="length">Length:</form:label>
			<form:input path="length" />
			<form:errors path="length" />
			<br />
			<form:label path="replacementCost">Replacement Cost:</form:label>
			<form:input path="replacementCost" />
			<form:errors path="replacementCost" />
			<br />

			<label for="title">Rating</label>
			<br>
			<input type="radio" name="rating" value="G"> G <input
				type="radio" name="rating" value="PG"> PG <br />
			<input type="radio" name="rating" value="PG13"> PG-13 <input
				type="radio" name="rating" value="R"> R <input type="radio"
				name="rating" value="NC17"> NC-17 <br />
			<label for="title">Special Features</label>
			<br>
			<input type="checkbox" name="specitalFeature" value="Trailers">Trailers<br />
			<input type="checkbox" name="specitalFeature" value="Commentaries">Commentaries<br />
			<input type="checkbox" name="specitalFeature" value="Deleted Scenes">Deleted Scenes<br />
			<input type="checkbox" name="specitalFeature" value="Behind the Scenes">Behind the Scenes<br />

			<form action="createFilm.do" method="POST">

				<input type="submit" value="Add Film">
			</form>
		</form:form>


		<c:if test="${! empty searchedFilm}">
			<h3>${searchedFilm.title}</h3>
		</c:if>

	</div>
</body>
</html>