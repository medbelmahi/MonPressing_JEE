<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">


<div class="container">

	<c:choose>
		<c:when test="${userForm['new']}">
			<h1>Add User</h1>
		</c:when>
		<c:otherwise>
			<h1>Update User</h1>
		</c:otherwise>
	</c:choose>
	<br />
	
	<spring:url value="/customer/add" var="userActionUrl" />

	<form:form class="form-horizontal" method="post" modelAttribute="userForm" action="${userActionUrl}">

<%-- 		<form:hidden path="id" /> --%>

<%-- 		<spring:bind path="name"> --%>
<%-- 			<div class="form-group ${status.error ? 'has-error' : ''}"> --%>
<!-- 				<label class="col-sm-2 control-label">Name</label> -->
<!-- 				<div class="col-sm-10"> -->
<%-- 					<form:input path="name" type="text" class="form-control " id="name" placeholder="Name" /> --%>
<%-- 					<form:errors path="name" class="control-label" /> --%>
<!-- 				</div> -->
<!-- 			</div> -->
<%-- 		</spring:bind> --%>

		<spring:bind path="firstName">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Nom</label>
				<div class="col-sm-10">
					<form:input path="firstName" class="form-control" id="firstName" placeholder="Nom" />
					<form:errors path="firstName" class="control-label" />
				</div>
			</div>
		</spring:bind>
		
		<spring:bind path="lastName">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Prénom</label>
				<div class="col-sm-10">
					<form:input path="lastName" class="form-control" id="lastName" placeholder="Prénom" />
					<form:errors path="lastName" class="control-label" />
				</div>
			</div>
		</spring:bind>
		
		<spring:bind path="email">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Email</label>
				<div class="col-sm-10">
					<form:input path="email" class="form-control" id="email" placeholder="Email" />
					<form:errors path="email" class="control-label" />
				</div>
			</div>
		</spring:bind>

		<spring:bind path="password">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Password</label>
				<div class="col-sm-10">
					<form:password path="password" class="form-control" id="password" placeholder="password" />
					<form:errors path="password" class="control-label" />
				</div>
			</div>
		</spring:bind>

		<spring:bind path="confirmPassword">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">confirm Password</label>
				<div class="col-sm-10">
					<form:password path="confirmPassword" class="form-control" id="password" placeholder="password" />
					<form:errors path="confirmPassword" class="control-label" />
				</div>
			</div>
		</spring:bind>
		
		<spring:bind path="addressFrom.city">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Ville</label>
				<div class="col-sm-5">
					<form:select path="addressFrom.city" class="form-control">
						<form:option value="NONE" label="--- Select ---" />
						<form:options items="${cityList}" />
					</form:select>
					<form:errors path="addressFrom.city" class="control-label" />
				</div>
				<div class="col-sm-5"></div>
			</div>
		</spring:bind>
		
		<spring:bind path="addressFrom.district">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Région/Quartier</label>
				<div class="col-sm-10">
					<form:input path="addressFrom.district" type="text" class="form-control" id="district" placeholder="Région/Quartier" />
					<form:errors path="addressFrom.district" class="control-label" />
				</div>
			</div>
		</spring:bind>
		
		<spring:bind path="addressFrom.codePostal">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Code Postal</label>
				<div class="col-sm-10">
					<form:input path="addressFrom.codePostal" type="text" class="form-control" id="codePostal" placeholder="Code Postal" />
					<form:errors path="addressFrom.codePostal" class="control-label" />
				</div>
			</div>
		</spring:bind>
		
		<spring:bind path="addressFrom.tel">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Code Postal</label>
				<div class="col-sm-10">
					<form:input path="addressFrom.tel" type="text" class="form-control" id="tel" placeholder="Tel ex : 0610990909" />
					<form:errors path="addressFrom.tel" class="control-label" />
				</div>
			</div>
		</spring:bind>

<%-- 		<spring:bind path="newsletter"> --%>
<%-- 			<div class="form-group ${status.error ? 'has-error' : ''}"> --%>
<!-- 				<label class="col-sm-2 control-label">Newsletter</label> -->
<!-- 				<div class="col-sm-10"> -->
<!-- 					<div class="checkbox"> -->
<%-- 						<label> <form:checkbox path="newsletter" id="newsletter" /> --%>
<!-- 						</label> -->
<%-- 						<form:errors path="newsletter" class="control-label" /> --%>
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<%-- 		</spring:bind> --%>

		<spring:bind path="civility">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Web Frameworks</label>
				<div class="col-sm-10">
					<form:radiobuttons path="civility" items="${civilityList}" element="label class='radio-inline'" />
					<br />
					<form:errors path="civility" class="control-label" />
				</div>
			</div>
		</spring:bind>

<%-- 		<spring:bind path="sex"> --%>
<%-- 			<div class="form-group ${status.error ? 'has-error' : ''}"> --%>
<!-- 				<label class="col-sm-2 control-label">Sex</label> -->
<!-- 				<div class="col-sm-10"> -->
<%-- 					<label class="radio-inline"> <form:radiobutton path="sex" value="M" /> Male --%>
<%-- 					</label> <label class="radio-inline"> <form:radiobutton path="sex" value="F" /> Female --%>
<!-- 					</label> <br /> -->
<%-- 					<form:errors path="sex" class="control-label" /> --%>
<!-- 				</div> -->
<!-- 			</div> -->
<%-- 		</spring:bind> --%>

<%-- 		<spring:bind path="number"> --%>
<%-- 			<div class="form-group ${status.error ? 'has-error' : ''}"> --%>
<!-- 				<label class="col-sm-2 control-label">Number</label> -->
<!-- 				<div class="col-sm-10"> -->
<%-- 					<form:radiobuttons path="number" items="${numberList}" element="label class='radio-inline'" /> --%>
<!-- 					<br /> -->
<%-- 					<form:errors path="number" class="control-label" /> --%>
<!-- 				</div> -->
<!-- 			</div> -->
<%-- 		</spring:bind> --%>

		<!-- Custom Script, Spring map to model via 'name' attribute
		<div class="form-group">
			<label class="col-sm-2 control-label">Number</label>
			<div class="col-sm-10">

				<c:forEach items="${numberList}" var="obj">
					<div class="radio">
						<label> 
							<input type="radio" name="number" value="${obj}">${obj}
						</label>
					</div>
				</c:forEach>
			</div>
		</div>
 		-->

<%-- 		<spring:bind path="country"> --%>
<%-- 			<div class="form-group ${status.error ? 'has-error' : ''}"> --%>
<!-- 				<label class="col-sm-2 control-label">Country</label> -->
<!-- 				<div class="col-sm-5"> -->
<%-- 					<form:select path="country" class="form-control"> --%>
<%-- 						<form:option value="NONE" label="--- Select ---" /> --%>
<%-- 						<form:options items="${countryList}" /> --%>
<%-- 					</form:select> --%>
<%-- 					<form:errors path="country" class="control-label" /> --%>
<!-- 				</div> -->
<!-- 				<div class="col-sm-5"></div> -->
<!-- 			</div> -->
<%-- 		</spring:bind> --%>

<%-- 		<spring:bind path="skill"> --%>
<%-- 			<div class="form-group ${status.error ? 'has-error' : ''}"> --%>
<!-- 				<label class="col-sm-2 control-label">Java Skills</label> -->
<!-- 				<div class="col-sm-5"> -->
<%-- 					<form:select path="skill" items="${javaSkillList}" multiple="true" size="5" class="form-control" /> --%>
<%-- 					<form:errors path="skill" class="control-label" /> --%>
<!-- 				</div> -->
<!-- 				<div class="col-sm-5"></div> -->
<!-- 			</div> -->
<%-- 		</spring:bind> --%>

		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<c:choose>
					<c:when test="${userForm['new']}">
						<button type="submit" class="btn-lg btn-primary pull-right">Add</button>
					</c:when>
					<c:otherwise>
						<button type="submit" class="btn-lg btn-primary pull-right">Update</button>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</form:form>

</div>


</body>
</html>