class Car {
  String name;
  String model;

  Car(this.name, this.model);

  // interface
  void startTheCar() {
    _startDiaMeter();
    _startTheEngine();
    _connectTheController();
    _connectWithHeadlight();
    _connectWithWheel();
  }

  // implementation
  void _startTheEngine() {}

  void _connectTheController() {}

  void _connectWithWheel() {}

  void _connectWithHeadlight() {}

  void _startDiaMeter() {}
}

void main() {
  Car bmw = Car('BMW', '7 Series');

  bmw.startTheCar();
}

/// Contract
abstract class Mobile {
  void onTouch();
  void call();
  void turnOff();

  String getSomething() {
    return 'dfdf';
  }
}

abstract class Dog {
  void bark();
}

class IPhone extends Mobile {
  @override
  void call() {
    print("skdjkfsdj o;ds");
  }

  @override
  void onTouch() {
    print('sdafkdsajlfkj');
  }

  @override
  void turnOff() {
    print('Screen turn off');
    print('sd]f][dsf] turn off');
  }
}

class Samsung implements Mobile, Dog {
  @override
  void call() {
    // TODO: implement call
  }

  @override
  void onTouch() {
    _runXyZ();
    print('dfdjsf');
  }

  void _runXyZ() {
    print('sfdknsdfjk');
  }

  @override
  void turnOff() {
    // TODO: implement turnOff
  }

  @override
  void bark() {
    // TODO: implement bark
  }

  @override
  String getSomething() {
    return 'sdfds';
  }
}

class XYZ implements Car {
  @override
  String model;

  @override
  String name;

  @override
  void _connectTheController() {
    // TODO: implement _connectTheController
  }

  @override
  void _connectWithHeadlight() {
    // TODO: implement _connectWithHeadlight
  }

  @override
  void _connectWithWheel() {
    // TODO: implement _connectWithWheel
  }

  @override
  void _startDiaMeter() {
    // TODO: implement _startDiaMeter
  }

  @override
  void _startTheEngine() {
    // TODO: implement _startTheEngine
  }

  @override
  void startTheCar() {
    // TODO: implement startTheCar
  }
}
