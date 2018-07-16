<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page session="true"%>
<%
	String ROOT_URL = "http://localhost:8081/SoaBaseCode/";
%>
<!DOCTYPE html>

<html>

<head>
<!--Import Google Icon Font-->

<!--Import materialize.css-->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="<%out.print(ROOT_URL);%>css/dashboard.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">

<script src="<%out.print(ROOT_URL);%>js/jquery.min.js"></script>
<script src="<%out.print(ROOT_URL);%>js/jquery-1.12.4.js"></script>
<script src="<%out.print(ROOT_URL);%>js/jquery-ui.js"></script>


<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>

<body>
	<div id="header">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-6">
					<div class="logo">KANBAN</div>
					<button type="button" class="btn btn-default" data-toggle="modal"
						data-target="#myModalHorizontal">
						<span class="glyphicon glyphicon-plus"></span> Add Issue
					</button>
				</div>
				<div class="col-lg-6">
					<div class="dropdown" style="float: right">
						<div class="btn-group dropleft">
							<button type="button" class="btn btn-secondary dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"></button>
							<div class="dropdown-menu">
								<!-- Dropdown menu links -->

								<a class="dropdown-item" href="#">LOGOUT</a>

							</div>

						</div>

					</div>

				</div>
			</div>
		</div>
	</div>



	<div id="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3">
					<h4>BACKLOG</h4>
					<div id="sortable1" class="connectedSortable" draggable="true">
					
							<c:forEach items="${tasks}" var="tasks">
							    
							    <div class="card">
							    <a style="position:absolute; right: 0;" href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										   
										  </a>
										  <ul class="dropdown-menu">
										    <li><a href="#myModalEdit" class="edit-backlog" data-toggle="modal" data-task-id="${tasks.id }">Edit</a></li>
										    <li><a href="#">Delete</a></li>
										    <li><a href="#">Release</a></li>
										   
										  </ul>
							<div class="card-body">
								<h5 class="card-title">${tasks.title}</h5>
								<!-- Split button -->
										
										  
										
								<p class="card-text">${tasks.description }</p>
								<p class="card-text">${tasks.date }</p>

							</div>
						</div>
							</c:forEach>
						
					</div>
				</div>
				<div class="col-lg-3">
					<h4>TODO</h4>
					<div id="sortable2" class="connectedSortable" draggable="true">
					<c:forEach items="${taskstodo}" var="taskstodo">
							    
							    <div class="card">
							<div class="card-body">
								<h5 class="card-title">${taskstodo.title }</h5>
								<p class="card-text">${taskstodo.description }</p>
								<p class="card-text">${taskstodo.date }</p>

							</div>
						</div>
							</c:forEach>
					</div>
				</div>
				<div class="col-lg-3">
					<h4>IN PROGRESS</h4>
					<div id="sortable3" class="connectedSortable" draggable="true">
						<c:forEach items="${tasksinprogress}" var="tasksinprogress">
							    
							    <div class="card">
							<div class="card-body">
								<h5 class="card-title">${tasksinprogress.title }</h5>
								<p class="card-text">${tasksinprogress.description }</p>
								<p class="card-text">${tasksinprogress.date }</p>

							</div>
						</div>
							</c:forEach>
					</div>
				</div>
				<div class="col-lg-3">
					<h4>DONE</h4>
					<div id="sortable4" class="connectedSortable" draggable="true">
						<c:forEach items="${tasksdone}" var="tasksdone">
							    
							    <div class="card">
							<div class="card-body">
								<h5 class="card-title">${tasksdone.title }</h5>
								<p class="card-text">${tasksdone.description }</p>
								<p class="card-text">${tasksdone.date }</p>

							</div>
						</div>
							</c:forEach>
					</div>
				</div>
			</div>
		</div>



	</div>

	<div class="modal fade" id="myModalHorizontal" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span> <span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Add Issue</h4>
				</div>
				<!-- Modal Body -->
				<div class="modal-body">
					<form id="modalForm">
						<div class="form-group">
							<label for="task_title">Task Title:</label> <input type="text"
								class="form-control" placeholder="Enter task name"
								id="task_title" name="task_title">
						</div>
						<div class="form-group">
							<label for="task_details">Task Details:</label>
							<textarea class="form-control" placeholder="Enter task details"
								rows="5" id="task_details" name="task_details"></textarea>
						</div>
						<div class="form-group">
							<label for="due_date">Due Date:</label> <input type="text"
								class="form-control" placeholder="dd/mm/yyyy" id="due_date"
								name="due_date">
						</div>
						<div class="form-group">
							<label for="task_status">Task Status:</label> 
							<select
								class="form-control" id="task_status" name="task_status">
								<option value="Backlog">Backlog</option>
								<option value="ToDo">To Do</option>
								<option value="In Progress">In Progress</option>
								<option value="Done">Done</option>
							</select>
						</div>
						<button type="button" name="submit" id="submit"
							class="btn btn-primary">Submit</button>
					</form>
				</div>
				<!-- Modal Footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">
						Close</button>
				</div>
			</div>
		</div>
	</div>

<div class="modal fade" id="myModalEdit" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span> <span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Edit Issue</h4>
				</div>
				<!-- Modal Body -->
				<div class="modal-body">
					<form id="modalFormEdit">
						<div class="form-group">
						<input type="hidden" id="edit-task-id" name="edit_task_id">
							<label for="task_title">Task Title:</label> <input type="text"
								class="form-control" placeholder="Enter task name"
								id="edit-task-title" name="task_title">
						</div>
						<div class="form-group">
							<label for="task_details">Task Details:</label>
							<textarea class="form-control"rows="5" id="edit-task-details" name="task_details"></textarea>
						</div>
						<div class="form-group">
							<label for="due_date">Due Date:</label> <input type="text"
								class="form-control" placeholder="dd/mm/yyyy" id="edit-task-date"
								name="due_date">
						</div>
						<div class="form-group">
							<label for="task_status">Task Status:</label> <select
								class="form-control" id="edit-task-status" name="task_status">
								<option value="Backlog">Backlog</option>
								<option value="ToDo">To Do</option>
								<option value="In Progress">In Progress</option>
								<option value="Done">Done</option>
							</select>
						</div>
						<button type="button" name="submit" id="submit-edit"
							class="btn btn-primary">Submit</button>
					</form>
				</div>
				<!-- Modal Footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">
						Close</button>
				</div>
			</div>
		</div>
	</div>
	
	
	<div id="footer"></div>

</body>
<script>
  $( function() {
    $( "#sortable1,#sortable2,#sortable3,#sortable4" ).sortable({
      connectWith: ".connectedSortable"
    }).disableSelection();
  } );
  $("#submit").click(function(e){
	 e.preventDefault();
	 var data =  $("#modalForm").serialize();
	 console.log(data);	
	 $.ajax({
		url: '<%out.print(ROOT_URL);%>api/saveTask',
			type : "POST",
			data : data,
			success : function(data) {
				location.reload();
			}

		});
	});
  
  $("#submit-edit").click(function(e){
		 e.preventDefault();
		 var data =  $("#modalFormEdit").serialize();
		 console.log(data);	
		 $.ajax({
			url: '<%out.print(ROOT_URL);%>api/editTask',
				type : "POST",
				data : data,
				success : function(data) {
					location.reload();
				}

			});
		});
	  
  
  $('.edit-backlog').click(function(e){
		
	  var id = $(this).data('task-id');
	  console.log(id);
	  $.ajax({
		 url: '<%out.print(ROOT_URL);%>api/getDetails',
		 type: "POST",
		 data:{
			 'id':id
		 },
		 success:function(data){
			 $('#edit-task-title').val(data.title);
			 $('#edit-task-details').text(data.description);
			 $('#edit-task-date').val(data.date);
			 $('#edit-task-id').val(data.id);
			 $('#edit-task-status').val(data.status).change();
		 }
	  });
  });
</script>
</html>