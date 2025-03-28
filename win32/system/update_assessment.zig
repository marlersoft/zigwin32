//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (6)
//--------------------------------------------------------------------------------
const CLSID_WaaSAssessor_Value = Guid.initString("098ef871-fa9f-46af-8958-c083515d7c9c");
pub const CLSID_WaaSAssessor = &CLSID_WaaSAssessor_Value;

pub const UpdateImpactLevel = enum(i32) {
    None = 0,
    Low = 1,
    Medium = 2,
    High = 3,
};
pub const UpdateImpactLevel_None = UpdateImpactLevel.None;
pub const UpdateImpactLevel_Low = UpdateImpactLevel.Low;
pub const UpdateImpactLevel_Medium = UpdateImpactLevel.Medium;
pub const UpdateImpactLevel_High = UpdateImpactLevel.High;

pub const UpdateAssessmentStatus = enum(i32) {
    Latest = 0,
    NotLatestSoftRestriction = 1,
    NotLatestHardRestriction = 2,
    NotLatestEndOfSupport = 3,
    NotLatestServicingTrain = 4,
    NotLatestDeferredFeature = 5,
    NotLatestDeferredQuality = 6,
    NotLatestPausedFeature = 7,
    NotLatestPausedQuality = 8,
    NotLatestManaged = 9,
    NotLatestUnknown = 10,
    NotLatestTargetedVersion = 11,
};
pub const UpdateAssessmentStatus_Latest = UpdateAssessmentStatus.Latest;
pub const UpdateAssessmentStatus_NotLatestSoftRestriction = UpdateAssessmentStatus.NotLatestSoftRestriction;
pub const UpdateAssessmentStatus_NotLatestHardRestriction = UpdateAssessmentStatus.NotLatestHardRestriction;
pub const UpdateAssessmentStatus_NotLatestEndOfSupport = UpdateAssessmentStatus.NotLatestEndOfSupport;
pub const UpdateAssessmentStatus_NotLatestServicingTrain = UpdateAssessmentStatus.NotLatestServicingTrain;
pub const UpdateAssessmentStatus_NotLatestDeferredFeature = UpdateAssessmentStatus.NotLatestDeferredFeature;
pub const UpdateAssessmentStatus_NotLatestDeferredQuality = UpdateAssessmentStatus.NotLatestDeferredQuality;
pub const UpdateAssessmentStatus_NotLatestPausedFeature = UpdateAssessmentStatus.NotLatestPausedFeature;
pub const UpdateAssessmentStatus_NotLatestPausedQuality = UpdateAssessmentStatus.NotLatestPausedQuality;
pub const UpdateAssessmentStatus_NotLatestManaged = UpdateAssessmentStatus.NotLatestManaged;
pub const UpdateAssessmentStatus_NotLatestUnknown = UpdateAssessmentStatus.NotLatestUnknown;
pub const UpdateAssessmentStatus_NotLatestTargetedVersion = UpdateAssessmentStatus.NotLatestTargetedVersion;

pub const UpdateAssessment = extern struct {
    status: UpdateAssessmentStatus,
    impact: UpdateImpactLevel,
    daysOutOfDate: u32,
};

pub const OSUpdateAssessment = extern struct {
    isEndOfSupport: BOOL,
    assessmentForCurrent: UpdateAssessment,
    assessmentForUpToDate: UpdateAssessment,
    securityStatus: UpdateAssessmentStatus,
    assessmentTime: FILETIME,
    releaseInfoTime: FILETIME,
    currentOSBuild: ?PWSTR,
    currentOSReleaseTime: FILETIME,
    upToDateOSBuild: ?PWSTR,
    upToDateOSReleaseTime: FILETIME,
};

// TODO: this type is limited to platform 'windows10.0.15063'
const IID_IWaaSAssessor_Value = Guid.initString("2347bbef-1a3b-45a4-902d-3e09c269b45e");
pub const IID_IWaaSAssessor = &IID_IWaaSAssessor_Value;
pub const IWaaSAssessor = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetOSUpdateAssessment: *const fn(
            self: *const IWaaSAssessor,
            result: ?*OSUpdateAssessment,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn GetOSUpdateAssessment(self: *const IWaaSAssessor, result: ?*OSUpdateAssessment) callconv(.Inline) HRESULT {
        return self.vtable.GetOSUpdateAssessment(self, result);
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
const BOOL = @import("../foundation.zig").BOOL;
const FILETIME = @import("../foundation.zig").FILETIME;
const HRESULT = @import("../foundation.zig").HRESULT;
const IUnknown = @import("../system/com.zig").IUnknown;
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
