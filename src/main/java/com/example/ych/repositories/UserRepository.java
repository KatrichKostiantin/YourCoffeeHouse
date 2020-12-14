package com.example.ych.repositories;

import com.example.ych.enteties.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<UserEntity, Integer> {
    UserEntity findClientEntityById(Integer id);

    UserEntity findByUsername(String username);
}
