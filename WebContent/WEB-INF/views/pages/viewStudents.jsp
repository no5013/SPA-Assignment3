<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<ul class="nav nav-tabs">
	<li role="presentation"><a href="${pageContext.request.contextPath}">Home</a></li>
	<li role="presentation"  class="active"><a href="${pageContext.request.contextPath}/viewStudents">Students</a></li>
</ul>

<section class="section">
	<div class="container">
		<div class="heading">
			<h1 class="title">Students List</h1>
			<h2 class="subtitle">Lists of all students with their details.</h2>

			<table class="table">
				<thead>
					<tr>
						<th>ID</th>
						<th>NAME</th>
						<th>GPAX</th>
						<th>AMBITION</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tfoot>
					<tr>
						<th><button class="button is-success"><a href="${pageContext.request.contextPath}/addNewStudent" >Add new student</button></th>
					</tr>
				</tfoot>
				<tbody style="font-size: 15px">
					<c:forEach var="student" items="${students}">
						<tr>
							<td><c:out value="${student.id }" /></td>
							<td><c:out value="${student.name }" /></td>
							<td><c:out value="${student.gpax }" /></td>
							<td><c:out value="${student.ambition }" /></td>
							<td>
								<button class="button is-warning">
									<a
										href="${pageContext.request.contextPath}/editStudent/${student.id}">EDIT</a>
								</button>
							</td>
							<td>
								<form
									action="${pageContext.request.contextPath}/deleteStudent/${student.id}"
									method="POST">
									<button type="submit" class="button is-danger">DELETE</button>
								</form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>
	</div>
</section>

