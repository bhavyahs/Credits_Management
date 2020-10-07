package com.controller;

import com.dao.OperationsDAO;
import com.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;


@Controller
public class HomeController {

    @Autowired
    private OperationsDAO operationsDAO;

    @GetMapping("/")
    public ModelAndView home() {

        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");
        return mv;
    }

    @GetMapping("/home")
    public ModelAndView loanHome() {

        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");
        return mv;
    }

    @PostMapping("/user")
    public ModelAndView loadUser(ModelAndView model) {

        System.out.println("Inside /user");
        List<User> users = operationsDAO.getAllUsers();
        model.addObject("users", users);
        model.setViewName("user");
        return model;

    }

    @PostMapping("/transferCredit")
    public ModelAndView transferCredit(ModelAndView mv, ModelMap model, User user){

        model.addAttribute("credit", user.getCreditAmount());
        model.addAttribute("fullName", user.getName());

        System.out.println("Inside /transferCredit");
        List<User> users = operationsDAO.getAllUsers();
        users.removeIf(usr -> usr.getName().equalsIgnoreCase(user.getName()));
        mv.addObject("toUsers", users);
        mv.setViewName("transfer");
        return mv;
    }

    @GetMapping("/submitCredit")
    public String send(ModelMap model, User user){

        operationsDAO.updateTransaction(user.getName(), user.getToUser(), user.getCreditToSend());
        operationsDAO.updateFromUser(user.getName(), user.getCreditToSend());
        operationsDAO.updateToUser(user.getToUser(),user.getCreditToSend());

        List<User> usr = operationsDAO.getUser(user.getName());
        for (User u: usr
             ) {
            long balance =  u.getCurrent_credit();
            System.out.println("balance" + balance);
            model.addAttribute("balance", balance);
        }

        return "success";
    }

}
