package com.example.ych.enteties;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.bson.types.ObjectId;
import org.springframework.data.mongodb.core.geo.GeoJsonPoint;
import org.springframework.data.mongodb.core.index.GeoSpatialIndexType;
import org.springframework.data.mongodb.core.index.GeoSpatialIndexed;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.MongoId;

@Getter
@Setter
@NoArgsConstructor
@Document(collection = "ych_coffee_house")
public class CafeEntity {
    @MongoId
    private ObjectId id;

    private String name;
    private String price;
    private int openHours;
    private int closeHours;
    private String description;
    private String[] attributes;
    private String imageUrl;

    @GeoSpatialIndexed(type = GeoSpatialIndexType.GEO_2D)
    private double[] legacy;

    public String getAttributesStr() {
        StringBuilder str = new StringBuilder();
        for (String attribute : attributes) {
            str.append(attribute).append(", ");
        }
        str.delete(str.length()-2, str.length());
        return str.toString();
    }
}
