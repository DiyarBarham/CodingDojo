package com.codingdojo.ProductsAndCategories.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.ProductsAndCategories.models.Category;
import com.codingdojo.ProductsAndCategories.models.Product;

public interface ProductRepository extends CrudRepository<Product, Long>{
	List<Product> findAll();
	List<Product> findByCategoriesNotContains(Category category);

}