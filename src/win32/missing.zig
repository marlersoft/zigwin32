//! Includes definitions that are currently missing from win32metadata

const win32 = @import("../win32.zig");

// The CLSCTX_ALL value is missing, see https://github.com/microsoft/win32metadata/issues/203
pub const CLSCTX_ALL = @intToEnum(win32.api.com.CLSCTX,
    @enumToInt(win32.api.com.CLSCTX_INPROC_SERVER) |
    @enumToInt(win32.api.com.CLSCTX_INPROC_HANDLER) |
    @enumToInt(win32.api.com.CLSCTX_LOCAL_SERVER) |
    @enumToInt(win32.api.com.CLSCTX_REMOTE_SERVER));

const std = @import("std");
test "" {
    std.testing.refAllDecls(@This());
}
