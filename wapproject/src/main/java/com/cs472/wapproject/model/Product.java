package com.cs472.wapproject.model;

public class Product {

    private String name;
    private int id;
    private String description;
    private String icon;
    private int price;
    private int stock;

    public Product(){}

    public Product(String name, int id, String description, String icon, int price, int stock) {
        this.name = name;
        this.id = id;
        this.description = description;
        this.icon = icon;
        this.price = price;
        this.stock = stock;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }
}
