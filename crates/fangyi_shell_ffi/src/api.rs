use fangyi_shell_ssh;

pub struct FangyiShellSdk {
    pub sqlite_instance: i32,
}

pub fn create_instance() -> FangyiShellSdk {
    FangyiShellSdk {
        sqlite_instance: 12,
    }
}

pub fn test(sdk: FangyiShellSdk) -> i32 {
    return sdk.sqlite_instance + fangyi_shell_ssh::test_fn()
}