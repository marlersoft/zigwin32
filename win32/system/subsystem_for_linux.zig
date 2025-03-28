//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (1)
//--------------------------------------------------------------------------------
pub const WSL_DISTRIBUTION_FLAGS = packed struct(u32) {
    ENABLE_INTEROP: u1 = 0,
    APPEND_NT_PATH: u1 = 0,
    ENABLE_DRIVE_MOUNTING: u1 = 0,
    _3: u1 = 0,
    _4: u1 = 0,
    _5: u1 = 0,
    _6: u1 = 0,
    _7: u1 = 0,
    _8: u1 = 0,
    _9: u1 = 0,
    _10: u1 = 0,
    _11: u1 = 0,
    _12: u1 = 0,
    _13: u1 = 0,
    _14: u1 = 0,
    _15: u1 = 0,
    _16: u1 = 0,
    _17: u1 = 0,
    _18: u1 = 0,
    _19: u1 = 0,
    _20: u1 = 0,
    _21: u1 = 0,
    _22: u1 = 0,
    _23: u1 = 0,
    _24: u1 = 0,
    _25: u1 = 0,
    _26: u1 = 0,
    _27: u1 = 0,
    _28: u1 = 0,
    _29: u1 = 0,
    _30: u1 = 0,
    _31: u1 = 0,
};
pub const WSL_DISTRIBUTION_FLAGS_NONE = WSL_DISTRIBUTION_FLAGS{ };
pub const WSL_DISTRIBUTION_FLAGS_ENABLE_INTEROP = WSL_DISTRIBUTION_FLAGS{ .ENABLE_INTEROP = 1 };
pub const WSL_DISTRIBUTION_FLAGS_APPEND_NT_PATH = WSL_DISTRIBUTION_FLAGS{ .APPEND_NT_PATH = 1 };
pub const WSL_DISTRIBUTION_FLAGS_ENABLE_DRIVE_MOUNTING = WSL_DISTRIBUTION_FLAGS{ .ENABLE_DRIVE_MOUNTING = 1 };


//--------------------------------------------------------------------------------
// Section: Functions (7)
//--------------------------------------------------------------------------------
pub extern "api-ms-win-wsl-api-l1-1-0" fn WslIsDistributionRegistered(
    distributionName: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "api-ms-win-wsl-api-l1-1-0" fn WslRegisterDistribution(
    distributionName: ?[*:0]const u16,
    tarGzFilename: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "api-ms-win-wsl-api-l1-1-0" fn WslUnregisterDistribution(
    distributionName: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "api-ms-win-wsl-api-l1-1-0" fn WslConfigureDistribution(
    distributionName: ?[*:0]const u16,
    defaultUID: u32,
    wslDistributionFlags: WSL_DISTRIBUTION_FLAGS,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "api-ms-win-wsl-api-l1-1-0" fn WslGetDistributionConfiguration(
    distributionName: ?[*:0]const u16,
    distributionVersion: ?*u32,
    defaultUID: ?*u32,
    wslDistributionFlags: ?*WSL_DISTRIBUTION_FLAGS,
    defaultEnvironmentVariables: ?*?*?PSTR,
    defaultEnvironmentVariableCount: ?*u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "api-ms-win-wsl-api-l1-1-0" fn WslLaunchInteractive(
    distributionName: ?[*:0]const u16,
    command: ?[*:0]const u16,
    useCurrentWorkingDirectory: BOOL,
    exitCode: ?*u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "api-ms-win-wsl-api-l1-1-0" fn WslLaunch(
    distributionName: ?[*:0]const u16,
    command: ?[*:0]const u16,
    useCurrentWorkingDirectory: BOOL,
    stdIn: ?HANDLE,
    stdOut: ?HANDLE,
    stdErr: ?HANDLE,
    process: ?*?HANDLE,
) callconv(@import("std").os.windows.WINAPI) HRESULT;


//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
// Section: Imports (5)
//--------------------------------------------------------------------------------
const BOOL = @import("../foundation.zig").BOOL;
const HANDLE = @import("../foundation.zig").HANDLE;
const HRESULT = @import("../foundation.zig").HRESULT;
const PSTR = @import("../foundation.zig").PSTR;
const PWSTR = @import("../foundation.zig").PWSTR;

test {
    @setEvalBranchQuota(
        comptime @import("std").meta.declarations(@This()).len * 3
    );

    // reference all the pub declarations
    if (!@import("builtin").is_test) return;
    inline for (comptime @import("std").meta.declarations(@This())) |decl| {
        _ = @field(@This(), decl.name);
    }
}
