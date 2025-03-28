//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (8)
//--------------------------------------------------------------------------------
const IID_IProtectionPolicyManagerInterop_Value = Guid.initString("4652651d-c1fe-4ba1-9f0a-c0f56596f721");
pub const IID_IProtectionPolicyManagerInterop = &IID_IProtectionPolicyManagerInterop_Value;
pub const IProtectionPolicyManagerInterop = extern union {
    pub const VTable = extern struct {
        base: IInspectable.VTable,
        RequestAccessForWindowAsync: *const fn(
            self: *const IProtectionPolicyManagerInterop,
            appWindow: ?HWND,
            sourceIdentity: ?HSTRING,
            targetIdentity: ?HSTRING,
            riid: ?*const Guid,
            asyncOperation: **anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetForWindow: *const fn(
            self: *const IProtectionPolicyManagerInterop,
            appWindow: ?HWND,
            riid: ?*const Guid,
            result: **anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IInspectable: IInspectable,
    IUnknown: IUnknown,
    pub fn RequestAccessForWindowAsync(self: *const IProtectionPolicyManagerInterop, appWindow: ?HWND, sourceIdentity: ?HSTRING, targetIdentity: ?HSTRING, riid: ?*const Guid, asyncOperation: **anyopaque) callconv(.Inline) HRESULT {
        return self.vtable.RequestAccessForWindowAsync(self, appWindow, sourceIdentity, targetIdentity, riid, asyncOperation);
    }
    pub fn GetForWindow(self: *const IProtectionPolicyManagerInterop, appWindow: ?HWND, riid: ?*const Guid, result: **anyopaque) callconv(.Inline) HRESULT {
        return self.vtable.GetForWindow(self, appWindow, riid, result);
    }
};

const IID_IProtectionPolicyManagerInterop2_Value = Guid.initString("157cfbe4-a78d-4156-b384-61fdac41e686");
pub const IID_IProtectionPolicyManagerInterop2 = &IID_IProtectionPolicyManagerInterop2_Value;
pub const IProtectionPolicyManagerInterop2 = extern union {
    pub const VTable = extern struct {
        base: IInspectable.VTable,
        RequestAccessForAppWithWindowAsync: *const fn(
            self: *const IProtectionPolicyManagerInterop2,
            appWindow: ?HWND,
            sourceIdentity: ?HSTRING,
            appPackageFamilyName: ?HSTRING,
            riid: ?*const Guid,
            asyncOperation: **anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        RequestAccessWithAuditingInfoForWindowAsync: *const fn(
            self: *const IProtectionPolicyManagerInterop2,
            appWindow: ?HWND,
            sourceIdentity: ?HSTRING,
            targetIdentity: ?HSTRING,
            auditInfoUnk: ?*IUnknown,
            riid: ?*const Guid,
            asyncOperation: **anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        RequestAccessWithMessageForWindowAsync: *const fn(
            self: *const IProtectionPolicyManagerInterop2,
            appWindow: ?HWND,
            sourceIdentity: ?HSTRING,
            targetIdentity: ?HSTRING,
            auditInfoUnk: ?*IUnknown,
            messageFromApp: ?HSTRING,
            riid: ?*const Guid,
            asyncOperation: **anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        RequestAccessForAppWithAuditingInfoForWindowAsync: *const fn(
            self: *const IProtectionPolicyManagerInterop2,
            appWindow: ?HWND,
            sourceIdentity: ?HSTRING,
            appPackageFamilyName: ?HSTRING,
            auditInfoUnk: ?*IUnknown,
            riid: ?*const Guid,
            asyncOperation: **anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        RequestAccessForAppWithMessageForWindowAsync: *const fn(
            self: *const IProtectionPolicyManagerInterop2,
            appWindow: ?HWND,
            sourceIdentity: ?HSTRING,
            appPackageFamilyName: ?HSTRING,
            auditInfoUnk: ?*IUnknown,
            messageFromApp: ?HSTRING,
            riid: ?*const Guid,
            asyncOperation: **anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IInspectable: IInspectable,
    IUnknown: IUnknown,
    pub fn RequestAccessForAppWithWindowAsync(self: *const IProtectionPolicyManagerInterop2, appWindow: ?HWND, sourceIdentity: ?HSTRING, appPackageFamilyName: ?HSTRING, riid: ?*const Guid, asyncOperation: **anyopaque) callconv(.Inline) HRESULT {
        return self.vtable.RequestAccessForAppWithWindowAsync(self, appWindow, sourceIdentity, appPackageFamilyName, riid, asyncOperation);
    }
    pub fn RequestAccessWithAuditingInfoForWindowAsync(self: *const IProtectionPolicyManagerInterop2, appWindow: ?HWND, sourceIdentity: ?HSTRING, targetIdentity: ?HSTRING, auditInfoUnk: ?*IUnknown, riid: ?*const Guid, asyncOperation: **anyopaque) callconv(.Inline) HRESULT {
        return self.vtable.RequestAccessWithAuditingInfoForWindowAsync(self, appWindow, sourceIdentity, targetIdentity, auditInfoUnk, riid, asyncOperation);
    }
    pub fn RequestAccessWithMessageForWindowAsync(self: *const IProtectionPolicyManagerInterop2, appWindow: ?HWND, sourceIdentity: ?HSTRING, targetIdentity: ?HSTRING, auditInfoUnk: ?*IUnknown, messageFromApp: ?HSTRING, riid: ?*const Guid, asyncOperation: **anyopaque) callconv(.Inline) HRESULT {
        return self.vtable.RequestAccessWithMessageForWindowAsync(self, appWindow, sourceIdentity, targetIdentity, auditInfoUnk, messageFromApp, riid, asyncOperation);
    }
    pub fn RequestAccessForAppWithAuditingInfoForWindowAsync(self: *const IProtectionPolicyManagerInterop2, appWindow: ?HWND, sourceIdentity: ?HSTRING, appPackageFamilyName: ?HSTRING, auditInfoUnk: ?*IUnknown, riid: ?*const Guid, asyncOperation: **anyopaque) callconv(.Inline) HRESULT {
        return self.vtable.RequestAccessForAppWithAuditingInfoForWindowAsync(self, appWindow, sourceIdentity, appPackageFamilyName, auditInfoUnk, riid, asyncOperation);
    }
    pub fn RequestAccessForAppWithMessageForWindowAsync(self: *const IProtectionPolicyManagerInterop2, appWindow: ?HWND, sourceIdentity: ?HSTRING, appPackageFamilyName: ?HSTRING, auditInfoUnk: ?*IUnknown, messageFromApp: ?HSTRING, riid: ?*const Guid, asyncOperation: **anyopaque) callconv(.Inline) HRESULT {
        return self.vtable.RequestAccessForAppWithMessageForWindowAsync(self, appWindow, sourceIdentity, appPackageFamilyName, auditInfoUnk, messageFromApp, riid, asyncOperation);
    }
};

const IID_IProtectionPolicyManagerInterop3_Value = Guid.initString("c1c03933-b398-4d93-b0fd-2972adf802c2");
pub const IID_IProtectionPolicyManagerInterop3 = &IID_IProtectionPolicyManagerInterop3_Value;
pub const IProtectionPolicyManagerInterop3 = extern union {
    pub const VTable = extern struct {
        base: IInspectable.VTable,
        RequestAccessWithBehaviorForWindowAsync: *const fn(
            self: *const IProtectionPolicyManagerInterop3,
            appWindow: ?HWND,
            sourceIdentity: ?HSTRING,
            targetIdentity: ?HSTRING,
            auditInfoUnk: ?*IUnknown,
            messageFromApp: ?HSTRING,
            behavior: u32,
            riid: ?*const Guid,
            asyncOperation: **anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        RequestAccessForAppWithBehaviorForWindowAsync: *const fn(
            self: *const IProtectionPolicyManagerInterop3,
            appWindow: ?HWND,
            sourceIdentity: ?HSTRING,
            appPackageFamilyName: ?HSTRING,
            auditInfoUnk: ?*IUnknown,
            messageFromApp: ?HSTRING,
            behavior: u32,
            riid: ?*const Guid,
            asyncOperation: **anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        RequestAccessToFilesForAppForWindowAsync: *const fn(
            self: *const IProtectionPolicyManagerInterop3,
            appWindow: ?HWND,
            sourceItemListUnk: ?*IUnknown,
            appPackageFamilyName: ?HSTRING,
            auditInfoUnk: ?*IUnknown,
            riid: ?*const Guid,
            asyncOperation: **anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        RequestAccessToFilesForAppWithMessageAndBehaviorForWindowAsync: *const fn(
            self: *const IProtectionPolicyManagerInterop3,
            appWindow: ?HWND,
            sourceItemListUnk: ?*IUnknown,
            appPackageFamilyName: ?HSTRING,
            auditInfoUnk: ?*IUnknown,
            messageFromApp: ?HSTRING,
            behavior: u32,
            riid: ?*const Guid,
            asyncOperation: **anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        RequestAccessToFilesForProcessForWindowAsync: *const fn(
            self: *const IProtectionPolicyManagerInterop3,
            appWindow: ?HWND,
            sourceItemListUnk: ?*IUnknown,
            processId: u32,
            auditInfoUnk: ?*IUnknown,
            riid: ?*const Guid,
            asyncOperation: **anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        RequestAccessToFilesForProcessWithMessageAndBehaviorForWindowAsync: *const fn(
            self: *const IProtectionPolicyManagerInterop3,
            appWindow: ?HWND,
            sourceItemListUnk: ?*IUnknown,
            processId: u32,
            auditInfoUnk: ?*IUnknown,
            messageFromApp: ?HSTRING,
            behavior: u32,
            riid: ?*const Guid,
            asyncOperation: **anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IInspectable: IInspectable,
    IUnknown: IUnknown,
    pub fn RequestAccessWithBehaviorForWindowAsync(self: *const IProtectionPolicyManagerInterop3, appWindow: ?HWND, sourceIdentity: ?HSTRING, targetIdentity: ?HSTRING, auditInfoUnk: ?*IUnknown, messageFromApp: ?HSTRING, behavior: u32, riid: ?*const Guid, asyncOperation: **anyopaque) callconv(.Inline) HRESULT {
        return self.vtable.RequestAccessWithBehaviorForWindowAsync(self, appWindow, sourceIdentity, targetIdentity, auditInfoUnk, messageFromApp, behavior, riid, asyncOperation);
    }
    pub fn RequestAccessForAppWithBehaviorForWindowAsync(self: *const IProtectionPolicyManagerInterop3, appWindow: ?HWND, sourceIdentity: ?HSTRING, appPackageFamilyName: ?HSTRING, auditInfoUnk: ?*IUnknown, messageFromApp: ?HSTRING, behavior: u32, riid: ?*const Guid, asyncOperation: **anyopaque) callconv(.Inline) HRESULT {
        return self.vtable.RequestAccessForAppWithBehaviorForWindowAsync(self, appWindow, sourceIdentity, appPackageFamilyName, auditInfoUnk, messageFromApp, behavior, riid, asyncOperation);
    }
    pub fn RequestAccessToFilesForAppForWindowAsync(self: *const IProtectionPolicyManagerInterop3, appWindow: ?HWND, sourceItemListUnk: ?*IUnknown, appPackageFamilyName: ?HSTRING, auditInfoUnk: ?*IUnknown, riid: ?*const Guid, asyncOperation: **anyopaque) callconv(.Inline) HRESULT {
        return self.vtable.RequestAccessToFilesForAppForWindowAsync(self, appWindow, sourceItemListUnk, appPackageFamilyName, auditInfoUnk, riid, asyncOperation);
    }
    pub fn RequestAccessToFilesForAppWithMessageAndBehaviorForWindowAsync(self: *const IProtectionPolicyManagerInterop3, appWindow: ?HWND, sourceItemListUnk: ?*IUnknown, appPackageFamilyName: ?HSTRING, auditInfoUnk: ?*IUnknown, messageFromApp: ?HSTRING, behavior: u32, riid: ?*const Guid, asyncOperation: **anyopaque) callconv(.Inline) HRESULT {
        return self.vtable.RequestAccessToFilesForAppWithMessageAndBehaviorForWindowAsync(self, appWindow, sourceItemListUnk, appPackageFamilyName, auditInfoUnk, messageFromApp, behavior, riid, asyncOperation);
    }
    pub fn RequestAccessToFilesForProcessForWindowAsync(self: *const IProtectionPolicyManagerInterop3, appWindow: ?HWND, sourceItemListUnk: ?*IUnknown, processId: u32, auditInfoUnk: ?*IUnknown, riid: ?*const Guid, asyncOperation: **anyopaque) callconv(.Inline) HRESULT {
        return self.vtable.RequestAccessToFilesForProcessForWindowAsync(self, appWindow, sourceItemListUnk, processId, auditInfoUnk, riid, asyncOperation);
    }
    pub fn RequestAccessToFilesForProcessWithMessageAndBehaviorForWindowAsync(self: *const IProtectionPolicyManagerInterop3, appWindow: ?HWND, sourceItemListUnk: ?*IUnknown, processId: u32, auditInfoUnk: ?*IUnknown, messageFromApp: ?HSTRING, behavior: u32, riid: ?*const Guid, asyncOperation: **anyopaque) callconv(.Inline) HRESULT {
        return self.vtable.RequestAccessToFilesForProcessWithMessageAndBehaviorForWindowAsync(self, appWindow, sourceItemListUnk, processId, auditInfoUnk, messageFromApp, behavior, riid, asyncOperation);
    }
};

pub const HTHREAD_NETWORK_CONTEXT = extern struct {
    ThreadId: u32,
    ThreadContext: ?HANDLE,
};

pub const ENTERPRISE_DATA_POLICIES = packed struct(u32) {
    ALLOWED: u1 = 0,
    ENLIGHTENED: u1 = 0,
    EXEMPT: u1 = 0,
    _3: u1 = 0,
    _4: u1 = 0,
    _5: u1 = 0,
    _6: u1 = 0,
    _7: u1 = 0,
    _8: u1 = 0,
    _9: u1 = 0,
    _10: u1 = 0,
    _11: u1 = 0,
    _12: u1 = 0,
    _13: u1 = 0,
    _14: u1 = 0,
    _15: u1 = 0,
    _16: u1 = 0,
    _17: u1 = 0,
    _18: u1 = 0,
    _19: u1 = 0,
    _20: u1 = 0,
    _21: u1 = 0,
    _22: u1 = 0,
    _23: u1 = 0,
    _24: u1 = 0,
    _25: u1 = 0,
    _26: u1 = 0,
    _27: u1 = 0,
    _28: u1 = 0,
    _29: u1 = 0,
    _30: u1 = 0,
    _31: u1 = 0,
};
pub const ENTERPRISE_POLICY_NONE = ENTERPRISE_DATA_POLICIES{ };
pub const ENTERPRISE_POLICY_ALLOWED = ENTERPRISE_DATA_POLICIES{ .ALLOWED = 1 };
pub const ENTERPRISE_POLICY_ENLIGHTENED = ENTERPRISE_DATA_POLICIES{ .ENLIGHTENED = 1 };
pub const ENTERPRISE_POLICY_EXEMPT = ENTERPRISE_DATA_POLICIES{ .EXEMPT = 1 };

pub const SRPHOSTING_TYPE = enum(i32) {
    NONE = 0,
    WINHTTP = 1,
    WININET = 2,
};
pub const SRPHOSTING_TYPE_NONE = SRPHOSTING_TYPE.NONE;
pub const SRPHOSTING_TYPE_WINHTTP = SRPHOSTING_TYPE.WINHTTP;
pub const SRPHOSTING_TYPE_WININET = SRPHOSTING_TYPE.WININET;

pub const SRPHOSTING_VERSION = enum(i32) {
    @"1" = 1,
};
pub const SRPHOSTING_VERSION1 = SRPHOSTING_VERSION.@"1";

pub const FILE_UNPROTECT_OPTIONS = extern struct {
    audit: bool,
};


//--------------------------------------------------------------------------------
// Section: Functions (13)
//--------------------------------------------------------------------------------
// TODO: this type is limited to platform 'windows10.0.10240'
pub extern "srpapi" fn SrpCreateThreadNetworkContext(
    enterpriseId: ?[*:0]const u16,
    threadNetworkContext: ?*HTHREAD_NETWORK_CONTEXT,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.10240'
pub extern "srpapi" fn SrpCloseThreadNetworkContext(
    threadNetworkContext: ?*HTHREAD_NETWORK_CONTEXT,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.10240'
pub extern "srpapi" fn SrpSetTokenEnterpriseId(
    tokenHandle: ?HANDLE,
    enterpriseId: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.10240'
pub extern "srpapi" fn SrpGetEnterpriseIds(
    tokenHandle: ?HANDLE,
    numberOfBytes: ?*u32,
    // TODO: what to do with BytesParamIndex 1?
    enterpriseIds: ?*?PWSTR,
    enterpriseIdCount: ?*u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.10240'
pub extern "srpapi" fn SrpEnablePermissiveModeFileEncryption(
    enterpriseId: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.10240'
pub extern "srpapi" fn SrpDisablePermissiveModeFileEncryption(
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.10240'
pub extern "srpapi" fn SrpGetEnterprisePolicy(
    tokenHandle: ?HANDLE,
    policyFlags: ?*ENTERPRISE_DATA_POLICIES,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows10.0.10240'
pub extern "srpapi" fn SrpIsTokenService(
    TokenHandle: ?HANDLE,
    IsTokenService: ?*u8,
) callconv(@import("std").os.windows.WINAPI) NTSTATUS;

// TODO: this type is limited to platform 'windows10.0.10240'
pub extern "srpapi" fn SrpDoesPolicyAllowAppExecution(
    packageId: ?*const PACKAGE_ID,
    isAllowed: ?*BOOL,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "srpapi" fn SrpHostingInitialize(
    Version: SRPHOSTING_VERSION,
    Type: SRPHOSTING_TYPE,
    pvData: ?*anyopaque,
    cbData: u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "srpapi" fn SrpHostingTerminate(
    Type: SRPHOSTING_TYPE,
) callconv(@import("std").os.windows.WINAPI) void;

// TODO: this type is limited to platform 'windows10.0.10240'
pub extern "efswrt" fn ProtectFileToEnterpriseIdentity(
    fileOrFolderPath: ?[*:0]const u16,
    identity: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "efswrt" fn UnprotectFile(
    fileOrFolderPath: ?[*:0]const u16,
    options: ?*const FILE_UNPROTECT_OPTIONS,
) callconv(@import("std").os.windows.WINAPI) HRESULT;


//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
// Section: Imports (11)
//--------------------------------------------------------------------------------
const Guid = @import("../zig.zig").Guid;
const BOOL = @import("../foundation.zig").BOOL;
const HANDLE = @import("../foundation.zig").HANDLE;
const HRESULT = @import("../foundation.zig").HRESULT;
const HSTRING = @import("../system/win_rt.zig").HSTRING;
const HWND = @import("../foundation.zig").HWND;
const IInspectable = @import("../system/win_rt.zig").IInspectable;
const IUnknown = @import("../system/com.zig").IUnknown;
const NTSTATUS = @import("../foundation.zig").NTSTATUS;
const PACKAGE_ID = @import("../storage/packaging/appx.zig").PACKAGE_ID;
const PWSTR = @import("../foundation.zig").PWSTR;

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
