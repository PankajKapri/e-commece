package com.user.DAO;
import java.util.List;


import com.user.entity.Product;
public interface ProductDAO {
	
	public void addproduct(Product product);
	public List<Product> getproductList();
	public void deletePro(int id);
	public Product EditProduct(int id);
	public void UpdateProduct(Product product);

	

}
