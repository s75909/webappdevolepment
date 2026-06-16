package com.Model;

public class Car {
    protected int id;
    protected String brand;
    protected String model;
    protected int cylinder;
    protected double price;

    public Car() {
    }

    // Constructor for creating a NEW car (no ID)
    public Car(String brand, String model, int cylinder, double price) {
        this.brand = brand;
        this.model = model;
        this.cylinder = cylinder;
        this.price = price;
    }

    // Constructor for updating/fetching an EXISTING car (with ID)
    public Car(int id, String brand, String model, int cylinder, double price) {
        this.id = id;
        this.brand = brand;
        this.model = model;
        this.cylinder = cylinder;
        this.price = price;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getBrand() { return brand; }
    public void setBrand(String brand) { this.brand = brand; }

    public String getModel() { return model; }
    public void setModel(String model) { this.model = model; }

    public int getCylinder() { return cylinder; }
    public void setCylinder(int cylinder) { this.cylinder = cylinder; }

    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }
}