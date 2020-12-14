package com.example.ych;

public enum RolesEnum {
    admin(1, "ADMIN"),
    user(2, "USER");

    private RolesEnum(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public Integer id;
    public String name;
}
