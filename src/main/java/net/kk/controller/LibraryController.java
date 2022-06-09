package net.kk.controller;

import java.util.List;
import net.kk.dao.LibraryDAO;
import net.kk.model.Library;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LibraryController {
    @Autowired
    private LibraryDAO dao;

    @RequestMapping(value = { "/", "/index" })
    public String home(Model model) {
        List<Library> list = dao.getListOfBooks();
        model.addAttribute("list", list);
        return "index";
    }

    @RequestMapping("/bookform")
    public String showForm(Model model) {
        model.addAttribute("book", new Library());
        return "add_book";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addBook(@ModelAttribute("book") Library library) {
        dao.insert(library);
        return "redirect:/index";
    }

    @RequestMapping(value = "editbookform/{id}")
    public String showEditForm(@PathVariable("id") Integer id, Model model) {
        Library library = dao.getBookById(id);
        model.addAttribute("book", library);
        return "update_book";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String updateBook(@ModelAttribute("book") Library library) {
        dao.update(library);
        return "redirect:/index";
    }

    @RequestMapping(value = "deletebook/{id}")
    public String deleteBook(@PathVariable("id") Integer id, Model model) {
        dao.delete(id);
        return "redirect:/index";
    }
}
