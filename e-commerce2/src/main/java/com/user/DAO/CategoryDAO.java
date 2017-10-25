package com.user.DAO;
import java.util.List;

import com.user.entity.Category;
public interface CategoryDAO {
	public void addCategory(Category category);
	public List<Category> getCategoryList();
	public void deleteCategory(int id);
	public Category editCategory(int id);
	public void updateCategory(Category category);
}
