package com.codingdojo.BooksProject.services;


import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.BooksProject.Repositories.BookRepository;
import com.codingdojo.BooksProject.models.Book;
@Service
public class BookService {
 // adding the book repository as a dependency
	private final BookRepository bookRepository;
 
 public BookService(BookRepository bookRepository) {
     this.bookRepository = bookRepository;
 }
 // returns all the books
 public List<Book> allBooks() {
     return bookRepository.findAll();
 }
 // creates a book
 public Book createBook(Book b) {
     return bookRepository.save(b);
 }
 // retrieves a book
 public Book findBook(Long id) {
     Optional<Book> optionalBook = bookRepository.findById(id);
     if(optionalBook.isPresent()) {
         return optionalBook.get();
     } else {
         return null;
     }
 }
public Book updateBook(Long id, String title, String desc, String lang, Integer numOfPages) {
	Optional<Book> optionalBook = bookRepository.findById(id);
	if(optionalBook.isPresent()) {
		Book bb = optionalBook.get();
	bb.setTitle(title);
	bb.setDescription(desc);
	bb.setLanguage(lang);
	bb.setNumberOfPages(numOfPages);
	return bookRepository.save(bb);}
	else {
	return null;
}}
public void deleteBook(Long id) {
	// TODO Auto-generated method stub
	Optional<Book> optionalBook = bookRepository.findById(id);
	if(optionalBook.isPresent()) {
		Book bb = optionalBook.get();
		bookRepository.delete(bb);
		
	}
	}
}
