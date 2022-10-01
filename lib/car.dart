// ignore_for_file: avoid_print, unused_local_variable

import 'dart:io';

class Car {
  final String engine;
  final String battery;
  final String fuelTank;
  final String name;
  final int year;
  final String motor;
  final String power;
  String? nameOfPerson;
  String? carNumber;
  int? numberOfDays;
  int? priceRent;

  Car(
      {required this.engine,
      required this.battery,
      required this.fuelTank,
      required this.name,
      required this.year,
      required this.motor,
      required this.power});
  //polimerphism
  describtion() {}
  availableCars() {
    print('Please Enter your Name:');
    nameOfPerson = stdin.readLineSync()!;
    print('Please Select a Car');
    print("""Please Select a Car
    Enter '1' for sedan .
    Enter '2' for minivan .
    """);
  }

  rent() {
    print('enter car number :');
    carNumber = stdin.readLineSync()!;
    print(
        'Today\'s rent for 1000 pounds .. enter number of days you want to rent the car :');
    numberOfDays = int.parse(stdin.readLineSync()!);
    priceRent = 1000 * numberOfDays!;
    print('rental price = $rent');
  }

  showinformation() {
    print(""" Car Rental - Customer Invoice
     ------------------------------------------------------
  
     type of car :$name,
     motor : $motor,
     fual tank :$fuelTank,
     power :$power,
     car number:$carNumber,
     battery:$battery,
     number of days :$numberOfDays,
     --------------------------------------------------------
     total price :$priceRent
     """);
  }
}
