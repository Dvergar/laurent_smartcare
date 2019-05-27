///
//  Generated code. Do not modify.
//  source: temp.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core show String, Map, ArgumentError, dynamic;
import 'temp.pb.dart';
import 'temp.pbjson.dart';

export 'temp.pb.dart';

abstract class GreeterServiceBase extends $pb.GeneratedService {
  $async.Future<HelloReply> sayHello($pb.ServerContext ctx, HelloRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'SayHello': return HelloRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'SayHello': return this.sayHello(ctx, request);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => GreeterServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => GreeterServiceBase$messageJson;
}

