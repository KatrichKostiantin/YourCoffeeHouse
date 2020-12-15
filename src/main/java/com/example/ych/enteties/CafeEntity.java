package com.example.ych.enteties;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.bson.types.ObjectId;
import org.springframework.data.mongodb.core.geo.GeoJsonPoint;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.MongoId;

import javax.persistence.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Document(collection = "ych_coffee_house")
public class CafeEntity {
    @MongoId
    private ObjectId id;

    private String name;
    private String price;
    private int openHours;
    private int closeHours;
    private String description;
    private String imageUrl;
    private GeoJsonPoint location;
}
