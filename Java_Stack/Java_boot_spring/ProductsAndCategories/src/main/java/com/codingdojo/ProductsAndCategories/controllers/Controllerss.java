package com.codingdojo.ProductsAndCategories.controllers;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.stereotype.Controller;
import com.codingdojo.ProductsAndCategories.models.Category;
import com.codingdojo.ProductsAndCategories.models.Product;
import com.codingdojo.ProductsAndCategories.services.CategoryService;
import com.codingdojo.ProductsAndCategories.services.productService;

@Controller
public class Controllerss {
	private final productService productservise;
	private final CategoryService categoryservise;

	public Controllerss(productService productservise, CategoryService categoryservise) {
		this.productservise = productservise;
		this.categoryservise = categoryservise;
	}

	@RequestMapping("/products/new")
	public String index() {
		return "newproduct.jsp";
	}

	@RequestMapping(value = "/products/new", method = RequestMethod.POST)
	public String newprouct(@RequestParam(value = "name") String name, @RequestParam(value = "desc") String desc,
			@RequestParam(value = "price") float price) {
		Product product = new Product(name, desc, price);
		productservise.createproduct(product);
		return "redirect:/products/new";
	}

	@RequestMapping("/categories/new")
	public String newcategory() {
		return "newcategory.jsp";
	}

	@RequestMapping(value = "/categories/new", method = RequestMethod.POST)
	public String newcategory(@RequestParam(value = "name") String name) {
		Category category = new Category(name);
		categoryservise.createcategory(category);
		return "redirect:/categories/new";
	}

	@RequestMapping("/products/{id}")
	public String product(@PathVariable("id") Long id, Model model) {
		Product product = productservise.findproduct(id);
		List<Category> categories = categoryservise.notin(product);
		model.addAttribute("product", product);
		model.addAttribute("categories", categories);
		return "product.jsp";
	}

	@RequestMapping(value = "/products/{id}", method = RequestMethod.POST)
	public String productad(@RequestParam(value = "category") Long categoryid, @PathVariable("id") Long id) {
		Product product = productservise.findproduct(id);
		Category category = categoryservise.findcategory(categoryid);
		categoryservise.change(product, category);
		return ("redirect:/products/"+id);
	}
	
	@RequestMapping("/categories/{id}")
	public String category(@PathVariable("id") Long id, Model model) {
		Category category = categoryservise.findcategory(id);
		List<Product> products = productservise.allproducts();
		model.addAttribute("category", category);
		model.addAttribute("products", products);
		return "category.jsp";
	}

	@RequestMapping(value = "/categories/{id}", method = RequestMethod.POST)
	public String categoryad(@RequestParam(value = "product") Long productid, @PathVariable("id") Long id) {
		Category category = categoryservise.findcategory(id);
		Product product = productservise.findproduct(productid);
		productservise.change(product, category);
		return ("redirect:/categories/"+id);
	}
}
