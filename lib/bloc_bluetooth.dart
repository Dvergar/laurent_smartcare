import 'dart:async';
import 'package:flutter_blue/flutter_blue.dart';

class BlocBluetooth {
  List<String> devices = List();
  StreamSubscription<ScanResult> sub;
  final streamController = StreamController(); // create a StreamController

  Stream get stream =>
      streamController.stream; // create a getter for our stream

  BlocBluetooth() {
    FlutterBlue flutterBlue = FlutterBlue.instance;

    sub = flutterBlue
        .scan(
      timeout: const Duration(seconds: 30),
    )
        .listen((data) {
      print("plop");
      !devices.contains(data.device.id.toString())
          ? devices.add(data.device.id.toString())
          : null;
      print("devices : $devices");

      streamController.sink.add(devices);
    });
  }

  void dispose() {
    sub.cancel();
    streamController.close(); // close our StreamController
  }
}
