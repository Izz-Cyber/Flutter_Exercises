import 'Bace_Class.dart';

class Luxurycar extends Vehicle {
  Luxurycar(String brand, double pricePerDay) : super(brand, pricePerDay);

  @override
  double calculateRent(int days) {
    double total = days * pricePerDay;

    total += 50;

    return total;
  }
}
