//! This module is maintained by hand and is copied to the generated code directory
const std = @import("std");
const builtin = @import("builtin");
const testing = std.testing;
const win32 = @import("../win32.zig");
const foundation = win32.foundation;

const HWND = foundation.HWND;

const root = @import("root");
pub const UnicodeMode = enum { ansi, wide, unspecified };
pub const unicode_mode: UnicodeMode = if (@hasDecl(root, "UNICODE")) (if (root.UNICODE) .wide else .ansi) else .unspecified;

const is_zig_0_11 = std.mem.eql(u8, builtin.zig_version_string, "0.11.0");

pub const L = std.unicode.utf8ToUtf16LeStringLiteral;

pub usingnamespace switch (unicode_mode) {
    .ansi => struct {
        pub const TCHAR = u8;
        pub fn _T(comptime str: []const u8) *const [str.len:0]u8 {
            return str;
        }
    },
    .wide => struct {
        pub const TCHAR = u16;
        pub const _T = L;
    },
    .unspecified => if (builtin.is_test) struct {} else struct {
        pub const TCHAR = @compileError("'TCHAR' requires that UNICODE be set to true or false in the root module");
        pub const _T = @compileError("'_T' requires that UNICODE be set to true or false in the root module");
    },
};

pub const Arch = enum { X86, X64, Arm64 };
pub const arch: Arch = switch (builtin.target.cpu.arch) {
    .x86 => .X86,
    .x86_64 => .X64,
    .arm, .armeb, .aarch64 => .Arm64,
    else => @compileError("unhandled arch " ++ @tagName(builtin.target.cpu.arch)),
};

// TODO: this should probably be in the standard lib somewhere?
pub const Guid = extern union {
    Ints: extern struct {
        a: u32,
        b: u16,
        c: u16,
        d: [8]u8,
    },
    Bytes: [16]u8,

    const big_endian_hex_offsets = [16]u6{ 0, 2, 4, 6, 9, 11, 14, 16, 19, 21, 24, 26, 28, 30, 32, 34 };
    const little_endian_hex_offsets = [16]u6{ 6, 4, 2, 0, 11, 9, 16, 14, 19, 21, 24, 26, 28, 30, 32, 34 };

    const hex_offsets = if (is_zig_0_11) switch (builtin.target.cpu.arch.endian()) {
        .Big => big_endian_hex_offsets,
        .Little => little_endian_hex_offsets,
    } else switch (builtin.target.cpu.arch.endian()) {
        .big => big_endian_hex_offsets,
        .little => little_endian_hex_offsets,
    };

    pub fn initString(s: []const u8) Guid {
        var guid = Guid{ .Bytes = undefined };
        for (hex_offsets, 0..) |hex_offset, i| {
            //guid.Bytes[i] = decodeHexByte(s[offset..offset+2]);
            guid.Bytes[i] = decodeHexByte([2]u8{ s[hex_offset], s[hex_offset + 1] });
        }
        return guid;
    }
};
comptime {
    std.debug.assert(@sizeOf(Guid) == 16);
}

// TODO: is this in the standard lib somewhere?
fn hexVal(c: u8) u4 {
    if (c <= '9') return @as(u4, @intCast(c - '0'));
    if (c >= 'a') return @as(u4, @intCast(c + 10 - 'a'));
    return @as(u4, @intCast(c + 10 - 'A'));
}

// TODO: is this in the standard lib somewhere?
fn decodeHexByte(hex: [2]u8) u8 {
    return @as(u8, @intCast(hexVal(hex[0]))) << 4 | hexVal(hex[1]);
}

test "Guid" {
    if (is_zig_0_11) {
        try testing.expect(std.mem.eql(u8, switch (builtin.target.cpu.arch.endian()) {
            .Big => "\x01\x23\x45\x67\x89\xAB\xEF\x10\x32\x54\x76\x98\xba\xdc\xfe\x91",
            .Little => "\x67\x45\x23\x01\xAB\x89\x10\xEF\x32\x54\x76\x98\xba\xdc\xfe\x91",
        }, &Guid.initString("01234567-89AB-EF10-3254-7698badcfe91").Bytes));
    } else {
        try testing.expect(std.mem.eql(u8, switch (builtin.target.cpu.arch.endian()) {
            .big => "\x01\x23\x45\x67\x89\xAB\xEF\x10\x32\x54\x76\x98\xba\xdc\xfe\x91",
            .little => "\x67\x45\x23\x01\xAB\x89\x10\xEF\x32\x54\x76\x98\xba\xdc\xfe\x91",
        }, &Guid.initString("01234567-89AB-EF10-3254-7698badcfe91").Bytes));
    }
}

pub const PropertyKey = extern struct {
    fmtid: Guid,
    pid: u32,
    pub fn init(fmtid: []const u8, pid: u32) PropertyKey {
        return .{
            .fmtid = Guid.initString(fmtid),
            .pid = pid,
        };
    }
};

pub fn FAILED(hr: foundation.HRESULT) bool {
    return hr < 0;
}
pub fn SUCCEEDED(hr: foundation.HRESULT) bool {
    return hr >= 0;
}

// These constants were removed from the metadata to allow each projection
// to define them however they like (see https://github.com/microsoft/win32metadata/issues/530)
pub const FALSE: foundation.BOOL = 0;
pub const TRUE: foundation.BOOL = 1;

/// calls CloseHandle, panics on failure
pub fn closeHandle(handle: foundation.HANDLE) void {
    if (0 == foundation.CloseHandle(handle)) std.debug.panic(
        "CloseHandle failed with {}",
        .{foundation.GetLastError().fmt()},
    );
}

pub fn loword(value: anytype) u16 {
    switch (@typeInfo(@TypeOf(value))) {
        .Int => |int| switch (int.signedness) {
            .signed => return loword(@as(@Type(.{ .Int = .{ .signedness = .unsigned, .bits = int.bits } }), @bitCast(value))),
            .unsigned => return if (int.bits <= 16) value else @intCast(0xffff & value),
        },
        else => {},
    }
    @compileError("unsupported type " ++ @typeName(@TypeOf(value)));
}
pub fn hiword(value: anytype) u16 {
    switch (@typeInfo(@TypeOf(value))) {
        .Int => |int| switch (int.signedness) {
            .signed => return hiword(@as(@Type(.{ .Int = .{ .signedness = .unsigned, .bits = int.bits } }), @bitCast(value))),
            .unsigned => return @intCast(0xffff & (value >> 16)),
        },
        else => {},
    }
    @compileError("unsupported type " ++ @typeName(@TypeOf(value)));
}

pub const has_window_longptr = switch (arch) {
    .X86 => false,
    .X64, .Arm64 => true,
};

pub const getWindowLongPtr = switch (unicode_mode) {
    .ansi => getWindowLongPtrA,
    .wide => getWindowLongPtrW,
    .unpecified => if (builtin.is_test) struct {} else @compileError(
        "getWindowLongPtr requires that UNICODE be set to true or false in the root module",
    ),
};

pub const setWindowLongPtr = switch (unicode_mode) {
    .ansi => setWindowLongPtrA,
    .wide => setWindowLongPtrW,
    .unpecified => if (builtin.is_test) struct {} else @compileError(
        "setWindowLongPtr requires that UNICODE be set to true or false in the root module",
    ),
};

pub fn getWindowLongPtrA(hwnd: HWND, index: i32) usize {
    if (!has_window_longptr) @compileError("this arch does not have GetWindowLongPtr");
    return @bitCast(win32.ui.windows_and_messaging.GetWindowLongPtrA(hwnd, @enumFromInt(index)));
}
pub fn getWindowLongPtrW(hwnd: HWND, index: i32) usize {
    if (!has_window_longptr) @compileError("this arch does not have GetWindowLongPtr");
    return @bitCast(win32.ui.windows_and_messaging.GetWindowLongPtrW(hwnd, @enumFromInt(index)));
}
pub fn setWindowLongPtrA(hwnd: HWND, index: i32, value: usize) usize {
    if (!has_window_longptr) @compileError("this arch does not have SetWindowLongPtr");
    return @bitCast(win32.ui.windows_and_messaging.SetWindowLongPtrA(hwnd, @enumFromInt(index), @bitCast(value)));
}
pub fn setWindowLongPtrW(hwnd: HWND, index: i32, value: usize) usize {
    if (!has_window_longptr) @compileError("this arch does not have SetWindowLongPtr");
    return @bitCast(win32.ui.windows_and_messaging.SetWindowLongPtrW(hwnd, @enumFromInt(index), @bitCast(value)));
}

pub fn scaleDpi(comptime T: type, value: T, dpi: u32) T {
    std.debug.assert(dpi >= 96);
    switch (@typeInfo(T)) {
        .Float => return value * (@as(T, @floatFromInt(dpi)) / @as(T, 96.0)),
        .Int => return @intFromFloat(@round(@as(f32, @floatFromInt(value)) * (@as(f32, @floatFromInt(dpi)) / 96.0))),
        else => @compileError("scale_dpi does not support type " ++ @typeName(@TypeOf(value))),
    }
}

/// calls DpiForWindow, panics on failure
pub fn dpiFromHwnd(hwnd: HWND) u32 {
    const value = win32.ui.hi_dpi.GetDpiForWindow(hwnd);
    if (value == 0) std.debug.panic(
        "GetDpiForWindow failed with {}",
        .{foundation.GetLastError().fmt()},
    );
    return value;
}

/// calls InvalidateRect, panics on failure
pub fn invalidateHwnd(hwnd: HWND) void {
    if (0 == win32.graphics.gdi.InvalidateRect(hwnd, null, 0)) std.debug.panic(
        "InvalidateRect failed with {}",
        .{foundation.GetLastError().fmt()},
    );
}

/// Converts comptime values to the given type.
/// Note that this function is called at compile time rather than converting constant values earlier at code generation time.
/// The reason for doing it a compile time is because genzig.zig generates all constants as they are encountered which can
/// be before it knows the constant's type definition, so we delay the convession to compile-time where the compiler knows
/// all type definition.
pub fn typedConst(comptime T: type, comptime value: anytype) T {
    return typedConst2(T, T, value);
}

pub fn typedConst2(comptime ReturnType: type, comptime SwitchType: type, comptime value: anytype) ReturnType {
    const target_type_error = @as([]const u8, "typedConst cannot convert to " ++ @typeName(ReturnType));
    const value_type_error = @as([]const u8, "typedConst cannot convert " ++ @typeName(@TypeOf(value)) ++ " to " ++ @typeName(ReturnType));

    switch (@typeInfo(SwitchType)) {
        .Int => |target_type_info| {
            if (value >= std.math.maxInt(SwitchType)) {
                if (target_type_info.signedness == .signed) {
                    const UnsignedT = @Type(std.builtin.Type{ .Int = .{ .signedness = .unsigned, .bits = target_type_info.bits } });
                    return @as(SwitchType, @bitCast(@as(UnsignedT, value)));
                }
            }
            return value;
        },
        .Pointer => |target_type_info| switch (target_type_info.size) {
            .One, .Many, .C => {
                switch (@typeInfo(@TypeOf(value))) {
                    .ComptimeInt, .Int => {
                        const usize_value = if (value >= 0) value else @as(usize, @bitCast(@as(isize, value)));
                        return @as(ReturnType, @ptrFromInt(usize_value));
                    },
                    else => @compileError(value_type_error),
                }
            },
            else => target_type_error,
        },
        .Optional => |target_type_info| switch (@typeInfo(target_type_info.child)) {
            .Pointer => return typedConst2(ReturnType, target_type_info.child, value),
            else => target_type_error,
        },
        .Enum => |_| switch (@typeInfo(@TypeOf(value))) {
            .Int => return @as(ReturnType, @enumFromInt(value)),
            else => target_type_error,
        },
        else => @compileError(target_type_error),
    }
}
test "typedConst" {
    try testing.expectEqual(@as(usize, @bitCast(@as(isize, -1))), @intFromPtr(typedConst(?*opaque {}, -1)));
    try testing.expectEqual(@as(usize, @bitCast(@as(isize, -12))), @intFromPtr(typedConst(?*opaque {}, -12)));
    try testing.expectEqual(@as(u32, 0xffffffff), typedConst(u32, 0xffffffff));
    try testing.expectEqual(@as(i32, @bitCast(@as(u32, 0x80000000))), typedConst(i32, 0x80000000));
}
