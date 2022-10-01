// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_print
import 'package:car_rental/car.dart';

class Sedan extends Car {
  String? typeOfCars;

  Sedan(
      {required String engine,
      required String battery,
      required String fuelTank,
      required String name,
      required int year,
      required String motor,
      required String power,
      required String typeOfCars})
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
        'The most common car type is the sedan. A sedan is a four-door car type with a traditional trunk. The difference between a hatchback and a sedan is that the rear luggage compartment door does not include the rear window and the door hinges are installed under the window.');
    return super.describtion();
  }
}
