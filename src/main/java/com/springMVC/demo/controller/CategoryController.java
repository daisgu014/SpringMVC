package com.springMVC.demo.controller;


import com.springMVC.demo.models.Category;
import com.springMVC.demo.repositories.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(path="categories")
//http:localhost:8083/categories
public class CategoryController {
    @Autowired // Inject 'categoryRepository' -Dependency Injection
    private CategoryRepository categoryRepository;
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String getAllCategories(ModelMap modelMap) {
        //data sent to jsp ModelMap
       // modelMap.addAttribute("name", "Dai");
        Iterable<Category> categories = categoryRepository.findAll();
        modelMap.addAttribute("categories", categories);
        System.out.println("Haha");
        return "categoryList";
    }
}
