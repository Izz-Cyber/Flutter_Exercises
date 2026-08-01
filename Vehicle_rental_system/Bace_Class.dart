import 'EconomyCar.dart';
import 'LuxuryCar.dart';

void main() {
  List<Vehicle> vehicles = [Economycar("Toyota", 20), Luxurycar("BMW", 100)];

  for (var vehicle in vehicles) {
    double cost = vehicle.calculateRent(4);

    print("Car: ${vehicle.brand}");
    print("Cost: $cost");
  }
}

class Vehicle {
  String brand;
  double _pricePerDay;

  Vehicle(this.brand, this._pricePerDay);

  set pricePerDay(double price) {
    if (price >= 10.0) {
      _pricePerDay = price;
    } else {
      print("Error! It can't be less then 10.0\$...");
    }
  }

  double get pricePerDay {
    return _pricePerDay;
  }

  double calculateRent(int days) {
    return days * _pricePerDay;
  }
}
