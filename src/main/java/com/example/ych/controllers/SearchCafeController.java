package com.example.ych.controllers;

import com.example.ych.enteties.CafeEntity;
import com.example.ych.repositories.CafeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class SearchCafeController {
    @Autowired
    private CafeRepository cafeRepository;

    @GetMapping("/search")
    public String getAll(Model model){
        List<CafeEntity> list = cafeRepository.findAll();
        list.forEach(System.out::println);
        model.addAttribute("allCard", cafeRepository.findAll());
        return "search";
    }
}
