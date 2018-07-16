package ph.com.alliance.controller.view;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ph.com.alliance.entity.Task;


import ph.com.alliance.service.DBTransactionTestService;

/**
 * Example controller class that handles request for the application root.
 * 
 *
 */
@Controller
@RequestMapping("/")
public class HomeController {
	
	@Autowired
	DBTransactionTestService dbSvc;
	
    @RequestMapping(method=RequestMethod.GET)
    public String loadMainMenuIndex(HttpServletRequest request, HttpServletResponse response, ModelMap map){
    	 	
		return "/index";
    }

    
    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public ModelAndView viewDashboard(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
    	System.out.println("@/modulename/profile MODULE VIEW CONTROLLER CALLED.");
    	ModelAndView mav = new ModelAndView();
    	List<Task> tasks = dbSvc.getTasks();
    	List<Task> taskstodo = dbSvc.getTasksToDo();
    	List<Task> taskinprogress = dbSvc.getTasksInProgress();
    	List<Task> taskdone = dbSvc.getTasksDone();
    	mav.setViewName("kanbandashboard");
    	mav.addObject("tasks",tasks);
    	mav.addObject("taskstodo",taskstodo);
    	mav.addObject("tasksinprogress", taskinprogress);
    	mav.addObject("tasksdone", taskdone);
    	
    	return mav;
    }
}
