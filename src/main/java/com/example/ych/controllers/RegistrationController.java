package com.example.ych.controllers;

import com.example.ych.enteties.UserEntity;
import com.example.ych.services.UserService;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
public class RegistrationController {

    @Autowired
    private UserService userService;

        @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userForm", new UserEntity());

        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(@ModelAttribute("userForm") @Valid UserEntity userForm, BindingResult bindingResult, Model model) {

        if (bindingResult.hasErrors()) {
            return "registration";
        }
        if(userForm.getPassword().length() <= 8) {
            model.addAttribute("info", "Password must be more than 8 characters");
            return "registration";
        }

        if (!userForm.getPassword().equals(userForm.getPasswordConfirm())){
            model.addAttribute("info", "Passwords do not match");
            return "registration";
        }
        if (!userService.saveUser(userForm)){
            model.addAttribute("info", "A user with the same name already exists");
            return "registration";
        }

        return "redirect:/login";
    }
}