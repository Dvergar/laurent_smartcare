import 'dart:async';

import 'package:grpc/grpc.dart';

import '../proto_generated/temp.pb.dart';
import '../proto_generated/temp.pbgrpc.dart';

class PingPongService extends PingPongServiceBase {
  @override
  Future<Pong> doPing(ServiceCall call, Ping request) async {
    return new Pong()..message = 'Pong to ${request.name}!';
  }

  @override
  Future<LastDayTemps> getLastDayTemps(ServiceCall call, Empty request) async {
    return new LastDayTemps()..datas.addAll([37,36,35,35,35,36,38,35,37,38,37,38,39,39,39,38,38,37,38,37,36,36,37,36]);
  }
}

Future<void> main(List<String> args) async {
  final server = new Server([new PingPongService()]);
  await server.serve(port: 10000);
  print('Server listening on port ${server.port}...');
}