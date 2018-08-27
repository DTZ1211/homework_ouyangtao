package dao;

import entity.Car;

import java.util.List;

public interface Cardao {
    List<Car> listAll();
    Car getCarById(int id);
    List<Car> getCarByNames(String name);
    boolean update(Car car);
    boolean delete(int id);
    Car add(Car car);
    Car search(String sth);
}
