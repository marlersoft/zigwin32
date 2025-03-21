//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (6)
//--------------------------------------------------------------------------------
pub const HCN_NOTIFICATIONS = enum(i32) {
    Invalid = 0,
    NetworkPreCreate = 1,
    NetworkCreate = 2,
    NetworkPreDelete = 3,
    NetworkDelete = 4,
    NamespaceCreate = 5,
    NamespaceDelete = 6,
    GuestNetworkServiceCreate = 7,
    GuestNetworkServiceDelete = 8,
    NetworkEndpointAttached = 9,
    NetworkEndpointDetached = 16,
    GuestNetworkServiceStateChanged = 17,
    GuestNetworkServiceInterfaceStateChanged = 18,
    ServiceDisconnect = 16777216,
    FlagsReserved = -268435456,
};
pub const HcnNotificationInvalid = HCN_NOTIFICATIONS.Invalid;
pub const HcnNotificationNetworkPreCreate = HCN_NOTIFICATIONS.NetworkPreCreate;
pub const HcnNotificationNetworkCreate = HCN_NOTIFICATIONS.NetworkCreate;
pub const HcnNotificationNetworkPreDelete = HCN_NOTIFICATIONS.NetworkPreDelete;
pub const HcnNotificationNetworkDelete = HCN_NOTIFICATIONS.NetworkDelete;
pub const HcnNotificationNamespaceCreate = HCN_NOTIFICATIONS.NamespaceCreate;
pub const HcnNotificationNamespaceDelete = HCN_NOTIFICATIONS.NamespaceDelete;
pub const HcnNotificationGuestNetworkServiceCreate = HCN_NOTIFICATIONS.GuestNetworkServiceCreate;
pub const HcnNotificationGuestNetworkServiceDelete = HCN_NOTIFICATIONS.GuestNetworkServiceDelete;
pub const HcnNotificationNetworkEndpointAttached = HCN_NOTIFICATIONS.NetworkEndpointAttached;
pub const HcnNotificationNetworkEndpointDetached = HCN_NOTIFICATIONS.NetworkEndpointDetached;
pub const HcnNotificationGuestNetworkServiceStateChanged = HCN_NOTIFICATIONS.GuestNetworkServiceStateChanged;
pub const HcnNotificationGuestNetworkServiceInterfaceStateChanged = HCN_NOTIFICATIONS.GuestNetworkServiceInterfaceStateChanged;
pub const HcnNotificationServiceDisconnect = HCN_NOTIFICATIONS.ServiceDisconnect;
pub const HcnNotificationFlagsReserved = HCN_NOTIFICATIONS.FlagsReserved;

pub const HCN_NOTIFICATION_CALLBACK = *const fn(
    NotificationType: u32,
    Context: ?*anyopaque,
    NotificationStatus: HRESULT,
    NotificationData: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) void;

pub const HCN_PORT_PROTOCOL = enum(i32) {
    TCP = 1,
    UDP = 2,
    BOTH = 3,
};
pub const HCN_PORT_PROTOCOL_TCP = HCN_PORT_PROTOCOL.TCP;
pub const HCN_PORT_PROTOCOL_UDP = HCN_PORT_PROTOCOL.UDP;
pub const HCN_PORT_PROTOCOL_BOTH = HCN_PORT_PROTOCOL.BOTH;

pub const HCN_PORT_ACCESS = enum(i32) {
    EXCLUSIVE = 1,
    SHARED = 2,
};
pub const HCN_PORT_ACCESS_EXCLUSIVE = HCN_PORT_ACCESS.EXCLUSIVE;
pub const HCN_PORT_ACCESS_SHARED = HCN_PORT_ACCESS.SHARED;

pub const HCN_PORT_RANGE_RESERVATION = extern struct {
    startingPort: u16,
    endingPort: u16,
};

pub const HCN_PORT_RANGE_ENTRY = extern struct {
    OwningPartitionId: Guid,
    TargetPartitionId: Guid,
    Protocol: HCN_PORT_PROTOCOL,
    Priority: u64,
    ReservationType: u32,
    SharingFlags: u32,
    DeliveryMode: u32,
    StartingPort: u16,
    EndingPort: u16,
};


//--------------------------------------------------------------------------------
// Section: Functions (41)
//--------------------------------------------------------------------------------
pub extern "computenetwork" fn HcnEnumerateNetworks(
    Query: ?[*:0]const u16,
    Networks: ?*?PWSTR,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnCreateNetwork(
    Id: ?*const Guid,
    Settings: ?[*:0]const u16,
    Network: ?*?*anyopaque,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnOpenNetwork(
    Id: ?*const Guid,
    Network: ?*?*anyopaque,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnModifyNetwork(
    Network: ?*anyopaque,
    Settings: ?[*:0]const u16,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnQueryNetworkProperties(
    Network: ?*anyopaque,
    Query: ?[*:0]const u16,
    Properties: ?*?PWSTR,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnDeleteNetwork(
    Id: ?*const Guid,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnCloseNetwork(
    Network: ?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnEnumerateNamespaces(
    Query: ?[*:0]const u16,
    Namespaces: ?*?PWSTR,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnCreateNamespace(
    Id: ?*const Guid,
    Settings: ?[*:0]const u16,
    Namespace: ?*?*anyopaque,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnOpenNamespace(
    Id: ?*const Guid,
    Namespace: ?*?*anyopaque,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnModifyNamespace(
    Namespace: ?*anyopaque,
    Settings: ?[*:0]const u16,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnQueryNamespaceProperties(
    Namespace: ?*anyopaque,
    Query: ?[*:0]const u16,
    Properties: ?*?PWSTR,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnDeleteNamespace(
    Id: ?*const Guid,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnCloseNamespace(
    Namespace: ?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnEnumerateEndpoints(
    Query: ?[*:0]const u16,
    Endpoints: ?*?PWSTR,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnCreateEndpoint(
    Network: ?*anyopaque,
    Id: ?*const Guid,
    Settings: ?[*:0]const u16,
    Endpoint: ?*?*anyopaque,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnOpenEndpoint(
    Id: ?*const Guid,
    Endpoint: ?*?*anyopaque,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnModifyEndpoint(
    Endpoint: ?*anyopaque,
    Settings: ?[*:0]const u16,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnQueryEndpointProperties(
    Endpoint: ?*anyopaque,
    Query: ?[*:0]const u16,
    Properties: ?*?PWSTR,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnDeleteEndpoint(
    Id: ?*const Guid,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnCloseEndpoint(
    Endpoint: ?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnEnumerateLoadBalancers(
    Query: ?[*:0]const u16,
    LoadBalancer: ?*?PWSTR,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnCreateLoadBalancer(
    Id: ?*const Guid,
    Settings: ?[*:0]const u16,
    LoadBalancer: ?*?*anyopaque,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnOpenLoadBalancer(
    Id: ?*const Guid,
    LoadBalancer: ?*?*anyopaque,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnModifyLoadBalancer(
    LoadBalancer: ?*anyopaque,
    Settings: ?[*:0]const u16,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnQueryLoadBalancerProperties(
    LoadBalancer: ?*anyopaque,
    Query: ?[*:0]const u16,
    Properties: ?*?PWSTR,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnDeleteLoadBalancer(
    Id: ?*const Guid,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnCloseLoadBalancer(
    LoadBalancer: ?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnRegisterServiceCallback(
    Callback: ?HCN_NOTIFICATION_CALLBACK,
    Context: ?*anyopaque,
    CallbackHandle: ?*?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnUnregisterServiceCallback(
    CallbackHandle: ?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnRegisterGuestNetworkServiceCallback(
    GuestNetworkService: ?*anyopaque,
    Callback: ?HCN_NOTIFICATION_CALLBACK,
    Context: ?*anyopaque,
    CallbackHandle: ?*?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnUnregisterGuestNetworkServiceCallback(
    CallbackHandle: ?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnCreateGuestNetworkService(
    Id: ?*const Guid,
    Settings: ?[*:0]const u16,
    GuestNetworkService: ?*?*anyopaque,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnCloseGuestNetworkService(
    GuestNetworkService: ?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnModifyGuestNetworkService(
    GuestNetworkService: ?*anyopaque,
    Settings: ?[*:0]const u16,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnDeleteGuestNetworkService(
    Id: ?*const Guid,
    ErrorRecord: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnReserveGuestNetworkServicePort(
    GuestNetworkService: ?*anyopaque,
    Protocol: HCN_PORT_PROTOCOL,
    Access: HCN_PORT_ACCESS,
    Port: u16,
    PortReservationHandle: ?*?HANDLE,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnReserveGuestNetworkServicePortRange(
    GuestNetworkService: ?*anyopaque,
    PortCount: u16,
    PortRangeReservation: ?*HCN_PORT_RANGE_RESERVATION,
    PortReservationHandle: ?*?HANDLE,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnReleaseGuestNetworkServicePortReservationHandle(
    PortReservationHandle: ?HANDLE,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnEnumerateGuestNetworkPortReservations(
    ReturnCount: ?*u32,
    // TODO: what to do with BytesParamIndex 0?
    PortEntries: ?*?*HCN_PORT_RANGE_ENTRY,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "computenetwork" fn HcnFreeGuestNetworkPortReservations(
    PortEntries: ?*HCN_PORT_RANGE_ENTRY,
) callconv(@import("std").os.windows.WINAPI) void;


//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
// Section: Imports (4)
//--------------------------------------------------------------------------------
const Guid = @import("../zig.zig").Guid;
const HANDLE = @import("../foundation.zig").HANDLE;
const HRESULT = @import("../foundation.zig").HRESULT;
const PWSTR = @import("../foundation.zig").PWSTR;

test {
    // The following '_ = <FuncPtrType>' lines are a workaround for https://github.com/ziglang/zig/issues/4476
    if (@hasDecl(@This(), "HCN_NOTIFICATION_CALLBACK")) { _ = HCN_NOTIFICATION_CALLBACK; }

    @setEvalBranchQuota(
        comptime @import("std").meta.declarations(@This()).len * 3
    );

    // reference all the pub declarations
    if (!@import("builtin").is_test) return;
    inline for (comptime @import("std").meta.declarations(@This())) |decl| {
        _ = @field(@This(), decl.name);
    }
}
