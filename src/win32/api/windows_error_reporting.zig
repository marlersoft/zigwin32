//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (38)
//--------------------------------------------------------------------------------
pub const WER_FAULT_REPORTING_NO_UI : u32 = 32;
pub const WER_FAULT_REPORTING_FLAG_NO_HEAP_ON_QUEUE : u32 = 64;
pub const WER_FAULT_REPORTING_DISABLE_SNAPSHOT_CRASH : u32 = 128;
pub const WER_FAULT_REPORTING_DISABLE_SNAPSHOT_HANG : u32 = 256;
pub const WER_FAULT_REPORTING_CRITICAL : u32 = 512;
pub const WER_FAULT_REPORTING_DURABLE : u32 = 1024;
pub const WER_MAX_TOTAL_PARAM_LENGTH : u32 = 1720;
pub const WER_MAX_PREFERRED_MODULES : u32 = 128;
pub const WER_MAX_PREFERRED_MODULES_BUFFER : u32 = 256;
pub const WER_P0 : u32 = 0;
pub const WER_P1 : u32 = 1;
pub const WER_P2 : u32 = 2;
pub const WER_P3 : u32 = 3;
pub const WER_P4 : u32 = 4;
pub const WER_P5 : u32 = 5;
pub const WER_P6 : u32 = 6;
pub const WER_P7 : u32 = 7;
pub const WER_P8 : u32 = 8;
pub const WER_P9 : u32 = 9;
pub const WER_FILE_COMPRESSED : u32 = 4;
pub const WER_SUBMIT_BYPASS_POWER_THROTTLING : u32 = 16384;
pub const WER_SUBMIT_BYPASS_NETWORK_COST_THROTTLING : u32 = 32768;
pub const WER_DUMP_MASK_START : u32 = 1;
pub const WER_DUMP_NOHEAP_ONQUEUE : u32 = 1;
pub const WER_DUMP_AUXILIARY : u32 = 2;
pub const WER_MAX_REGISTERED_ENTRIES : u32 = 512;
pub const WER_MAX_REGISTERED_METADATA : u32 = 8;
pub const WER_MAX_REGISTERED_DUMPCOLLECTION : u32 = 4;
pub const WER_METADATA_KEY_MAX_LENGTH : u32 = 64;
pub const WER_METADATA_VALUE_MAX_LENGTH : u32 = 128;
pub const WER_MAX_SIGNATURE_NAME_LENGTH : u32 = 128;
pub const WER_MAX_EVENT_NAME_LENGTH : u32 = 64;
pub const WER_MAX_PARAM_COUNT : u32 = 10;
pub const WER_MAX_FRIENDLY_EVENT_NAME_LENGTH : u32 = 128;
pub const WER_MAX_APPLICATION_NAME_LENGTH : u32 = 128;
pub const WER_MAX_DESCRIPTION_LENGTH : u32 = 512;
pub const WER_MAX_LOCAL_DUMP_SUBPATH_LENGTH : u32 = 64;
pub const WER_MAX_REGISTERED_RUNTIME_EXCEPTION_MODULES : u32 = 16;

//--------------------------------------------------------------------------------
// Section: Types (36)
//--------------------------------------------------------------------------------
// TODO: This Enum is marked as [Flags], what do I do with this?
pub const WER_FILE = extern enum(u32) {
    ANONYMOUS_DATA = 2,
    DELETE_WHEN_DONE = 1,
    _,
};
pub const WER_FILE_ANONYMOUS_DATA = WER_FILE.ANONYMOUS_DATA;
pub const WER_FILE_DELETE_WHEN_DONE = WER_FILE.DELETE_WHEN_DONE;

pub const WerRegisterFile_regFileTypeFlags = extern enum(u32) {
    Max = 3,
    Other = 2,
    UserDocument = 1,
};
// TODO: enum 'WerRegisterFile_regFileTypeFlags' has known issues with its value aliases

// TODO: This Enum is marked as [Flags], what do I do with this?
pub const WerReportSubmit_dwFlags = extern enum(u32) {
    ADD_REGISTERED_DATA = 16,
    HONOR_RECOVERY = 1,
    HONOR_RESTART = 2,
    NO_ARCHIVE = 256,
    NO_CLOSE_UI = 64,
    NO_QUEUE = 128,
    OUTOFPROCESS = 32,
    OUTOFPROCESS_ASYNC = 1024,
    QUEUE = 4,
    SHOW_DEBUG = 8,
    START_MINIMIZED = 512,
    BYPASS_DATA_THROTTLING = 2048,
    ARCHIVE_PARAMETERS_ONLY = 4096,
    REPORT_MACHINE_ID = 8192,
    _,
};
pub const WER_SUBMIT_ADD_REGISTERED_DATA = WerReportSubmit_dwFlags.ADD_REGISTERED_DATA;
pub const WER_SUBMIT_HONOR_RECOVERY = WerReportSubmit_dwFlags.HONOR_RECOVERY;
pub const WER_SUBMIT_HONOR_RESTART = WerReportSubmit_dwFlags.HONOR_RESTART;
pub const WER_SUBMIT_NO_ARCHIVE = WerReportSubmit_dwFlags.NO_ARCHIVE;
pub const WER_SUBMIT_NO_CLOSE_UI = WerReportSubmit_dwFlags.NO_CLOSE_UI;
pub const WER_SUBMIT_NO_QUEUE = WerReportSubmit_dwFlags.NO_QUEUE;
pub const WER_SUBMIT_OUTOFPROCESS = WerReportSubmit_dwFlags.OUTOFPROCESS;
pub const WER_SUBMIT_OUTOFPROCESS_ASYNC = WerReportSubmit_dwFlags.OUTOFPROCESS_ASYNC;
pub const WER_SUBMIT_QUEUE = WerReportSubmit_dwFlags.QUEUE;
pub const WER_SUBMIT_SHOW_DEBUG = WerReportSubmit_dwFlags.SHOW_DEBUG;
pub const WER_SUBMIT_START_MINIMIZED = WerReportSubmit_dwFlags.START_MINIMIZED;
pub const WER_SUBMIT_BYPASS_DATA_THROTTLING = WerReportSubmit_dwFlags.BYPASS_DATA_THROTTLING;
pub const WER_SUBMIT_ARCHIVE_PARAMETERS_ONLY = WerReportSubmit_dwFlags.ARCHIVE_PARAMETERS_ONLY;
pub const WER_SUBMIT_REPORT_MACHINE_ID = WerReportSubmit_dwFlags.REPORT_MACHINE_ID;

// TODO: This Enum is marked as [Flags], what do I do with this?
pub const WER_FAULT_REPORTING = extern enum(u32) {
    FLAG_DISABLE_THREAD_SUSPENSION = 4,
    FLAG_NOHEAP = 1,
    FLAG_QUEUE = 2,
    FLAG_QUEUE_UPLOAD = 8,
    ALWAYS_SHOW_UI = 16,
    _,
};
pub const WER_FAULT_REPORTING_FLAG_DISABLE_THREAD_SUSPENSION = WER_FAULT_REPORTING.FLAG_DISABLE_THREAD_SUSPENSION;
pub const WER_FAULT_REPORTING_FLAG_NOHEAP = WER_FAULT_REPORTING.FLAG_NOHEAP;
pub const WER_FAULT_REPORTING_FLAG_QUEUE = WER_FAULT_REPORTING.FLAG_QUEUE;
pub const WER_FAULT_REPORTING_FLAG_QUEUE_UPLOAD = WER_FAULT_REPORTING.FLAG_QUEUE_UPLOAD;
pub const WER_FAULT_REPORTING_ALWAYS_SHOW_UI = WER_FAULT_REPORTING.ALWAYS_SHOW_UI;

pub const WerReportSubmit_consentFlags = extern enum(u32) {
    AlwaysPrompt = 4,
    Approved = 2,
    Denied = 3,
    Max = 5,
    NotAsked = 1,
};
// TODO: enum 'WerReportSubmit_consentFlags' has known issues with its value aliases

pub const WerReportSubmit_pSubmitResultFlags = extern enum(u32) {
    CustomAction = 9,
    Disabled = 5,
    DisabledQueue = 7,
    ReportAsync = 8,
    ReportCancelled = 6,
    ReportDebug = 3,
    ReportFailed = 4,
    ReportQueued = 1,
    ReportUploaded = 2,
};
// TODO: enum 'WerReportSubmit_pSubmitResultFlags' has known issues with its value aliases

pub const WerReportCreate_repTypeFlags = extern enum(u32) {
    ApplicationCrash = 2,
    ApplicationHang = 3,
    Invalid = 5,
    Kernel = 4,
    Critical = 1,
    NonCritical = 0,
};
// TODO: enum 'WerReportCreate_repTypeFlags' has known issues with its value aliases

pub const WER_REPORT_UI = extern enum(i32) {
    AdditionalDataDlgHeader = 1,
    IconFilePath = 2,
    ConsentDlgHeader = 3,
    ConsentDlgBody = 4,
    OnlineSolutionCheckText = 5,
    OfflineSolutionCheckText = 6,
    CloseText = 7,
    CloseDlgHeader = 8,
    CloseDlgBody = 9,
    CloseDlgButtonText = 10,
    Max = 11,
};
pub const WerUIAdditionalDataDlgHeader = WER_REPORT_UI.AdditionalDataDlgHeader;
pub const WerUIIconFilePath = WER_REPORT_UI.IconFilePath;
pub const WerUIConsentDlgHeader = WER_REPORT_UI.ConsentDlgHeader;
pub const WerUIConsentDlgBody = WER_REPORT_UI.ConsentDlgBody;
pub const WerUIOnlineSolutionCheckText = WER_REPORT_UI.OnlineSolutionCheckText;
pub const WerUIOfflineSolutionCheckText = WER_REPORT_UI.OfflineSolutionCheckText;
pub const WerUICloseText = WER_REPORT_UI.CloseText;
pub const WerUICloseDlgHeader = WER_REPORT_UI.CloseDlgHeader;
pub const WerUICloseDlgBody = WER_REPORT_UI.CloseDlgBody;
pub const WerUICloseDlgButtonText = WER_REPORT_UI.CloseDlgButtonText;
pub const WerUIMax = WER_REPORT_UI.Max;

pub const WER_REGISTER_FILE_TYPE = extern enum(i32) {
    UserDocument = 1,
    Other = 2,
    Max = 3,
};
pub const WerRegFileTypeUserDocument = WER_REGISTER_FILE_TYPE.UserDocument;
pub const WerRegFileTypeOther = WER_REGISTER_FILE_TYPE.Other;
pub const WerRegFileTypeMax = WER_REGISTER_FILE_TYPE.Max;

pub const WER_FILE_TYPE = extern enum(i32) {
    Microdump = 1,
    Minidump = 2,
    Heapdump = 3,
    UserDocument = 4,
    Other = 5,
    Triagedump = 6,
    CustomDump = 7,
    AuxiliaryDump = 8,
    EtlTrace = 9,
    Max = 10,
};
pub const WerFileTypeMicrodump = WER_FILE_TYPE.Microdump;
pub const WerFileTypeMinidump = WER_FILE_TYPE.Minidump;
pub const WerFileTypeHeapdump = WER_FILE_TYPE.Heapdump;
pub const WerFileTypeUserDocument = WER_FILE_TYPE.UserDocument;
pub const WerFileTypeOther = WER_FILE_TYPE.Other;
pub const WerFileTypeTriagedump = WER_FILE_TYPE.Triagedump;
pub const WerFileTypeCustomDump = WER_FILE_TYPE.CustomDump;
pub const WerFileTypeAuxiliaryDump = WER_FILE_TYPE.AuxiliaryDump;
pub const WerFileTypeEtlTrace = WER_FILE_TYPE.EtlTrace;
pub const WerFileTypeMax = WER_FILE_TYPE.Max;

pub const WER_SUBMIT_RESULT = extern enum(i32) {
    ReportQueued = 1,
    ReportUploaded = 2,
    ReportDebug = 3,
    ReportFailed = 4,
    Disabled = 5,
    ReportCancelled = 6,
    DisabledQueue = 7,
    ReportAsync = 8,
    CustomAction = 9,
    Throttled = 10,
    ReportUploadedCab = 11,
    StorageLocationNotFound = 12,
    SubmitResultMax = 13,
};
pub const WerReportQueued = WER_SUBMIT_RESULT.ReportQueued;
pub const WerReportUploaded = WER_SUBMIT_RESULT.ReportUploaded;
pub const WerReportDebug = WER_SUBMIT_RESULT.ReportDebug;
pub const WerReportFailed = WER_SUBMIT_RESULT.ReportFailed;
pub const WerDisabled = WER_SUBMIT_RESULT.Disabled;
pub const WerReportCancelled = WER_SUBMIT_RESULT.ReportCancelled;
pub const WerDisabledQueue = WER_SUBMIT_RESULT.DisabledQueue;
pub const WerReportAsync = WER_SUBMIT_RESULT.ReportAsync;
pub const WerCustomAction = WER_SUBMIT_RESULT.CustomAction;
pub const WerThrottled = WER_SUBMIT_RESULT.Throttled;
pub const WerReportUploadedCab = WER_SUBMIT_RESULT.ReportUploadedCab;
pub const WerStorageLocationNotFound = WER_SUBMIT_RESULT.StorageLocationNotFound;
pub const WerSubmitResultMax = WER_SUBMIT_RESULT.SubmitResultMax;

pub const WER_REPORT_TYPE = extern enum(i32) {
    NonCritical = 0,
    Critical = 1,
    ApplicationCrash = 2,
    ApplicationHang = 3,
    Kernel = 4,
    Invalid = 5,
};
pub const WerReportNonCritical = WER_REPORT_TYPE.NonCritical;
pub const WerReportCritical = WER_REPORT_TYPE.Critical;
pub const WerReportApplicationCrash = WER_REPORT_TYPE.ApplicationCrash;
pub const WerReportApplicationHang = WER_REPORT_TYPE.ApplicationHang;
pub const WerReportKernel = WER_REPORT_TYPE.Kernel;
pub const WerReportInvalid = WER_REPORT_TYPE.Invalid;

pub const WER_REPORT_INFORMATION = extern struct {
    dwSize: u32,
    hProcess: HANDLE,
    wzConsentKey: [64]u16,
    wzFriendlyEventName: [128]u16,
    wzApplicationName: [128]u16,
    wzApplicationPath: [260]u16,
    wzDescription: [512]u16,
    hwndParent: HWND,
};

pub const WER_REPORT_INFORMATION_V3 = extern struct {
    dwSize: u32,
    hProcess: HANDLE,
    wzConsentKey: [64]u16,
    wzFriendlyEventName: [128]u16,
    wzApplicationName: [128]u16,
    wzApplicationPath: [260]u16,
    wzDescription: [512]u16,
    hwndParent: HWND,
    wzNamespacePartner: [64]u16,
    wzNamespaceGroup: [64]u16,
};

pub const WER_DUMP_CUSTOM_OPTIONS = extern struct {
    dwSize: u32,
    dwMask: u32,
    dwDumpFlags: u32,
    bOnlyThisThread: BOOL,
    dwExceptionThreadFlags: u32,
    dwOtherThreadFlags: u32,
    dwExceptionThreadExFlags: u32,
    dwOtherThreadExFlags: u32,
    dwPreferredModuleFlags: u32,
    dwOtherModuleFlags: u32,
    wzPreferredModuleList: [256]u16,
};

pub const WER_DUMP_CUSTOM_OPTIONS_V2 = extern struct {
    dwSize: u32,
    dwMask: u32,
    dwDumpFlags: u32,
    bOnlyThisThread: BOOL,
    dwExceptionThreadFlags: u32,
    dwOtherThreadFlags: u32,
    dwExceptionThreadExFlags: u32,
    dwOtherThreadExFlags: u32,
    dwPreferredModuleFlags: u32,
    dwOtherModuleFlags: u32,
    wzPreferredModuleList: [256]u16,
    dwPreferredModuleResetFlags: u32,
    dwOtherModuleResetFlags: u32,
};

pub const WER_REPORT_INFORMATION_V4 = extern struct {
    dwSize: u32,
    hProcess: HANDLE,
    wzConsentKey: [64]u16,
    wzFriendlyEventName: [128]u16,
    wzApplicationName: [128]u16,
    wzApplicationPath: [260]u16,
    wzDescription: [512]u16,
    hwndParent: HWND,
    wzNamespacePartner: [64]u16,
    wzNamespaceGroup: [64]u16,
    rgbApplicationIdentity: [16]u8,
    hSnapshot: HANDLE,
    hDeleteFilesImpersonationToken: HANDLE,
};

pub const WER_REPORT_INFORMATION_V5 = extern struct {
    dwSize: u32,
    hProcess: HANDLE,
    wzConsentKey: [64]u16,
    wzFriendlyEventName: [128]u16,
    wzApplicationName: [128]u16,
    wzApplicationPath: [260]u16,
    wzDescription: [512]u16,
    hwndParent: HWND,
    wzNamespacePartner: [64]u16,
    wzNamespaceGroup: [64]u16,
    rgbApplicationIdentity: [16]u8,
    hSnapshot: HANDLE,
    hDeleteFilesImpersonationToken: HANDLE,
    submitResultMax: WER_SUBMIT_RESULT,
};

pub const WER_DUMP_CUSTOM_OPTIONS_V3 = extern struct {
    dwSize: u32,
    dwMask: u32,
    dwDumpFlags: u32,
    bOnlyThisThread: BOOL,
    dwExceptionThreadFlags: u32,
    dwOtherThreadFlags: u32,
    dwExceptionThreadExFlags: u32,
    dwOtherThreadExFlags: u32,
    dwPreferredModuleFlags: u32,
    dwOtherModuleFlags: u32,
    wzPreferredModuleList: [256]u16,
    dwPreferredModuleResetFlags: u32,
    dwOtherModuleResetFlags: u32,
    pvDumpKey: *c_void,
    hSnapshot: HANDLE,
    dwThreadID: u32,
};

pub const WER_EXCEPTION_INFORMATION = extern struct {
    pExceptionPointers: *EXCEPTION_POINTERS,
    bClientPointers: BOOL,
};

pub const WER_CONSENT = extern enum(i32) {
    NotAsked = 1,
    Approved = 2,
    Denied = 3,
    AlwaysPrompt = 4,
    Max = 5,
};
pub const WerConsentNotAsked = WER_CONSENT.NotAsked;
pub const WerConsentApproved = WER_CONSENT.Approved;
pub const WerConsentDenied = WER_CONSENT.Denied;
pub const WerConsentAlwaysPrompt = WER_CONSENT.AlwaysPrompt;
pub const WerConsentMax = WER_CONSENT.Max;

pub const WER_DUMP_TYPE = extern enum(i32) {
    None = 0,
    MicroDump = 1,
    MiniDump = 2,
    HeapDump = 3,
    TriageDump = 4,
    Max = 5,
};
pub const WerDumpTypeNone = WER_DUMP_TYPE.None;
pub const WerDumpTypeMicroDump = WER_DUMP_TYPE.MicroDump;
pub const WerDumpTypeMiniDump = WER_DUMP_TYPE.MiniDump;
pub const WerDumpTypeHeapDump = WER_DUMP_TYPE.HeapDump;
pub const WerDumpTypeTriageDump = WER_DUMP_TYPE.TriageDump;
pub const WerDumpTypeMax = WER_DUMP_TYPE.Max;

pub const WER_RUNTIME_EXCEPTION_INFORMATION = extern struct {
    dwSize: u32,
    hProcess: HANDLE,
    hThread: HANDLE,
    exceptionRecord: EXCEPTION_RECORD,
    context: CONTEXT,
    pwszReportId: [*:0]const u16,
    bIsFatal: BOOL,
    dwReserved: u32,
};

pub const PFN_WER_RUNTIME_EXCEPTION_EVENT = fn(
    pContext: *c_void,
    pExceptionInformation: *const WER_RUNTIME_EXCEPTION_INFORMATION,
    pbOwnershipClaimed: *BOOL,
    pwszEventName: [*:0]u16,
    pchSize: *u32,
    pdwSignatureCount: *u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub const PFN_WER_RUNTIME_EXCEPTION_EVENT_SIGNATURE = fn(
    pContext: *c_void,
    pExceptionInformation: *const WER_RUNTIME_EXCEPTION_INFORMATION,
    dwIndex: u32,
    pwszName: [*:0]u16,
    pchName: *u32,
    pwszValue: [*:0]u16,
    pchValue: *u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub const PFN_WER_RUNTIME_EXCEPTION_DEBUGGER_LAUNCH = fn(
    pContext: *c_void,
    pExceptionInformation: *const WER_RUNTIME_EXCEPTION_INFORMATION,
    pbIsCustomDebugger: *BOOL,
    pwszDebuggerLaunch: [*:0]u16,
    pchDebuggerLaunch: *u32,
    pbIsDebuggerAutolaunch: *BOOL,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub const REPORT_STORE_TYPES = extern enum(i32) {
    USER_ARCHIVE = 0,
    USER_QUEUE = 1,
    MACHINE_ARCHIVE = 2,
    MACHINE_QUEUE = 3,
    INVALID = 4,
};
pub const E_STORE_USER_ARCHIVE = REPORT_STORE_TYPES.USER_ARCHIVE;
pub const E_STORE_USER_QUEUE = REPORT_STORE_TYPES.USER_QUEUE;
pub const E_STORE_MACHINE_ARCHIVE = REPORT_STORE_TYPES.MACHINE_ARCHIVE;
pub const E_STORE_MACHINE_QUEUE = REPORT_STORE_TYPES.MACHINE_QUEUE;
pub const E_STORE_INVALID = REPORT_STORE_TYPES.INVALID;

pub const WER_REPORT_PARAMETER = extern struct {
    Name: [129]u16,
    Value: [260]u16,
};

pub const WER_REPORT_SIGNATURE = extern struct {
    EventName: [65]u16,
    Parameters: [10]WER_REPORT_PARAMETER,
};

pub const WER_REPORT_METADATA_V2 = extern struct {
    Signature: WER_REPORT_SIGNATURE,
    BucketId: Guid,
    ReportId: Guid,
    CreationTime: FILETIME,
    SizeInBytes: u64,
    CabId: [260]u16,
    ReportStatus: u32,
    ReportIntegratorId: Guid,
    NumberOfFiles: u32,
    SizeOfFileNames: u32,
    FileNames: PWSTR,
};

pub const WER_REPORT_METADATA_V3 = extern struct {
    Signature: WER_REPORT_SIGNATURE,
    BucketId: Guid,
    ReportId: Guid,
    CreationTime: FILETIME,
    SizeInBytes: u64,
    CabId: [260]u16,
    ReportStatus: u32,
    ReportIntegratorId: Guid,
    NumberOfFiles: u32,
    SizeOfFileNames: u32,
    FileNames: PWSTR,
    FriendlyEventName: [128]u16,
    ApplicationName: [128]u16,
    ApplicationPath: [260]u16,
    Description: [512]u16,
    BucketIdString: [260]u16,
    LegacyBucketId: u64,
};

pub const WER_REPORT_METADATA_V1 = extern struct {
    Signature: WER_REPORT_SIGNATURE,
    BucketId: Guid,
    ReportId: Guid,
    CreationTime: FILETIME,
    SizeInBytes: u64,
};

pub const EFaultRepRetVal = extern enum(i32) {
    Ok = 0,
    OkManifest = 1,
    OkQueued = 2,
    Err = 3,
    ErrNoDW = 4,
    ErrTimeout = 5,
    LaunchDebugger = 6,
    OkHeadless = 7,
    ErrAnotherInstance = 8,
    ErrNoMemory = 9,
    ErrDoubleFault = 10,
};
pub const frrvOk = EFaultRepRetVal.Ok;
pub const frrvOkManifest = EFaultRepRetVal.OkManifest;
pub const frrvOkQueued = EFaultRepRetVal.OkQueued;
pub const frrvErr = EFaultRepRetVal.Err;
pub const frrvErrNoDW = EFaultRepRetVal.ErrNoDW;
pub const frrvErrTimeout = EFaultRepRetVal.ErrTimeout;
pub const frrvLaunchDebugger = EFaultRepRetVal.LaunchDebugger;
pub const frrvOkHeadless = EFaultRepRetVal.OkHeadless;
pub const frrvErrAnotherInstance = EFaultRepRetVal.ErrAnotherInstance;
pub const frrvErrNoMemory = EFaultRepRetVal.ErrNoMemory;
pub const frrvErrDoubleFault = EFaultRepRetVal.ErrDoubleFault;

pub const pfn_REPORTFAULT = fn(
    param0: *EXCEPTION_POINTERS,
    param1: u32,
) callconv(@import("std").os.windows.WINAPI) EFaultRepRetVal;

pub const pfn_ADDEREXCLUDEDAPPLICATIONA = fn(
    param0: [*:0]const u8,
) callconv(@import("std").os.windows.WINAPI) EFaultRepRetVal;

pub const pfn_ADDEREXCLUDEDAPPLICATIONW = fn(
    param0: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) EFaultRepRetVal;


//--------------------------------------------------------------------------------
// Section: Functions (41)
//--------------------------------------------------------------------------------
pub extern "wer" fn WerReportCreate(
    pwzEventType: [*:0]const u16,
    repType: WerReportCreate_repTypeFlags,
    pReportInformation: ?*WER_REPORT_INFORMATION,
    phReportHandle: *?*c_void,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerReportSetParameter(
    hReportHandle: ?*c_void,
    dwparamID: u32,
    pwzName: ?[*:0]const u16,
    pwzValue: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerReportAddFile(
    hReportHandle: ?*c_void,
    pwzPath: [*:0]const u16,
    repFileType: WER_FILE_TYPE,
    dwFileFlags: WER_FILE,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerReportSetUIOption(
    hReportHandle: ?*c_void,
    repUITypeID: WER_REPORT_UI,
    pwzValue: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerReportSubmit(
    hReportHandle: ?*c_void,
    consent: WerReportSubmit_consentFlags,
    dwFlags: WerReportSubmit_dwFlags,
    pSubmitResult: WerReportSubmit_pSubmitResultFlags,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerReportAddDump(
    hReportHandle: ?*c_void,
    hProcess: HANDLE,
    hThread: HANDLE,
    dumpType: WER_DUMP_TYPE,
    pExceptionParam: ?*WER_EXCEPTION_INFORMATION,
    pDumpCustomOptions: ?*WER_DUMP_CUSTOM_OPTIONS,
    dwFlags: u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerReportCloseHandle(
    hReportHandle: ?*c_void,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerRegisterFile(
    pwzFile: [*:0]const u16,
    regFileType: WerRegisterFile_regFileTypeFlags,
    dwFlags: WER_FILE,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerUnregisterFile(
    pwzFilePath: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerRegisterMemoryBlock(
    pvAddress: *c_void,
    dwSize: u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerUnregisterMemoryBlock(
    pvAddress: *c_void,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerRegisterExcludedMemoryBlock(
    address: *const c_void,
    size: u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerUnregisterExcludedMemoryBlock(
    address: *const c_void,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerRegisterCustomMetadata(
    key: [*:0]const u16,
    value: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerUnregisterCustomMetadata(
    key: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerRegisterAdditionalProcess(
    processId: u32,
    captureExtraInfoForThreadId: u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerUnregisterAdditionalProcess(
    processId: u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerRegisterAppLocalDump(
    localAppDataRelativePath: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerUnregisterAppLocalDump(
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerSetFlags(
    dwFlags: WER_FAULT_REPORTING,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerGetFlags(
    hProcess: HANDLE,
    pdwFlags: *WER_FAULT_REPORTING,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerAddExcludedApplication(
    pwzExeName: [*:0]const u16,
    bAllUsers: BOOL,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerRemoveExcludedApplication(
    pwzExeName: [*:0]const u16,
    bAllUsers: BOOL,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerRegisterRuntimeExceptionModule(
    pwszOutOfProcessCallbackDll: [*:0]const u16,
    pContext: *c_void,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerUnregisterRuntimeExceptionModule(
    pwszOutOfProcessCallbackDll: [*:0]const u16,
    pContext: *c_void,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerStoreOpen(
    repStoreType: REPORT_STORE_TYPES,
    phReportStore: **c_void,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerStoreClose(
    hReportStore: ?*c_void,
) callconv(@import("std").os.windows.WINAPI) void;

pub extern "wer" fn WerStoreGetFirstReportKey(
    hReportStore: *c_void,
    ppszReportKey: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerStoreGetNextReportKey(
    hReportStore: *c_void,
    ppszReportKey: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerStoreQueryReportMetadataV2(
    hReportStore: *c_void,
    pszReportKey: [*:0]const u16,
    pReportMetadata: *WER_REPORT_METADATA_V2,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerStoreQueryReportMetadataV3(
    hReportStore: *c_void,
    pszReportKey: [*:0]const u16,
    pReportMetadata: *WER_REPORT_METADATA_V3,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerFreeString(
    pwszStr: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) void;

pub extern "wer" fn WerStorePurge(
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerStoreGetReportCount(
    hReportStore: *c_void,
    pdwReportCount: *u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerStoreGetSizeOnDisk(
    hReportStore: *c_void,
    pqwSizeInBytes: *u64,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerStoreQueryReportMetadataV1(
    hReportStore: *c_void,
    pszReportKey: [*:0]const u16,
    pReportMetadata: *WER_REPORT_METADATA_V1,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerStoreUploadReport(
    hReportStore: *c_void,
    pszReportKey: [*:0]const u16,
    dwFlags: u32,
    pSubmitResult: ?*WER_SUBMIT_RESULT,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "faultrep" fn ReportFault(
    pep: *EXCEPTION_POINTERS,
    dwOpt: u32,
) callconv(@import("std").os.windows.WINAPI) EFaultRepRetVal;

pub extern "faultrep" fn AddERExcludedApplicationA(
    szApplication: [*:0]const u8,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "faultrep" fn AddERExcludedApplicationW(
    wszApplication: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "faultrep" fn WerReportHang(
    hwndHungApp: HWND,
    pwzHungApplicationName: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;


//--------------------------------------------------------------------------------
// Section: Unicode Aliases (2)
//--------------------------------------------------------------------------------
pub usingnamespace switch (@import("../zig.zig").unicode_mode) {
    .ansi => struct {
        pub const pfn_ADDEREXCLUDEDAPPLICATION = pfn_ADDEREXCLUDEDAPPLICATIONA;
        pub const AddERExcludedApplication = AddERExcludedApplicationA;
    },
    .wide => struct {
        pub const pfn_ADDEREXCLUDEDAPPLICATION = pfn_ADDEREXCLUDEDAPPLICATIONW;
        pub const AddERExcludedApplication = AddERExcludedApplicationW;
    },
    .unspecified => if (@import("builtin").is_test) struct {
        pub const pfn_ADDEREXCLUDEDAPPLICATION = *opaque{};
        pub const AddERExcludedApplication = *opaque{};
    } else struct {
        pub const pfn_ADDEREXCLUDEDAPPLICATION = @compileError("'pfn_ADDEREXCLUDEDAPPLICATION' requires that UNICODE be set to true or false in the root module");
        pub const AddERExcludedApplication = @compileError("'AddERExcludedApplication' requires that UNICODE be set to true or false in the root module");
    },
};
//--------------------------------------------------------------------------------
// Section: Imports (11)
//--------------------------------------------------------------------------------
const Guid = @import("../zig.zig").Guid;
const PWSTR = @import("system_services.zig").PWSTR;
const FILETIME = @import("windows_programming.zig").FILETIME;
const HRESULT = @import("com.zig").HRESULT;
const CONTEXT = @import("debug.zig").CONTEXT;
const HANDLE = @import("system_services.zig").HANDLE;
const EXCEPTION_POINTERS = @import("debug.zig").EXCEPTION_POINTERS;
const PSTR = @import("system_services.zig").PSTR;
const BOOL = @import("system_services.zig").BOOL;
const HWND = @import("windows_and_messaging.zig").HWND;
const EXCEPTION_RECORD = @import("debug.zig").EXCEPTION_RECORD;

test {
    // The following '_ = <FuncPtrType>' lines are a workaround for https://github.com/ziglang/zig/issues/4476
    _ = PFN_WER_RUNTIME_EXCEPTION_EVENT;
    _ = PFN_WER_RUNTIME_EXCEPTION_EVENT_SIGNATURE;
    _ = PFN_WER_RUNTIME_EXCEPTION_DEBUGGER_LAUNCH;
    _ = pfn_REPORTFAULT;
    _ = pfn_ADDEREXCLUDEDAPPLICATIONA;
    _ = pfn_ADDEREXCLUDEDAPPLICATIONW;

    const constant_export_count = 38;
    const type_export_count = 36;
    const enum_value_export_count = 91;
    const com_iface_id_export_count = 0;
    const com_class_id_export_count = 0;
    const func_export_count = 41;
    const unicode_alias_count = 2;
    const import_count = 11;
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