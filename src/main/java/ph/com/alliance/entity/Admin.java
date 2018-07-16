package ph.com.alliance.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Id;


/**
 * The persistent class for the user database table.
 * 
 */
@Entity
@Table(name="admin")
public class Admin implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name="uid")
	private String uid;
	private int id;
	private String fname;
	private String lname;
	private String gender;
	private String password;
	private int age;
	
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	public void setPassword(String password){
		this.password = password;
	}
	
	public String getPassword(){
		return password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public void setId(int id){
		this.id = id;
	}
	
	public int getId(){
		return id;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	
	@Override
    public String toString() {
        return "User {" + "userID=" + uid + ", fname=" + fname + ", lname=" + lname + ", gender=" + gender + ", age=" + age + ", id = "+id+ ", password="+password+'}';

    } 
}
