package com.codingdojo.ProductsAndCategories.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.ProductsAndCategories.models.Category;
import com.codingdojo.ProductsAndCategories.models.Product;

public interface CategoryRepository extends CrudRepository<Category, Long>{
	List<Category> findAll();
	List<Category> findByProductsNotContains(Product product);
}
