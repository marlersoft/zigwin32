//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (2)
//--------------------------------------------------------------------------------
pub const JS_SOURCE_CONTEXT_NONE : u64 = 18446744073709551615;
pub const JsRuntimeVersionEdge : i32 = -1;

//--------------------------------------------------------------------------------
// Section: Types (11)
//--------------------------------------------------------------------------------
pub const JsRuntimeVersion = extern enum(i32) {
    @"10" = 0,
    @"11" = 1,
    Edge = -1,
};
// TODO: enum 'JsRuntimeVersion' has known issues with its value aliases

pub const JsErrorCode = extern enum(u32) {
    NoError = 0,
    ErrorCategoryUsage = 65536,
    ErrorInvalidArgument = 65537,
    ErrorNullArgument = 65538,
    ErrorNoCurrentContext = 65539,
    ErrorInExceptionState = 65540,
    ErrorNotImplemented = 65541,
    ErrorWrongThread = 65542,
    ErrorRuntimeInUse = 65543,
    ErrorBadSerializedScript = 65544,
    ErrorInDisabledState = 65545,
    ErrorCannotDisableExecution = 65546,
    ErrorHeapEnumInProgress = 65547,
    ErrorArgumentNotObject = 65548,
    ErrorInProfileCallback = 65549,
    ErrorInThreadServiceCallback = 65550,
    ErrorCannotSerializeDebugScript = 65551,
    ErrorAlreadyDebuggingContext = 65552,
    ErrorAlreadyProfilingContext = 65553,
    ErrorIdleNotEnabled = 65554,
    ErrorCategoryEngine = 131072,
    ErrorOutOfMemory = 131073,
    ErrorCategoryScript = 196608,
    ErrorScriptException = 196609,
    ErrorScriptCompile = 196610,
    ErrorScriptTerminated = 196611,
    ErrorScriptEvalDisabled = 196612,
    ErrorCategoryFatal = 262144,
    ErrorFatal = 262145,
};
pub const JsNoError = JsErrorCode.NoError;
pub const JsErrorCategoryUsage = JsErrorCode.ErrorCategoryUsage;
pub const JsErrorInvalidArgument = JsErrorCode.ErrorInvalidArgument;
pub const JsErrorNullArgument = JsErrorCode.ErrorNullArgument;
pub const JsErrorNoCurrentContext = JsErrorCode.ErrorNoCurrentContext;
pub const JsErrorInExceptionState = JsErrorCode.ErrorInExceptionState;
pub const JsErrorNotImplemented = JsErrorCode.ErrorNotImplemented;
pub const JsErrorWrongThread = JsErrorCode.ErrorWrongThread;
pub const JsErrorRuntimeInUse = JsErrorCode.ErrorRuntimeInUse;
pub const JsErrorBadSerializedScript = JsErrorCode.ErrorBadSerializedScript;
pub const JsErrorInDisabledState = JsErrorCode.ErrorInDisabledState;
pub const JsErrorCannotDisableExecution = JsErrorCode.ErrorCannotDisableExecution;
pub const JsErrorHeapEnumInProgress = JsErrorCode.ErrorHeapEnumInProgress;
pub const JsErrorArgumentNotObject = JsErrorCode.ErrorArgumentNotObject;
pub const JsErrorInProfileCallback = JsErrorCode.ErrorInProfileCallback;
pub const JsErrorInThreadServiceCallback = JsErrorCode.ErrorInThreadServiceCallback;
pub const JsErrorCannotSerializeDebugScript = JsErrorCode.ErrorCannotSerializeDebugScript;
pub const JsErrorAlreadyDebuggingContext = JsErrorCode.ErrorAlreadyDebuggingContext;
pub const JsErrorAlreadyProfilingContext = JsErrorCode.ErrorAlreadyProfilingContext;
pub const JsErrorIdleNotEnabled = JsErrorCode.ErrorIdleNotEnabled;
pub const JsErrorCategoryEngine = JsErrorCode.ErrorCategoryEngine;
pub const JsErrorOutOfMemory = JsErrorCode.ErrorOutOfMemory;
pub const JsErrorCategoryScript = JsErrorCode.ErrorCategoryScript;
pub const JsErrorScriptException = JsErrorCode.ErrorScriptException;
pub const JsErrorScriptCompile = JsErrorCode.ErrorScriptCompile;
pub const JsErrorScriptTerminated = JsErrorCode.ErrorScriptTerminated;
pub const JsErrorScriptEvalDisabled = JsErrorCode.ErrorScriptEvalDisabled;
pub const JsErrorCategoryFatal = JsErrorCode.ErrorCategoryFatal;
pub const JsErrorFatal = JsErrorCode.ErrorFatal;

pub const JsRuntimeAttributes = extern enum(i32) {
    None = 0,
    DisableBackgroundWork = 1,
    AllowScriptInterrupt = 2,
    EnableIdleProcessing = 4,
    DisableNativeCodeGeneration = 8,
    DisableEval = 16,
};
pub const JsRuntimeAttributeNone = JsRuntimeAttributes.None;
pub const JsRuntimeAttributeDisableBackgroundWork = JsRuntimeAttributes.DisableBackgroundWork;
pub const JsRuntimeAttributeAllowScriptInterrupt = JsRuntimeAttributes.AllowScriptInterrupt;
pub const JsRuntimeAttributeEnableIdleProcessing = JsRuntimeAttributes.EnableIdleProcessing;
pub const JsRuntimeAttributeDisableNativeCodeGeneration = JsRuntimeAttributes.DisableNativeCodeGeneration;
pub const JsRuntimeAttributeDisableEval = JsRuntimeAttributes.DisableEval;

pub const JsMemoryEventType = extern enum(i32) {
    Allocate = 0,
    Free = 1,
    Failure = 2,
};
pub const JsMemoryAllocate = JsMemoryEventType.Allocate;
pub const JsMemoryFree = JsMemoryEventType.Free;
pub const JsMemoryFailure = JsMemoryEventType.Failure;

pub const JsMemoryAllocationCallback = fn(
    callbackState: ?*c_void,
    allocationEvent: JsMemoryEventType,
    allocationSize: ?*c_void,
) callconv(@import("std").os.windows.WINAPI) bool;

pub const JsBeforeCollectCallback = fn(
    callbackState: ?*c_void,
) callconv(@import("std").os.windows.WINAPI) void;

pub const JsBackgroundWorkItemCallback = fn(
    callbackState: ?*c_void,
) callconv(@import("std").os.windows.WINAPI) void;

pub const JsThreadServiceCallback = fn(
    callback: JsBackgroundWorkItemCallback,
    callbackState: ?*c_void,
) callconv(@import("std").os.windows.WINAPI) bool;

pub const JsValueType = extern enum(i32) {
    Undefined = 0,
    Null = 1,
    Number = 2,
    String = 3,
    Boolean = 4,
    Object = 5,
    Function = 6,
    Error = 7,
    Array = 8,
};
pub const JsUndefined = JsValueType.Undefined;
pub const JsNull = JsValueType.Null;
pub const JsNumber = JsValueType.Number;
pub const JsString = JsValueType.String;
pub const JsBoolean = JsValueType.Boolean;
pub const JsObject = JsValueType.Object;
pub const JsFunction = JsValueType.Function;
pub const JsError = JsValueType.Error;
pub const JsArray = JsValueType.Array;

pub const JsFinalizeCallback = fn(
    data: ?*c_void,
) callconv(@import("std").os.windows.WINAPI) void;

pub const JsNativeFunction = fn(
    callee: *c_void,
    isConstructCall: bool,
    arguments: **c_void,
    argumentCount: u16,
    callbackState: ?*c_void,
) callconv(@import("std").os.windows.WINAPI) *c_void;


//--------------------------------------------------------------------------------
// Section: Functions (85)
//--------------------------------------------------------------------------------
pub extern "chakra" fn JsCreateRuntime(
    attributes: JsRuntimeAttributes,
    runtimeVersion: JsRuntimeVersion,
    threadService: ?JsThreadServiceCallback,
    runtime: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsCollectGarbage(
    runtime: *c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsDisposeRuntime(
    runtime: *c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsGetRuntimeMemoryUsage(
    runtime: *c_void,
    memoryUsage: *?*c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsGetRuntimeMemoryLimit(
    runtime: *c_void,
    memoryLimit: *?*c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsSetRuntimeMemoryLimit(
    runtime: *c_void,
    memoryLimit: ?*c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsSetRuntimeMemoryAllocationCallback(
    runtime: *c_void,
    callbackState: ?*c_void,
    allocationCallback: JsMemoryAllocationCallback,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsSetRuntimeBeforeCollectCallback(
    runtime: *c_void,
    callbackState: ?*c_void,
    beforeCollectCallback: JsBeforeCollectCallback,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsAddRef(
    ref: *c_void,
    count: ?*u32,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsRelease(
    ref: *c_void,
    count: ?*u32,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsCreateContext(
    runtime: *c_void,
    debugApplication: *IDebugApplication32,
    newContext: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsGetCurrentContext(
    currentContext: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsSetCurrentContext(
    context: *c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsGetRuntime(
    context: *c_void,
    runtime: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsStartDebugging(
    debugApplication: *IDebugApplication32,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsIdle(
    nextIdleTick: ?*u32,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsParseScript(
    script: [*:0]const u16,
    sourceContext: ?*c_void,
    sourceUrl: [*:0]const u16,
    result: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsRunScript(
    script: [*:0]const u16,
    sourceContext: ?*c_void,
    sourceUrl: [*:0]const u16,
    result: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsSerializeScript(
    script: [*:0]const u16,
    buffer: ?[*:0]u8,
    bufferSize: *u32,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsParseSerializedScript(
    script: [*:0]const u16,
    buffer: *u8,
    sourceContext: ?*c_void,
    sourceUrl: [*:0]const u16,
    result: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsRunSerializedScript(
    script: [*:0]const u16,
    buffer: *u8,
    sourceContext: ?*c_void,
    sourceUrl: [*:0]const u16,
    result: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsGetPropertyIdFromName(
    name: [*:0]const u16,
    propertyId: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsGetPropertyNameFromId(
    propertyId: *c_void,
    name: *const *const u16,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsGetUndefinedValue(
    undefinedValue: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsGetNullValue(
    nullValue: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsGetTrueValue(
    trueValue: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsGetFalseValue(
    falseValue: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsBoolToBoolean(
    value: u8,
    booleanValue: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsBooleanToBool(
    value: *c_void,
    boolValue: *bool,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsConvertValueToBoolean(
    value: *c_void,
    booleanValue: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsGetValueType(
    value: *c_void,
    type: *JsValueType,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsDoubleToNumber(
    doubleValue: f64,
    value: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsIntToNumber(
    intValue: i32,
    value: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsNumberToDouble(
    value: *c_void,
    doubleValue: *f64,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsConvertValueToNumber(
    value: *c_void,
    numberValue: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsGetStringLength(
    stringValue: *c_void,
    length: *i32,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsPointerToString(
    stringValue: [*:0]const u16,
    stringLength: ?*c_void,
    value: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsStringToPointer(
    value: *c_void,
    stringValue: *const *const u16,
    stringLength: *?*c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsConvertValueToString(
    value: *c_void,
    stringValue: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsVariantToValue(
    variant: *VARIANT,
    value: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsValueToVariant(
    object: *c_void,
    variant: *VARIANT,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsGetGlobalObject(
    globalObject: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsCreateObject(
    object: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsCreateExternalObject(
    data: ?*c_void,
    finalizeCallback: ?JsFinalizeCallback,
    object: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsConvertValueToObject(
    value: *c_void,
    object: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsGetPrototype(
    object: *c_void,
    prototypeObject: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsSetPrototype(
    object: *c_void,
    prototypeObject: *c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsGetExtensionAllowed(
    object: *c_void,
    value: *bool,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsPreventExtension(
    object: *c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsGetProperty(
    object: *c_void,
    propertyId: *c_void,
    value: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsGetOwnPropertyDescriptor(
    object: *c_void,
    propertyId: *c_void,
    propertyDescriptor: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsGetOwnPropertyNames(
    object: *c_void,
    propertyNames: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsSetProperty(
    object: *c_void,
    propertyId: *c_void,
    value: *c_void,
    useStrictRules: u8,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsHasProperty(
    object: *c_void,
    propertyId: *c_void,
    hasProperty: *bool,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsDeleteProperty(
    object: *c_void,
    propertyId: *c_void,
    useStrictRules: u8,
    result: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsDefineProperty(
    object: *c_void,
    propertyId: *c_void,
    propertyDescriptor: *c_void,
    result: *bool,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsHasIndexedProperty(
    object: *c_void,
    index: *c_void,
    result: *bool,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsGetIndexedProperty(
    object: *c_void,
    index: *c_void,
    result: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsSetIndexedProperty(
    object: *c_void,
    index: *c_void,
    value: *c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsDeleteIndexedProperty(
    object: *c_void,
    index: *c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsEquals(
    object1: *c_void,
    object2: *c_void,
    result: *bool,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsStrictEquals(
    object1: *c_void,
    object2: *c_void,
    result: *bool,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsHasExternalData(
    object: *c_void,
    value: *bool,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsGetExternalData(
    object: *c_void,
    externalData: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsSetExternalData(
    object: *c_void,
    externalData: ?*c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsCreateArray(
    length: u32,
    result: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsCallFunction(
    function: *c_void,
    arguments: [*]*c_void,
    argumentCount: u16,
    result: ?*?*c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsConstructObject(
    function: *c_void,
    arguments: [*]*c_void,
    argumentCount: u16,
    result: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsCreateFunction(
    nativeFunction: JsNativeFunction,
    callbackState: ?*c_void,
    function: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsCreateError(
    message: *c_void,
    @"error": **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsCreateRangeError(
    message: *c_void,
    @"error": **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsCreateReferenceError(
    message: *c_void,
    @"error": **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsCreateSyntaxError(
    message: *c_void,
    @"error": **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsCreateTypeError(
    message: *c_void,
    @"error": **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsCreateURIError(
    message: *c_void,
    @"error": **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsHasException(
    hasException: *bool,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsGetAndClearException(
    exception: **c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsSetException(
    exception: *c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsDisableRuntimeExecution(
    runtime: *c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsEnableRuntimeExecution(
    runtime: *c_void,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsIsRuntimeExecutionDisabled(
    runtime: *c_void,
    isDisabled: *bool,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsStartProfiling(
    callback: *IActiveScriptProfilerCallback,
    eventMask: PROFILER_EVENT_MASK,
    context: u32,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsStopProfiling(
    reason: HRESULT,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsEnumerateHeap(
    enumerator: **IActiveScriptProfilerHeapEnum,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;

pub extern "chakra" fn JsIsEnumeratingHeap(
    isEnumeratingHeap: *bool,
) callconv(@import("std").os.windows.WINAPI) JsErrorCode;


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
// Section: Imports (7)
//--------------------------------------------------------------------------------
const PWSTR = @import("system_services.zig").PWSTR;
const VARIANT = @import("automation.zig").VARIANT;
const HRESULT = @import("com.zig").HRESULT;
const IActiveScriptProfilerCallback = @import("debug.zig").IActiveScriptProfilerCallback;
const IActiveScriptProfilerHeapEnum = @import("debug.zig").IActiveScriptProfilerHeapEnum;
const PROFILER_EVENT_MASK = @import("debug.zig").PROFILER_EVENT_MASK;
const IDebugApplication32 = @import("debug.zig").IDebugApplication32;

test {
    // The following '_ = <FuncPtrType>' lines are a workaround for https://github.com/ziglang/zig/issues/4476
    _ = JsMemoryAllocationCallback;
    _ = JsBeforeCollectCallback;
    _ = JsBackgroundWorkItemCallback;
    _ = JsThreadServiceCallback;
    _ = JsFinalizeCallback;
    _ = JsNativeFunction;

    const constant_export_count = 2;
    const type_export_count = 11;
    const enum_value_export_count = 47;
    const com_iface_id_export_count = 0;
    const com_class_id_export_count = 0;
    const func_export_count = 85;
    const unicode_alias_count = 0;
    const import_count = 7;
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