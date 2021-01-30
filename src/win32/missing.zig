//! Includes definitions that are currently missing from win32metadata

const win32 = @import("../win32.zig");

// The CLSCTX_ALL value is missing, see https://github.com/microsoft/win32metadata/issues/203
pub const CLSCTX_ALL = @intToEnum(win32.api.com.CLSCTX,
    @enumToInt(win32.api.com.CLSCTX_INPROC_SERVER) |
    @enumToInt(win32.api.com.CLSCTX_INPROC_HANDLER) |
    @enumToInt(win32.api.com.CLSCTX_LOCAL_SERVER) |
    @enumToInt(win32.api.com.CLSCTX_REMOTE_SERVER));

// The SetWindowLongPtr and GetWindowLongPtr variants are missing because they are 64-bit only
// See: https://github.com/microsoft/win32metadata/issues/142 (SetWindowLongPtr/GetWindowLongPtr are missing)
pub usingnamespace if (@sizeOf(isize) > 4) struct {
    pub extern "USER32" fn SetWindowLongPtrA(
        hWnd: win32.api.windows_and_messaging.HWND,
        nIndex: win32.api.windows_and_messaging.GetWindowLongPtr_nIndex,
        dwNewLong: isize,
    ) callconv(@import("std").os.windows.WINAPI) i32;

    pub extern "USER32" fn SetWindowLongPtrW(
        hWnd: win32.api.windows_and_messaging.HWND,
        nIndex: win32.api.windows_and_messaging.GetWindowLongPtr_nIndex,
        dwNewLong: isize,
    ) callconv(@import("std").os.windows.WINAPI) i32;

    pub extern "USER32" fn GetWindowLongPtrA(
        hWnd: win32.api.windows_and_messaging.HWND,
        nIndex: win32.api.windows_and_messaging.GetWindowLongPtr_nIndex,
    ) callconv(@import("std").os.windows.WINAPI) isize;

    pub extern "USER32" fn GetWindowLongPtrW(
        hWnd: win32.api.windows_and_messaging.HWND,
        nIndex: win32.api.windows_and_messaging.GetWindowLongPtr_nIndex,
    ) callconv(@import("std").os.windows.WINAPI) isize;
} else struct {
    pub const SetWindowLongPtrA = win32.api.windows_and_messaging.SetWindowLongA;
    pub const SetWindowLongPtrW = win32.api.windows_and_messaging.SetWindowLongW;
    pub const GetWindowLongPtrA = win32.api.windows_and_messaging.GetWindowLongA;
    pub const GetWindowLongPtrW = win32.api.windows_and_messaging.GetWindowLongW;
};

pub usingnamespace switch (@import("zig.zig").unicode_mode) {
    .ansi => struct {
        pub const SetWindowLongPtr = SetWindowLongPtrA;
        pub const GetWindowLongPtr = GetWindowLongPtrA;
    },
    .wide => struct {
        pub const SetWindowLongPtr = SetWindowLongPtrW;
        pub const GetWindowLongPtr = GetWindowLongPtrW;
    },
    .unspecified => if (@import("builtin").is_test) struct {
        pub const SetWindowLongPtr = *opaque{};
        pub const GetWindowLongPtr = *opaque{};
    } else struct {
        pub const SetWindowLongPtr = @compileError("'SetWindowLongPtr' requires that UNICODE be set to true or false in the root module");
        pub const GetWindowLongPtr = @compileError("'GetWindowLongPtr' requires that UNICODE be set to true or false in the root module");
    },
};

// https://github.com/microsoft/win32metadata/issues/353
pub const CW_USEDEFAULT : i32 = @bitCast(i32, @intCast(u32, 0x80000000));

const std = @import("std");
test "" {
    std.testing.refAllDecls(@This());
}
