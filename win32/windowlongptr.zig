//! The SetWindowLongPtr and GetWindowLongPtr variants are missing because they are 64-bit only
//! See: https://github.com/microsoft/win32metadata/issues/142 (SetWindowLongPtr/GetWindowLongPtr are missing)
const win32 = @import("../win32.zig");

pub const SetWindowLongPtrA = if (@sizeOf(usize) == 8)
    win32.ui.windows_and_messaging.SetWindowLongPtrA
else
    win32.ui.windows_and_messaging.SetWindowLongA;

pub const SetWindowLongPtrW = if (@sizeOf(usize) == 8)
    win32.ui.windows_and_messaging.SetWindowLongPtrW
else
    win32.ui.windows_and_messaging.SetWindowLongW;

pub const GetWindowLongPtrA = if (@sizeOf(usize) == 8)
    win32.ui.windows_and_messaging.GetWindowLongPtrA
else
    win32.ui.windows_and_messaging.GetWindowLongA;

pub const GetWindowLongPtrW = if (@sizeOf(usize) == 8)
    win32.ui.windows_and_messaging.GetWindowLongPtrW
else
    win32.ui.windows_and_messaging.GetWindowLongW;
