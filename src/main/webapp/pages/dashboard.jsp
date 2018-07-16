  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
        <%@ page contentType="text/html; charset=UTF-8" %>
        <%@ page session="true" %>
		<% String ROOT_URL = "http://localhost:8081/SoaBaseCode/"; %>
            <!DOCTYPE html>

            <html>

            <head>
                <!--Import Google Icon Font-->
                <link href="<% out.print(ROOT_URL);%>css/icons.css" rel="stylesheet">
                <!--Import materialize.css-->
                <link rel="stylesheet" href="<% out.print(ROOT_URL);%>css/materialize.min.css">
                <link rel="stylesheet" href="<% out.print(ROOT_URL);%>css/materialize.css">
                <link href="<% out.print(ROOT_URL);%>css/icons.css" rel="stylesheet">
                <link rel="stylesheet" href="<% out.print(ROOT_URL);%>css/dashboard.css">
                <link rel="stylesheet" href="<% out.print(ROOT_URL);%>/css/jquery-ui.css">
                <link rel="stylesheet" href="<% out.print(ROOT_URL);%>css/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.css">
                <link rel="stylesheet" href="<% out.print(ROOT_URL);%>css/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">
                <link rel="stylesheet" href="<% out.print(ROOT_URL);%>css/font-awesome.css">
               <script src="<% out.print(ROOT_URL);%>js/jquery.min.js"></script>
               <script src="<% out.print(ROOT_URL);%>js/jquery-1.12.4.js"></script>
               <script src="<% out.print(ROOT_URL);%>js/jquery-ui.js"></script>
               
                
                <!--Let browser know website is optimized for mobile-->
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            </head>

            <body  class="teal lighten-3">
            
            <div id="change-password" class="modal modal-fixed-footer">
						    <div class="modal-content">
						      <h4>Change Password</h4>
						       <input class='validate' type='password' placeholder="New Password" name='password' id='new_password' />
						       <input class='validate' type='password' placeholder="Confirm Password" name='password' id='c_password' />
								
						    </div>
						    <div class="modal-footer">
						      <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Confirm</a>
						    </div>
						  </div>  
              
 <ul id="view-more-info" class="side-nav">


   <a class="waves-effect waves-light btn" id="save-edit" style="position: absolute; right: 20px; top: 10px;" disabled>Save</a>
    <div class="user-view">
       <span><b>Title</b></span>
       <input type="hidden" id="hiddenIssueID" value="">
       <input type="hidden" id="hiddenIssueFlag" value="">
       <input type="hidden" id="hiddenType" value="">
      <input type="text" id="issue-detail-title" style="border-bottom: none;"></input>

            <div class="row">
             <span><b>Description</b></span>
            <textarea class="materialize-textarea" id="issue-detail-desc" style="border-bottom: none;">Failed to fetch data</textarea>
      </div>

      <div class="row">
         <span><b>Priority:</b> </span>
         <input type="text" id="issue-detail-priority" val="" style="border-bottom: none;" class="autocomplete">

         </div>
                
               <div class="row">
                 <span><b>Assigned to:</b> </span>
                
                  <div class="chip" id="assigned-to">
                   Jane Doe
                </div>
              
            </div>
            <div class="row">
              <span><b>Subtasks</b></span>
              <div id="subtask-content">
                
              </div>
              <p><a href="#" class="add-subtask">Add subtask</a></p>
            </div>

    
  </ul>
  <a href="#" data-activates="view-more-info" id="nav-right" style="display: none;" class="button-collapse"><i class="material-icons">menu</i></a>


   <div id="modalAddUser" class="modal modal-fixed-footer" >
    <div class="modal-content" >
      <h4>Add user</h4>

      <div class="row">
        <form class="col s12">
          <div class="row modal-form-row">
            <div class="input-field col s12">
              <input id="users_username" type="text" class="validate" required>
              <label for="users_username">Username</label>
            </div>
          </div>
          <div class="row modal-form-row">
            <div class="input-field col s12">
              <input id="users_password" type="text" class="validate" required>
              <label for="users_password">Password</label>
            </div>
          </div>
          <div class="row modal-form-row">
            <div class="input-field col s12">
              <input id="users_firstname" type="text" class="validate" required>
              <label for="users_firstname">First Name</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field col s12">
              <input id="users_lastname" type="text" class="validate" required>
              <label for="users_lastname">Last Name</label>
            </div>
          </div>       
          <div class="row">
            <div class="input-field col s12">
              <input id="users_age" type="text" class="validate" maxlength="2" onkeypress='return event.charCode >= 48 && event.charCode <= 57' required>
              <label for="users_age">Age</label>
            </div>
          
            <input type="radio" name="gender" value="Male" id="m" checked><label for="m">Male</label>
         		<input type="radio" name="gender" value="Female" id="f"><label for="f">Female</label>
          </div>         
        </form>
      </div>
    </div>
    <div class="modal-footer">
      <a class=" modal-action waves-effect waves-green btn-flat add-user">Submit</a>
    </div>
  </div>
             	<div id="modal1" class="modal modal-fixed-footer">
                    <div class="modal-content">
                        <p class="modal-title">CREATE ISSUE IN PROGRESS</p>
                        <div class="row">
                            <div class="input-field">
                                <label for="title-progress">Title</label>
                                <input type="text" name="title_progress" id="title-progress" maxlength="50" class="validate" data-length="50" required>
                            </div>    
                        </div>

                        <div class="row">
                            <div class="input-field">
                                <label for="description-progress">Description</label>
                               <textarea name="description_progress" id="description-progress" class="materialize-textarea" required></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field">
                               <select class="icons" id="priority-progress">
                                  <option value="" disabled selected>Choose your option</option>
                                  <option value="high" data-icon="<% out.print(ROOT_URL);%>images/red.jpg" class="circle">HIGH</option>
                                  <option value="medium" data-icon="<% out.print(ROOT_URL);%>images/orange.jpg" class="circle">MEDIUM</option>
                                  <option value="low" data-icon="<% out.print(ROOT_URL);%>images/green.jpg" class="circle">LOW</option>
                                </select>
                               <label for="priority-progress">Priority</label>
                            </div>
                        </div>

                       <!-- <button class="btn" id="progress-subtask">+ subtask</button> --> 
                        <div class="row subtask-prog">
                            
                        </div>

                           <div class="row">
                              <div class="input-field col s12">
                                <select id="progress-assign">
                                  <option value="" disabled selected>Choose employee</option>
                                  <c:forEach items="${employees}" var="employees">
		                                  <option value="${employees.uid}"> ${employees.fname} ${employees.lname}</option>
	                                 </c:forEach> 
                                </select>
                                <label>Assign to</label>
                              </div>
                            </div>    

                         <div class="row">
                            <p>
                               <input type="checkbox" id="repeat-progress" >
                               <label for="repeat-progress">Create another issue</label>
                            </p>    
                        </div>
                    </div>
                    <div class="modal-footer">
                      <a href="#!" id="submit-progress" class="modal-action waves-effect waves-green btn-flat white-text progress-modal">ADD</a>
                    </div>
                  </div>

                  <div id="modal3" class="modal modal-fixed-footer">
                    <div class="modal-content">
                      <p class="modal-title">CREATE ISSUE FOR BACKLOG</p>
                      <div class="row">
                            <div class="input-field">
                                <label for="title-backlog">Title</label>
                                <input type="text" name="title_backlog" id="title-backlog" class="validate" data-length="50" maxlength="50" required>
                            </div>
                            <div class="row">
                            <div class="input-field">
                                <label for="description-backlog">Description</label>
                               <textarea name="description_backlog" id="description-backlog" class="materialize-textarea" required></textarea>
                            </div>    
                            </div>
                            <div class="row">
                                <div class="input-field">
                                   <select class="icons" id="priority-backlog">
                                      <option value="" disabled selected>Choose your option</option>
                                      <option value="high" data-icon="<% out.print(ROOT_URL);%>images/red.jpg" class="circle">HIGH</option>
                                      <option value="medium" data-icon="<% out.print(ROOT_URL);%>images/orange.jpg" class="circle">MEDIUM</option>
                                      <option value="low" data-icon="<% out.print(ROOT_URL);%>images/green.jpg" class="circle">LOW</option>
                                    </select>
                                   <label for="priority-backlog">Priority</label>
                                </div>
                            </div>

                             <!-- <button class="btn" id="progress-subtask">+ subtask</button> --> 
                            <div class="row subtask-back">
                                
                            </div>
                          
                            <div class="row">
                              <div class="input-field col s12">
                                <select id="backlog-assign">
                                  <option value="" disabled selected>Choose employee</option>
	                                   <c:forEach items="${employees}" var="employees">
		                                  <option value="${employees.uid}"> ${employees.fname} ${employees.lname}</option>
	                                  </c:forEach> 
                                </select>
                                <label>Assign to</label>
                              </div>
                            </div>    

                            <div class="row">
                                <p>
                                   <input type="checkbox" id="repeat-backlog" >
                                   <label for="repeat-backlog">Create another issue</label>
                                </p>    
                            </div>    
                        </div>
                    </div>
                    <div class="modal-footer">
                      <a href="#!" id="submit-backlog" class="modal-action waves-effect waves-green btn-flat white-text backlog-modal">ADD</a>
                    </div>
                  </div>

                  <div id="modal2" class="modal modal-fixed-footer">
				    <div class="modal-content">
				      <p class="modal-title">CREATE ISSUE SELECTED FOR DEVELOPMENT</p>
                      <div class="row">
                            <div class="input-field">
                                <label for="title-development">Title</label>
                                <input type="text" name="title_development" id="title-development" class="validate" data-length="50" maxlength="50" required>
                            </div>
                            <div class="row">
                            <div class="input-field">
                                <label for="description-development">Description</label>
                               <textarea name="description_development" id="description-development" class="materialize-textarea" required></textarea>
                            </div>    
                            </div>
                            <div class="row">
                                <div class="input-field">
                                   <select class="icons" id="priority-development">
                                      <option value="" disabled selected>Choose your option</option>
                                      <option value="high" data-icon="<% out.print(ROOT_URL);%>images/red.jpg" class="circle">HIGH</option>
                                      <option value="medium" data-icon="<% out.print(ROOT_URL);%>images/orange.jpg" class="circle">MEDIUM</option>
                                      <option value="low" data-icon="<% out.print(ROOT_URL);%>images/green.jpg" class="circle">LOW</option>
                                    </select>
                                   <label for="priority-development">Priority</label>
                                </div>
                            </div>

                            <!-- <button class="btn" id="progress-subtask">+ subtask</button> --> 
                            <div class="row subtask-dev">
                                
                            </div>

                            <div class="row">
                              <div class="input-field col s12">
                                <select id="development-assign">
                                  <option value="" disabled selected>Choose employee</option>
                                  
                                <c:forEach items="${employees}" var="employees">
		                                  <option value="${employees.uid}"> ${employees.fname} ${employees.lname}</option>
	                                  </c:forEach> 
                                </select>
                                <label>Assign to</label>
                              </div>
                            </div>    


                            <div class="row">
                                <p>
                                   <input type="checkbox" id="repeat-development" >
                                   <label for="repeat-development">Create another issue</label>
                                </p>    
                            </div>    
                        </div>
				    </div>
				    <div class="modal-footer">
				      <a href="#!" id="submit-development" class="modal-action waves-effect waves-green btn-flat white-text development-modal">ADD</a>
				    </div>
				  </div>
               

                    <div class="nav-wrapper teal darken-1 header">
                    <a href="#" data-activates="slide-out" id="nav-left" class="button-collapse brand-logo"><i class="fa fa-bars" style="font-size: 20px;"></i></a>
                        <img src="<% out.print(ROOT_URL);%>images/Kanban-logo2.png" class="kanban-logo"/>
                            <ul class="right hide-on-med-and-down settings">
                                <li><a class="dropdown-button" href="#!" data-activates="settings-dropdown">Settings</a></li>
                            </ul>
                            <div style="float: right; margin-right: 20px; margin-top: 5px;" class="white-text">Hello, ${sessionScope.username}</div>
                    </div>  
                    <div class="progress hide">
		     			 <div class="indeterminate"></div>
		 		 	</div> 
                    <!-- side nav -->
                    <ul id="slide-out" class="side-nav">
                        <li><div class="user-view">
                          <div class="background" style="text-align:center!important;">
                            <img src="<% out.print(ROOT_URL);%>images/Kanban-colorbg.jpg" style="background-color:#00695c;">
                          </div>
                             <div style="margin-top:50px;"><b>Filter Issues</b></div>
                        </div></li>
                        <li><a href="<%out.print(ROOT_URL);%>dashboard">Backlogs</a></li>
                        <li><a href="#!" class="view-releases">Releases</a></li>
                        <li class="divider"></li>
                        <li><a href="#modalAddUser" class="modal-trigger">Add user</a></li>
                     </ul>
                      <!-- Dropdown Structure -->
                        <ul id="settings-dropdown" class="dropdown-content dropdown-settings">
                            <li><a href="#change-password" class="modal-trigger">Change Password</a></li>

                            <li><a href="<%out.print(ROOT_URL); %>logout">Logout</a></li>
                        </ul>   
                        
                        
                        
            			
                        <div id="content"> 
                            <div class="row white-text" style="position: relative;top:10px;">
                                    <div class="col l3 heading">Backlog</div>
                                    <div class="col l3 heading">For Development</div>
                                    <div class="col l3 heading">In Progress</div>
                                    <div class="col l3 heading">Done</div>
                            </div>
                            <div class="row">
                                <div id="sortable1" data-column-type="backlog" class="col l3 connectedSortable grey lighten-3">
                                  <c:forEach items="${issues}" var="issues">  
                                    <div class="card white view-info" data-card-id="${issues.id}" style="cursor:pointer">
                                        <div class="card-content black-text">
                                            <div class="task-options" style="float: right;"><a href="#" data-activates='dropdown-options${issues.id}' class="dropdown-button">
                                            <i class="fa fa-ellipsis-h" style="font-size: 15px; color: #9e9e9e"></i></a></div>
                                                <ul id='dropdown-options${issues.id}' class="dropdown-content dropdown-task" >
                                                     
                                                        <li><a href="#!" class="delete-task" data-id="${issues.id}" >Delete</a></li>
                                                       <li style="display:none" class="show-release"><a href="#!" class="release-task" >Release</a></li>
                                                 </ul>
                                          <p class="card-description">${issues.title}</p>

                                       <c:choose>
										   <c:when test="${issues.priority == 'low'}">
											   <div class="priority-task" style="position: absolute;top: 50px; left: 0px;">
		                                           	 <span class="badge green white-text">Low</span>
		                                            </div>
										   </c:when> 
										   
										   <c:when test="${issues.priority == 'high'}">
										   		<div class="priority-task" style="position: absolute;top: 50px; left: 0px;">
		                                           	 <span class="badge red white-text">High</span>
		                                            </div>
										   </c:when> 
										   
										 	<c:when test="${issues.priority == 'medium'}">
										   		<div class="priority-task" style="position: absolute;top: 50px; left: 0px;">
		                                           	 <span class="badge orange white-text">Medium</span>
		                                            </div>
										   </c:when> 
									</c:choose>
									<c:choose>
										   <c:when test="${issues.assigned == null or issues.assigned == ''}">
											    <div class="priority-task" style="position: absolute;top: 50px; right: 0px;">
		                                           	  <i class="fa fa-user-times"></i>
		                                        </div>
										   </c:when> 
										   
										   <c:when test="${issues.assigned != null}">
										 
										   </c:when> 
										   
										
									</c:choose>
									
                                          
                                    
                                      
                                       <c:choose>
										   <c:when test="${issues.flagged == 1}">
											  <div class="flagged" style="position: absolute; top: 50px; right: 20px;">
                                           	 	<i class="fa fa-flag unmark-flag" data-card-id="${issues.id}"></i>
                                           	 </div>
										   </c:when> 
										   
										   <c:when test="${issues.flagged == 0}">
										   		<div class="flagged-not" style="position: absolute; top: 50px; right: 20px;">
										   			<i class="fa fa-flag-o mark-flag" style="display:none;" data-card-id="${issues.id}" aria-hidden="true"></i>
										   	 	</div>
										   </c:when>
									</c:choose>
                                             
                                       
                                          
                                        </div>
                                      </div>
                                      
                                     </c:forEach>                                       
                                </div>
                                <div id="sortable2" data-column-type="development" class="col l3 connectedSortable grey lighten-3">
                                
                                 <c:forEach items="${issuesDev}" var="issuesDev">  
                                    <div class="card white view-info" data-card-id="${issuesDev.id}" style="cursor:pointer">
                                        <div class="card-content black-text">
                                            <div class="task-options" style="float: right;"><a href="#" data-activates='dropdown-options${issuesDev.id}' class="dropdown-button">
                                            <i class="fa fa-ellipsis-h" style="font-size: 15px; color: #9e9e9e"></i></a></div>
                                                <ul id='dropdown-options${issuesDev.id}' class="dropdown-content dropdown-task" >
                                                     
                                                        <li><a href="#!" class="delete-task" data-id="${issuesDev.id}">Delete</a></li>
                                                      	<li class="show-release" style="display:none"><a href="#!" class="release-task">Release</a></li>
                                                 </ul>
                                          <p class="card-description">${issuesDev.title}</p>
                                          
                                       <c:choose>
										   <c:when test="${issuesDev.priority == 'low'}">
											   <div class="priority-task" style="position: absolute;top: 50px; left: 0px;">
		                                           	 <span class="badge green white-text">Low</span>
		                                            </div>
										   </c:when> 
										   
										   <c:when test="${issuesDev.priority == 'high'}">
										   		<div class="priority-task" style="position: absolute;top: 50px; left: 0px;">
		                                           	 <span class="badge red white-text">High</span>
		                                            </div>
										   </c:when> 
										   
										 	<c:when test="${issuesDev.priority == 'medium'}">
										   		<div class="priority-task" style="position: absolute;top: 50px; left: 0px;">
		                                           	 <span class="badge orange white-text">Medium</span>
		                                            </div>
										   </c:when> 
									</c:choose>
                                            
                                      
                                      <c:choose>
										   <c:when test="${issuesDev.assigned == null or issuesDev.assigned == ''}">
											    <div class="priority-task" style="position: absolute;top: 50px; right: 0px;">
		                                           	  <i class="fa fa-user-times"></i>
		                                        </div>
										   </c:when> 
										   
										   <c:when test="${issuesDev.assigned != null}">
										 
										   </c:when> 
										   
										
									</c:choose>
									
                                       <c:choose>
										   <c:when test="${issuesDev.flagged == 1}">
											  <div class="flagged" style="position: absolute; top: 50px; right: 20px;">
                                           	 	<i class="fa fa-flag unmark-flag" data-card-id="${issuesDev.id}"></i>
                                           	 </div>
										   </c:when> 
										   
										   <c:when test="${issuesDev.flagged == 0}">
										   		<div class="flagged-not" style="position: absolute; top: 50px; right: 20px;">
										   			<i class="fa fa-flag-o mark-flag" style="display:none;" data-card-id="${issuesDev.id}" aria-hidden="true"></i>
										   	 	</div>
										   </c:when>
									</c:choose>
                                             
                                        
                                          
                                        </div>
                                      </div>
                                      
                                     </c:forEach>  
                                </div>
                                <div id="sortable3" data-column-type="progress" class="col l3 connectedSortable grey lighten-3">
                                    <c:forEach items="${issuesProgress}" var="issuesProgress">  
                                    <div class="card white view-info" data-card-id="${issuesProgress.id}" style="cursor:pointer">
                                        <div class="card-content black-text">
                                            <div class="task-options" style="float: right;"><a href="#" data-activates='dropdown-options${issuesProgress.id}' class="dropdown-button">
                                            <i class="fa fa-ellipsis-h" style="font-size: 15px; color: #9e9e9e"></i></a></div>
                                                <ul id='dropdown-options${issuesProgress.id}' class="dropdown-content dropdown-task" >
                                                     
                                                        <li><a href="#!" class="delete-task" data-id="${issuesProgress.id}">Delete</a></li>
                                                        <li class="show-release" style="display:none"><a href="#!" class="release-task">Release</a></li>
                                                 </ul>
                                          <p class="card-description">${issuesProgress.title}</p>
                                          
                                       <c:choose>
										   <c:when test="${issuesProgress.priority == 'low'}">
											   <div class="priority-task" style="position: absolute;top: 50px; left: 0px;">
		                                           	 <span class="badge green white-text">Low</span>
		                                            </div>
										   </c:when> 
										   
										   <c:when test="${issuesProgress.priority == 'high'}">
										   		<div class="priority-task" style="position: absolute;top: 50px; left: 0px;">
		                                           	 <span class="badge red white-text">High</span>
		                                            </div>
										   </c:when> 
										   
										 	<c:when test="${issuesProgress.priority == 'medium'}">
										   		<div class="priority-task" style="position: absolute;top: 50px; left: 0px;">
		                                           	 <span class="badge orange white-text">Medium</span>
		                                            </div>
										   </c:when> 
									</c:choose>
                                            
                                       <c:choose>
										   <c:when test="${issuesProgress.assigned == null or issuesProgress.assigned == ''}">
											    <div class="priority-task" style="position: absolute;top: 50px; right: 0px;">
		                                           	  <i class="fa fa-user-times"></i>
		                                        </div>
										   </c:when> 
										   
										   <c:when test="${issuesProgress.assigned != null}">
										 
										   </c:when> 
										   
										
									</c:choose>
                                      
                                       <c:choose>
										   <c:when test="${issuesProgress.flagged == 1}">
											  <div class="flagged" style="position: absolute; top: 50px; right: 20px;">
                                           	 	<i class="fa fa-flag unmark-flag" data-card-id="${issuesProgress.id}"></i>
                                           	 </div>
										   </c:when> 
										   
										   <c:when test="${issuesProgress.flagged == 0}">
										   		<div class="flagged-not" style="position: absolute; top: 50px; right: 20px; ">
										   			<i class="fa fa-flag-o mark-flag" style="display:none;" data-card-id="${issuesProgress.id}" aria-hidden="true"></i>
										   	 	</div>
										   </c:when>
									</c:choose>
                                             
                                        
                                          
                                        </div>
                                      </div>
                                      
                                     </c:forEach>           
                                </div>
                                <div id="sortable4" data-column-type="done" class="col l3 connectedSortable grey lighten-3">
                                	<c:forEach items="${issuesDone}" var="issuesDone">  
                                    <div class="card white view-info" data-card-id="${issuesDone.id}" style="cursor:pointer">
                                        <div class="card-content black-text">
                                            <div class="task-options" style="float: right;"><a href="#" data-activates='dropdown-options${issuesDone.id}' class="dropdown-button">
                                            <i class="fa fa-ellipsis-h" style="font-size: 15px; color: #9e9e9e"></i></a></div>
                                                <ul id='dropdown-options${issuesDone.id}' class="dropdown-content dropdown-task" >
                                                     
                                                        <li><a href="#!" class="delete-task" data-id="${issuesDone.id}">Delete</a></li>
                                                       <li><a href="#!" class="release-task" data-id="${issuesDone.id}" >Release</a></li>
                                                 </ul>
                                          <p class="card-description">${issuesDone.title}</p>
                                          
                                       <c:choose>
										   <c:when test="${issuesDone.priority == 'low'}">
											   <div class="priority-task" style="position: absolute;top: 50px; left: 0px;">
		                                           	 <span class="badge green white-text">Low</span>
		                                            </div>
										   </c:when> 
										   
										   <c:when test="${issuesDone.priority == 'high'}">
										   		<div class="priority-task" style="position: absolute;top: 50px; left: 0px;">
		                                           	 <span class="badge red white-text">High</span>
		                                            </div>
										   </c:when> 
										   
										 	<c:when test="${issuesDone.priority == 'medium'}">
										   		<div class="priority-task" style="position: absolute;top: 50px; left: 0px;">
		                                           	 <span class="badge orange white-text">Medium</span>
		                                            </div>
										   </c:when> 
									</c:choose>
                                            
                                      
                                      
                                       <c:choose>
										   <c:when test="${issuesDone.flagged == 1}">
											  <div class="flagged" style="position: absolute; top: 50px; right: 10px;">
                                           	 	<i class="fa fa-flag unmark-flag" data-card-id="${issuesDone.id}"></i>
                                           	 </div>
										   </c:when> 
										   
										   <c:when test="${issuesDone.flagged == 0}">
										   <div class="flagged-not" style="position: absolute; top: 50px; right: 10px;">
										   		<i class="fa fa-flag-o mark-flag" style="display:none;" aria-hidden="true" data-card-id="${issuesDone.id}"></i>
										   	 </div>
										   </c:when>
									</c:choose>
                                             
                                        
                    
                  </div>
                </div>
                
               </c:forEach>           

               
               </div>
                </div> 
                 <div class="fixed-action-btn">
                <a class="btn-floating btn-large teal darken-3">
                 <i class="material-icons">add</i>
                </a>
                <ul>
                  <li class="tooltipped fab child" data-position="left" data-delay="50" data-tooltip="In Progress" data-subitem="1"><a href="#modal1" class="btn-floating red modal-trigger"><i class="fa fa-spinner"></i></a></li>
                  <li class="tooltipped fab child" data-position="left" data-delay="50" data-tooltip="For Development" data-subitem="1"><a href="#modal2" class="btn-floating yellow darken-3 modal-trigger"><i class="fa fa-tasks"></i></a></li>
                  <li class="tooltipped fab child" data-position="left" data-delay="50" data-tooltip="Backlog" data-subitem="1"><a href="#modal3" class="btn-floating green darken-3 modal-trigger"><i class="fa fa-file-text"></i></a></li>
                  
                </ul>
           	 </div>	
            </div>
                       
                      
   
                <!--Import jQuery before materialize.js-->
               
                <script src="<% out.print(ROOT_URL);%>js/materialize.min.js"></script>
                <script src="<% out.print(ROOT_URL);%>js/dashboard.js"></script>	
                
            </body>

            </html>
            <script type="text/javascript">   
           
                $(document).ready(function(){
                    $('.modal').modal();
                    $(".button-collapse").sideNav();
                    $('select').material_select();
                    $('.chips').material_chip();
                    $('#nav-right').sideNav({
                          menuWidth: 400, 
                          edge: 'right',
                          closeOnClick: false,
                          draggable: true, 
                          onClose: function(el) { 
                             $('#subtask-content').html('');
                          }
                          
                        } 
                      );

                    $("#nav-left").sideNav({edge: 'left'});


                    $('input.autocomplete').autocomplete({
                        data: {
                          "high": null,
                          "medium": null,
                          "low": null
                        },
                        limit: 20, // The max amount of results that can be shown at once. Default: Infinity.
                        onAutocomplete: function(val) {
                          // Callback function when value is autcompleted.
                        },
                        minLength: 1, // The minimum length of the input for the autocomplete to start. Default: 1.
                      });
                });
              
            </script>
          <script>
          var ROOT_URL = "http://localhost:8081/SoaBaseCode/";

         
            $( function() {
            position_updated = false; //flag bit
            $( "#sortable1, #sortable2, #sortable3, #sortable4" ).sortable({
              connectWith: ".connectedSortable",
              update: function(event, ui) {
                  position_updated = !ui.sender; //if no sender, set sortWithin flag to true
              },
              cancel: '.cancel',

              stop: function(event, ui) {
                  if (position_updated) {
                      position_updated = false;
                  }   
              },
              receive: function(event, ui) {
              var id = ui.item.attr('data-card-id');        
                var type = $(this).data('column-type');
               
                if(type == 'done'){
                	 ui.item.find('.show-release').show();
                }else{
                	ui.item.find('.show-release').hide();
                }
               
                $.ajax({
                  url: ROOT_URL + 'api/updateIssueType',
                  type: 'POST',
                  data:{
                    'id': id,
                    'type': type,
                    
                  }
                });
              
              }
              
            }).disableSelection();

          });
        
          
        </script> 

