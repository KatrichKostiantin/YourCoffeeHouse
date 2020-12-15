package com.example.ych.repositories;

import com.example.ych.enteties.CafeEntity;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.Optional;

public interface CafeRepository extends MongoRepository<CafeEntity, String> {
    public Optional<CafeEntity> findById(String id);
}
