// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: unused_local_variable, avoid_print
import 'dart:io';

import 'package:car_rental/car.dart';
import 'package:car_rental/minivan.dart';
import 'package:car_rental/sedan.dart';

void login() {
  print("""------------------------------
      login
      ------------------------------""");
  print('please enter your email:');
  String email = stdin.readLineSync()!;
  print('please enter your password:');
  String password = stdin.readLineSync()!;
}

void welcome() {
  print(
      """   _________    ____       ____  _______   ___________    __       _______  _____________________  ___
  / ____/   |  / __ \     / __ \/ ____/ | / /_  __/   |  / /      / ___/\ \/ / ___/_  __/ ____/  |/  /
 / /   / /| | / /_/ /    / /_/ / __/ /  |/ / / / / /| | / /       \__ \  \  /\__ \ / / / __/ / /|_/ / 
/ /___/ ___ |/ _, _/    / _, _/ /___/ /|  / / / / ___ |/ /___    ___/ /  / /___/ // / / /___/ /  / /  
\____/_/  |_/_/ |_|    /_/ |_/_____/_/ |_/ /_/ /_/  |_/_____/   /____/  /_//____//_/ /_____/_/  /_/  copied""");
}

void main(List<String> args) {
  welcome();
  login();
  Car car = Car(
      engine: 'engine',
      battery: 'battery',
      fuelTank: 'fuelTank',
      name: 'name',
      year: 0,
      motor: 'motor',
      power: 'power');
  car.availableCars();
  Sedan sedan = Sedan(
      engine: 'good',
      battery: 'very good',
      fuelTank: '222',
      name: 'sedan',
      year: 2011,
      motor: '222',
      power: '20kw',
      typeOfCars: 'honda ,nissan');

  print('Choose a Car from the above options:');
  String carChosen = stdin.readLineSync()!;
  if (carChosen == '1') {
    print('you have chosen sedan 2011..');
    print("""Specifications:
     fual tank :${sedan.fuelTank},
     power :${sedan.power},
     motor : ${sedan.motor},
     battery:${sedan.battery},
""");
  } else if (carChosen == '2') {
    Minivan minivan = Minivan(
        engine: 'not bad',
        battery: '333',
        fuelTank: '777',
        name: 'minivan',
        year: 2015,
        motor: '998',
        power: '111kw',
        numberOfPassengers: 6);
    print('you have chosen Hyundai 2015.');
    print("""Specifications:
     fual tank :${minivan.fuelTank},
     power :${minivan.power},
     motor : ${minivan.motor},
     battery:${minivan.battery},
""");
  }
  sedan.rent();
  sedan.showinformation();
}
