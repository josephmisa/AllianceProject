package ph.com.alliance.dao.impl;

import java.util.List;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TransactionRequiredException;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import ph.com.alliance.dao.AdminDao;
import ph.com.alliance.dao.UserDao;
import ph.com.alliance.entity.Admin;
import ph.com.alliance.entity.User;

/**
 * Sample data access object implementation using Java Persistence API.
 * 
 *
 */
@Repository("adminDao")
public class AdminDaoImpl implements AdminDao {

	@Override
	public Admin selectAdmin(EntityManager em, String username, String password) {
		// TODO Auto-generated method stub
		Admin admin = null;
		
		try {
			Query q = em.createNativeQuery("SELECT * FROM admin WHERE uid = '"+username+"' AND password = '"+password+"'", Admin.class);
			admin = (Admin) q.getSingleResult();
		} catch (Exception e) {
			System.err.println("ERROR ----------------- ");
			e.printStackTrace();
		}
		
	return admin;
	}
	
}
