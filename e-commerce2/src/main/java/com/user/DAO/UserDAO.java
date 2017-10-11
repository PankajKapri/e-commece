package com.user.DAO;

import java.util.List;



import com.user.entity.*;
public interface UserDAO {
	
	public void adduser(User user);
	public List<User> getList();
	public void deleteUser(String id);
	public User getUser(String id);
	public void editUser(User user);
	
	
    
}
