<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored ="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title><c:out value="${page}"></c:out></title>
  </head>
  <body>
    
    <div class="container mt-3">
    <h1 class="text-center"> Welcome to TODO App </h1>
    <c:if test=" ${not empty msg }">
    <div class="alert alert-success">
    <b><c:out value="${msg }" /></b>
    </div>
    </c:if>
    <div class="row mt-5">
    
    <div class="col-md-2">
    <h3 class="text-center">Options</h3>
    <div class="list-group">
	  <button type="button" class="list-group-item active">Menu</button>
	 <a href='<c:url value='/add'></c:url>'
	   class="list-group-item"  >Add TODO's</a>
	   <a href='<c:url value='/home'></c:url>'
	   class="list-group-item"  >View TODO's</a>
	</div>
    </div>
    
    <div class="col-md-10">
    <h3 class=text-center>Content</h3>
   		<c:if test="${page == 'home' }">
   			<h1 class="text-center">All ToDo's</h1>
   			
   			<c:forEach items="${todos}" var="t">
   			
   			<div class="card">
   			<div class="card-body">
   			<h3><c:out value="${t.title }" ></c:out></h3>
   			<p><c:out value="${t.content }" ></c:out></p>
   			<p><c:out value="${t.creationdate }" ></c:out></p>
   			</div>
   			</div>
   			
   			</c:forEach>
   		</c:if>
   		
   		<c:if test="${page == 'add' }">
   			<h1 class="text-center">Add ToDo's</h1>
   			
   			<form:form action="saveTodo" method="post" modelAttribute="todo">
   			<div class="form-group">
   				<form:input path="Title" cssClass="form-control" placeholder="enter Your Todo Title"/>	
   			</div>
   			<div class="form-group">
   				<form:textarea path="Content" cssClass="form-control" placeholder="enter Your Todo Content"/>	
   			</div>
   			
   			<div class="container text-center">
   				<button class="btn btn-outline-success">
   				 Add Todo 
   				</button>
   			</div>
   			
   			</form:form>
   		</c:if>
   		
    </div>
    
    </div>
    </div>
    
    
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>