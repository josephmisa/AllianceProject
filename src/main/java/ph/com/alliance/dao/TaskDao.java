package ph.com.alliance.dao;

import java.util.List;

import javax.persistence.EntityManager;

import ph.com.alliance.entity.Task;

public interface TaskDao {

	boolean createTask(EntityManager em, Task task);

	List<Task> getTaskList(EntityManager em);

	List<Task> getTaskListToDo(EntityManager em);

	List<Task> getTaskListInProgress(EntityManager em);

	List<Task> getTaskListDone(EntityManager em);

	Task getTaskDetails(EntityManager em, int id);

	Task updateTask(EntityManager em, Task ptask);
	

}
