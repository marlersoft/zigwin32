//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (15)
//--------------------------------------------------------------------------------
pub const SystemInterruptTime = extern struct {
    value: u64,
};

pub const PresentationTransform = extern struct {
    M11: f32,
    M12: f32,
    M21: f32,
    M22: f32,
    M31: f32,
    M32: f32,
};

pub const PresentStatisticsKind = enum(i32) {
    PresentStatus = 1,
    CompositionFrame = 2,
    IndependentFlipFrame = 3,
};
pub const PresentStatisticsKind_PresentStatus = PresentStatisticsKind.PresentStatus;
pub const PresentStatisticsKind_CompositionFrame = PresentStatisticsKind.CompositionFrame;
pub const PresentStatisticsKind_IndependentFlipFrame = PresentStatisticsKind.IndependentFlipFrame;

const IID_IPresentationBuffer_Value = Guid.initString("2e217d3a-5abb-4138-9a13-a775593c89ca");
pub const IID_IPresentationBuffer = &IID_IPresentationBuffer_Value;
pub const IPresentationBuffer = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetAvailableEvent: *const fn(
            self: *const IPresentationBuffer,
            availableEventHandle: ?*?HANDLE,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        IsAvailable: *const fn(
            self: *const IPresentationBuffer,
            isAvailable: ?*u8,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn GetAvailableEvent(self: *const IPresentationBuffer, availableEventHandle: ?*?HANDLE) callconv(.Inline) HRESULT {
        return self.vtable.GetAvailableEvent(self, availableEventHandle);
    }
    pub fn IsAvailable(self: *const IPresentationBuffer, isAvailable: ?*u8) callconv(.Inline) HRESULT {
        return self.vtable.IsAvailable(self, isAvailable);
    }
};

const IID_IPresentationContent_Value = Guid.initString("5668bb79-3d8e-415c-b215-f38020f2d252");
pub const IID_IPresentationContent = &IID_IPresentationContent_Value;
pub const IPresentationContent = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        SetTag: *const fn(
            self: *const IPresentationContent,
            tag: usize,
        ) callconv(@import("std").os.windows.WINAPI) void,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn SetTag(self: *const IPresentationContent, tag: usize) callconv(.Inline) void {
        return self.vtable.SetTag(self, tag);
    }
};

const IID_IPresentationSurface_Value = Guid.initString("956710fb-ea40-4eba-a3eb-4375a0eb4edc");
pub const IID_IPresentationSurface = &IID_IPresentationSurface_Value;
pub const IPresentationSurface = extern union {
    pub const VTable = extern struct {
        base: IPresentationContent.VTable,
        SetBuffer: *const fn(
            self: *const IPresentationSurface,
            presentationBuffer: ?*IPresentationBuffer,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetColorSpace: *const fn(
            self: *const IPresentationSurface,
            colorSpace: DXGI_COLOR_SPACE_TYPE,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetAlphaMode: *const fn(
            self: *const IPresentationSurface,
            alphaMode: DXGI_ALPHA_MODE,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetSourceRect: *const fn(
            self: *const IPresentationSurface,
            sourceRect: ?*const RECT,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetTransform: *const fn(
            self: *const IPresentationSurface,
            transform: ?*PresentationTransform,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        RestrictToOutput: *const fn(
            self: *const IPresentationSurface,
            output: ?*IUnknown,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetDisableReadback: *const fn(
            self: *const IPresentationSurface,
            value: u8,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetLetterboxingMargins: *const fn(
            self: *const IPresentationSurface,
            leftLetterboxSize: f32,
            topLetterboxSize: f32,
            rightLetterboxSize: f32,
            bottomLetterboxSize: f32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IPresentationContent: IPresentationContent,
    IUnknown: IUnknown,
    pub fn SetBuffer(self: *const IPresentationSurface, presentationBuffer: ?*IPresentationBuffer) callconv(.Inline) HRESULT {
        return self.vtable.SetBuffer(self, presentationBuffer);
    }
    pub fn SetColorSpace(self: *const IPresentationSurface, colorSpace: DXGI_COLOR_SPACE_TYPE) callconv(.Inline) HRESULT {
        return self.vtable.SetColorSpace(self, colorSpace);
    }
    pub fn SetAlphaMode(self: *const IPresentationSurface, alphaMode: DXGI_ALPHA_MODE) callconv(.Inline) HRESULT {
        return self.vtable.SetAlphaMode(self, alphaMode);
    }
    pub fn SetSourceRect(self: *const IPresentationSurface, sourceRect: ?*const RECT) callconv(.Inline) HRESULT {
        return self.vtable.SetSourceRect(self, sourceRect);
    }
    pub fn SetTransform(self: *const IPresentationSurface, transform: ?*PresentationTransform) callconv(.Inline) HRESULT {
        return self.vtable.SetTransform(self, transform);
    }
    pub fn RestrictToOutput(self: *const IPresentationSurface, output: ?*IUnknown) callconv(.Inline) HRESULT {
        return self.vtable.RestrictToOutput(self, output);
    }
    pub fn SetDisableReadback(self: *const IPresentationSurface, value: u8) callconv(.Inline) HRESULT {
        return self.vtable.SetDisableReadback(self, value);
    }
    pub fn SetLetterboxingMargins(self: *const IPresentationSurface, leftLetterboxSize: f32, topLetterboxSize: f32, rightLetterboxSize: f32, bottomLetterboxSize: f32) callconv(.Inline) HRESULT {
        return self.vtable.SetLetterboxingMargins(self, leftLetterboxSize, topLetterboxSize, rightLetterboxSize, bottomLetterboxSize);
    }
};

const IID_IPresentStatistics_Value = Guid.initString("b44b8bda-7282-495d-9dd7-ceadd8b4bb86");
pub const IID_IPresentStatistics = &IID_IPresentStatistics_Value;
pub const IPresentStatistics = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetPresentId: *const fn(
            self: *const IPresentStatistics,
        ) callconv(@import("std").os.windows.WINAPI) u64,
        GetKind: *const fn(
            self: *const IPresentStatistics,
        ) callconv(@import("std").os.windows.WINAPI) PresentStatisticsKind,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn GetPresentId(self: *const IPresentStatistics) callconv(.Inline) u64 {
        return self.vtable.GetPresentId(self);
    }
    pub fn GetKind(self: *const IPresentStatistics) callconv(.Inline) PresentStatisticsKind {
        return self.vtable.GetKind(self);
    }
};

const IID_IPresentationManager_Value = Guid.initString("fb562f82-6292-470a-88b1-843661e7f20c");
pub const IID_IPresentationManager = &IID_IPresentationManager_Value;
pub const IPresentationManager = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        AddBufferFromResource: *const fn(
            self: *const IPresentationManager,
            resource: ?*IUnknown,
            presentationBuffer: ?*?*IPresentationBuffer,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        CreatePresentationSurface: *const fn(
            self: *const IPresentationManager,
            compositionSurfaceHandle: ?HANDLE,
            presentationSurface: ?*?*IPresentationSurface,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetNextPresentId: *const fn(
            self: *const IPresentationManager,
        ) callconv(@import("std").os.windows.WINAPI) u64,
        SetTargetTime: *const fn(
            self: *const IPresentationManager,
            targetTime: SystemInterruptTime,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetPreferredPresentDuration: *const fn(
            self: *const IPresentationManager,
            preferredDuration: SystemInterruptTime,
            deviationTolerance: SystemInterruptTime,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        ForceVSyncInterrupt: *const fn(
            self: *const IPresentationManager,
            forceVsyncInterrupt: u8,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Present: *const fn(
            self: *const IPresentationManager,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetPresentRetiringFence: *const fn(
            self: *const IPresentationManager,
            riid: ?*const Guid,
            fence: ?*?*anyopaque,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        CancelPresentsFrom: *const fn(
            self: *const IPresentationManager,
            presentIdToCancelFrom: u64,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetLostEvent: *const fn(
            self: *const IPresentationManager,
            lostEventHandle: ?*?HANDLE,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetPresentStatisticsAvailableEvent: *const fn(
            self: *const IPresentationManager,
            presentStatisticsAvailableEventHandle: ?*?HANDLE,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        EnablePresentStatisticsKind: *const fn(
            self: *const IPresentationManager,
            presentStatisticsKind: PresentStatisticsKind,
            enabled: u8,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetNextPresentStatistics: *const fn(
            self: *const IPresentationManager,
            nextPresentStatistics: ?*?*IPresentStatistics,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn AddBufferFromResource(self: *const IPresentationManager, resource: ?*IUnknown, presentationBuffer: ?*?*IPresentationBuffer) callconv(.Inline) HRESULT {
        return self.vtable.AddBufferFromResource(self, resource, presentationBuffer);
    }
    pub fn CreatePresentationSurface(self: *const IPresentationManager, compositionSurfaceHandle: ?HANDLE, presentationSurface: ?*?*IPresentationSurface) callconv(.Inline) HRESULT {
        return self.vtable.CreatePresentationSurface(self, compositionSurfaceHandle, presentationSurface);
    }
    pub fn GetNextPresentId(self: *const IPresentationManager) callconv(.Inline) u64 {
        return self.vtable.GetNextPresentId(self);
    }
    pub fn SetTargetTime(self: *const IPresentationManager, targetTime: SystemInterruptTime) callconv(.Inline) HRESULT {
        return self.vtable.SetTargetTime(self, targetTime);
    }
    pub fn SetPreferredPresentDuration(self: *const IPresentationManager, preferredDuration: SystemInterruptTime, deviationTolerance: SystemInterruptTime) callconv(.Inline) HRESULT {
        return self.vtable.SetPreferredPresentDuration(self, preferredDuration, deviationTolerance);
    }
    pub fn ForceVSyncInterrupt(self: *const IPresentationManager, forceVsyncInterrupt: u8) callconv(.Inline) HRESULT {
        return self.vtable.ForceVSyncInterrupt(self, forceVsyncInterrupt);
    }
    pub fn Present(self: *const IPresentationManager) callconv(.Inline) HRESULT {
        return self.vtable.Present(self);
    }
    pub fn GetPresentRetiringFence(self: *const IPresentationManager, riid: ?*const Guid, fence: ?*?*anyopaque) callconv(.Inline) HRESULT {
        return self.vtable.GetPresentRetiringFence(self, riid, fence);
    }
    pub fn CancelPresentsFrom(self: *const IPresentationManager, presentIdToCancelFrom: u64) callconv(.Inline) HRESULT {
        return self.vtable.CancelPresentsFrom(self, presentIdToCancelFrom);
    }
    pub fn GetLostEvent(self: *const IPresentationManager, lostEventHandle: ?*?HANDLE) callconv(.Inline) HRESULT {
        return self.vtable.GetLostEvent(self, lostEventHandle);
    }
    pub fn GetPresentStatisticsAvailableEvent(self: *const IPresentationManager, presentStatisticsAvailableEventHandle: ?*?HANDLE) callconv(.Inline) HRESULT {
        return self.vtable.GetPresentStatisticsAvailableEvent(self, presentStatisticsAvailableEventHandle);
    }
    pub fn EnablePresentStatisticsKind(self: *const IPresentationManager, presentStatisticsKind: PresentStatisticsKind, enabled: u8) callconv(.Inline) HRESULT {
        return self.vtable.EnablePresentStatisticsKind(self, presentStatisticsKind, enabled);
    }
    pub fn GetNextPresentStatistics(self: *const IPresentationManager, nextPresentStatistics: ?*?*IPresentStatistics) callconv(.Inline) HRESULT {
        return self.vtable.GetNextPresentStatistics(self, nextPresentStatistics);
    }
};

const IID_IPresentationFactory_Value = Guid.initString("8fb37b58-1d74-4f64-a49c-1f97a80a2ec0");
pub const IID_IPresentationFactory = &IID_IPresentationFactory_Value;
pub const IPresentationFactory = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        IsPresentationSupported: *const fn(
            self: *const IPresentationFactory,
        ) callconv(@import("std").os.windows.WINAPI) u8,
        IsPresentationSupportedWithIndependentFlip: *const fn(
            self: *const IPresentationFactory,
        ) callconv(@import("std").os.windows.WINAPI) u8,
        CreatePresentationManager: *const fn(
            self: *const IPresentationFactory,
            ppPresentationManager: ?*?*IPresentationManager,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn IsPresentationSupported(self: *const IPresentationFactory) callconv(.Inline) u8 {
        return self.vtable.IsPresentationSupported(self);
    }
    pub fn IsPresentationSupportedWithIndependentFlip(self: *const IPresentationFactory) callconv(.Inline) u8 {
        return self.vtable.IsPresentationSupportedWithIndependentFlip(self);
    }
    pub fn CreatePresentationManager(self: *const IPresentationFactory, ppPresentationManager: ?*?*IPresentationManager) callconv(.Inline) HRESULT {
        return self.vtable.CreatePresentationManager(self, ppPresentationManager);
    }
};

pub const PresentStatus = enum(i32) {
    Queued = 0,
    Skipped = 1,
    Canceled = 2,
};
pub const PresentStatus_Queued = PresentStatus.Queued;
pub const PresentStatus_Skipped = PresentStatus.Skipped;
pub const PresentStatus_Canceled = PresentStatus.Canceled;

const IID_IPresentStatusPresentStatistics_Value = Guid.initString("c9ed2a41-79cb-435e-964e-c8553055420c");
pub const IID_IPresentStatusPresentStatistics = &IID_IPresentStatusPresentStatistics_Value;
pub const IPresentStatusPresentStatistics = extern union {
    pub const VTable = extern struct {
        base: IPresentStatistics.VTable,
        GetCompositionFrameId: *const fn(
            self: *const IPresentStatusPresentStatistics,
        ) callconv(@import("std").os.windows.WINAPI) u64,
        GetPresentStatus: *const fn(
            self: *const IPresentStatusPresentStatistics,
        ) callconv(@import("std").os.windows.WINAPI) PresentStatus,
    };
    vtable: *const VTable,
    IPresentStatistics: IPresentStatistics,
    IUnknown: IUnknown,
    pub fn GetCompositionFrameId(self: *const IPresentStatusPresentStatistics) callconv(.Inline) u64 {
        return self.vtable.GetCompositionFrameId(self);
    }
    pub fn GetPresentStatus(self: *const IPresentStatusPresentStatistics) callconv(.Inline) PresentStatus {
        return self.vtable.GetPresentStatus(self);
    }
};

pub const CompositionFrameInstanceKind = enum(i32) {
    ComposedOnScreen = 0,
    ScanoutOnScreen = 1,
    ComposedToIntermediate = 2,
};
pub const CompositionFrameInstanceKind_ComposedOnScreen = CompositionFrameInstanceKind.ComposedOnScreen;
pub const CompositionFrameInstanceKind_ScanoutOnScreen = CompositionFrameInstanceKind.ScanoutOnScreen;
pub const CompositionFrameInstanceKind_ComposedToIntermediate = CompositionFrameInstanceKind.ComposedToIntermediate;

pub const CompositionFrameDisplayInstance = extern struct {
    displayAdapterLUID: LUID,
    displayVidPnSourceId: u32,
    displayUniqueId: u32,
    renderAdapterLUID: LUID,
    instanceKind: CompositionFrameInstanceKind,
    finalTransform: PresentationTransform,
    requiredCrossAdapterCopy: u8,
    colorSpace: DXGI_COLOR_SPACE_TYPE,
};

const IID_ICompositionFramePresentStatistics_Value = Guid.initString("ab41d127-c101-4c0a-911d-f9f2e9d08e64");
pub const IID_ICompositionFramePresentStatistics = &IID_ICompositionFramePresentStatistics_Value;
pub const ICompositionFramePresentStatistics = extern union {
    pub const VTable = extern struct {
        base: IPresentStatistics.VTable,
        GetContentTag: *const fn(
            self: *const ICompositionFramePresentStatistics,
        ) callconv(@import("std").os.windows.WINAPI) usize,
        GetCompositionFrameId: *const fn(
            self: *const ICompositionFramePresentStatistics,
        ) callconv(@import("std").os.windows.WINAPI) u64,
        GetDisplayInstanceArray: *const fn(
            self: *const ICompositionFramePresentStatistics,
            displayInstanceArrayCount: ?*u32,
            displayInstanceArray: ?*const ?*CompositionFrameDisplayInstance,
        ) callconv(@import("std").os.windows.WINAPI) void,
    };
    vtable: *const VTable,
    IPresentStatistics: IPresentStatistics,
    IUnknown: IUnknown,
    pub fn GetContentTag(self: *const ICompositionFramePresentStatistics) callconv(.Inline) usize {
        return self.vtable.GetContentTag(self);
    }
    pub fn GetCompositionFrameId(self: *const ICompositionFramePresentStatistics) callconv(.Inline) u64 {
        return self.vtable.GetCompositionFrameId(self);
    }
    pub fn GetDisplayInstanceArray(self: *const ICompositionFramePresentStatistics, displayInstanceArrayCount: ?*u32, displayInstanceArray: ?*const ?*CompositionFrameDisplayInstance) callconv(.Inline) void {
        return self.vtable.GetDisplayInstanceArray(self, displayInstanceArrayCount, displayInstanceArray);
    }
};

const IID_IIndependentFlipFramePresentStatistics_Value = Guid.initString("8c93be27-ad94-4da0-8fd4-2413132d124e");
pub const IID_IIndependentFlipFramePresentStatistics = &IID_IIndependentFlipFramePresentStatistics_Value;
pub const IIndependentFlipFramePresentStatistics = extern union {
    pub const VTable = extern struct {
        base: IPresentStatistics.VTable,
        GetOutputAdapterLUID: *const fn(
            self: *const IIndependentFlipFramePresentStatistics,
        ) callconv(@import("std").os.windows.WINAPI) LUID,
        GetOutputVidPnSourceId: *const fn(
            self: *const IIndependentFlipFramePresentStatistics,
        ) callconv(@import("std").os.windows.WINAPI) u32,
        GetContentTag: *const fn(
            self: *const IIndependentFlipFramePresentStatistics,
        ) callconv(@import("std").os.windows.WINAPI) usize,
        GetDisplayedTime: *const fn(
            self: *const IIndependentFlipFramePresentStatistics,
        ) callconv(@import("std").os.windows.WINAPI) SystemInterruptTime,
        GetPresentDuration: *const fn(
            self: *const IIndependentFlipFramePresentStatistics,
        ) callconv(@import("std").os.windows.WINAPI) SystemInterruptTime,
    };
    vtable: *const VTable,
    IPresentStatistics: IPresentStatistics,
    IUnknown: IUnknown,
    pub fn GetOutputAdapterLUID(self: *const IIndependentFlipFramePresentStatistics) callconv(.Inline) LUID {
        return self.vtable.GetOutputAdapterLUID(self);
    }
    pub fn GetOutputVidPnSourceId(self: *const IIndependentFlipFramePresentStatistics) callconv(.Inline) u32 {
        return self.vtable.GetOutputVidPnSourceId(self);
    }
    pub fn GetContentTag(self: *const IIndependentFlipFramePresentStatistics) callconv(.Inline) usize {
        return self.vtable.GetContentTag(self);
    }
    pub fn GetDisplayedTime(self: *const IIndependentFlipFramePresentStatistics) callconv(.Inline) SystemInterruptTime {
        return self.vtable.GetDisplayedTime(self);
    }
    pub fn GetPresentDuration(self: *const IIndependentFlipFramePresentStatistics) callconv(.Inline) SystemInterruptTime {
        return self.vtable.GetPresentDuration(self);
    }
};


//--------------------------------------------------------------------------------
// Section: Functions (1)
//--------------------------------------------------------------------------------
pub extern "dcomp" fn CreatePresentationFactory(
    d3dDevice: ?*IUnknown,
    riid: ?*const Guid,
    presentationFactory: ?*?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;


//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
// Section: Imports (8)
//--------------------------------------------------------------------------------
const Guid = @import("../zig.zig").Guid;
const DXGI_ALPHA_MODE = @import("../graphics/dxgi/common.zig").DXGI_ALPHA_MODE;
const DXGI_COLOR_SPACE_TYPE = @import("../graphics/dxgi/common.zig").DXGI_COLOR_SPACE_TYPE;
const HANDLE = @import("../foundation.zig").HANDLE;
const HRESULT = @import("../foundation.zig").HRESULT;
const IUnknown = @import("../system/com.zig").IUnknown;
const LUID = @import("../foundation.zig").LUID;
const RECT = @import("../foundation.zig").RECT;

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
