void main() {
  Map<String, double> menu = {"m1": 50.0, "m2": 100.0, "m3": 10.0, "m4": 25.0};

  //print(menu["m1"]);

  calculateBill(
    menu,
    ["m1", "m3"],
    isDelivery: true,
    promoCode: "DART20",
    customerName: "Ali",
  );

  print("----------------------------------------");

  calculateBill(menu, ["m4", "m2"]);

}

void calculateBill(
  Map<String, double> menu,
  List<String> orderedItems, {
  bool isDelivery = false,
  String? promoCode,
  String? customerName,
}) {
  double total = 0;

  for (String item in orderedItems) {
    if (!menu.containsKey(item)) {
      print("$item is not exsit in the menu");
      continue;
    }

    total += menu[item]!;
  }

  if (promoCode == "DART20") {
    total = total * 0.8;
  }

  if (isDelivery) {
    total += 5;
  }

  customerName ??= "guest";

  print("Customer Name: $customerName");
  print("Total Invoice: \$${total.toStringAsFixed(2)}");
}
