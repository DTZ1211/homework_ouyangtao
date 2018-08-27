package entity;

public class Car {
    //编号
    private int id;
    //车型
    private String type;
    //品牌
    private String brand;
    //颜色
    private String color;
    //价格
    private double price;
    //厂商
    private String manufactor;

    public  Car(){

    }

    public Car(int id, String type, String brand, String color, double price, String manufactor) {
        this.id = id;
        this.type = type;
        this.brand = brand;
        this.color = color;
        this.price = price;
        this.manufactor = manufactor;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getManufactor() {
        return manufactor;
    }

    public void setManufactor(String manufactor) {
        this.manufactor = manufactor;
    }
}
