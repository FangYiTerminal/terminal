use super::*;
// Section: wire functions

#[no_mangle]
pub extern "C" fn wire_create_instance(port_: i64) {
    wire_create_instance_impl(port_)
}

#[no_mangle]
pub extern "C" fn wire_test(port_: i64, sdk: *mut wire_FangyiShellSdk) {
    wire_test_impl(port_, sdk)
}

// Section: allocate functions

#[no_mangle]
pub extern "C" fn new_box_autoadd_fangyi_shell_sdk_0() -> *mut wire_FangyiShellSdk {
    support::new_leak_box_ptr(wire_FangyiShellSdk::new_with_null_ptr())
}

// Section: related functions

// Section: impl Wire2Api

impl Wire2Api<FangyiShellSdk> for *mut wire_FangyiShellSdk {
    fn wire2api(self) -> FangyiShellSdk {
        let wrap = unsafe { support::box_from_leak_ptr(self) };
        Wire2Api::<FangyiShellSdk>::wire2api(*wrap).into()
    }
}
impl Wire2Api<FangyiShellSdk> for wire_FangyiShellSdk {
    fn wire2api(self) -> FangyiShellSdk {
        FangyiShellSdk {
            sqlite_instance: self.sqlite_instance.wire2api(),
        }
    }
}

// Section: wire structs

#[repr(C)]
#[derive(Clone)]
pub struct wire_FangyiShellSdk {
    sqlite_instance: i32,
}

// Section: impl NewWithNullPtr

pub trait NewWithNullPtr {
    fn new_with_null_ptr() -> Self;
}

impl<T> NewWithNullPtr for *mut T {
    fn new_with_null_ptr() -> Self {
        std::ptr::null_mut()
    }
}

impl NewWithNullPtr for wire_FangyiShellSdk {
    fn new_with_null_ptr() -> Self {
        Self {
            sqlite_instance: Default::default(),
        }
    }
}

impl Default for wire_FangyiShellSdk {
    fn default() -> Self {
        Self::new_with_null_ptr()
    }
}

// Section: sync execution mode utility

#[no_mangle]
pub extern "C" fn free_WireSyncReturn(ptr: support::WireSyncReturn) {
    unsafe {
        let _ = support::box_from_leak_ptr(ptr);
    };
}
