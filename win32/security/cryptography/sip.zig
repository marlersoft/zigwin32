//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (24)
//--------------------------------------------------------------------------------
pub const MSSIP_FLAGS_PROHIBIT_RESIZE_ON_CREATE = @as(u32, 65536);
pub const MSSIP_FLAGS_USE_CATALOG = @as(u32, 131072);
pub const MSSIP_FLAGS_MULTI_HASH = @as(u32, 262144);
pub const SPC_INC_PE_RESOURCES_FLAG = @as(u32, 128);
pub const SPC_INC_PE_DEBUG_INFO_FLAG = @as(u32, 64);
pub const SPC_INC_PE_IMPORT_ADDR_TABLE_FLAG = @as(u32, 32);
pub const SPC_EXC_PE_PAGE_HASHES_FLAG = @as(u32, 16);
pub const SPC_INC_PE_PAGE_HASHES_FLAG = @as(u32, 256);
pub const SPC_DIGEST_GENERATE_FLAG = @as(u32, 512);
pub const SPC_DIGEST_SIGN_FLAG = @as(u32, 1024);
pub const SPC_DIGEST_SIGN_EX_FLAG = @as(u32, 16384);
pub const SPC_RELAXED_PE_MARKER_CHECK = @as(u32, 2048);
pub const SPC_MARKER_CHECK_SKIP_SIP_INDIRECT_DATA_FLAG = @as(u32, 1);
pub const SPC_MARKER_CHECK_CURRENTLY_SUPPORTED_FLAGS = @as(u32, 1);
pub const MSSIP_ADDINFO_NONE = @as(u32, 0);
pub const MSSIP_ADDINFO_FLAT = @as(u32, 1);
pub const MSSIP_ADDINFO_CATMEMBER = @as(u32, 2);
pub const MSSIP_ADDINFO_BLOB = @as(u32, 3);
pub const MSSIP_ADDINFO_NONMSSIP = @as(u32, 500);
pub const SIP_CAP_SET_VERSION_2 = @as(u32, 2);
pub const SIP_CAP_SET_VERSION_3 = @as(u32, 3);
pub const SIP_CAP_SET_CUR_VER = @as(u32, 3);
pub const SIP_CAP_FLAG_SEALING = @as(u32, 1);
pub const SIP_MAX_MAGIC_NUMBER = @as(u32, 4);

//--------------------------------------------------------------------------------
// Section: Types (17)
//--------------------------------------------------------------------------------
pub const SIP_SUBJECTINFO = extern struct {
    cbSize: u32,
    pgSubjectType: ?*Guid,
    hFile: ?HANDLE,
    pwsFileName: ?[*:0]const u16,
    pwsDisplayName: ?[*:0]const u16,
    dwReserved1: u32,
    dwIntVersion: u32,
    hProv: usize,
    DigestAlgorithm: CRYPT_ALGORITHM_IDENTIFIER,
    dwFlags: u32,
    dwEncodingType: u32,
    dwReserved2: u32,
    fdwCAPISettings: u32,
    fdwSecuritySettings: u32,
    dwIndex: u32,
    dwUnionChoice: u32,
    Anonymous: extern union {
        psFlat: ?*MS_ADDINFO_FLAT,
        psCatMember: ?*MS_ADDINFO_CATALOGMEMBER,
        psBlob: ?*MS_ADDINFO_BLOB,
    },
    pClientData: ?*anyopaque,
};

pub const MS_ADDINFO_FLAT = extern struct {
    cbStruct: u32,
    pIndirectData: ?*SIP_INDIRECT_DATA,
};

pub const MS_ADDINFO_BLOB = extern struct {
    cbStruct: u32,
    cbMemObject: u32,
    pbMemObject: ?*u8,
    cbMemSignedMsg: u32,
    pbMemSignedMsg: ?*u8,
};

pub const SIP_CAP_SET_V2 = extern struct {
    cbSize: u32,
    dwVersion: u32,
    isMultiSign: BOOL,
    dwReserved: u32,
};

pub const SIP_CAP_SET_V3 = extern struct {
    cbSize: u32,
    dwVersion: u32,
    isMultiSign: BOOL,
    Anonymous: extern union {
        dwFlags: u32,
        dwReserved: u32,
    },
};

pub const SIP_INDIRECT_DATA = extern struct {
    Data: CRYPT_ATTRIBUTE_TYPE_VALUE,
    DigestAlgorithm: CRYPT_ALGORITHM_IDENTIFIER,
    Digest: CRYPTOAPI_BLOB,
};

pub const pCryptSIPGetSignedDataMsg = *const fn(
    pSubjectInfo: ?*SIP_SUBJECTINFO,
    pdwEncodingType: ?*u32,
    dwIndex: u32,
    pcbSignedDataMsg: ?*u32,
    pbSignedDataMsg: ?*u8,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub const pCryptSIPPutSignedDataMsg = *const fn(
    pSubjectInfo: ?*SIP_SUBJECTINFO,
    dwEncodingType: u32,
    pdwIndex: ?*u32,
    cbSignedDataMsg: u32,
    pbSignedDataMsg: ?*u8,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub const pCryptSIPCreateIndirectData = *const fn(
    pSubjectInfo: ?*SIP_SUBJECTINFO,
    pcbIndirectData: ?*u32,
    pIndirectData: ?*SIP_INDIRECT_DATA,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub const pCryptSIPVerifyIndirectData = *const fn(
    pSubjectInfo: ?*SIP_SUBJECTINFO,
    pIndirectData: ?*SIP_INDIRECT_DATA,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub const pCryptSIPRemoveSignedDataMsg = *const fn(
    pSubjectInfo: ?*SIP_SUBJECTINFO,
    dwIndex: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub const SIP_DISPATCH_INFO = extern struct {
    cbSize: u32,
    hSIP: ?HANDLE,
    pfGet: ?pCryptSIPGetSignedDataMsg,
    pfPut: ?pCryptSIPPutSignedDataMsg,
    pfCreate: ?pCryptSIPCreateIndirectData,
    pfVerify: ?pCryptSIPVerifyIndirectData,
    pfRemove: ?pCryptSIPRemoveSignedDataMsg,
};

pub const pfnIsFileSupported = *const fn(
    hFile: ?HANDLE,
    pgSubject: ?*Guid,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub const pfnIsFileSupportedName = *const fn(
    pwszFileName: ?PWSTR,
    pgSubject: ?*Guid,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub const SIP_ADD_NEWPROVIDER = extern struct {
    cbStruct: u32,
    pgSubject: ?*Guid,
    pwszDLLFileName: ?PWSTR,
    pwszMagicNumber: ?PWSTR,
    pwszIsFunctionName: ?PWSTR,
    pwszGetFuncName: ?PWSTR,
    pwszPutFuncName: ?PWSTR,
    pwszCreateFuncName: ?PWSTR,
    pwszVerifyFuncName: ?PWSTR,
    pwszRemoveFuncName: ?PWSTR,
    pwszIsFunctionNameFmt2: ?PWSTR,
    pwszGetCapFuncName: ?PWSTR,
};

pub const pCryptSIPGetCaps = *const fn(
    pSubjInfo: ?*SIP_SUBJECTINFO,
    pCaps: ?*SIP_CAP_SET_V3,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub const pCryptSIPGetSealedDigest = *const fn(
    pSubjectInfo: ?*SIP_SUBJECTINFO,
    pSig: ?[*:0]const u8,
    dwSig: u32,
    pbDigest: ?[*:0]u8,
    pcbDigest: ?*u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;


//--------------------------------------------------------------------------------
// Section: Functions (12)
//--------------------------------------------------------------------------------
// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "wintrust" fn CryptSIPGetSignedDataMsg(
    pSubjectInfo: ?*SIP_SUBJECTINFO,
    pdwEncodingType: ?*CERT_QUERY_ENCODING_TYPE,
    dwIndex: u32,
    pcbSignedDataMsg: ?*u32,
    pbSignedDataMsg: ?*u8,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "wintrust" fn CryptSIPPutSignedDataMsg(
    pSubjectInfo: ?*SIP_SUBJECTINFO,
    dwEncodingType: CERT_QUERY_ENCODING_TYPE,
    pdwIndex: ?*u32,
    cbSignedDataMsg: u32,
    pbSignedDataMsg: ?*u8,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "wintrust" fn CryptSIPCreateIndirectData(
    pSubjectInfo: ?*SIP_SUBJECTINFO,
    pcbIndirectData: ?*u32,
    pIndirectData: ?*SIP_INDIRECT_DATA,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "wintrust" fn CryptSIPVerifyIndirectData(
    pSubjectInfo: ?*SIP_SUBJECTINFO,
    pIndirectData: ?*SIP_INDIRECT_DATA,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "wintrust" fn CryptSIPRemoveSignedDataMsg(
    pSubjectInfo: ?*SIP_SUBJECTINFO,
    dwIndex: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "crypt32" fn CryptSIPLoad(
    pgSubject: ?*const Guid,
    dwFlags: u32,
    pSipDispatch: ?*SIP_DISPATCH_INFO,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "crypt32" fn CryptSIPRetrieveSubjectGuid(
    FileName: ?[*:0]const u16,
    hFileIn: ?HANDLE,
    pgSubject: ?*Guid,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "crypt32" fn CryptSIPRetrieveSubjectGuidForCatalogFile(
    FileName: ?[*:0]const u16,
    hFileIn: ?HANDLE,
    pgSubject: ?*Guid,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "crypt32" fn CryptSIPAddProvider(
    psNewProv: ?*SIP_ADD_NEWPROVIDER,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "crypt32" fn CryptSIPRemoveProvider(
    pgProv: ?*Guid,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows8.0'
pub extern "wintrust" fn CryptSIPGetCaps(
    pSubjInfo: ?*SIP_SUBJECTINFO,
    pCaps: ?*SIP_CAP_SET_V3,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "wintrust" fn CryptSIPGetSealedDigest(
    pSubjectInfo: ?*SIP_SUBJECTINFO,
    pSig: ?[*:0]const u8,
    dwSig: u32,
    pbDigest: ?[*:0]u8,
    pcbDigest: ?*u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;


//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
// Section: Imports (9)
//--------------------------------------------------------------------------------
const Guid = @import("../../zig.zig").Guid;
const BOOL = @import("../../foundation.zig").BOOL;
const CERT_QUERY_ENCODING_TYPE = @import("../../security/cryptography.zig").CERT_QUERY_ENCODING_TYPE;
const CRYPT_ALGORITHM_IDENTIFIER = @import("../../security/cryptography.zig").CRYPT_ALGORITHM_IDENTIFIER;
const CRYPT_ATTRIBUTE_TYPE_VALUE = @import("../../security/cryptography.zig").CRYPT_ATTRIBUTE_TYPE_VALUE;
const CRYPTOAPI_BLOB = @import("../../security/cryptography.zig").CRYPTOAPI_BLOB;
const HANDLE = @import("../../foundation.zig").HANDLE;
const MS_ADDINFO_CATALOGMEMBER = @import("../../security/cryptography/catalog.zig").MS_ADDINFO_CATALOGMEMBER;
const PWSTR = @import("../../foundation.zig").PWSTR;

test {
    // The following '_ = <FuncPtrType>' lines are a workaround for https://github.com/ziglang/zig/issues/4476
    if (@hasDecl(@This(), "pCryptSIPGetSignedDataMsg")) { _ = pCryptSIPGetSignedDataMsg; }
    if (@hasDecl(@This(), "pCryptSIPPutSignedDataMsg")) { _ = pCryptSIPPutSignedDataMsg; }
    if (@hasDecl(@This(), "pCryptSIPCreateIndirectData")) { _ = pCryptSIPCreateIndirectData; }
    if (@hasDecl(@This(), "pCryptSIPVerifyIndirectData")) { _ = pCryptSIPVerifyIndirectData; }
    if (@hasDecl(@This(), "pCryptSIPRemoveSignedDataMsg")) { _ = pCryptSIPRemoveSignedDataMsg; }
    if (@hasDecl(@This(), "pfnIsFileSupported")) { _ = pfnIsFileSupported; }
    if (@hasDecl(@This(), "pfnIsFileSupportedName")) { _ = pfnIsFileSupportedName; }
    if (@hasDecl(@This(), "pCryptSIPGetCaps")) { _ = pCryptSIPGetCaps; }
    if (@hasDecl(@This(), "pCryptSIPGetSealedDigest")) { _ = pCryptSIPGetSealedDigest; }

    @setEvalBranchQuota(
        comptime @import("std").meta.declarations(@This()).len * 3
    );

    // reference all the pub declarations
    if (!@import("builtin").is_test) return;
    inline for (comptime @import("std").meta.declarations(@This())) |decl| {
        _ = @field(@This(), decl.name);
    }
}
