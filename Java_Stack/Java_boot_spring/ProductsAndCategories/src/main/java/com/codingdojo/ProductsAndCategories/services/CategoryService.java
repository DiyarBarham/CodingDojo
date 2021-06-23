package com.codingdojo.ProductsAndCategories.services;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.ProductsAndCategories.models.Category;
import com.codingdojo.ProductsAndCategories.models.Product;
import com.codingdojo.ProductsAndCategories.repositories.CategoryRepository;

@Service
public class CategoryService {
	private final CategoryRepository categoryrepo;
	public CategoryService(CategoryRepository categoryrepo) {
		this.categoryrepo=categoryrepo;
	}
	
	public List<Category> allcategory(){
		return categoryrepo.findAll();
	}
	
	public Category createcategory(Category category) {
		return categoryrepo.save(category);
		
	}
	public Category findcategory(Long id) {
		Optional<Category> optionalcategory= categoryrepo.findById(id);
		if(optionalcategory.isPresent()) return optionalcategory.get();
		else return null;
	}

	public void createproduct(Product product, Category category) {
		// TODO Auto-generated method stub
		category.addproducts(product);
		
	}

	public List<Category> notin(Product product) {
		// TODO Auto-generated method stub
		List<Category> cat = categoryrepo.findByProductsNotContains(product);
		
		return cat;
	}
	public void change(Product product, Category category) {
		// TODO Auto-generated method stub
		List<Product> prolist = category.getProducts();
		prolist.add(product);
		category.setProducts(prolist);
		categoryrepo.save(category);
		}
}
