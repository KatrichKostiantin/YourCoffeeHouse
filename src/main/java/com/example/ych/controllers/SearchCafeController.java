package com.example.ych.controllers;

import com.example.ych.enteties.CafeEntity;
import com.example.ych.repositories.CafeRepository;
import com.example.ych.utils.SearchCafe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.geo.Distance;
import org.springframework.data.geo.Metrics;
import org.springframework.data.geo.Point;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;
import java.util.Arrays;
import java.util.List;

@Controller
public class SearchCafeController {
    @Autowired
    private CafeRepository cafeRepository;

    @GetMapping("/search")
    public String getAll(Model model) {
        model.addAttribute("allCard", cafeRepository.getAllCafes());
        model.addAttribute("searchCafeForm", new SearchCafe(0, 24));
        return "search";
    }

    @PostMapping("/search")
    public String addUser(@ModelAttribute("searchCafeForm") @Valid SearchCafe searchCafe, BindingResult bindingResult, Model model) {
        System.out.println(searchCafe.getDistance());
        System.out.println(searchCafe.getPrice());
        System.out.println(searchCafe.getLocation());
        System.out.println(Arrays.toString(searchCafe.getAttributes()));
        Criteria criteria = Criteria
                .where("openHours").lte(searchCafe.getOpenHours())
                .and("closeHours").gte(searchCafe.getCloseHours());
        if (!searchCafe.getPrice().equals("all"))
            criteria.and("price").is(searchCafe.getPrice());
        if (searchCafe.getAttributes().length != 0)
            criteria.and("attributes").all(searchCafe.getAttributes());
        if (searchCafe.getDistance() != 0) {
            String[] point = searchCafe.getLocation().split(",");
            System.out.println(point[0] +", " + point[1]);
        criteria = criteria.and("legacy")
                    .near(new Point(Double.parseDouble(point[0]), Double.parseDouble(point[1])))
                    .maxDistance(searchCafe.getDistance() / 90);
        }
        System.out.println(criteria);
        List<CafeEntity> list = cafeRepository.getAllCafesByCriteria(criteria);

        model.addAttribute("allCard", list);
        model.addAttribute("searchCafeForm", searchCafe);
        return null;
    }
}
