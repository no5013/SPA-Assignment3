<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<section class="section">
	<div class="container">
		<div class="heading">
			<h1 class="title">Add new student</h1>
			<h2 class="subtitle">Add new student to database</h2>
			${message}
			<form:form method="POST"
				action="${pageContext.request.contextPath}/editStudent/${student.id }"
				modelAttribute="student">
				<div class="field">
					<form:label path="name">Name</form:label>
					<p class="control">
						<form:input path="name" class="input" placeholder="Name Input" />
					</p>
				</div>
				<div class="field">
					<form:label path="gpax">GPAX</form:label>
					<p class="control">
						<form:input path="gpax" class="input" placeholder="Gpax Input" />
					</p>
				</div>
				<div class="field">
					<form:label path="ambition">Ambition</form:label>
					<p class="control">
						<form:input path="ambition" class="form-control"
							placeholder="Ambition Input" />
					</p>
				</div>
				<button type="submit" class="button is-primary">Save</button>
			</form:form>
		</div>
	</div>
</section>