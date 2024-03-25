import 'package:flutter_finalproject/data/model.dart';

class DBDemo {
  final List<Model> modelDB = [
    Model(
      name: "Device 1",
      ssid: "2f961133",
      battery: 39,
    ),
    Model(
      name: "Device 2",
      ssid: "2f961133",
      battery: 70,
    ),
  ];
  List<Model> getAllModels() {
    return modelDB;
  }
}
