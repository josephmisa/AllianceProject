package ph.com.alliance.dao.impl;

import java.util.List;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.TransactionRequiredException;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import ph.com.alliance.dao.TaskDao;
import ph.com.alliance.entity.Task;
import ph.com.alliance.entity.User;

@Component
@Repository("taskDao")
public class TaskDaoImpl implements TaskDao{

	@Override
	public boolean createTask(EntityManager em, Task task) {
		boolean success = true;
		
		try {
			
			em.persist(task);
			
		} catch (EntityExistsException ee) {
			// instantiate MyException class here and set custom error codes common to all
			// ie. throw new MyException(<ERROR CODE HERE>, <ERROR MESSAGE HERE>)
			ee.getMessage();
			success = false;
		} catch (IllegalArgumentException iae) {
			// instantiate MyException class here and set custom error codes common to all
			// ie. throw new MyException(<ERROR CODE HERE>, <ERROR MESSAGE HERE>)
			iae.getMessage();
			success = false;
		} catch (TransactionRequiredException trxe) {
			// instantiate MyException class here and set custom error codes common to all
			// ie. throw new MyException(<ERROR CODE HERE>, <ERROR MESSAGE HERE>)
			trxe.getMessage();
			success = false;
		}
		
		return success;
	}

	@Override
	public List<Task> getTaskList(EntityManager em) {
		// TODO Auto-generated method stub
		
		CriteriaBuilder cb = em.getCriteriaBuilder();
		CriteriaQuery<Task> cq = cb.createQuery(Task.class);
		Root<Task> userRoot = cq.from(Task.class);
		cq.select(userRoot);
		Predicate predicate = cb.conjunction();
		predicate = cb.and(predicate, cb.equal(userRoot.get("status"), "Backlog"));
		cq.where(predicate);
		
		// generates equivalent "SELECT u FROM User u"
		try {
			return em.createQuery(cq).getResultList();
		} catch (Exception e) {
			System.err.println("ERROR ----------------- ");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Task> getTaskListToDo(EntityManager em) {
		// TODO Auto-generated method stub
		CriteriaBuilder cb = em.getCriteriaBuilder();
		CriteriaQuery<Task> cq = cb.createQuery(Task.class);
		Root<Task> userRoot = cq.from(Task.class);
		cq.select(userRoot);
		Predicate predicate = cb.conjunction();
		predicate = cb.and(predicate, cb.equal(userRoot.get("status"), "Todo"));
		cq.where(predicate);
		
		// generates equivalent "SELECT u FROM User u"
		try {
			return em.createQuery(cq).getResultList();
		} catch (Exception e) {
			System.err.println("ERROR ----------------- ");
			e.printStackTrace();
			return null;
		}
		
	}

	@Override
	public List<Task> getTaskListInProgress(EntityManager em) {
		// TODO Auto-generated method stub
		CriteriaBuilder cb = em.getCriteriaBuilder();
		CriteriaQuery<Task> cq = cb.createQuery(Task.class);
		Root<Task> userRoot = cq.from(Task.class);
		cq.select(userRoot);
		Predicate predicate = cb.conjunction();
		predicate = cb.and(predicate, cb.equal(userRoot.get("status"), "In Progress"));
		cq.where(predicate);
		
		// generates equivalent "SELECT u FROM User u"
		try {
			return em.createQuery(cq).getResultList();
		} catch (Exception e) {
			System.err.println("ERROR ----------------- ");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Task> getTaskListDone(EntityManager em) {
		CriteriaBuilder cb = em.getCriteriaBuilder();
		CriteriaQuery<Task> cq = cb.createQuery(Task.class);
		Root<Task> userRoot = cq.from(Task.class);
		cq.select(userRoot);
		Predicate predicate = cb.conjunction();
		predicate = cb.and(predicate, cb.equal(userRoot.get("status"), "Done"));
		cq.where(predicate);
		
		// generates equivalent "SELECT u FROM User u"
		try {
			return em.createQuery(cq).getResultList();
		} catch (Exception e) {
			System.err.println("ERROR ----------------- ");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public Task getTaskDetails(EntityManager em, int id) {
		CriteriaBuilder cb = em.getCriteriaBuilder();
		CriteriaQuery<Task> cq = cb.createQuery(Task.class);
		Root<Task> userRoot = cq.from(Task.class);
		cq.select(userRoot);
		Predicate predicate = cb.conjunction();
		predicate = cb.and(predicate, cb.equal(userRoot.get("id"), id));
		cq.where(predicate);
		
		// generates equivalent "SELECT u FROM User u"
		try {
			return em.createQuery(cq).getSingleResult();
		} catch (Exception e) {
			System.err.println("ERROR ----------------- ");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public Task updateTask(EntityManager em, Task ptask) {
			Task task = null;
		
		try {
			task = em.merge(ptask);
		} catch (IllegalArgumentException iae) {
			iae.getMessage();
		} catch (TransactionRequiredException trxe) {
			trxe.getMessage();
		}
		
		return task;
	}

}
