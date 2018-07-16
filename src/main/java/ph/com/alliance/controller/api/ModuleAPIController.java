package ph.com.alliance.controller.api;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dozer.DozerBeanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import ph.com.alliance.entity.Admin;
import ph.com.alliance.entity.Task;
import ph.com.alliance.entity.User;
import ph.com.alliance.model.TaskModel;
import ph.com.alliance.model.UserModel;
import ph.com.alliance.service.DBTransactionTestService;

/**
 * Controller class used to hadle api requests.
 * All requests that falls through /api/* servlet mapping goes through here.
 * 
 */
@Controller
public class ModuleAPIController {
	
	@Autowired
	DBTransactionTestService dbSvc;
	
	@Autowired
	DozerBeanMapper dozerBeanMapper;
	
	/**
	 * 
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 */
    @RequestMapping(value = "/saveUser", method = RequestMethod.POST)
    @ResponseBody
    public UserModel saveUser(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
    	UserModel u = new UserModel();
    	int age = (request.getParameter("age") == "" ? 0: Integer.parseInt(request.getParameter("age")));
    	
    	u.setFname(request.getParameter("fname"));
    	u.setLname(request.getParameter("lname"));
    	u.setAge(age);
    	u.setUid(request.getParameter("uid"));
    	u.setGender(request.getParameter("gender"));
    	
    	/*if(!dbSvc.createUser(this.convertToEntity(u))) {
    		u = null;
    	}*/
    	
    	System.out.println("MAPPED USER --- " + this.convertToEntity(u));
    	    	
    	return u;
    }
    
    /**
     * 
     * @param uid
     * @return
     */
    @RequestMapping(value = "/searchUser/{uid}", method = RequestMethod.GET)
    @ResponseBody
    public UserModel searchUser(@PathVariable("uid") String uid) {
    	User u = new User();
    	
    	u.setUid(uid);
    	
    	return convertToModel(dbSvc.selectUser(u));
    }
    
    /**
     * 
     * @return
     */
    @RequestMapping(value = "/searchAllUsers", method = RequestMethod.GET)
    @ResponseBody
    public List<UserModel> searchAllUsers() {
    	List<User> userList = dbSvc.selectAllUsers();
    	List<UserModel> userModelList = new ArrayList<UserModel>();
    	
    	for(User u : userList) {
    		userModelList.add(convertToModel(u));
    	}
    	 	
    	return userModelList;
    }	
    
    /**
     * This is a sample object mapper.
     * Entity to model mapping can be handled by the class constructor itself, or
     * see convertToEntity function for another type of mapping.
     * 
     * @param pUser
     * @return UserModel
     */
    private UserModel convertToModel (User pUser) { 	
    	UserModel userModel = null;
    	
    	if (pUser != null) {
    		userModel = dozerBeanMapper.map(pUser, UserModel.class);
    	} 
    	
    	return userModel;
    }
    
    /**
     * This is a sample object mapper.
     * Model to entity mapping can be explicitly done via setters, or
     * see convertToModel function for mapping using constructor
     * 
     * @param pUserModel
     * @return
     */
    private User convertToEntity (UserModel pUserModel) {
    	User u = null;
    	
    	if (pUserModel != null) {
    		u = dozerBeanMapper.map(pUserModel, User.class);
    	}
    	
    	return u;
    }
    private Task convertToEntityTask (TaskModel tTaskModel) {
    	Task task = null;
    	
    	if (tTaskModel != null) {
    		task = dozerBeanMapper.map(tTaskModel, Task.class);
    	}
    	
    	return task;
    }
    
    @RequestMapping(value = "/loginAdmin", method = RequestMethod.POST)
    @ResponseBody
    public void loginAdmin (HttpServletRequest request, HttpServletResponse response, ModelMap map) throws IOException {
    	String username = request.getParameter("user");
    	String password = request.getParameter("pass");
    	Admin admin = dbSvc.selectAdmin(username,password);
    	if(admin!=null){
    		response.sendRedirect("dashboard");
    	}else{
    		response.sendRedirect("");
    	}
    }
    @RequestMapping(value = "/saveTask", method = RequestMethod.POST)
    @ResponseBody
    public TaskModel saveTask (HttpServletRequest request, HttpServletResponse response, ModelMap map) throws IOException {
    	String task_title = request.getParameter("task_title");
    	String description = request.getParameter("task_details");
    	String date = request.getParameter("due_date");
    	String task_status = request.getParameter("task_status");
    	
    	System.out.print(task_title + description + date + task_status);
    	
//    	Admin admin = dbSvc.selectAdmin(username,password);
    	
    	TaskModel task = new TaskModel();
    	task.setTitle(task_title);
    	task.setDescription(description);
    	task.setDate(date);
    	task.setStatus(task_status);
    	
    	
    	/*if(!dbSvc.createUser(this.convertToEntity(u))) {
    		u = null;
    	}*/
    	
//    	System.out.println("MAPPED USER --- " + this.convertToEntity(u));
    	if(!dbSvc.createTask(this.convertToEntityTask(task))){
    		return null;
    	}
    	return task;
    	
    }
    
    @RequestMapping(value = "/getDetails", method = RequestMethod.POST)
    @ResponseBody
    public Task getDetails (HttpServletRequest request, HttpServletResponse response, ModelMap map) throws IOException {
    	String id = request.getParameter("id");
    	
    	Task task = null;
    	
    	task = dbSvc.getDetails(Integer.parseInt(id));
    	System.out.print(task);
    	return task;
    }
    
    
    @RequestMapping(value = "/editTask", method = RequestMethod.POST)
    @ResponseBody
    public TaskModel editTask (HttpServletRequest request, HttpServletResponse response, ModelMap map) throws IOException {
    	String task_title = request.getParameter("task_title");
    	String description = request.getParameter("task_details");
    	String date = request.getParameter("due_date");
    	String task_status = request.getParameter("task_status");
    	String id = request.getParameter("edit_task_id");
    	System.out.print(task_title + description + date + task_status);
    	
//    	Admin admin = dbSvc.selectAdmin(username,password);
    	
    	TaskModel task = new TaskModel();
    	task.setTitle(task_title);
    	task.setDescription(description);
    	task.setDate(date);
    	task.setStatus(task_status);
    	task.setId(Integer.parseInt(id));
    	System.out.print(task);
    	
    	/*if(!dbSvc.createUser(this.convertToEntity(u))) {
    		u = null;
    	}*/
    	
//    	System.out.println("MAPPED USER --- " + this.convertToEntity(u));
    	Task task1 = null;
    	task1 = dbSvc.editTask(this.convertToEntityTask(task));
    	
    	
    	
    	return task;
    	
    }
    
}

