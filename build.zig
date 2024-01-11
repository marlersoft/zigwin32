const std = @import("std");

pub fn build(b: *std.Build) void {
    _ = b.addModule("zigwin32", .{
        .root_source_file = .{ .path = "win32.zig" },
    });
}
