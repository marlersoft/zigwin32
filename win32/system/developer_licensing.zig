//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Functions (3)
//--------------------------------------------------------------------------------
pub extern "wsclient" fn CheckDeveloperLicense(
    pExpiration: ?*FILETIME,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wsclient" fn AcquireDeveloperLicense(
    hwndParent: ?HWND,
    pExpiration: ?*FILETIME,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wsclient" fn RemoveDeveloperLicense(
    hwndParent: ?HWND,
) callconv(@import("std").os.windows.WINAPI) HRESULT;


//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
// Section: Imports (3)
//--------------------------------------------------------------------------------
const FILETIME = @import("../foundation.zig").FILETIME;
const HRESULT = @import("../foundation.zig").HRESULT;
const HWND = @import("../foundation.zig").HWND;

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
