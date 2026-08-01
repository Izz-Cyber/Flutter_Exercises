import 'Bace_Class.dart';

class Economycar extends Vehicle {
  Economycar(String brand, double pricePerDay) : super(brand, pricePerDay);

  @override
  double calculateRent(int days) {
    double total = days * pricePerDay;

    if (days > 3) {
      total *=  0.9;
    }
    return total;
  }
}
