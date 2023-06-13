// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.77.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';

import 'dart:ffi' as ffi;

abstract class FangyiShellFfi {
  Future<FangyiShellSdk> createInstance({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kCreateInstanceConstMeta;

  Future<int> test({required FangyiShellSdk sdk, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kTestConstMeta;
}

class FangyiShellSdk {
  final int sqliteInstance;

  const FangyiShellSdk({
    required this.sqliteInstance,
  });
}

class FangyiShellFfiImpl implements FangyiShellFfi {
  final FangyiShellFfiPlatform _platform;
  factory FangyiShellFfiImpl(ExternalLibrary dylib) =>
      FangyiShellFfiImpl.raw(FangyiShellFfiPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory FangyiShellFfiImpl.wasm(FutureOr<WasmModule> module) =>
      FangyiShellFfiImpl(module as ExternalLibrary);
  FangyiShellFfiImpl.raw(this._platform);
  Future<FangyiShellSdk> createInstance({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_create_instance(port_),
      parseSuccessData: _wire2api_fangyi_shell_sdk,
      constMeta: kCreateInstanceConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kCreateInstanceConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "create_instance",
        argNames: [],
      );

  Future<int> test({required FangyiShellSdk sdk, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_fangyi_shell_sdk(sdk);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_test(port_, arg0),
      parseSuccessData: _wire2api_i32,
      constMeta: kTestConstMeta,
      argValues: [sdk],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "test",
        argNames: ["sdk"],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  FangyiShellSdk _wire2api_fangyi_shell_sdk(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 1)
      throw Exception('unexpected arr length: expect 1 but see ${arr.length}');
    return FangyiShellSdk(
      sqliteInstance: _wire2api_i32(arr[0]),
    );
  }

  int _wire2api_i32(dynamic raw) {
    return raw as int;
  }
}

// Section: api2wire

@protected
int api2wire_i32(int raw) {
  return raw;
}
// Section: finalizer

class FangyiShellFfiPlatform extends FlutterRustBridgeBase<FangyiShellFfiWire> {
  FangyiShellFfiPlatform(ffi.DynamicLibrary dylib)
      : super(FangyiShellFfiWire(dylib));

// Section: api2wire

  @protected
  ffi.Pointer<wire_FangyiShellSdk> api2wire_box_autoadd_fangyi_shell_sdk(
      FangyiShellSdk raw) {
    final ptr = inner.new_box_autoadd_fangyi_shell_sdk_0();
    _api_fill_to_wire_fangyi_shell_sdk(raw, ptr.ref);
    return ptr;
  }

// Section: finalizer

// Section: api_fill_to_wire

  void _api_fill_to_wire_box_autoadd_fangyi_shell_sdk(
      FangyiShellSdk apiObj, ffi.Pointer<wire_FangyiShellSdk> wireObj) {
    _api_fill_to_wire_fangyi_shell_sdk(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_fangyi_shell_sdk(
      FangyiShellSdk apiObj, wire_FangyiShellSdk wireObj) {
    wireObj.sqlite_instance = api2wire_i32(apiObj.sqliteInstance);
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint

/// generated by flutter_rust_bridge
class FangyiShellFfiWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  FangyiShellFfiWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  FangyiShellFfiWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>(
          'get_dart_object');
  late final _get_dart_object =
      _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>(
          'drop_dart_object');
  late final _drop_dart_object =
      _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr =
      _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>(
          'new_dart_opaque');
  late final _new_dart_opaque =
      _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr =
      _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>(
          'init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr
      .asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  void wire_create_instance(
    int port_,
  ) {
    return _wire_create_instance(
      port_,
    );
  }

  late final _wire_create_instancePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_create_instance');
  late final _wire_create_instance =
      _wire_create_instancePtr.asFunction<void Function(int)>();

  void wire_test(
    int port_,
    ffi.Pointer<wire_FangyiShellSdk> sdk,
  ) {
    return _wire_test(
      port_,
      sdk,
    );
  }

  late final _wire_testPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Pointer<wire_FangyiShellSdk>)>>('wire_test');
  late final _wire_test = _wire_testPtr
      .asFunction<void Function(int, ffi.Pointer<wire_FangyiShellSdk>)>();

  ffi.Pointer<wire_FangyiShellSdk> new_box_autoadd_fangyi_shell_sdk_0() {
    return _new_box_autoadd_fangyi_shell_sdk_0();
  }

  late final _new_box_autoadd_fangyi_shell_sdk_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_FangyiShellSdk> Function()>>(
          'new_box_autoadd_fangyi_shell_sdk_0');
  late final _new_box_autoadd_fangyi_shell_sdk_0 =
      _new_box_autoadd_fangyi_shell_sdk_0Ptr
          .asFunction<ffi.Pointer<wire_FangyiShellSdk> Function()>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>(
          'free_WireSyncReturn');
  late final _free_WireSyncReturn =
      _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();
}

final class _Dart_Handle extends ffi.Opaque {}

final class wire_FangyiShellSdk extends ffi.Struct {
  @ffi.Int32()
  external int sqlite_instance;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<
        ffi.Bool Function(DartPort port_id, ffi.Pointer<ffi.Void> message)>>;
typedef DartPort = ffi.Int64;
