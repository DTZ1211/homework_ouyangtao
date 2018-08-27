package dao;

import entity.Car;

import java.util.ArrayList;
import java.util.List;

public class CarInMemorydao implements Cardao {

    private static List<Car> cardao = new ArrayList<>();

    static {
        Car c1 = new Car(1,"suv","长城","银色",28.5,"东风汽车");
        Car c2 = new Car(2,"mpv","大众","粽色",18.3,"西风汽车");
        Car c3 = new Car(3,"轿车","奥迪","白色",31.3,"南风汽车");
        Car c4 = new Car(4,"suv","jeep","黑色",37.8,"北风汽车");
        Car c5 = new Car(5,"面包车","五菱宏光","银色",14.6,"东风汽车");

        cardao.add(c1);
        cardao.add(c2);
        cardao.add(c3);
        cardao.add(c4);
        cardao.add(c5);
    }

    @Override
    public List<Car> listAll() {
        return cardao;
    }

    @Override
    public Car getCarById(int id) {
        for(Car car:cardao){
            if(car.getId() == id){
                return car;
            }
        }
        return null;
    }

    @Override
    public List<Car> getCarByNames(String name) {

        return null;
    }

    @Override
    public boolean update(Car car) {
        for (Car newcar:cardao){
            if(newcar.getId() == car.getId()){
                newcar.setId(car.getId());
                newcar.setType(car.getType());
                newcar.setBrand(car.getBrand());
                newcar.setColor(car.getColor());
                newcar.setPrice(car.getPrice());
                newcar.setManufactor(car.getManufactor());
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        for (Car car:cardao){
            if (car.getId() == id){
                return cardao.remove(car);
            }
        }
        return false;
    }

    @Override
    public Car add(Car car) {
        if(cardao.add(car)){
            return car;
        }
        return null;
    }

    @Override
    public Car search(String sth) {

        return null;
    }
}
