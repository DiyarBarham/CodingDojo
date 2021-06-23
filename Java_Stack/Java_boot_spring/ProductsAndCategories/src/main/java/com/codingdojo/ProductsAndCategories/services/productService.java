package com.codingdojo.ProductsAndCategories.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.ProductsAndCategories.models.Category;
import com.codingdojo.ProductsAndCategories.models.Product;
import com.codingdojo.ProductsAndCategories.repositories.CategoryRepository;
import com.codingdojo.ProductsAndCategories.repositories.ProductRepository;

@Service
public class productService {
	private final ProductRepository productrepo;
	public productService(ProductRepository productrepo) {
		this.productrepo=productrepo;
	}
	
	public List<Product> allproducts(){
		return productrepo.findAll();
	}
	
	public Product createproduct(Product product) {
		return productrepo.save(product);
		
	}
	public Product findproduct(Long id) {
		Optional<Product> optionalproduct= productrepo.findById(id);
		if(optionalproduct.isPresent()) return optionalproduct.get();
		else return null;
	}

	public void change(Product product, Category category) {
		List<Category> catlist = product.getCategories();
		catlist.add(category);
		product.setCategories(catlist);
		productrepo.save(product);
		
	}

	public List<Product> notin(Category category) {
		// TODO Auto-generated method stub
		List<Product> cat = productrepo.findByCategoriesNotContains(category);
		
		return cat;
	}
	
}
