//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (222)
//--------------------------------------------------------------------------------
pub const GUID_TS_SERVICE_DATAOBJECT = @import("../zig.zig").Guid.initString("6086fbb5-e225-46ce-a770-c1bbd3e05d7b");
pub const GUID_TS_SERVICE_ACCESSIBLE = @import("../zig.zig").Guid.initString("f9786200-a5bf-4a0f-8c24-fb16f5d1aabb");
pub const GUID_TS_SERVICE_ACTIVEX = @import("../zig.zig").Guid.initString("ea937a50-c9a6-4b7d-894a-49d99b784834");
pub const TS_AS_TEXT_CHANGE : u32 = 1;
pub const TS_AS_SEL_CHANGE : u32 = 2;
pub const TS_AS_LAYOUT_CHANGE : u32 = 4;
pub const TS_AS_ATTR_CHANGE : u32 = 8;
pub const TS_AS_STATUS_CHANGE : u32 = 16;
pub const TS_LF_SYNC : u32 = 1;
pub const TS_SD_READONLY : u32 = 1;
pub const TS_SD_LOADING : u32 = 2;
pub const TS_SD_RESERVED : u32 = 4;
pub const TS_SD_TKBAUTOCORRECTENABLE : u32 = 8;
pub const TS_SD_TKBPREDICTIONENABLE : u32 = 16;
pub const TS_SD_UIINTEGRATIONENABLE : u32 = 32;
pub const TS_SD_INPUTPANEMANUALDISPLAYENABLE : u32 = 64;
pub const TS_SD_EMBEDDEDHANDWRITINGVIEW_ENABLED : u32 = 128;
pub const TS_SD_EMBEDDEDHANDWRITINGVIEW_VISIBLE : u32 = 256;
pub const TS_SS_DISJOINTSEL : u32 = 1;
pub const TS_SS_REGIONS : u32 = 2;
pub const TS_SS_TRANSITORY : u32 = 4;
pub const TS_SS_NOHIDDENTEXT : u32 = 8;
pub const TS_SS_TKBAUTOCORRECTENABLE : u32 = 16;
pub const TS_SS_TKBPREDICTIONENABLE : u32 = 32;
pub const TS_SS_UWPCONTROL : u32 = 64;
pub const TS_IE_CORRECTION : u32 = 1;
pub const TS_IE_COMPOSITION : u32 = 2;
pub const TS_IAS_NOQUERY : u32 = 1;
pub const TS_IAS_QUERYONLY : u32 = 2;
pub const GXFPF_ROUND_NEAREST : u32 = 1;
pub const GXFPF_NEAREST : u32 = 2;
pub const TS_CHAR_EMBEDDED : u32 = 65532;
pub const TS_CHAR_REGION : u32 = 0;
pub const TS_CHAR_REPLACEMENT : u32 = 65533;
pub const TS_ATTR_FIND_BACKWARDS : u32 = 1;
pub const TS_ATTR_FIND_WANT_OFFSET : u32 = 2;
pub const TS_ATTR_FIND_UPDATESTART : u32 = 4;
pub const TS_ATTR_FIND_WANT_VALUE : u32 = 8;
pub const TS_ATTR_FIND_WANT_END : u32 = 16;
pub const TS_ATTR_FIND_HIDDEN : u32 = 32;
pub const TS_VCOOKIE_NUL : u32 = 4294967295;
pub const TS_SHIFT_COUNT_HIDDEN : u32 = 1;
pub const TS_SHIFT_HALT_HIDDEN : u32 = 2;
pub const TS_SHIFT_HALT_VISIBLE : u32 = 4;
pub const TS_SHIFT_COUNT_ONLY : u32 = 8;
pub const TS_GTA_HIDDEN : u32 = 1;
pub const TS_GEA_HIDDEN : u32 = 1;
pub const TF_RCM_COMLESS : u32 = 1;
pub const TF_RCM_VKEY : u32 = 2;
pub const TF_RCM_HINT_READING_LENGTH : u32 = 4;
pub const TF_RCM_HINT_COLLISION : u32 = 8;
pub const TKB_ALTERNATES_STANDARD : u32 = 1;
pub const TKB_ALTERNATES_FOR_AUTOCORRECTION : u32 = 2;
pub const TKB_ALTERNATES_FOR_PREDICTION : u32 = 3;
pub const TKB_ALTERNATES_AUTOCORRECTION_APPLIED : u32 = 4;
pub const TF_TMAE_NOACTIVATETIP : u32 = 1;
pub const TF_TMAE_SECUREMODE : u32 = 2;
pub const TF_TMAE_UIELEMENTENABLEDONLY : u32 = 4;
pub const TF_TMAE_COMLESS : u32 = 8;
pub const TF_TMAE_WOW16 : u32 = 16;
pub const TF_TMAE_NOACTIVATEKEYBOARDLAYOUT : u32 = 32;
pub const TF_TMAE_CONSOLE : u32 = 64;
pub const TF_TMF_IMMERSIVEMODE : u32 = 1073741824;
pub const TF_TMF_ACTIVATED : u32 = 2147483648;
pub const TF_MOD_ALT : u32 = 1;
pub const TF_MOD_CONTROL : u32 = 2;
pub const TF_MOD_SHIFT : u32 = 4;
pub const TF_MOD_RALT : u32 = 8;
pub const TF_MOD_RCONTROL : u32 = 16;
pub const TF_MOD_RSHIFT : u32 = 32;
pub const TF_MOD_LALT : u32 = 64;
pub const TF_MOD_LCONTROL : u32 = 128;
pub const TF_MOD_LSHIFT : u32 = 256;
pub const TF_MOD_ON_KEYUP : u32 = 512;
pub const TF_MOD_IGNORE_ALL_MODIFIER : u32 = 1024;
pub const TF_US_HIDETIPUI : u32 = 1;
pub const TF_DISABLE_SPEECH : u32 = 1;
pub const TF_DISABLE_DICTATION : u32 = 2;
pub const TF_DISABLE_COMMANDING : u32 = 4;
pub const TF_CLUIE_DOCUMENTMGR : u32 = 1;
pub const TF_CLUIE_COUNT : u32 = 2;
pub const TF_CLUIE_SELECTION : u32 = 4;
pub const TF_CLUIE_STRING : u32 = 8;
pub const TF_CLUIE_PAGEINDEX : u32 = 16;
pub const TF_CLUIE_CURRENTPAGE : u32 = 32;
pub const TF_RIUIE_CONTEXT : u32 = 1;
pub const TF_RIUIE_STRING : u32 = 2;
pub const TF_RIUIE_MAXREADINGSTRINGLENGTH : u32 = 4;
pub const TF_RIUIE_ERRORINDEX : u32 = 8;
pub const TF_RIUIE_VERTICALORDER : u32 = 16;
pub const TF_CONVERSIONMODE_ALPHANUMERIC : u32 = 0;
pub const TF_CONVERSIONMODE_NATIVE : u32 = 1;
pub const TF_CONVERSIONMODE_KATAKANA : u32 = 2;
pub const TF_CONVERSIONMODE_FULLSHAPE : u32 = 8;
pub const TF_CONVERSIONMODE_ROMAN : u32 = 16;
pub const TF_CONVERSIONMODE_CHARCODE : u32 = 32;
pub const TF_CONVERSIONMODE_SOFTKEYBOARD : u32 = 128;
pub const TF_CONVERSIONMODE_NOCONVERSION : u32 = 256;
pub const TF_CONVERSIONMODE_EUDC : u32 = 512;
pub const TF_CONVERSIONMODE_SYMBOL : u32 = 1024;
pub const TF_CONVERSIONMODE_FIXED : u32 = 2048;
pub const TF_SENTENCEMODE_NONE : u32 = 0;
pub const TF_SENTENCEMODE_PLAURALCLAUSE : u32 = 1;
pub const TF_SENTENCEMODE_SINGLECONVERT : u32 = 2;
pub const TF_SENTENCEMODE_AUTOMATIC : u32 = 4;
pub const TF_SENTENCEMODE_PHRASEPREDICT : u32 = 8;
pub const TF_SENTENCEMODE_CONVERSATION : u32 = 16;
pub const TF_TRANSITORYEXTENSION_NONE : u32 = 0;
pub const TF_TRANSITORYEXTENSION_FLOATING : u32 = 1;
pub const TF_TRANSITORYEXTENSION_ATSELECTION : u32 = 2;
pub const TF_PROFILETYPE_INPUTPROCESSOR : u32 = 1;
pub const TF_PROFILETYPE_KEYBOARDLAYOUT : u32 = 2;
pub const TF_RIP_FLAG_FREEUNUSEDLIBRARIES : u32 = 1;
pub const TF_IPP_FLAG_ACTIVE : u32 = 1;
pub const TF_IPP_FLAG_ENABLED : u32 = 2;
pub const TF_IPP_FLAG_SUBSTITUTEDBYINPUTPROCESSOR : u32 = 4;
pub const TF_IPP_CAPS_DISABLEONTRANSITORY : u32 = 1;
pub const TF_IPP_CAPS_SECUREMODESUPPORT : u32 = 2;
pub const TF_IPP_CAPS_UIELEMENTENABLED : u32 = 4;
pub const TF_IPP_CAPS_COMLESSSUPPORT : u32 = 8;
pub const TF_IPP_CAPS_WOW16SUPPORT : u32 = 16;
pub const TF_IPP_CAPS_IMMERSIVESUPPORT : u32 = 65536;
pub const TF_IPP_CAPS_SYSTRAYSUPPORT : u32 = 131072;
pub const TF_IPPMF_FORPROCESS : u32 = 268435456;
pub const TF_IPPMF_FORSESSION : u32 = 536870912;
pub const TF_IPPMF_FORSYSTEMALL : u32 = 1073741824;
pub const TF_IPPMF_ENABLEPROFILE : u32 = 1;
pub const TF_IPPMF_DISABLEPROFILE : u32 = 2;
pub const TF_IPPMF_DONTCARECURRENTINPUTLANGUAGE : u32 = 4;
pub const TF_RP_HIDDENINSETTINGUI : u32 = 2;
pub const TF_RP_LOCALPROCESS : u32 = 4;
pub const TF_RP_LOCALTHREAD : u32 = 8;
pub const TF_RP_SUBITEMINSETTINGUI : u32 = 16;
pub const TF_URP_ALLPROFILES : u32 = 2;
pub const TF_URP_LOCALPROCESS : u32 = 4;
pub const TF_URP_LOCALTHREAD : u32 = 8;
pub const TF_IPSINK_FLAG_ACTIVE : u32 = 1;
pub const TF_INVALID_EDIT_COOKIE : u32 = 0;
pub const TF_POPF_ALL : u32 = 1;
pub const TF_HF_OBJECT : u32 = 1;
pub const TF_TF_MOVESTART : u32 = 1;
pub const TF_TF_IGNOREEND : u32 = 2;
pub const TF_ST_CORRECTION : u32 = 1;
pub const TF_IE_CORRECTION : u32 = 1;
pub const TF_TU_CORRECTION : u32 = 1;
pub const TF_INVALID_COOKIE : u32 = 4294967295;
pub const TF_PROFILE_NEWPHONETIC = @import("../zig.zig").Guid.initString("b2f9c502-1742-11d4-9790-0080c882687e");
pub const TF_PROFILE_PHONETIC = @import("../zig.zig").Guid.initString("761309de-317a-11d4-9b5d-0080c882687e");
pub const TF_PROFILE_NEWCHANGJIE = @import("../zig.zig").Guid.initString("f3ba907a-6c7e-11d4-97fa-0080c882687e");
pub const TF_PROFILE_CHANGJIE = @import("../zig.zig").Guid.initString("4bdf9f03-c7d3-11d4-b2ab-0080c882687e");
pub const TF_PROFILE_NEWQUICK = @import("../zig.zig").Guid.initString("0b883ba0-c1c7-11d4-87f9-0080c882687e");
pub const TF_PROFILE_QUICK = @import("../zig.zig").Guid.initString("6024b45f-5c54-11d4-b921-0080c882687e");
pub const TF_PROFILE_CANTONESE = @import("../zig.zig").Guid.initString("0aec109c-7e96-11d4-b2ef-0080c882687e");
pub const TF_PROFILE_PINYIN = @import("../zig.zig").Guid.initString("f3ba9077-6c7e-11d4-97fa-0080c882687e");
pub const TF_PROFILE_SIMPLEFAST = @import("../zig.zig").Guid.initString("fa550b04-5ad7-411f-a5ac-ca038ec515d7");
pub const TF_PROFILE_WUBI = @import("../zig.zig").Guid.initString("82590c13-f4dd-44f4-ba1d-8667246fdf8e");
pub const TF_PROFILE_DAYI = @import("../zig.zig").Guid.initString("037b2c25-480c-4d7f-b027-d6ca6b69788a");
pub const TF_PROFILE_ARRAY = @import("../zig.zig").Guid.initString("d38eff65-aa46-4fd5-91a7-67845fb02f5b");
pub const TF_PROFILE_YI = @import("../zig.zig").Guid.initString("409c8376-007b-4357-ae8e-26316ee3fb0d");
pub const TF_PROFILE_TIGRINYA = @import("../zig.zig").Guid.initString("3cab88b7-cc3e-46a6-9765-b772ad7761ff");
pub const TF_DICTATION_ON : u32 = 1;
pub const TF_DICTATION_ENABLED : u32 = 2;
pub const TF_COMMANDING_ENABLED : u32 = 4;
pub const TF_COMMANDING_ON : u32 = 8;
pub const TF_SPEECHUI_SHOWN : u32 = 16;
pub const TF_SHOW_BALLOON : u32 = 1;
pub const TF_DISABLE_BALLOON : u32 = 2;
pub const TF_MENUREADY : u32 = 1;
pub const TF_PROPUI_STATUS_SAVETOFILE : u32 = 1;
pub const GUID_INTEGRATIONSTYLE_SEARCHBOX = @import("../zig.zig").Guid.initString("e6d1bd11-82f7-4903-ae21-1a6397cde2eb");
pub const TKBL_UNDEFINED : u32 = 0;
pub const TKBL_CLASSIC_TRADITIONAL_CHINESE_PHONETIC : u32 = 1028;
pub const TKBL_CLASSIC_TRADITIONAL_CHINESE_CHANGJIE : u32 = 61506;
pub const TKBL_CLASSIC_TRADITIONAL_CHINESE_DAYI : u32 = 61507;
pub const TKBL_OPT_JAPANESE_ABC : u32 = 1041;
pub const TKBL_OPT_KOREAN_HANGUL_2_BULSIK : u32 = 1042;
pub const TKBL_OPT_SIMPLIFIED_CHINESE_PINYIN : u32 = 2052;
pub const TKBL_OPT_TRADITIONAL_CHINESE_PHONETIC : u32 = 1028;
pub const TF_LBI_ICON : u32 = 1;
pub const TF_LBI_TEXT : u32 = 2;
pub const TF_LBI_TOOLTIP : u32 = 4;
pub const TF_LBI_BITMAP : u32 = 8;
pub const TF_LBI_BALLOON : u32 = 16;
pub const TF_LBI_CUSTOMUI : u32 = 32;
pub const TF_LBI_STATUS : u32 = 65536;
pub const TF_LBI_STYLE_HIDDENSTATUSCONTROL : u32 = 1;
pub const TF_LBI_STYLE_SHOWNINTRAY : u32 = 2;
pub const TF_LBI_STYLE_HIDEONNOOTHERITEMS : u32 = 4;
pub const TF_LBI_STYLE_SHOWNINTRAYONLY : u32 = 8;
pub const TF_LBI_STYLE_HIDDENBYDEFAULT : u32 = 16;
pub const TF_LBI_STYLE_TEXTCOLORICON : u32 = 32;
pub const TF_LBI_STYLE_BTN_BUTTON : u32 = 65536;
pub const TF_LBI_STYLE_BTN_MENU : u32 = 131072;
pub const TF_LBI_STYLE_BTN_TOGGLE : u32 = 262144;
pub const TF_LBI_STATUS_HIDDEN : u32 = 1;
pub const TF_LBI_STATUS_DISABLED : u32 = 2;
pub const TF_LBI_STATUS_BTN_TOGGLED : u32 = 65536;
pub const TF_LBI_BMPF_VERTICAL : u32 = 1;
pub const TF_SFT_SHOWNORMAL : u32 = 1;
pub const TF_SFT_DOCK : u32 = 2;
pub const TF_SFT_MINIMIZED : u32 = 4;
pub const TF_SFT_HIDDEN : u32 = 8;
pub const TF_SFT_NOTRANSPARENCY : u32 = 16;
pub const TF_SFT_LOWTRANSPARENCY : u32 = 32;
pub const TF_SFT_HIGHTRANSPARENCY : u32 = 64;
pub const TF_SFT_LABELS : u32 = 128;
pub const TF_SFT_NOLABELS : u32 = 256;
pub const TF_SFT_EXTRAICONSONMINIMIZED : u32 = 512;
pub const TF_SFT_NOEXTRAICONSONMINIMIZED : u32 = 1024;
pub const TF_SFT_DESKBAND : u32 = 2048;
pub const TF_LBI_DESC_MAXLEN : u32 = 32;
pub const TF_LBMENUF_CHECKED : u32 = 1;
pub const TF_LBMENUF_SUBMENU : u32 = 2;
pub const TF_LBMENUF_SEPARATOR : u32 = 4;
pub const TF_LBMENUF_RADIOCHECKED : u32 = 8;
pub const TF_LBMENUF_GRAYED : u32 = 16;
pub const GUID_PROP_INPUTSCOPE = @import("../zig.zig").Guid.initString("1713dd5a-68e7-4a5b-9af6-592a595c778d");
pub const DCM_FLAGS_TASKENG : u32 = 1;
pub const DCM_FLAGS_CTFMON : u32 = 2;
pub const DCM_FLAGS_LOCALTHREADTSF : u32 = 4;
pub const ILMCM_CHECKLAYOUTANDTIPENABLED : u32 = 1;
pub const ILMCM_LANGUAGEBAROFF : u32 = 2;

//--------------------------------------------------------------------------------
// Section: Types (4)
//--------------------------------------------------------------------------------
const IID_IEnumSpeechCommands_Value = @import("../zig.zig").Guid.initString("8c5dac4f-083c-4b85-a4c9-71746048adca");
pub const IID_IEnumSpeechCommands = &IID_IEnumSpeechCommands_Value;
pub const IEnumSpeechCommands = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        Clone: fn(
            self: *const IEnumSpeechCommands,
            ppEnum: **IEnumSpeechCommands,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Next: fn(
            self: *const IEnumSpeechCommands,
            ulCount: u32,
            pSpCmds: [*]*u16,
            pcFetched: *u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Reset: fn(
            self: *const IEnumSpeechCommands,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Skip: fn(
            self: *const IEnumSpeechCommands,
            ulCount: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IEnumSpeechCommands_Clone(self: *const T, ppEnum: **IEnumSpeechCommands) callconv(.Inline) HRESULT {
            return @ptrCast(*const IEnumSpeechCommands.VTable, self.vtable).Clone(@ptrCast(*const IEnumSpeechCommands, self), ppEnum);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IEnumSpeechCommands_Next(self: *const T, ulCount: u32, pSpCmds: [*]*u16, pcFetched: *u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IEnumSpeechCommands.VTable, self.vtable).Next(@ptrCast(*const IEnumSpeechCommands, self), ulCount, pSpCmds, pcFetched);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IEnumSpeechCommands_Reset(self: *const T) callconv(.Inline) HRESULT {
            return @ptrCast(*const IEnumSpeechCommands.VTable, self.vtable).Reset(@ptrCast(*const IEnumSpeechCommands, self));
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IEnumSpeechCommands_Skip(self: *const T, ulCount: u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IEnumSpeechCommands.VTable, self.vtable).Skip(@ptrCast(*const IEnumSpeechCommands, self), ulCount);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

const IID_ISpeechCommandProvider_Value = @import("../zig.zig").Guid.initString("38e09d4c-586d-435a-b592-c8a86691dec6");
pub const IID_ISpeechCommandProvider = &IID_ISpeechCommandProvider_Value;
pub const ISpeechCommandProvider = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        EnumSpeechCommands: fn(
            self: *const ISpeechCommandProvider,
            langid: u16,
            ppEnum: **IEnumSpeechCommands,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        ProcessCommand: fn(
            self: *const ISpeechCommandProvider,
            pszCommand: [*:0]const u16,
            cch: u32,
            langid: u16,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn ISpeechCommandProvider_EnumSpeechCommands(self: *const T, langid: u16, ppEnum: **IEnumSpeechCommands) callconv(.Inline) HRESULT {
            return @ptrCast(*const ISpeechCommandProvider.VTable, self.vtable).EnumSpeechCommands(@ptrCast(*const ISpeechCommandProvider, self), langid, ppEnum);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn ISpeechCommandProvider_ProcessCommand(self: *const T, pszCommand: [*:0]const u16, cch: u32, langid: u16) callconv(.Inline) HRESULT {
            return @ptrCast(*const ISpeechCommandProvider.VTable, self.vtable).ProcessCommand(@ptrCast(*const ISpeechCommandProvider, self), pszCommand, cch, langid);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

const IID_ITfFnCustomSpeechCommand_Value = @import("../zig.zig").Guid.initString("fca6c349-a12f-43a3-8dd6-5a5a4282577b");
pub const IID_ITfFnCustomSpeechCommand = &IID_ITfFnCustomSpeechCommand_Value;
pub const ITfFnCustomSpeechCommand = extern struct {
    pub const VTable = extern struct {
        base: ITfFunction.VTable,
        SetSpeechCommandProvider: fn(
            self: *const ITfFnCustomSpeechCommand,
            pspcmdProvider: *IUnknown,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace ITfFunction.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn ITfFnCustomSpeechCommand_SetSpeechCommandProvider(self: *const T, pspcmdProvider: *IUnknown) callconv(.Inline) HRESULT {
            return @ptrCast(*const ITfFnCustomSpeechCommand.VTable, self.vtable).SetSpeechCommandProvider(@ptrCast(*const ITfFnCustomSpeechCommand, self), pspcmdProvider);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

pub const UAL_DATA_BLOB = extern struct {
    Size: u32,
    RoleGuid: Guid,
    TenantId: Guid,
    Address: SOCKADDR_STORAGE_LH,
    UserName: [260]u16,
};


//--------------------------------------------------------------------------------
// Section: Functions (5)
//--------------------------------------------------------------------------------
pub extern "MsCtfMonitor" fn DoMsCtfMonitor(
    dwFlags: u32,
    hEventForServiceStop: HANDLE,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "ualapi" fn UalStart(
    Data: *UAL_DATA_BLOB,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "ualapi" fn UalStop(
    Data: *UAL_DATA_BLOB,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "ualapi" fn UalInstrument(
    Data: *UAL_DATA_BLOB,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "ualapi" fn UalRegisterProduct(
    wszProductName: [*:0]const u16,
    wszRoleName: [*:0]const u16,
    wszGuid: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;


//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
pub usingnamespace switch (@import("../zig.zig").unicode_mode) {
    .ansi => struct {
    },
    .wide => struct {
    },
    .unspecified => if (@import("builtin").is_test) struct {
    } else struct {
    },
};
//--------------------------------------------------------------------------------
// Section: Imports (8)
//--------------------------------------------------------------------------------
const Guid = @import("../zig.zig").Guid;
const PWSTR = @import("system_services.zig").PWSTR;
const IUnknown = @import("com.zig").IUnknown;
const SOCKADDR_STORAGE_LH = @import("network_drivers.zig").SOCKADDR_STORAGE_LH;
const HRESULT = @import("com.zig").HRESULT;
const HANDLE = @import("system_services.zig").HANDLE;
const ITfFunction = @import("text_services.zig").ITfFunction;
const BOOL = @import("system_services.zig").BOOL;

test {
    const constant_export_count = 222;
    const type_export_count = 4;
    const enum_value_export_count = 0;
    const com_iface_id_export_count = 3;
    const com_class_id_export_count = 0;
    const func_export_count = 5;
    const unicode_alias_count = 0;
    const import_count = 8;
    @setEvalBranchQuota(
        constant_export_count +
        type_export_count +
        enum_value_export_count +
        com_iface_id_export_count * 2 + // * 2 for value and ptr
        com_class_id_export_count * 2 + // * 2 for value and ptr
        func_export_count +
        unicode_alias_count +
        import_count +
        2 // TODO: why do I need these extra 2?
    );
    @import("std").testing.refAllDecls(@This());
}