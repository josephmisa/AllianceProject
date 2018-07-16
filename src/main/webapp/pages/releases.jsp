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
             
              <div id="modal-view-info" class="modal bottom-sheet modal-fixed-footer more-info">
					    <div class="modal-content">
					      <h5>Create plans	</h5>
					      <div class="row">
						       <span>Description:</span>
						      <p>Lorem ipsum dolor</p>
					      </div>
					     
					      <div class="row">
					      	<span>Priority: </span>
					      	 <span>High</span>
					      </div>
					      
					     <div class="row">
					     	 <span>Assigned to: </span>
					      
						      <div class="chip">
							  
							    Jane Doe
							  </div>
							  <div class="chip">
							  
							   Doe Jane
							  </div>
					     </div>
					    </div>
					    
			<div class="modal-footer">
     			 <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Close	</a>
   			 </div>
					   
		</div>
   <div id="modalAddUser" class="modal modal-fixed-footer" >
    <div class="modal-content" >
      <h4>Add user</h4>

      <div class="row">
        <form class="col s12">
          <div class="row modal-form-row">
            <div class="input-field col s12">
              <input id="users_firstname" type="text" class="validate">
              <label for="users_firstname">First Name</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field col s12">
              <input id="users_lastname" type="text" class="validate">
              <label for="users_lastname">Last Name</label>
            </div>
          </div>       
          <div class="row">
            <div class="input-field col s12">
              <input id="users_age" type="text" class="validate">
              <label for="users_age">Age</label>
            </div>
          
            	<input type="radio" name="gender" value="Male" id="m"><label for="m">Male</label>
         		<input type="radio" name="gender" value="Female" id="f"><label for="f">Female</label>
          </div>
                            
        </form>
      </div>
    </div>
    <div class="modal-footer">
      <a class=" modal-action modal-close waves-effect waves-green btn-flat">Submit</a>
    </div>
  </div>
             	<div id="modal1" class="modal modal-fixed-footer">
                    <div class="modal-content">
                        <p class="modal-title">CREATE ISSUE IN PROGRESS</p>
                        <div class="row">
                            <div class="input-field">
                                <label for="title-progress">Title</label>
                                <input type="text" name="title_progress" id="title-progress" maxlength="50" class="validate" data-length="50">
                            </div>    
                        </div>

                        <div class="row">
                            <div class="input-field">
                                <label for="description-progress">Description</label>
                               <textarea name="description_progress" id="description-progress" class="materialize-textarea"></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field">
                               <select class="icons" id="priority-progress">
                                  <option value="" disabled selected>Choose your option</option>
                                  <option value="" data-icon="<% out.print(ROOT_URL);%>images/red.jpg" class="circle">HIGH</option>
                                  <option value="" data-icon="<% out.print(ROOT_URL);%>images/orange.jpg" class="circle">MEDIUM</option>
                                  <option value="" data-icon="<% out.print(ROOT_URL);%>images/green.jpg" class="circle">LOW</option>
                                </select>
                               <label for="priority-progress">Priority</label>
                            </div>
                        </div>

                        <button class="btn" id="progress-subtask">+ subtask</button>
                        <div class="row subtask-prog">
                            
                        </div>
                         <div class="row">
                            <p>
                               <input type="checkbox" id="repeat-progress" >
                               <label for="repeat-progress">Create another issue</label>
                            </p>    
                        </div>
                    </div>
                    <div class="modal-footer">
                      <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat white-text progress-modal">ADD</a>
                    </div>
                  </div>

                  <div id="modal3" class="modal modal-fixed-footer">
                    <div class="modal-content">
                      <p class="modal-title">CREATE ISSUE FOR BACKLOG</p>
                      <div class="row">
                            <div class="input-field">
                                <label for="title-backlog">Title</label>
                                <input type="text" name="title_backlog" id="title-backlog" class="validate" data-length="50" maxlength="50">
                            </div>
                            <div class="row">
                            <div class="input-field">
                                <label for="description-backlog">Description</label>
                               <textarea name="description_backlog" id="description-backlog" class="materialize-textarea"></textarea>
                            </div>    
                            </div>
                            <div class="row">
                                <div class="input-field">
                                   <select class="icons" id="priority-backlog">
                                      <option value="" disabled selected>Choose your option</option>
                                      <option value="" data-icon="<% out.print(ROOT_URL);%>images/red.jpg" class="circle">HIGH</option>
                                      <option value="" data-icon="<% out.print(ROOT_URL);%>images/orange.jpg" class="circle">MEDIUM</option>
                                      <option value="" data-icon="<% out.print(ROOT_URL);%>images/green.jpg" class="circle">LOW</option>
                                    </select>
                                   <label for="priority-backlog">Priority</label>
                                </div>
                            </div>

                            <button class="btn" id="backlog-subtask">+ subtask</button>
                            <div class="row subtask-back">
                                
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
                      <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat white-text backlog-modal">ADD</a>
                    </div>
                  </div>

                  <div id="modal2" class="modal modal-fixed-footer">
				    <div class="modal-content">
				      <p class="modal-title">CREATE ISSUE SELECTED FOR DEVELOPEMENT</p>
                      <div class="row">
                            <div class="input-field">
                                <label for="title-development">Title</label>
                                <input type="text" name="title_development" id="title-development" class="validate" data-length="50" maxlength="50">
                            </div>
                            <div class="row">
                            <div class="input-field">
                                <label for="description-development">Description</label>
                               <textarea name="description_development" id="description-development" class="materialize-textarea"></textarea>
                            </div>    
                            </div>
                            <div class="row">
                                <div class="input-field">
                                   <select class="icons" id="priority-development">
                                      <option value="" disabled selected>Choose your option</option>
                                      <option value="" data-icon="<% out.print(ROOT_URL);%>images/red.jpg" class="circle">HIGH</option>
                                      <option value="" data-icon="<% out.print(ROOT_URL);%>images/orange.jpg" class="circle">MEDIUM</option>
                                      <option value="" data-icon="<% out.print(ROOT_URL);%>images/green.jpg" class="circle">LOW</option>
                                    </select>
                                   <label for="priority-development">Priority</label>
                                </div>
                            </div>

                            <button class="btn" id="development-subtask">+ subtask</button>
                            <div class="row subtask-dev">
                                
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
				      <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat white-text development-modal">ADD</a>
				    </div>
				  </div>
               

                    <div class="nav-wrapper teal darken-1 header">
                    <a href="#" data-activates="slide-out" class="button-collapse brand-logo"><i class="fa fa-bars" style="font-size: 20px;"></i></a>
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
                             <div style="margin-top:50px;">Filter Issues</div>
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
                        
                        
                        
            			
                        <div id="content" class="releases-content" style="padding:5px"> 
               				<div class="row">
               					<div class="col l12 grey lighten-3" style="min-height: 170px !important;border:1px solid #bdbdbd; height: auto !important;margin-right: 10px !important;border-radius: 5px;">
               					
               					<c:forEach items="${issuesReleased}" var="issuesReleased">  
               					<div class="col l3" style="margin-right: 20px !important;width: 23% !important;">
                                    <div class="card white view-info" data-card-id="${issuesReleased.id}" style="cursor:pointer">
                                        <div class="card-content black-text">
                                            <div class="task-options" style="float: right;"><a href="#" data-activates='dropdown-options${issuesReleased.id}' class="dropdown-button">
                                            <i class="fa fa-ellipsis-h" style="font-size: 15px; color: #9e9e9e"></i></a></div>
                                                <ul id='dropdown-options${issuesReleased.id}' class="dropdown-content dropdown-task" >
                                                        <li><a href="#!" class="edit-task">Edit</a></li>
                                                        <li><a href="#!" class="delete-task">Delete</a></li>
                                                       
                                                 </ul>
                                          <p class="card-description">${issuesReleased.title}</p>
                                          
                                       <c:choose>
										   <c:when test="${issuesReleased.priority == 'low'}">
											   <div class="priority-task" style="position: absolute;top: 50px; left: 0px;">
		                                           	 <span class="badge green white-text">Low</span>
		                                            </div>
										   </c:when> 
										   
										   <c:when test="${issuesReleased.priority == 'high'}">
										   		<div class="priority-task" style="position: absolute;top: 50px; left: 0px;">
		                                           	 <span class="badge red white-text">High</span>
		                                            </div>
										   </c:when> 
										   
										 	<c:when test="${issuesReleased.priority == 'medium'}">
										   		<div class="priority-task" style="position: absolute;top: 50px; left: 0px;">
		                                           	 <span class="badge orange white-text">Medium</span>
		                                            </div>
										   </c:when> 
									</c:choose>
                                            
                                      
                                      
                                       <c:choose>
										   <c:when test="${issuesReleased.flagged == 1}">
											  <div class="flagged" style="position: absolute; top: 50px; right: 10px;">
                                           	 	<i class="fa fa-flag" style="color: #b71c1c"></i>
                                           	 </div>
										   </c:when> 
										   
										   <c:when test="${issuesReleased.flagged == 0}">
										   <div class="flagged-not" style="position: absolute; top: 50px; right: 10px; display:none;">
										   		<i class="fa fa-flag-o mark-flag" aria-hidden="true" data-card-id="${issuesReleased.id}"></i>
										   	 </div>
										   </c:when>
									</c:choose>
                                             
                                        
                                          
                                        </div>
                                      </div>
                                      </div>
                                     </c:forEach>           
               					</div>
               				</div>
               			</div>
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
                        
                       
                      
   
                <!--Import jQuery before materialize.js-->
               
                <script src="<% out.print(ROOT_URL);%>js/materialize.min.js"></script>
                <script src="<% out.print(ROOT_URL);%>js/dashboard.js"></script>	
                
            </body>

            </html>
            <script type="text/javascript">   
            $(document).on('dblclick','.view-info',function(e){
           	 $('#modal-view-info').modal('open');
           });
                $(document).ready(function(){
                    $('.modal').modal();
                    $(".button-collapse").sideNav();
                    $('select').material_select();
                    $('.chips').material_chip();
                 
                });
              
            </script>
          <script>
          $( function() {
        	
            $( "#sortable1, #sortable2, #sortable3, #sortable4" ).sortable({
              connectWith: ".connectedSortable",
            }).disableSelection();
          } );
        </script> 

