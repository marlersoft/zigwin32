//! The SetWindowLongPtr and GetWindowLongPtr variants are missing because they are 64-bit only
//! See: https://github.com/microsoft/win32metadata/issues/142 (SetWindowLongPtr/GetWindowLongPtr are missing)
const win32 = @import("../win32.zig");

pub const SetWindowLongPtrA = if (@sizeOf(usize) == 8)
    win32.user32.SetWindowLongPtrA
else
    win32.user32.SetWindowLongA;

pub const SetWindowLongPtrW = if (@sizeOf(usize) == 8)
    win32.user32.SetWindowLongPtrW
else
    win32.user32.SetWindowLongW;

pub const GetWindowLongPtrA = if (@sizeOf(usize) == 8)
    win32.user32.GetWindowLongPtrA
else
    win32.user32.GetWindowLongA;

pub const GetWindowLongPtrW = if (@sizeOf(usize) == 8)
    win32.user32.GetWindowLongPtrW
else
    win32.user32.GetWindowLongW;
