package ph.com.alliance.service;

import java.util.List;

import ph.com.alliance.entity.Admin;
import ph.com.alliance.entity.Product;
import ph.com.alliance.entity.Task;
import ph.com.alliance.entity.User;

/**
 * 
 * 
 */
public interface DBTransactionTestService {
	/**
	 * 
	 * @return
	 */
	public boolean createUser(User pUser);
	
	/**
	 * 
	 */
	public User updateUser(User pUser);
	
	/**
	 * 
	 */
	public void deleteUser(User pUser);
	
	/**
	 * 
	 * @return
	 */
	public User selectUser(User pUser);
	
	/**
	 * 
	 * @return
	 */
	public List<User> selectUsers(String pKey);
	
	/**
	 * 
	 * @return
	 */
	public boolean createProduct(Product pProd);
	
	/**
	 * 
	 */
	public Product updateProduct(Product pProd);
	
	/**
	 * 
	 */
	public void deleteProduct(Product pProd);
	
	/**
	 * 
	 * @return
	 */
	public Product selectProduct(Product pProd);
	
	/**
	 * 
	 * @return
	 */
	public List<User> selectAllUsers();
	
	/**
	 * 
	 * @return
	 */
	public List<Product> selectProducts(String pKey);
	
	/*-------------------- MULTI TABLE TRANSASCTION TESTS -----------------------*/
	public boolean createUserAndProduct(User pUser, Product pProd, boolean pRollbackFlag);
	public boolean createUserAndUpdateProduct(User pUser, Product pProd, boolean pRollbackFlag);

	public Admin selectAdmin(String username, String password);

	public boolean createTask(Task convertToEntityTask);

	public List<Task> getTasks();

	public List<Task> getTasksToDo();

	public List<Task> getTasksInProgress();

	public List<Task> getTasksDone();

	public Task getDetails(int parseInt);

	public Task editTask(Task task);

	
	
	
	
	
}
