import 'dart:async';
import 'package:grpc/grpc.dart';
import 'proto_generated/temp.pb.dart';
import 'proto_generated/temp.pbgrpc.dart';
import 'main.dart';

class BlocTemp {
  StreamController<List<int>> streamController = StreamController();
  Stream get stream =>
      streamController.stream; // create a getter for our stream

  Future<void> update() async {
    final channel = new ClientChannel(CONST.SERVER_IP,
        port: 10000,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));
    final stub = new PingPongClient(channel);

    // TEST CONNECTION
    final name = 'Laurent';

    try {
      final response = await stub.doPing(new Ping()..name = name);
      print('Client received: ${response.message}');
    } catch (e) {
      print('Caught error: $e');
    }

    // GET TEMPERATURES
    try {
      final response = await stub.getLastDayTemps(new Empty());
      print('Client received: ${response.datas}');
      streamController.sink.add(response.datas);
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
  }

  void dispose() {
    streamController.close(); // close our StreamController
  }
}
