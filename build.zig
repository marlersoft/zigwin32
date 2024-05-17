const builtin = @import("builtin");
const std = @import("std");

const zig_version = builtin.zig_version;

pub fn build(b: *std.Build) void {
    switch (zig_version.minor) {
        11 => {
            _ = b.addModule("zigwin32", .{
                .source_file = .{ .path = "win32.zig" },
            });
        },
        12 => {
            _ = b.addModule("zigwin32", .{
                .root_source_file = .{ .path = "win32.zig" },
            });
        },
        13 => {
            _ = b.addModule("zigwin32", .{
                .root_source_file = b.path("win32.zig"),
            });
        },
        else => {
            @panic("Unsupported zig version '" ++ builtin.zig_version_string ++ "'");
        },
    }
}
