//! Includes definitions that are currently missing from win32metadata

const win32 = @import("../win32.zig");

// TODO: should there be an issue for this in win32metadata?
//       not sure how it will define this as a const because it's not a primitive type
pub const INVALID_HANDLE_VALUE = @intToPtr(win32.api.system_services.HANDLE, @bitCast(usize, @as(isize, -1)));


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
        nIndex: i32,
        dwNewLong: isize,
    ) callconv(@import("std").os.windows.WINAPI) i32;

    pub extern "USER32" fn SetWindowLongPtrW(
        hWnd: win32.api.windows_and_messaging.HWND,
        nIndex: i32,
        dwNewLong: isize,
    ) callconv(@import("std").os.windows.WINAPI) i32;

    pub extern "USER32" fn GetWindowLongPtrA(
        hWnd: win32.api.windows_and_messaging.HWND,
        nIndex: i32,
    ) callconv(@import("std").os.windows.WINAPI) isize;

    pub extern "USER32" fn GetWindowLongPtrW(
        hWnd: win32.api.windows_and_messaging.HWND,
        nIndex: i32,
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

const std = @import("std");
test "" {
    std.testing.refAllDecls(@This());
}
