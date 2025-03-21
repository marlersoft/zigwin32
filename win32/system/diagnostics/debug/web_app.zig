//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (9)
//--------------------------------------------------------------------------------
// TODO: this type is limited to platform 'windows8.0'
const IID_IWebApplicationScriptEvents_Value = Guid.initString("7c3f6998-1567-4bba-b52b-48d32141d613");
pub const IID_IWebApplicationScriptEvents = &IID_IWebApplicationScriptEvents_Value;
pub const IWebApplicationScriptEvents = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        BeforeScriptExecute: *const fn(
            self: *const IWebApplicationScriptEvents,
            htmlWindow: ?*IHTMLWindow2,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        ScriptError: *const fn(
            self: *const IWebApplicationScriptEvents,
            htmlWindow: ?*IHTMLWindow2,
            scriptError: ?*IActiveScriptError,
            url: ?[*:0]const u16,
            errorHandled: BOOL,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn BeforeScriptExecute(self: *const IWebApplicationScriptEvents, htmlWindow: ?*IHTMLWindow2) callconv(.Inline) HRESULT {
        return self.vtable.BeforeScriptExecute(self, htmlWindow);
    }
    pub fn ScriptError(self: *const IWebApplicationScriptEvents, htmlWindow: ?*IHTMLWindow2, scriptError: ?*IActiveScriptError, url: ?[*:0]const u16, errorHandled: BOOL) callconv(.Inline) HRESULT {
        return self.vtable.ScriptError(self, htmlWindow, scriptError, url, errorHandled);
    }
};

// TODO: this type is limited to platform 'windows8.0'
const IID_IWebApplicationNavigationEvents_Value = Guid.initString("c22615d2-d318-4da2-8422-1fcaf77b10e4");
pub const IID_IWebApplicationNavigationEvents = &IID_IWebApplicationNavigationEvents_Value;
pub const IWebApplicationNavigationEvents = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        BeforeNavigate: *const fn(
            self: *const IWebApplicationNavigationEvents,
            htmlWindow: ?*IHTMLWindow2,
            url: ?[*:0]const u16,
            navigationFlags: u32,
            targetFrameName: ?[*:0]const u16,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        NavigateComplete: *const fn(
            self: *const IWebApplicationNavigationEvents,
            htmlWindow: ?*IHTMLWindow2,
            url: ?[*:0]const u16,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        NavigateError: *const fn(
            self: *const IWebApplicationNavigationEvents,
            htmlWindow: ?*IHTMLWindow2,
            url: ?[*:0]const u16,
            targetFrameName: ?[*:0]const u16,
            statusCode: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        DocumentComplete: *const fn(
            self: *const IWebApplicationNavigationEvents,
            htmlWindow: ?*IHTMLWindow2,
            url: ?[*:0]const u16,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        DownloadBegin: *const fn(
            self: *const IWebApplicationNavigationEvents,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        DownloadComplete: *const fn(
            self: *const IWebApplicationNavigationEvents,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn BeforeNavigate(self: *const IWebApplicationNavigationEvents, htmlWindow: ?*IHTMLWindow2, url: ?[*:0]const u16, navigationFlags: u32, targetFrameName: ?[*:0]const u16) callconv(.Inline) HRESULT {
        return self.vtable.BeforeNavigate(self, htmlWindow, url, navigationFlags, targetFrameName);
    }
    pub fn NavigateComplete(self: *const IWebApplicationNavigationEvents, htmlWindow: ?*IHTMLWindow2, url: ?[*:0]const u16) callconv(.Inline) HRESULT {
        return self.vtable.NavigateComplete(self, htmlWindow, url);
    }
    pub fn NavigateError(self: *const IWebApplicationNavigationEvents, htmlWindow: ?*IHTMLWindow2, url: ?[*:0]const u16, targetFrameName: ?[*:0]const u16, statusCode: u32) callconv(.Inline) HRESULT {
        return self.vtable.NavigateError(self, htmlWindow, url, targetFrameName, statusCode);
    }
    pub fn DocumentComplete(self: *const IWebApplicationNavigationEvents, htmlWindow: ?*IHTMLWindow2, url: ?[*:0]const u16) callconv(.Inline) HRESULT {
        return self.vtable.DocumentComplete(self, htmlWindow, url);
    }
    pub fn DownloadBegin(self: *const IWebApplicationNavigationEvents) callconv(.Inline) HRESULT {
        return self.vtable.DownloadBegin(self);
    }
    pub fn DownloadComplete(self: *const IWebApplicationNavigationEvents) callconv(.Inline) HRESULT {
        return self.vtable.DownloadComplete(self);
    }
};

// TODO: this type is limited to platform 'windows8.0'
const IID_IWebApplicationUIEvents_Value = Guid.initString("5b2b3f99-328c-41d5-a6f7-7483ed8e71dd");
pub const IID_IWebApplicationUIEvents = &IID_IWebApplicationUIEvents_Value;
pub const IWebApplicationUIEvents = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        SecurityProblem: *const fn(
            self: *const IWebApplicationUIEvents,
            securityProblem: u32,
            result: ?*HRESULT,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn SecurityProblem(self: *const IWebApplicationUIEvents, securityProblem: u32, result: ?*HRESULT) callconv(.Inline) HRESULT {
        return self.vtable.SecurityProblem(self, securityProblem, result);
    }
};

// TODO: this type is limited to platform 'windows8.0'
const IID_IWebApplicationUpdateEvents_Value = Guid.initString("3e59e6b7-c652-4daf-ad5e-16feb350cde3");
pub const IID_IWebApplicationUpdateEvents = &IID_IWebApplicationUpdateEvents_Value;
pub const IWebApplicationUpdateEvents = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        OnPaint: *const fn(
            self: *const IWebApplicationUpdateEvents,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        OnCssChanged: *const fn(
            self: *const IWebApplicationUpdateEvents,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn OnPaint(self: *const IWebApplicationUpdateEvents) callconv(.Inline) HRESULT {
        return self.vtable.OnPaint(self);
    }
    pub fn OnCssChanged(self: *const IWebApplicationUpdateEvents) callconv(.Inline) HRESULT {
        return self.vtable.OnCssChanged(self);
    }
};

// TODO: this type is limited to platform 'windows8.0'
const IID_IWebApplicationHost_Value = Guid.initString("cecbd2c3-a3a5-4749-9681-20e9161c6794");
pub const IID_IWebApplicationHost = &IID_IWebApplicationHost_Value;
pub const IWebApplicationHost = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_HWND: *const fn(
            self: *const IWebApplicationHost,
            hwnd: ?*?HWND,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_Document: *const fn(
            self: *const IWebApplicationHost,
            htmlDocument: ?*?*IHTMLDocument2,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Refresh: *const fn(
            self: *const IWebApplicationHost,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Advise: *const fn(
            self: *const IWebApplicationHost,
            interfaceId: ?*const Guid,
            callback: ?*IUnknown,
            cookie: ?*u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Unadvise: *const fn(
            self: *const IWebApplicationHost,
            cookie: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn get_HWND(self: *const IWebApplicationHost, hwnd: ?*?HWND) callconv(.Inline) HRESULT {
        return self.vtable.get_HWND(self, hwnd);
    }
    pub fn get_Document(self: *const IWebApplicationHost, htmlDocument: ?*?*IHTMLDocument2) callconv(.Inline) HRESULT {
        return self.vtable.get_Document(self, htmlDocument);
    }
    pub fn Refresh(self: *const IWebApplicationHost) callconv(.Inline) HRESULT {
        return self.vtable.Refresh(self);
    }
    pub fn Advise(self: *const IWebApplicationHost, interfaceId: ?*const Guid, callback: ?*IUnknown, cookie: ?*u32) callconv(.Inline) HRESULT {
        return self.vtable.Advise(self, interfaceId, callback, cookie);
    }
    pub fn Unadvise(self: *const IWebApplicationHost, cookie: u32) callconv(.Inline) HRESULT {
        return self.vtable.Unadvise(self, cookie);
    }
};

// TODO: this type is limited to platform 'windows8.0'
const IID_IWebApplicationActivation_Value = Guid.initString("bcdcd0de-330e-481b-b843-4898a6a8ebac");
pub const IID_IWebApplicationActivation = &IID_IWebApplicationActivation_Value;
pub const IWebApplicationActivation = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        CancelPendingActivation: *const fn(
            self: *const IWebApplicationActivation,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn CancelPendingActivation(self: *const IWebApplicationActivation) callconv(.Inline) HRESULT {
        return self.vtable.CancelPendingActivation(self);
    }
};

// TODO: this type is limited to platform 'windows8.0'
const IID_IWebApplicationAuthoringMode_Value = Guid.initString("720aea93-1964-4db0-b005-29eb9e2b18a9");
pub const IID_IWebApplicationAuthoringMode = &IID_IWebApplicationAuthoringMode_Value;
pub const IWebApplicationAuthoringMode = extern union {
    pub const VTable = extern struct {
        base: IServiceProvider.VTable,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_AuthoringClientBinary: *const fn(
            self: *const IWebApplicationAuthoringMode,
            designModeDllPath: ?*?BSTR,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IServiceProvider: IServiceProvider,
    IUnknown: IUnknown,
    pub fn get_AuthoringClientBinary(self: *const IWebApplicationAuthoringMode, designModeDllPath: ?*?BSTR) callconv(.Inline) HRESULT {
        return self.vtable.get_AuthoringClientBinary(self, designModeDllPath);
    }
};

pub const RegisterAuthoringClientFunctionType = *const fn(
    authoringModeObject: ?*IWebApplicationAuthoringMode,
    host: ?*IWebApplicationHost,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub const UnregisterAuthoringClientFunctionType = *const fn(
    host: ?*IWebApplicationHost,
) callconv(@import("std").os.windows.WINAPI) HRESULT;


//--------------------------------------------------------------------------------
// Section: Functions (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
// Section: Imports (11)
//--------------------------------------------------------------------------------
const Guid = @import("../../../zig.zig").Guid;
const BOOL = @import("../../../foundation.zig").BOOL;
const BSTR = @import("../../../foundation.zig").BSTR;
const HRESULT = @import("../../../foundation.zig").HRESULT;
const HWND = @import("../../../foundation.zig").HWND;
const IActiveScriptError = @import("../../../system/diagnostics/debug.zig").IActiveScriptError;
const IHTMLDocument2 = @import("../../../web/ms_html.zig").IHTMLDocument2;
const IHTMLWindow2 = @import("../../../web/ms_html.zig").IHTMLWindow2;
const IServiceProvider = @import("../../../system/com.zig").IServiceProvider;
const IUnknown = @import("../../../system/com.zig").IUnknown;
const PWSTR = @import("../../../foundation.zig").PWSTR;

test {
    // The following '_ = <FuncPtrType>' lines are a workaround for https://github.com/ziglang/zig/issues/4476
    if (@hasDecl(@This(), "RegisterAuthoringClientFunctionType")) { _ = RegisterAuthoringClientFunctionType; }
    if (@hasDecl(@This(), "UnregisterAuthoringClientFunctionType")) { _ = UnregisterAuthoringClientFunctionType; }

    @setEvalBranchQuota(
        comptime @import("std").meta.declarations(@This()).len * 3
    );

    // reference all the pub declarations
    if (!@import("builtin").is_test) return;
    inline for (comptime @import("std").meta.declarations(@This())) |decl| {
        _ = @field(@This(), decl.name);
    }
}
