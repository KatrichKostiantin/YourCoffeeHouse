package com.example.ych.utils;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

@Getter
@Setter
public class SearchCafe {
    private String price;
    private int openHours;
    private int closeHours;
    private String location;
    private double distance;
    private String[] attributes;

    public SearchCafe(int openHours, int closeHours) {
        this.openHours = openHours;
        this.closeHours = closeHours;
        this.attributes = new String[]{};
    }
}
