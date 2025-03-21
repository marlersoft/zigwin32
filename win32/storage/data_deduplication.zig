//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (1)
//--------------------------------------------------------------------------------
pub const DEDUP_CHUNKLIB_MAX_CHUNKS_ENUM = @as(u32, 1024);

//--------------------------------------------------------------------------------
// Section: Types (24)
//--------------------------------------------------------------------------------
const CLSID_DedupBackupSupport_Value = Guid.initString("73d6b2ad-2984-4715-b2e3-924c149744dd");
pub const CLSID_DedupBackupSupport = &CLSID_DedupBackupSupport_Value;

pub const DEDUP_CONTAINER_EXTENT = extern struct {
    ContainerIndex: u32,
    StartOffset: i64,
    Length: i64,
};

pub const DDP_FILE_EXTENT = extern struct {
    Length: i64,
    Offset: i64,
};

pub const DEDUP_BACKUP_SUPPORT_PARAM_TYPE = enum(i32) {
    UNOPTIMIZED = 1,
    OPTIMIZED = 2,
};
pub const DEDUP_RECONSTRUCT_UNOPTIMIZED = DEDUP_BACKUP_SUPPORT_PARAM_TYPE.UNOPTIMIZED;
pub const DEDUP_RECONSTRUCT_OPTIMIZED = DEDUP_BACKUP_SUPPORT_PARAM_TYPE.OPTIMIZED;

// TODO: this type is limited to platform 'windowsServer2012'
const IID_IDedupReadFileCallback_Value = Guid.initString("7bacc67a-2f1d-42d0-897e-6ff62dd533bb");
pub const IID_IDedupReadFileCallback = &IID_IDedupReadFileCallback_Value;
pub const IDedupReadFileCallback = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        ReadBackupFile: *const fn(
            self: *const IDedupReadFileCallback,
            FileFullPath: ?BSTR,
            FileOffset: i64,
            SizeToRead: u32,
            FileBuffer: [*:0]u8,
            ReturnedSize: ?*u32,
            Flags: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        OrderContainersRestore: *const fn(
            self: *const IDedupReadFileCallback,
            NumberOfContainers: u32,
            ContainerPaths: [*]?BSTR,
            ReadPlanEntries: ?*u32,
            ReadPlan: [*]?*DEDUP_CONTAINER_EXTENT,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        PreviewContainerRead: *const fn(
            self: *const IDedupReadFileCallback,
            FileFullPath: ?BSTR,
            NumberOfReads: u32,
            ReadOffsets: [*]DDP_FILE_EXTENT,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn ReadBackupFile(self: *const IDedupReadFileCallback, FileFullPath: ?BSTR, FileOffset: i64, SizeToRead: u32, FileBuffer: [*:0]u8, ReturnedSize: ?*u32, Flags: u32) callconv(.Inline) HRESULT {
        return self.vtable.ReadBackupFile(self, FileFullPath, FileOffset, SizeToRead, FileBuffer, ReturnedSize, Flags);
    }
    pub fn OrderContainersRestore(self: *const IDedupReadFileCallback, NumberOfContainers: u32, ContainerPaths: [*]?BSTR, ReadPlanEntries: ?*u32, ReadPlan: [*]?*DEDUP_CONTAINER_EXTENT) callconv(.Inline) HRESULT {
        return self.vtable.OrderContainersRestore(self, NumberOfContainers, ContainerPaths, ReadPlanEntries, ReadPlan);
    }
    pub fn PreviewContainerRead(self: *const IDedupReadFileCallback, FileFullPath: ?BSTR, NumberOfReads: u32, ReadOffsets: [*]DDP_FILE_EXTENT) callconv(.Inline) HRESULT {
        return self.vtable.PreviewContainerRead(self, FileFullPath, NumberOfReads, ReadOffsets);
    }
};

// TODO: this type is limited to platform 'windowsServer2012'
const IID_IDedupBackupSupport_Value = Guid.initString("c719d963-2b2d-415e-acf7-7eb7ca596ff4");
pub const IID_IDedupBackupSupport = &IID_IDedupBackupSupport_Value;
pub const IDedupBackupSupport = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        RestoreFiles: *const fn(
            self: *const IDedupBackupSupport,
            NumberOfFiles: u32,
            FileFullPaths: [*]?BSTR,
            Store: ?*IDedupReadFileCallback,
            Flags: u32,
            FileResults: [*]HRESULT,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn RestoreFiles(self: *const IDedupBackupSupport, NumberOfFiles: u32, FileFullPaths: [*]?BSTR, Store: ?*IDedupReadFileCallback, Flags: u32, FileResults: [*]HRESULT) callconv(.Inline) HRESULT {
        return self.vtable.RestoreFiles(self, NumberOfFiles, FileFullPaths, Store, Flags, FileResults);
    }
};

pub const DEDUP_SET_PARAM_TYPE = enum(i32) {
    MinChunkSizeBytes = 1,
    MaxChunkSizeBytes = 2,
    AvgChunkSizeBytes = 3,
    InvariantChunking = 4,
    DisableStrongHashComputation = 5,
};
pub const DEDUP_PT_MinChunkSizeBytes = DEDUP_SET_PARAM_TYPE.MinChunkSizeBytes;
pub const DEDUP_PT_MaxChunkSizeBytes = DEDUP_SET_PARAM_TYPE.MaxChunkSizeBytes;
pub const DEDUP_PT_AvgChunkSizeBytes = DEDUP_SET_PARAM_TYPE.AvgChunkSizeBytes;
pub const DEDUP_PT_InvariantChunking = DEDUP_SET_PARAM_TYPE.InvariantChunking;
pub const DEDUP_PT_DisableStrongHashComputation = DEDUP_SET_PARAM_TYPE.DisableStrongHashComputation;

pub const DEDUP_CHUNK_INFO_HASH32 = extern struct {
    ChunkFlags: u32,
    ChunkOffsetInStream: u64,
    ChunkSize: u64,
    HashVal: [32]u8,
};

const IID_IDedupChunkLibrary_Value = Guid.initString("bb5144d7-2720-4dcc-8777-78597416ec23");
pub const IID_IDedupChunkLibrary = &IID_IDedupChunkLibrary_Value;
pub const IDedupChunkLibrary = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        InitializeForPushBuffers: *const fn(
            self: *const IDedupChunkLibrary,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Uninitialize: *const fn(
            self: *const IDedupChunkLibrary,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetParameter: *const fn(
            self: *const IDedupChunkLibrary,
            dwParamType: u32,
            vParamValue: VARIANT,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        StartChunking: *const fn(
            self: *const IDedupChunkLibrary,
            iidIteratorInterfaceID: Guid,
            ppChunksEnum: ?*?*IUnknown,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn InitializeForPushBuffers(self: *const IDedupChunkLibrary) callconv(.Inline) HRESULT {
        return self.vtable.InitializeForPushBuffers(self);
    }
    pub fn Uninitialize(self: *const IDedupChunkLibrary) callconv(.Inline) HRESULT {
        return self.vtable.Uninitialize(self);
    }
    pub fn SetParameter(self: *const IDedupChunkLibrary, dwParamType: u32, vParamValue: VARIANT) callconv(.Inline) HRESULT {
        return self.vtable.SetParameter(self, dwParamType, vParamValue);
    }
    pub fn StartChunking(self: *const IDedupChunkLibrary, iidIteratorInterfaceID: Guid, ppChunksEnum: ?*?*IUnknown) callconv(.Inline) HRESULT {
        return self.vtable.StartChunking(self, iidIteratorInterfaceID, ppChunksEnum);
    }
};

const IID_IDedupIterateChunksHash32_Value = Guid.initString("90b584d3-72aa-400f-9767-cad866a5a2d8");
pub const IID_IDedupIterateChunksHash32 = &IID_IDedupIterateChunksHash32_Value;
pub const IDedupIterateChunksHash32 = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        PushBuffer: *const fn(
            self: *const IDedupIterateChunksHash32,
            pBuffer: [*:0]u8,
            ulBufferLength: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Next: *const fn(
            self: *const IDedupIterateChunksHash32,
            ulMaxChunks: u32,
            pArrChunks: [*]DEDUP_CHUNK_INFO_HASH32,
            pulFetched: ?*u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Drain: *const fn(
            self: *const IDedupIterateChunksHash32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Reset: *const fn(
            self: *const IDedupIterateChunksHash32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn PushBuffer(self: *const IDedupIterateChunksHash32, pBuffer: [*:0]u8, ulBufferLength: u32) callconv(.Inline) HRESULT {
        return self.vtable.PushBuffer(self, pBuffer, ulBufferLength);
    }
    pub fn Next(self: *const IDedupIterateChunksHash32, ulMaxChunks: u32, pArrChunks: [*]DEDUP_CHUNK_INFO_HASH32, pulFetched: ?*u32) callconv(.Inline) HRESULT {
        return self.vtable.Next(self, ulMaxChunks, pArrChunks, pulFetched);
    }
    pub fn Drain(self: *const IDedupIterateChunksHash32) callconv(.Inline) HRESULT {
        return self.vtable.Drain(self);
    }
    pub fn Reset(self: *const IDedupIterateChunksHash32) callconv(.Inline) HRESULT {
        return self.vtable.Reset(self);
    }
};

pub const DedupDataPortManagerOption = enum(i32) {
    None = 0,
    AutoStart = 1,
    SkipReconciliation = 2,
};
pub const DedupDataPortManagerOption_None = DedupDataPortManagerOption.None;
pub const DedupDataPortManagerOption_AutoStart = DedupDataPortManagerOption.AutoStart;
pub const DedupDataPortManagerOption_SkipReconciliation = DedupDataPortManagerOption.SkipReconciliation;

pub const DedupDataPortVolumeStatus = enum(i32) {
    Unknown = 0,
    NotEnabled = 1,
    NotAvailable = 2,
    Initializing = 3,
    Ready = 4,
    Maintenance = 5,
    Shutdown = 6,
};
pub const DedupDataPortVolumeStatus_Unknown = DedupDataPortVolumeStatus.Unknown;
pub const DedupDataPortVolumeStatus_NotEnabled = DedupDataPortVolumeStatus.NotEnabled;
pub const DedupDataPortVolumeStatus_NotAvailable = DedupDataPortVolumeStatus.NotAvailable;
pub const DedupDataPortVolumeStatus_Initializing = DedupDataPortVolumeStatus.Initializing;
pub const DedupDataPortVolumeStatus_Ready = DedupDataPortVolumeStatus.Ready;
pub const DedupDataPortVolumeStatus_Maintenance = DedupDataPortVolumeStatus.Maintenance;
pub const DedupDataPortVolumeStatus_Shutdown = DedupDataPortVolumeStatus.Shutdown;

pub const DedupDataPortRequestStatus = enum(i32) {
    Unknown = 0,
    Queued = 1,
    Processing = 2,
    Partial = 3,
    Complete = 4,
    Failed = 5,
};
pub const DedupDataPortRequestStatus_Unknown = DedupDataPortRequestStatus.Unknown;
pub const DedupDataPortRequestStatus_Queued = DedupDataPortRequestStatus.Queued;
pub const DedupDataPortRequestStatus_Processing = DedupDataPortRequestStatus.Processing;
pub const DedupDataPortRequestStatus_Partial = DedupDataPortRequestStatus.Partial;
pub const DedupDataPortRequestStatus_Complete = DedupDataPortRequestStatus.Complete;
pub const DedupDataPortRequestStatus_Failed = DedupDataPortRequestStatus.Failed;

pub const DedupChunkFlags = enum(i32) {
    None = 0,
    Compressed = 1,
};
pub const DedupChunkFlags_None = DedupChunkFlags.None;
pub const DedupChunkFlags_Compressed = DedupChunkFlags.Compressed;

pub const DedupHash = extern struct {
    Hash: [32]u8,
};

pub const DedupChunk = extern struct {
    Hash: DedupHash,
    Flags: DedupChunkFlags,
    LogicalSize: u32,
    DataSize: u32,
};

pub const DedupStreamEntry = extern struct {
    Hash: DedupHash,
    LogicalSize: u32,
    Offset: u64,
};

pub const DedupStream = extern struct {
    Path: ?BSTR,
    Offset: u64,
    Length: u64,
    ChunkCount: u32,
};

pub const DedupChunkingAlgorithm = enum(i32) {
    Unknonwn = 0,
    V1 = 1,
};
pub const DedupChunkingAlgorithm_Unknonwn = DedupChunkingAlgorithm.Unknonwn;
pub const DedupChunkingAlgorithm_V1 = DedupChunkingAlgorithm.V1;

pub const DedupHashingAlgorithm = enum(i32) {
    Unknonwn = 0,
    V1 = 1,
};
pub const DedupHashingAlgorithm_Unknonwn = DedupHashingAlgorithm.Unknonwn;
pub const DedupHashingAlgorithm_V1 = DedupHashingAlgorithm.V1;

pub const DedupCompressionAlgorithm = enum(i32) {
    Unknonwn = 0,
    Xpress = 1,
};
pub const DedupCompressionAlgorithm_Unknonwn = DedupCompressionAlgorithm.Unknonwn;
pub const DedupCompressionAlgorithm_Xpress = DedupCompressionAlgorithm.Xpress;

const CLSID_DedupDataPort_Value = Guid.initString("8f107207-1829-48b2-a64b-e61f8e0d9acb");
pub const CLSID_DedupDataPort = &CLSID_DedupDataPort_Value;

const IID_IDedupDataPort_Value = Guid.initString("7963d734-40a9-4ea3-bbf6-5a89d26f7ae8");
pub const IID_IDedupDataPort = &IID_IDedupDataPort_Value;
pub const IDedupDataPort = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetStatus: *const fn(
            self: *const IDedupDataPort,
            pStatus: ?*DedupDataPortVolumeStatus,
            pDataHeadroomMb: ?*u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        LookupChunks: *const fn(
            self: *const IDedupDataPort,
            Count: u32,
            pHashes: [*]DedupHash,
            pRequestId: ?*Guid,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        InsertChunks: *const fn(
            self: *const IDedupDataPort,
            ChunkCount: u32,
            pChunkMetadata: [*]DedupChunk,
            DataByteCount: u32,
            pChunkData: [*:0]u8,
            pRequestId: ?*Guid,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        InsertChunksWithStream: *const fn(
            self: *const IDedupDataPort,
            ChunkCount: u32,
            pChunkMetadata: [*]DedupChunk,
            DataByteCount: u32,
            pChunkDataStream: ?*IStream,
            pRequestId: ?*Guid,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        CommitStreams: *const fn(
            self: *const IDedupDataPort,
            StreamCount: u32,
            pStreams: [*]DedupStream,
            EntryCount: u32,
            pEntries: [*]DedupStreamEntry,
            pRequestId: ?*Guid,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        CommitStreamsWithStream: *const fn(
            self: *const IDedupDataPort,
            StreamCount: u32,
            pStreams: [*]DedupStream,
            EntryCount: u32,
            pEntriesStream: ?*IStream,
            pRequestId: ?*Guid,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetStreams: *const fn(
            self: *const IDedupDataPort,
            StreamCount: u32,
            pStreamPaths: [*]?BSTR,
            pRequestId: ?*Guid,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetStreamsResults: *const fn(
            self: *const IDedupDataPort,
            RequestId: Guid,
            MaxWaitMs: u32,
            StreamEntryIndex: u32,
            pStreamCount: ?*u32,
            ppStreams: [*]?*DedupStream,
            pEntryCount: ?*u32,
            ppEntries: [*]?*DedupStreamEntry,
            pStatus: ?*DedupDataPortRequestStatus,
            ppItemResults: [*]?*HRESULT,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetChunks: *const fn(
            self: *const IDedupDataPort,
            Count: u32,
            pHashes: [*]DedupHash,
            pRequestId: ?*Guid,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetChunksResults: *const fn(
            self: *const IDedupDataPort,
            RequestId: Guid,
            MaxWaitMs: u32,
            ChunkIndex: u32,
            pChunkCount: ?*u32,
            ppChunkMetadata: [*]?*DedupChunk,
            pDataByteCount: ?*u32,
            ppChunkData: [*]?*u8,
            pStatus: ?*DedupDataPortRequestStatus,
            ppItemResults: [*]?*HRESULT,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetRequestStatus: *const fn(
            self: *const IDedupDataPort,
            RequestId: Guid,
            pStatus: ?*DedupDataPortRequestStatus,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetRequestResults: *const fn(
            self: *const IDedupDataPort,
            RequestId: Guid,
            MaxWaitMs: u32,
            pBatchResult: ?*HRESULT,
            pBatchCount: ?*u32,
            pStatus: ?*DedupDataPortRequestStatus,
            ppItemResults: [*]?*HRESULT,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn GetStatus(self: *const IDedupDataPort, pStatus: ?*DedupDataPortVolumeStatus, pDataHeadroomMb: ?*u32) callconv(.Inline) HRESULT {
        return self.vtable.GetStatus(self, pStatus, pDataHeadroomMb);
    }
    pub fn LookupChunks(self: *const IDedupDataPort, Count: u32, pHashes: [*]DedupHash, pRequestId: ?*Guid) callconv(.Inline) HRESULT {
        return self.vtable.LookupChunks(self, Count, pHashes, pRequestId);
    }
    pub fn InsertChunks(self: *const IDedupDataPort, ChunkCount: u32, pChunkMetadata: [*]DedupChunk, DataByteCount: u32, pChunkData: [*:0]u8, pRequestId: ?*Guid) callconv(.Inline) HRESULT {
        return self.vtable.InsertChunks(self, ChunkCount, pChunkMetadata, DataByteCount, pChunkData, pRequestId);
    }
    pub fn InsertChunksWithStream(self: *const IDedupDataPort, ChunkCount: u32, pChunkMetadata: [*]DedupChunk, DataByteCount: u32, pChunkDataStream: ?*IStream, pRequestId: ?*Guid) callconv(.Inline) HRESULT {
        return self.vtable.InsertChunksWithStream(self, ChunkCount, pChunkMetadata, DataByteCount, pChunkDataStream, pRequestId);
    }
    pub fn CommitStreams(self: *const IDedupDataPort, StreamCount: u32, pStreams: [*]DedupStream, EntryCount: u32, pEntries: [*]DedupStreamEntry, pRequestId: ?*Guid) callconv(.Inline) HRESULT {
        return self.vtable.CommitStreams(self, StreamCount, pStreams, EntryCount, pEntries, pRequestId);
    }
    pub fn CommitStreamsWithStream(self: *const IDedupDataPort, StreamCount: u32, pStreams: [*]DedupStream, EntryCount: u32, pEntriesStream: ?*IStream, pRequestId: ?*Guid) callconv(.Inline) HRESULT {
        return self.vtable.CommitStreamsWithStream(self, StreamCount, pStreams, EntryCount, pEntriesStream, pRequestId);
    }
    pub fn GetStreams(self: *const IDedupDataPort, StreamCount: u32, pStreamPaths: [*]?BSTR, pRequestId: ?*Guid) callconv(.Inline) HRESULT {
        return self.vtable.GetStreams(self, StreamCount, pStreamPaths, pRequestId);
    }
    pub fn GetStreamsResults(self: *const IDedupDataPort, RequestId: Guid, MaxWaitMs: u32, StreamEntryIndex: u32, pStreamCount: ?*u32, ppStreams: [*]?*DedupStream, pEntryCount: ?*u32, ppEntries: [*]?*DedupStreamEntry, pStatus: ?*DedupDataPortRequestStatus, ppItemResults: [*]?*HRESULT) callconv(.Inline) HRESULT {
        return self.vtable.GetStreamsResults(self, RequestId, MaxWaitMs, StreamEntryIndex, pStreamCount, ppStreams, pEntryCount, ppEntries, pStatus, ppItemResults);
    }
    pub fn GetChunks(self: *const IDedupDataPort, Count: u32, pHashes: [*]DedupHash, pRequestId: ?*Guid) callconv(.Inline) HRESULT {
        return self.vtable.GetChunks(self, Count, pHashes, pRequestId);
    }
    pub fn GetChunksResults(self: *const IDedupDataPort, RequestId: Guid, MaxWaitMs: u32, ChunkIndex: u32, pChunkCount: ?*u32, ppChunkMetadata: [*]?*DedupChunk, pDataByteCount: ?*u32, ppChunkData: [*]?*u8, pStatus: ?*DedupDataPortRequestStatus, ppItemResults: [*]?*HRESULT) callconv(.Inline) HRESULT {
        return self.vtable.GetChunksResults(self, RequestId, MaxWaitMs, ChunkIndex, pChunkCount, ppChunkMetadata, pDataByteCount, ppChunkData, pStatus, ppItemResults);
    }
    pub fn GetRequestStatus(self: *const IDedupDataPort, RequestId: Guid, pStatus: ?*DedupDataPortRequestStatus) callconv(.Inline) HRESULT {
        return self.vtable.GetRequestStatus(self, RequestId, pStatus);
    }
    pub fn GetRequestResults(self: *const IDedupDataPort, RequestId: Guid, MaxWaitMs: u32, pBatchResult: ?*HRESULT, pBatchCount: ?*u32, pStatus: ?*DedupDataPortRequestStatus, ppItemResults: [*]?*HRESULT) callconv(.Inline) HRESULT {
        return self.vtable.GetRequestResults(self, RequestId, MaxWaitMs, pBatchResult, pBatchCount, pStatus, ppItemResults);
    }
};

const IID_IDedupDataPortManager_Value = Guid.initString("44677452-b90a-445e-8192-cdcfe81511fb");
pub const IID_IDedupDataPortManager = &IID_IDedupDataPortManager_Value;
pub const IDedupDataPortManager = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetConfiguration: *const fn(
            self: *const IDedupDataPortManager,
            pMinChunkSize: ?*u32,
            pMaxChunkSize: ?*u32,
            pChunkingAlgorithm: ?*DedupChunkingAlgorithm,
            pHashingAlgorithm: ?*DedupHashingAlgorithm,
            pCompressionAlgorithm: ?*DedupCompressionAlgorithm,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetVolumeStatus: *const fn(
            self: *const IDedupDataPortManager,
            Options: u32,
            Path: ?BSTR,
            pStatus: ?*DedupDataPortVolumeStatus,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetVolumeDataPort: *const fn(
            self: *const IDedupDataPortManager,
            Options: u32,
            Path: ?BSTR,
            ppDataPort: ?*?*IDedupDataPort,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn GetConfiguration(self: *const IDedupDataPortManager, pMinChunkSize: ?*u32, pMaxChunkSize: ?*u32, pChunkingAlgorithm: ?*DedupChunkingAlgorithm, pHashingAlgorithm: ?*DedupHashingAlgorithm, pCompressionAlgorithm: ?*DedupCompressionAlgorithm) callconv(.Inline) HRESULT {
        return self.vtable.GetConfiguration(self, pMinChunkSize, pMaxChunkSize, pChunkingAlgorithm, pHashingAlgorithm, pCompressionAlgorithm);
    }
    pub fn GetVolumeStatus(self: *const IDedupDataPortManager, Options: u32, Path: ?BSTR, pStatus: ?*DedupDataPortVolumeStatus) callconv(.Inline) HRESULT {
        return self.vtable.GetVolumeStatus(self, Options, Path, pStatus);
    }
    pub fn GetVolumeDataPort(self: *const IDedupDataPortManager, Options: u32, Path: ?BSTR, ppDataPort: ?*?*IDedupDataPort) callconv(.Inline) HRESULT {
        return self.vtable.GetVolumeDataPort(self, Options, Path, ppDataPort);
    }
};


//--------------------------------------------------------------------------------
// Section: Functions (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
// Section: Imports (6)
//--------------------------------------------------------------------------------
const Guid = @import("../zig.zig").Guid;
const BSTR = @import("../foundation.zig").BSTR;
const HRESULT = @import("../foundation.zig").HRESULT;
const IStream = @import("../system/com.zig").IStream;
const IUnknown = @import("../system/com.zig").IUnknown;
const VARIANT = @import("../system/com.zig").VARIANT;

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
