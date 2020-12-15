package com.example.ych.enteties;

import org.springframework.data.mongodb.core.geo.GeoJsonPoint;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.MongoId;

import javax.persistence.*;

@Document(collection = "ych_coffee_house")
public class CafeEntity {
    @Id
    private int id;

    private String name;
    private int open_hours;
    private int close_hours;
    private String description;
    private GeoJsonPoint location;

}
