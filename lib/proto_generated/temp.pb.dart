///
//  Generated code. Do not modify.
//  source: temp.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Empty', package: const $pb.PackageName('pingpong'))
    ..hasRequiredFields = false
  ;

  Empty() : super();
  Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Empty clone() => Empty()..mergeFromMessage(this);
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty));
  $pb.BuilderInfo get info_ => _i;
  static Empty create() => Empty();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  static Empty getDefault() => _defaultInstance ??= create()..freeze();
  static Empty _defaultInstance;
}

class Ping extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Ping', package: const $pb.PackageName('pingpong'))
    ..aOS(1, 'name')
    ..hasRequiredFields = false
  ;

  Ping() : super();
  Ping.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Ping.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Ping clone() => Ping()..mergeFromMessage(this);
  Ping copyWith(void Function(Ping) updates) => super.copyWith((message) => updates(message as Ping));
  $pb.BuilderInfo get info_ => _i;
  static Ping create() => Ping();
  Ping createEmptyInstance() => create();
  static $pb.PbList<Ping> createRepeated() => $pb.PbList<Ping>();
  static Ping getDefault() => _defaultInstance ??= create()..freeze();
  static Ping _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) { $_setString(0, v); }
  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);
}

class Pong extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Pong', package: const $pb.PackageName('pingpong'))
    ..aOS(1, 'message')
    ..hasRequiredFields = false
  ;

  Pong() : super();
  Pong.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Pong.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Pong clone() => Pong()..mergeFromMessage(this);
  Pong copyWith(void Function(Pong) updates) => super.copyWith((message) => updates(message as Pong));
  $pb.BuilderInfo get info_ => _i;
  static Pong create() => Pong();
  Pong createEmptyInstance() => create();
  static $pb.PbList<Pong> createRepeated() => $pb.PbList<Pong>();
  static Pong getDefault() => _defaultInstance ??= create()..freeze();
  static Pong _defaultInstance;

  $core.String get message => $_getS(0, '');
  set message($core.String v) { $_setString(0, v); }
  $core.bool hasMessage() => $_has(0);
  void clearMessage() => clearField(1);
}

class LastDayTemps extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LastDayTemps', package: const $pb.PackageName('pingpong'))
    ..p<$core.int>(24, 'datas', $pb.PbFieldType.P3)
    ..hasRequiredFields = false
  ;

  LastDayTemps() : super();
  LastDayTemps.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  LastDayTemps.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  LastDayTemps clone() => LastDayTemps()..mergeFromMessage(this);
  LastDayTemps copyWith(void Function(LastDayTemps) updates) => super.copyWith((message) => updates(message as LastDayTemps));
  $pb.BuilderInfo get info_ => _i;
  static LastDayTemps create() => LastDayTemps();
  LastDayTemps createEmptyInstance() => create();
  static $pb.PbList<LastDayTemps> createRepeated() => $pb.PbList<LastDayTemps>();
  static LastDayTemps getDefault() => _defaultInstance ??= create()..freeze();
  static LastDayTemps _defaultInstance;

  $core.List<$core.int> get datas => $_getList(0);
}

