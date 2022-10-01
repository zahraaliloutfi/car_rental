import 'package:car_rental/car.dart';

class Minivan extends Car {
  int? numberOfPassengers;

  Minivan(
      {required String engine,
      required String battery,
      required String fuelTank,
      required String name,
      required int year,
      required String motor,
      required String power,
      required int numberOfPassengers})
      : super(
            engine: engine,
            battery: battery,
            fuelTank: fuelTank,
            name: name,
            year: year,
            motor: motor,
            power: power);
  @override
  describtion() {
    print(
        'A crossover is often confused with an SUV. A crossover often comes as two-wheel drive but can also come with 4-wheel drive. It is basically an off-road car chassis but built more for city traffic.');
    return super.describtion();
  }
}
