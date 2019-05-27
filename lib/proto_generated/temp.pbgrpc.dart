///
//  Generated code. Do not modify.
//  source: temp.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;

import 'dart:core' as $core show int, String, List;

import 'temp.pb.dart';
export 'temp.pb.dart';

class PingPongClient extends $grpc.Client {
  static final _$doPing = $grpc.ClientMethod<Ping, Pong>(
      '/pingpong.PingPong/DoPing',
      (Ping value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => Pong.fromBuffer(value));
  static final _$getLastDayTemps = $grpc.ClientMethod<Empty, LastDayTemps>(
      '/pingpong.PingPong/getLastDayTemps',
      (Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => LastDayTemps.fromBuffer(value));

  PingPongClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<Pong> doPing(Ping request, {$grpc.CallOptions options}) {
    final call = $createCall(_$doPing, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<LastDayTemps> getLastDayTemps(Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getLastDayTemps, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class PingPongServiceBase extends $grpc.Service {
  $core.String get $name => 'pingpong.PingPong';

  PingPongServiceBase() {
    $addMethod($grpc.ServiceMethod<Ping, Pong>(
        'DoPing',
        doPing_Pre,
        false,
        false,
        ($core.List<$core.int> value) => Ping.fromBuffer(value),
        (Pong value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<Empty, LastDayTemps>(
        'getLastDayTemps',
        getLastDayTemps_Pre,
        false,
        false,
        ($core.List<$core.int> value) => Empty.fromBuffer(value),
        (LastDayTemps value) => value.writeToBuffer()));
  }

  $async.Future<Pong> doPing_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return doPing(call, await request);
  }

  $async.Future<LastDayTemps> getLastDayTemps_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return getLastDayTemps(call, await request);
  }

  $async.Future<Pong> doPing($grpc.ServiceCall call, Ping request);
  $async.Future<LastDayTemps> getLastDayTemps(
      $grpc.ServiceCall call, Empty request);
}
