package com.example.ych.repositories;

import com.example.ych.enteties.CafeEntity;
import org.springframework.data.geo.Distance;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.awt.*;
import java.util.List;
import java.util.Optional;

public interface CafeRepository extends MongoRepository<CafeEntity, String> {
    public Optional<CafeEntity> findById(String id);
    public List<CafeEntity> findAll();
    public List<CafeEntity> findByLocationNear(Point point, Distance distance);
}
