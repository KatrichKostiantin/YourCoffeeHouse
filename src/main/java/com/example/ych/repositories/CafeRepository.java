package com.example.ych.repositories;

import com.example.ych.enteties.CafeEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.index.GeospatialIndex;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CafeRepository {
    private final MongoTemplate mongoTemplate;

    @Autowired
    public CafeRepository(MongoTemplate mongoTemplate) {
        this.mongoTemplate = mongoTemplate;
    }

    public CafeEntity saveCafe(CafeEntity person) {
        mongoTemplate.save(person);
        return person;
    }

    public List<CafeEntity> getAllCafes() {
        return mongoTemplate.findAll(CafeEntity.class);
    }

    public List<CafeEntity> getAllCafesByCriteria(Criteria criteria) {
        Query query = new Query();
        query.addCriteria(criteria);
        List<CafeEntity> list =  mongoTemplate.find(query, CafeEntity.class);
        return list;
    }
}
