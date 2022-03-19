void main() {
  Car mydrive = new Car(drive: fastDrive);

  print(mydrive.drive);
  //
  mydrive.drive();
}

class Car {
  Car({this.drive});

  Function drive;
}

void slowDrive() {
  print('Slow driving');
}

void fastDrive() {
  print("drive super fast");
}
