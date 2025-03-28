//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (4)
//--------------------------------------------------------------------------------
pub const DEVPKEY_AudioEndpointPlugin_FactoryCLSID = PROPERTYKEY { .fmtid = Guid.initString("12d83bd7-cf12-46be-8540-812710d3021c"), .pid = 1 };
pub const DEVPKEY_AudioEndpointPlugin_DataFlow = PROPERTYKEY { .fmtid = Guid.initString("12d83bd7-cf12-46be-8540-812710d3021c"), .pid = 2 };
pub const DEVPKEY_AudioEndpointPlugin_PnPInterface = PROPERTYKEY { .fmtid = Guid.initString("12d83bd7-cf12-46be-8540-812710d3021c"), .pid = 3 };
pub const DEVPKEY_AudioEndpointPlugin2_FactoryCLSID = PROPERTYKEY { .fmtid = Guid.initString("12d83bd7-cf12-46be-8540-812710d3021c"), .pid = 4 };

//--------------------------------------------------------------------------------
// Section: Types (14)
//--------------------------------------------------------------------------------
// TODO: this type is limited to platform 'windows6.1'
const IID_IAudioEndpointFormatControl_Value = Guid.initString("784cfd40-9f89-456e-a1a6-873b006a664e");
pub const IID_IAudioEndpointFormatControl = &IID_IAudioEndpointFormatControl_Value;
pub const IAudioEndpointFormatControl = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        ResetToDefault: *const fn(
            self: *const IAudioEndpointFormatControl,
            ResetFlags: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn ResetToDefault(self: *const IAudioEndpointFormatControl, ResetFlags: u32) callconv(.Inline) HRESULT {
        return self.vtable.ResetToDefault(self, ResetFlags);
    }
};

pub const EndpointConnectorType = enum(i32) {
    HostProcessConnector = 0,
    OffloadConnector = 1,
    LoopbackConnector = 2,
    KeywordDetectorConnector = 3,
    ConnectorCount = 4,
};
pub const eHostProcessConnector = EndpointConnectorType.HostProcessConnector;
pub const eOffloadConnector = EndpointConnectorType.OffloadConnector;
pub const eLoopbackConnector = EndpointConnectorType.LoopbackConnector;
pub const eKeywordDetectorConnector = EndpointConnectorType.KeywordDetectorConnector;
pub const eConnectorCount = EndpointConnectorType.ConnectorCount;

pub const AUDIO_ENDPOINT_SHARED_CREATE_PARAMS = extern struct {
    u32Size: u32,
    u32TSSessionId: u32,
    targetEndpointConnectorType: EndpointConnectorType,
    wfxDeviceFormat: WAVEFORMATEX,
};

const IID_IAudioEndpointOffloadStreamVolume_Value = Guid.initString("64f1dd49-71ca-4281-8672-3a9eddd1d0b6");
pub const IID_IAudioEndpointOffloadStreamVolume = &IID_IAudioEndpointOffloadStreamVolume_Value;
pub const IAudioEndpointOffloadStreamVolume = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetVolumeChannelCount: *const fn(
            self: *const IAudioEndpointOffloadStreamVolume,
            pu32ChannelCount: ?*u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetChannelVolumes: *const fn(
            self: *const IAudioEndpointOffloadStreamVolume,
            u32ChannelCount: u32,
            pf32Volumes: ?*f32,
            u32CurveType: AUDIO_CURVE_TYPE,
            pCurveDuration: ?*i64,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetChannelVolumes: *const fn(
            self: *const IAudioEndpointOffloadStreamVolume,
            u32ChannelCount: u32,
            pf32Volumes: ?*f32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn GetVolumeChannelCount(self: *const IAudioEndpointOffloadStreamVolume, pu32ChannelCount: ?*u32) callconv(.Inline) HRESULT {
        return self.vtable.GetVolumeChannelCount(self, pu32ChannelCount);
    }
    pub fn SetChannelVolumes(self: *const IAudioEndpointOffloadStreamVolume, u32ChannelCount: u32, pf32Volumes: ?*f32, u32CurveType: AUDIO_CURVE_TYPE, pCurveDuration: ?*i64) callconv(.Inline) HRESULT {
        return self.vtable.SetChannelVolumes(self, u32ChannelCount, pf32Volumes, u32CurveType, pCurveDuration);
    }
    pub fn GetChannelVolumes(self: *const IAudioEndpointOffloadStreamVolume, u32ChannelCount: u32, pf32Volumes: ?*f32) callconv(.Inline) HRESULT {
        return self.vtable.GetChannelVolumes(self, u32ChannelCount, pf32Volumes);
    }
};

// TODO: this type is limited to platform 'windows8.0'
const IID_IAudioEndpointOffloadStreamMute_Value = Guid.initString("dfe21355-5ec2-40e0-8d6b-710ac3c00249");
pub const IID_IAudioEndpointOffloadStreamMute = &IID_IAudioEndpointOffloadStreamMute_Value;
pub const IAudioEndpointOffloadStreamMute = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        SetMute: *const fn(
            self: *const IAudioEndpointOffloadStreamMute,
            bMuted: u8,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetMute: *const fn(
            self: *const IAudioEndpointOffloadStreamMute,
            pbMuted: ?*u8,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn SetMute(self: *const IAudioEndpointOffloadStreamMute, bMuted: u8) callconv(.Inline) HRESULT {
        return self.vtable.SetMute(self, bMuted);
    }
    pub fn GetMute(self: *const IAudioEndpointOffloadStreamMute, pbMuted: ?*u8) callconv(.Inline) HRESULT {
        return self.vtable.GetMute(self, pbMuted);
    }
};

const IID_IAudioEndpointOffloadStreamMeter_Value = Guid.initString("e1546dce-9dd1-418b-9ab2-348ced161c86");
pub const IID_IAudioEndpointOffloadStreamMeter = &IID_IAudioEndpointOffloadStreamMeter_Value;
pub const IAudioEndpointOffloadStreamMeter = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetMeterChannelCount: *const fn(
            self: *const IAudioEndpointOffloadStreamMeter,
            pu32ChannelCount: ?*u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetMeteringData: *const fn(
            self: *const IAudioEndpointOffloadStreamMeter,
            u32ChannelCount: u32,
            pf32PeakValues: ?*f32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn GetMeterChannelCount(self: *const IAudioEndpointOffloadStreamMeter, pu32ChannelCount: ?*u32) callconv(.Inline) HRESULT {
        return self.vtable.GetMeterChannelCount(self, pu32ChannelCount);
    }
    pub fn GetMeteringData(self: *const IAudioEndpointOffloadStreamMeter, u32ChannelCount: u32, pf32PeakValues: ?*f32) callconv(.Inline) HRESULT {
        return self.vtable.GetMeteringData(self, u32ChannelCount, pf32PeakValues);
    }
};

// TODO: this type is limited to platform 'windows8.1'
const IID_IAudioEndpointLastBufferControl_Value = Guid.initString("f8520dd3-8f9d-4437-9861-62f584c33dd6");
pub const IID_IAudioEndpointLastBufferControl = &IID_IAudioEndpointLastBufferControl_Value;
pub const IAudioEndpointLastBufferControl = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        IsLastBufferControlSupported: *const fn(
            self: *const IAudioEndpointLastBufferControl,
        ) callconv(@import("std").os.windows.WINAPI) BOOL,
        ReleaseOutputDataPointerForLastBuffer: *const fn(
            self: *const IAudioEndpointLastBufferControl,
            pConnectionProperty: ?*const APO_CONNECTION_PROPERTY,
        ) callconv(@import("std").os.windows.WINAPI) void,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn IsLastBufferControlSupported(self: *const IAudioEndpointLastBufferControl) callconv(.Inline) BOOL {
        return self.vtable.IsLastBufferControlSupported(self);
    }
    pub fn ReleaseOutputDataPointerForLastBuffer(self: *const IAudioEndpointLastBufferControl, pConnectionProperty: ?*const APO_CONNECTION_PROPERTY) callconv(.Inline) void {
        return self.vtable.ReleaseOutputDataPointerForLastBuffer(self, pConnectionProperty);
    }
};

// TODO: this type is limited to platform 'windows8.0'
const IID_IAudioLfxControl_Value = Guid.initString("076a6922-d802-4f83-baf6-409d9ca11bfe");
pub const IID_IAudioLfxControl = &IID_IAudioLfxControl_Value;
pub const IAudioLfxControl = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        SetLocalEffectsState: *const fn(
            self: *const IAudioLfxControl,
            bEnabled: BOOL,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetLocalEffectsState: *const fn(
            self: *const IAudioLfxControl,
            pbEnabled: ?*BOOL,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn SetLocalEffectsState(self: *const IAudioLfxControl, bEnabled: BOOL) callconv(.Inline) HRESULT {
        return self.vtable.SetLocalEffectsState(self, bEnabled);
    }
    pub fn GetLocalEffectsState(self: *const IAudioLfxControl, pbEnabled: ?*BOOL) callconv(.Inline) HRESULT {
        return self.vtable.GetLocalEffectsState(self, pbEnabled);
    }
};

// TODO: this type is limited to platform 'windows8.0'
const IID_IHardwareAudioEngineBase_Value = Guid.initString("eddce3e4-f3c1-453a-b461-223563cbd886");
pub const IID_IHardwareAudioEngineBase = &IID_IHardwareAudioEngineBase_Value;
pub const IHardwareAudioEngineBase = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetAvailableOffloadConnectorCount: *const fn(
            self: *const IHardwareAudioEngineBase,
            _pwstrDeviceId: ?PWSTR,
            _uConnectorId: u32,
            _pAvailableConnectorInstanceCount: ?*u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetEngineFormat: *const fn(
            self: *const IHardwareAudioEngineBase,
            pDevice: ?*IMMDevice,
            _bRequestDeviceFormat: BOOL,
            _ppwfxFormat: ?*?*WAVEFORMATEX,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetEngineDeviceFormat: *const fn(
            self: *const IHardwareAudioEngineBase,
            pDevice: ?*IMMDevice,
            _pwfxFormat: ?*WAVEFORMATEX,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetGfxState: *const fn(
            self: *const IHardwareAudioEngineBase,
            pDevice: ?*IMMDevice,
            _bEnable: BOOL,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetGfxState: *const fn(
            self: *const IHardwareAudioEngineBase,
            pDevice: ?*IMMDevice,
            _pbEnable: ?*BOOL,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn GetAvailableOffloadConnectorCount(self: *const IHardwareAudioEngineBase, _pwstrDeviceId: ?PWSTR, _uConnectorId: u32, _pAvailableConnectorInstanceCount: ?*u32) callconv(.Inline) HRESULT {
        return self.vtable.GetAvailableOffloadConnectorCount(self, _pwstrDeviceId, _uConnectorId, _pAvailableConnectorInstanceCount);
    }
    pub fn GetEngineFormat(self: *const IHardwareAudioEngineBase, pDevice: ?*IMMDevice, _bRequestDeviceFormat: BOOL, _ppwfxFormat: ?*?*WAVEFORMATEX) callconv(.Inline) HRESULT {
        return self.vtable.GetEngineFormat(self, pDevice, _bRequestDeviceFormat, _ppwfxFormat);
    }
    pub fn SetEngineDeviceFormat(self: *const IHardwareAudioEngineBase, pDevice: ?*IMMDevice, _pwfxFormat: ?*WAVEFORMATEX) callconv(.Inline) HRESULT {
        return self.vtable.SetEngineDeviceFormat(self, pDevice, _pwfxFormat);
    }
    pub fn SetGfxState(self: *const IHardwareAudioEngineBase, pDevice: ?*IMMDevice, _bEnable: BOOL) callconv(.Inline) HRESULT {
        return self.vtable.SetGfxState(self, pDevice, _bEnable);
    }
    pub fn GetGfxState(self: *const IHardwareAudioEngineBase, pDevice: ?*IMMDevice, _pbEnable: ?*BOOL) callconv(.Inline) HRESULT {
        return self.vtable.GetGfxState(self, pDevice, _pbEnable);
    }
};

const CLSID_DEVINTERFACE_AUDIOENDPOINTPLUGIN_Value = Guid.initString("9f2f7b66-65ac-4fa6-8ae4-123c78b89313");
pub const CLSID_DEVINTERFACE_AUDIOENDPOINTPLUGIN = &CLSID_DEVINTERFACE_AUDIOENDPOINTPLUGIN_Value;

// TODO: this type is limited to platform 'windows6.0.6000'
const IID_IAudioEndpointVolumeCallback_Value = Guid.initString("657804fa-d6ad-4496-8a60-352752af4f89");
pub const IID_IAudioEndpointVolumeCallback = &IID_IAudioEndpointVolumeCallback_Value;
pub const IAudioEndpointVolumeCallback = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        OnNotify: *const fn(
            self: *const IAudioEndpointVolumeCallback,
            pNotify: ?*AUDIO_VOLUME_NOTIFICATION_DATA,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn OnNotify(self: *const IAudioEndpointVolumeCallback, pNotify: ?*AUDIO_VOLUME_NOTIFICATION_DATA) callconv(.Inline) HRESULT {
        return self.vtable.OnNotify(self, pNotify);
    }
};

// TODO: this type is limited to platform 'windows6.0.6000'
const IID_IAudioEndpointVolume_Value = Guid.initString("5cdf2c82-841e-4546-9722-0cf74078229a");
pub const IID_IAudioEndpointVolume = &IID_IAudioEndpointVolume_Value;
pub const IAudioEndpointVolume = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        RegisterControlChangeNotify: *const fn(
            self: *const IAudioEndpointVolume,
            pNotify: ?*IAudioEndpointVolumeCallback,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        UnregisterControlChangeNotify: *const fn(
            self: *const IAudioEndpointVolume,
            pNotify: ?*IAudioEndpointVolumeCallback,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetChannelCount: *const fn(
            self: *const IAudioEndpointVolume,
            pnChannelCount: ?*u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetMasterVolumeLevel: *const fn(
            self: *const IAudioEndpointVolume,
            fLevelDB: f32,
            pguidEventContext: ?*const Guid,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetMasterVolumeLevelScalar: *const fn(
            self: *const IAudioEndpointVolume,
            fLevel: f32,
            pguidEventContext: ?*const Guid,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetMasterVolumeLevel: *const fn(
            self: *const IAudioEndpointVolume,
            pfLevelDB: ?*f32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetMasterVolumeLevelScalar: *const fn(
            self: *const IAudioEndpointVolume,
            pfLevel: ?*f32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetChannelVolumeLevel: *const fn(
            self: *const IAudioEndpointVolume,
            nChannel: u32,
            fLevelDB: f32,
            pguidEventContext: ?*const Guid,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetChannelVolumeLevelScalar: *const fn(
            self: *const IAudioEndpointVolume,
            nChannel: u32,
            fLevel: f32,
            pguidEventContext: ?*const Guid,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetChannelVolumeLevel: *const fn(
            self: *const IAudioEndpointVolume,
            nChannel: u32,
            pfLevelDB: ?*f32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetChannelVolumeLevelScalar: *const fn(
            self: *const IAudioEndpointVolume,
            nChannel: u32,
            pfLevel: ?*f32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetMute: *const fn(
            self: *const IAudioEndpointVolume,
            bMute: BOOL,
            pguidEventContext: ?*const Guid,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetMute: *const fn(
            self: *const IAudioEndpointVolume,
            pbMute: ?*BOOL,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetVolumeStepInfo: *const fn(
            self: *const IAudioEndpointVolume,
            pnStep: ?*u32,
            pnStepCount: ?*u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        VolumeStepUp: *const fn(
            self: *const IAudioEndpointVolume,
            pguidEventContext: ?*const Guid,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        VolumeStepDown: *const fn(
            self: *const IAudioEndpointVolume,
            pguidEventContext: ?*const Guid,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        QueryHardwareSupport: *const fn(
            self: *const IAudioEndpointVolume,
            pdwHardwareSupportMask: ?*u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetVolumeRange: *const fn(
            self: *const IAudioEndpointVolume,
            pflVolumeMindB: ?*f32,
            pflVolumeMaxdB: ?*f32,
            pflVolumeIncrementdB: ?*f32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn RegisterControlChangeNotify(self: *const IAudioEndpointVolume, pNotify: ?*IAudioEndpointVolumeCallback) callconv(.Inline) HRESULT {
        return self.vtable.RegisterControlChangeNotify(self, pNotify);
    }
    pub fn UnregisterControlChangeNotify(self: *const IAudioEndpointVolume, pNotify: ?*IAudioEndpointVolumeCallback) callconv(.Inline) HRESULT {
        return self.vtable.UnregisterControlChangeNotify(self, pNotify);
    }
    pub fn GetChannelCount(self: *const IAudioEndpointVolume, pnChannelCount: ?*u32) callconv(.Inline) HRESULT {
        return self.vtable.GetChannelCount(self, pnChannelCount);
    }
    pub fn SetMasterVolumeLevel(self: *const IAudioEndpointVolume, fLevelDB: f32, pguidEventContext: ?*const Guid) callconv(.Inline) HRESULT {
        return self.vtable.SetMasterVolumeLevel(self, fLevelDB, pguidEventContext);
    }
    pub fn SetMasterVolumeLevelScalar(self: *const IAudioEndpointVolume, fLevel: f32, pguidEventContext: ?*const Guid) callconv(.Inline) HRESULT {
        return self.vtable.SetMasterVolumeLevelScalar(self, fLevel, pguidEventContext);
    }
    pub fn GetMasterVolumeLevel(self: *const IAudioEndpointVolume, pfLevelDB: ?*f32) callconv(.Inline) HRESULT {
        return self.vtable.GetMasterVolumeLevel(self, pfLevelDB);
    }
    pub fn GetMasterVolumeLevelScalar(self: *const IAudioEndpointVolume, pfLevel: ?*f32) callconv(.Inline) HRESULT {
        return self.vtable.GetMasterVolumeLevelScalar(self, pfLevel);
    }
    pub fn SetChannelVolumeLevel(self: *const IAudioEndpointVolume, nChannel: u32, fLevelDB: f32, pguidEventContext: ?*const Guid) callconv(.Inline) HRESULT {
        return self.vtable.SetChannelVolumeLevel(self, nChannel, fLevelDB, pguidEventContext);
    }
    pub fn SetChannelVolumeLevelScalar(self: *const IAudioEndpointVolume, nChannel: u32, fLevel: f32, pguidEventContext: ?*const Guid) callconv(.Inline) HRESULT {
        return self.vtable.SetChannelVolumeLevelScalar(self, nChannel, fLevel, pguidEventContext);
    }
    pub fn GetChannelVolumeLevel(self: *const IAudioEndpointVolume, nChannel: u32, pfLevelDB: ?*f32) callconv(.Inline) HRESULT {
        return self.vtable.GetChannelVolumeLevel(self, nChannel, pfLevelDB);
    }
    pub fn GetChannelVolumeLevelScalar(self: *const IAudioEndpointVolume, nChannel: u32, pfLevel: ?*f32) callconv(.Inline) HRESULT {
        return self.vtable.GetChannelVolumeLevelScalar(self, nChannel, pfLevel);
    }
    pub fn SetMute(self: *const IAudioEndpointVolume, bMute: BOOL, pguidEventContext: ?*const Guid) callconv(.Inline) HRESULT {
        return self.vtable.SetMute(self, bMute, pguidEventContext);
    }
    pub fn GetMute(self: *const IAudioEndpointVolume, pbMute: ?*BOOL) callconv(.Inline) HRESULT {
        return self.vtable.GetMute(self, pbMute);
    }
    pub fn GetVolumeStepInfo(self: *const IAudioEndpointVolume, pnStep: ?*u32, pnStepCount: ?*u32) callconv(.Inline) HRESULT {
        return self.vtable.GetVolumeStepInfo(self, pnStep, pnStepCount);
    }
    pub fn VolumeStepUp(self: *const IAudioEndpointVolume, pguidEventContext: ?*const Guid) callconv(.Inline) HRESULT {
        return self.vtable.VolumeStepUp(self, pguidEventContext);
    }
    pub fn VolumeStepDown(self: *const IAudioEndpointVolume, pguidEventContext: ?*const Guid) callconv(.Inline) HRESULT {
        return self.vtable.VolumeStepDown(self, pguidEventContext);
    }
    pub fn QueryHardwareSupport(self: *const IAudioEndpointVolume, pdwHardwareSupportMask: ?*u32) callconv(.Inline) HRESULT {
        return self.vtable.QueryHardwareSupport(self, pdwHardwareSupportMask);
    }
    pub fn GetVolumeRange(self: *const IAudioEndpointVolume, pflVolumeMindB: ?*f32, pflVolumeMaxdB: ?*f32, pflVolumeIncrementdB: ?*f32) callconv(.Inline) HRESULT {
        return self.vtable.GetVolumeRange(self, pflVolumeMindB, pflVolumeMaxdB, pflVolumeIncrementdB);
    }
};

// TODO: this type is limited to platform 'windows6.1'
const IID_IAudioEndpointVolumeEx_Value = Guid.initString("66e11784-f695-4f28-a505-a7080081a78f");
pub const IID_IAudioEndpointVolumeEx = &IID_IAudioEndpointVolumeEx_Value;
pub const IAudioEndpointVolumeEx = extern union {
    pub const VTable = extern struct {
        base: IAudioEndpointVolume.VTable,
        GetVolumeRangeChannel: *const fn(
            self: *const IAudioEndpointVolumeEx,
            iChannel: u32,
            pflVolumeMindB: ?*f32,
            pflVolumeMaxdB: ?*f32,
            pflVolumeIncrementdB: ?*f32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IAudioEndpointVolume: IAudioEndpointVolume,
    IUnknown: IUnknown,
    pub fn GetVolumeRangeChannel(self: *const IAudioEndpointVolumeEx, iChannel: u32, pflVolumeMindB: ?*f32, pflVolumeMaxdB: ?*f32, pflVolumeIncrementdB: ?*f32) callconv(.Inline) HRESULT {
        return self.vtable.GetVolumeRangeChannel(self, iChannel, pflVolumeMindB, pflVolumeMaxdB, pflVolumeIncrementdB);
    }
};

// TODO: this type is limited to platform 'windows6.0.6000'
const IID_IAudioMeterInformation_Value = Guid.initString("c02216f6-8c67-4b5b-9d00-d008e73e0064");
pub const IID_IAudioMeterInformation = &IID_IAudioMeterInformation_Value;
pub const IAudioMeterInformation = extern union {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetPeakValue: *const fn(
            self: *const IAudioMeterInformation,
            pfPeak: ?*f32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetMeteringChannelCount: *const fn(
            self: *const IAudioMeterInformation,
            pnChannelCount: ?*u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetChannelsPeakValues: *const fn(
            self: *const IAudioMeterInformation,
            u32ChannelCount: u32,
            afPeakValues: [*]f32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        QueryHardwareSupport: *const fn(
            self: *const IAudioMeterInformation,
            pdwHardwareSupportMask: ?*u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    IUnknown: IUnknown,
    pub fn GetPeakValue(self: *const IAudioMeterInformation, pfPeak: ?*f32) callconv(.Inline) HRESULT {
        return self.vtable.GetPeakValue(self, pfPeak);
    }
    pub fn GetMeteringChannelCount(self: *const IAudioMeterInformation, pnChannelCount: ?*u32) callconv(.Inline) HRESULT {
        return self.vtable.GetMeteringChannelCount(self, pnChannelCount);
    }
    pub fn GetChannelsPeakValues(self: *const IAudioMeterInformation, u32ChannelCount: u32, afPeakValues: [*]f32) callconv(.Inline) HRESULT {
        return self.vtable.GetChannelsPeakValues(self, u32ChannelCount, afPeakValues);
    }
    pub fn QueryHardwareSupport(self: *const IAudioMeterInformation, pdwHardwareSupportMask: ?*u32) callconv(.Inline) HRESULT {
        return self.vtable.QueryHardwareSupport(self, pdwHardwareSupportMask);
    }
};


//--------------------------------------------------------------------------------
// Section: Functions (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
// Section: Imports (11)
//--------------------------------------------------------------------------------
const Guid = @import("../../zig.zig").Guid;
const APO_CONNECTION_PROPERTY = @import("../../media/audio/apo.zig").APO_CONNECTION_PROPERTY;
const AUDIO_CURVE_TYPE = @import("../../media/kernel_streaming.zig").AUDIO_CURVE_TYPE;
const AUDIO_VOLUME_NOTIFICATION_DATA = @import("../../media/audio.zig").AUDIO_VOLUME_NOTIFICATION_DATA;
const BOOL = @import("../../foundation.zig").BOOL;
const HRESULT = @import("../../foundation.zig").HRESULT;
const IMMDevice = @import("../../media/audio.zig").IMMDevice;
const IUnknown = @import("../../system/com.zig").IUnknown;
const PROPERTYKEY = @import("../../ui/shell/properties_system.zig").PROPERTYKEY;
const PWSTR = @import("../../foundation.zig").PWSTR;
const WAVEFORMATEX = @import("../../media/audio.zig").WAVEFORMATEX;

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
