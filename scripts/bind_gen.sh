#!/bin/bash

flutter_rust_bridge_codegen \
    --rust-input crates/fangyi_shell_ffi/src/api.rs \
    --dart-output terminal_flutter/lib/ffi/rust_ffi.dart \
    -c terminal_flutter/ios/Runner/bridge_generated.h
    
flutter_rust_bridge_codegen \
    --rust-input crates/fangyi_shell_ffi/src/api.rs \
    --dart-output terminal_flutter/lib/ffi/rust_ffi.dart \
    -c terminal_flutter/macos/Runner/bridge_generated.h