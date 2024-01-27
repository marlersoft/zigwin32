const std = @import("std");

pub fn build(b: *std.Build) void {
    const optimize = b.standardOptimizeOption(.{});
    const target = b.standardTargetOptions(.{});

    _ = b.addModule("zigwin32", .{
        .root_source_file = .{ .path = "win32.zig" },
        .optimize = optimize,
        .target = target,
    });

    const tests = b.addTest(.{
        .root_source_file = .{ .path = "win32.zig" },
        .optimize = optimize,
        .target = target,
        .link_libc = true,
    });

    const run_tests = b.addRunArtifact(tests);

    const test_step = b.step("test", "Run tests");

    test_step.dependOn(&run_tests.step);
}
