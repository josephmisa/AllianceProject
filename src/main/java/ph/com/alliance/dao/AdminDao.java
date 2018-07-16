package ph.com.alliance.dao;

import java.util.List;

import javax.persistence.EntityManager;

import ph.com.alliance.entity.Admin;
import ph.com.alliance.entity.User;

/**
 * 
 * 
 */
public interface AdminDao {

	Admin selectAdmin(EntityManager em, String username, String password);
	
}
