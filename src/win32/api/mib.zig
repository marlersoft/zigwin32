//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (102)
//--------------------------------------------------------------------------------
pub const NL_INTERFACE_OFFLOAD_ROD = extern struct {
    _bitfield: u8,
};

pub const MIB_NOTIFICATION_TYPE = extern enum(i32) {
    ParameterNotification = 0,
    AddInstance = 1,
    DeleteInstance = 2,
    InitialNotification = 3,
};
pub const MibParameterNotification = MIB_NOTIFICATION_TYPE.ParameterNotification;
pub const MibAddInstance = MIB_NOTIFICATION_TYPE.AddInstance;
pub const MibDeleteInstance = MIB_NOTIFICATION_TYPE.DeleteInstance;
pub const MibInitialNotification = MIB_NOTIFICATION_TYPE.InitialNotification;

pub const MIB_IF_ROW2 = extern struct {
    InterfaceLuid: NET_LUID_LH,
    InterfaceIndex: u32,
    InterfaceGuid: Guid,
    Alias: [257]u16,
    Description: [257]u16,
    PhysicalAddressLength: u32,
    PhysicalAddress: [32]u8,
    PermanentPhysicalAddress: [32]u8,
    Mtu: u32,
    Type: u32,
    TunnelType: TUNNEL_TYPE,
    MediaType: NDIS_MEDIUM,
    PhysicalMediumType: NDIS_PHYSICAL_MEDIUM,
    AccessType: NET_IF_ACCESS_TYPE,
    DirectionType: NET_IF_DIRECTION_TYPE,
    InterfaceAndOperStatusFlags: MIB_IF_ROW2._InterfaceAndOperStatusFlags_e__Struct,
    OperStatus: IF_OPER_STATUS,
    AdminStatus: NET_IF_ADMIN_STATUS,
    MediaConnectState: NET_IF_MEDIA_CONNECT_STATE,
    NetworkGuid: Guid,
    ConnectionType: NET_IF_CONNECTION_TYPE,
    TransmitLinkSpeed: u64,
    ReceiveLinkSpeed: u64,
    InOctets: u64,
    InUcastPkts: u64,
    InNUcastPkts: u64,
    InDiscards: u64,
    InErrors: u64,
    InUnknownProtos: u64,
    InUcastOctets: u64,
    InMulticastOctets: u64,
    InBroadcastOctets: u64,
    OutOctets: u64,
    OutUcastPkts: u64,
    OutNUcastPkts: u64,
    OutDiscards: u64,
    OutErrors: u64,
    OutUcastOctets: u64,
    OutMulticastOctets: u64,
    OutBroadcastOctets: u64,
    OutQLen: u64,
    const _InterfaceAndOperStatusFlags_e__Struct = u32; // TODO: generate this nested type!
};

pub const MIB_IF_TABLE2 = extern struct {
    NumEntries: u32,
    Table: [1]MIB_IF_ROW2,
};

pub const MIB_IPINTERFACE_ROW = extern struct {
    Family: u16,
    InterfaceLuid: NET_LUID_LH,
    InterfaceIndex: u32,
    MaxReassemblySize: u32,
    InterfaceIdentifier: u64,
    MinRouterAdvertisementInterval: u32,
    MaxRouterAdvertisementInterval: u32,
    AdvertisingEnabled: u8,
    ForwardingEnabled: u8,
    WeakHostSend: u8,
    WeakHostReceive: u8,
    UseAutomaticMetric: u8,
    UseNeighborUnreachabilityDetection: u8,
    ManagedAddressConfigurationSupported: u8,
    OtherStatefulConfigurationSupported: u8,
    AdvertiseDefaultRoute: u8,
    RouterDiscoveryBehavior: NL_ROUTER_DISCOVERY_BEHAVIOR,
    DadTransmits: u32,
    BaseReachableTime: u32,
    RetransmitTime: u32,
    PathMtuDiscoveryTimeout: u32,
    LinkLocalAddressBehavior: NL_LINK_LOCAL_ADDRESS_BEHAVIOR,
    LinkLocalAddressTimeout: u32,
    ZoneIndices: [16]u32,
    SitePrefixLength: u32,
    Metric: u32,
    NlMtu: u32,
    Connected: u8,
    SupportsWakeUpPatterns: u8,
    SupportsNeighborDiscovery: u8,
    SupportsRouterDiscovery: u8,
    ReachableTime: u32,
    TransmitOffload: NL_INTERFACE_OFFLOAD_ROD,
    ReceiveOffload: NL_INTERFACE_OFFLOAD_ROD,
    DisableDefaultRoutes: u8,
};

pub const MIB_IPINTERFACE_TABLE = extern struct {
    NumEntries: u32,
    Table: [1]MIB_IPINTERFACE_ROW,
};

pub const MIB_IFSTACK_ROW = extern struct {
    HigherLayerInterfaceIndex: u32,
    LowerLayerInterfaceIndex: u32,
};

pub const MIB_INVERTEDIFSTACK_ROW = extern struct {
    LowerLayerInterfaceIndex: u32,
    HigherLayerInterfaceIndex: u32,
};

pub const MIB_IFSTACK_TABLE = extern struct {
    NumEntries: u32,
    Table: [1]MIB_IFSTACK_ROW,
};

pub const MIB_INVERTEDIFSTACK_TABLE = extern struct {
    NumEntries: u32,
    Table: [1]MIB_INVERTEDIFSTACK_ROW,
};

pub const MIB_IP_NETWORK_CONNECTION_BANDWIDTH_ESTIMATES = extern struct {
    InboundBandwidthInformation: NL_BANDWIDTH_INFORMATION,
    OutboundBandwidthInformation: NL_BANDWIDTH_INFORMATION,
};

pub const MIB_UNICASTIPADDRESS_ROW = extern struct {
    Address: SOCKADDR_INET,
    InterfaceLuid: NET_LUID_LH,
    InterfaceIndex: u32,
    PrefixOrigin: NL_PREFIX_ORIGIN,
    SuffixOrigin: NL_SUFFIX_ORIGIN,
    ValidLifetime: u32,
    PreferredLifetime: u32,
    OnLinkPrefixLength: u8,
    SkipAsSource: u8,
    DadState: NL_DAD_STATE,
    ScopeId: SCOPE_ID,
    CreationTimeStamp: LARGE_INTEGER,
};

pub const MIB_UNICASTIPADDRESS_TABLE = extern struct {
    NumEntries: u32,
    Table: [1]MIB_UNICASTIPADDRESS_ROW,
};

pub const MIB_ANYCASTIPADDRESS_ROW = extern struct {
    Address: SOCKADDR_INET,
    InterfaceLuid: NET_LUID_LH,
    InterfaceIndex: u32,
    ScopeId: SCOPE_ID,
};

pub const MIB_ANYCASTIPADDRESS_TABLE = extern struct {
    NumEntries: u32,
    Table: [1]MIB_ANYCASTIPADDRESS_ROW,
};

pub const MIB_MULTICASTIPADDRESS_ROW = extern struct {
    Address: SOCKADDR_INET,
    InterfaceIndex: u32,
    InterfaceLuid: NET_LUID_LH,
    ScopeId: SCOPE_ID,
};

pub const MIB_MULTICASTIPADDRESS_TABLE = extern struct {
    NumEntries: u32,
    Table: [1]MIB_MULTICASTIPADDRESS_ROW,
};

pub const MIB_IPFORWARD_ROW2 = extern struct {
    InterfaceLuid: NET_LUID_LH,
    InterfaceIndex: u32,
    DestinationPrefix: IP_ADDRESS_PREFIX,
    NextHop: SOCKADDR_INET,
    SitePrefixLength: u8,
    ValidLifetime: u32,
    PreferredLifetime: u32,
    Metric: u32,
    Protocol: NL_ROUTE_PROTOCOL,
    Loopback: u8,
    AutoconfigureAddress: u8,
    Publish: u8,
    Immortal: u8,
    Age: u32,
    Origin: NL_ROUTE_ORIGIN,
};

pub const MIB_IPFORWARD_TABLE2 = extern struct {
    NumEntries: u32,
    Table: [1]MIB_IPFORWARD_ROW2,
};

pub const MIB_IPPATH_ROW = extern struct {
    Source: SOCKADDR_INET,
    Destination: SOCKADDR_INET,
    InterfaceLuid: NET_LUID_LH,
    InterfaceIndex: u32,
    CurrentNextHop: SOCKADDR_INET,
    PathMtu: u32,
    RttMean: u32,
    RttDeviation: u32,
    Anonymous: MIB_IPPATH_ROW._Anonymous_e__Union,
    IsReachable: u8,
    LinkTransmitSpeed: u64,
    LinkReceiveSpeed: u64,
    const _Anonymous_e__Union = u32; // TODO: generate this nested type!
};

pub const MIB_IPPATH_TABLE = extern struct {
    NumEntries: u32,
    Table: [1]MIB_IPPATH_ROW,
};

pub const MIB_IPNET_ROW2 = extern struct {
    Address: SOCKADDR_INET,
    InterfaceIndex: u32,
    InterfaceLuid: NET_LUID_LH,
    PhysicalAddress: [32]u8,
    PhysicalAddressLength: u32,
    State: NL_NEIGHBOR_STATE,
    Anonymous: MIB_IPNET_ROW2._Anonymous_e__Union,
    ReachabilityTime: MIB_IPNET_ROW2._ReachabilityTime_e__Union,
    const _Anonymous_e__Union = u32; // TODO: generate this nested type!
    const _ReachabilityTime_e__Union = u32; // TODO: generate this nested type!
};

pub const MIB_IPNET_TABLE2 = extern struct {
    NumEntries: u32,
    Table: [1]MIB_IPNET_ROW2,
};

pub const MIB_OPAQUE_QUERY = extern struct {
    dwVarId: u32,
    rgdwVarIndex: [1]u32,
};

pub const MIB_IFNUMBER = extern struct {
    dwValue: u32,
};

pub const MIB_IFROW = extern struct {
    wszName: [256]u16,
    dwIndex: u32,
    dwType: u32,
    dwMtu: u32,
    dwSpeed: u32,
    dwPhysAddrLen: u32,
    bPhysAddr: [8]u8,
    dwAdminStatus: u32,
    dwOperStatus: INTERNAL_IF_OPER_STATUS,
    dwLastChange: u32,
    dwInOctets: u32,
    dwInUcastPkts: u32,
    dwInNUcastPkts: u32,
    dwInDiscards: u32,
    dwInErrors: u32,
    dwInUnknownProtos: u32,
    dwOutOctets: u32,
    dwOutUcastPkts: u32,
    dwOutNUcastPkts: u32,
    dwOutDiscards: u32,
    dwOutErrors: u32,
    dwOutQLen: u32,
    dwDescrLen: u32,
    bDescr: [256]u8,
};

pub const MIB_IFTABLE = extern struct {
    dwNumEntries: u32,
    table: [1]MIB_IFROW,
};

pub const MIB_IPADDRROW_XP = extern struct {
    dwAddr: u32,
    dwIndex: u32,
    dwMask: u32,
    dwBCastAddr: u32,
    dwReasmSize: u32,
    unused1: u16,
    wType: u16,
};

pub const MIB_IPADDRROW_W2K = extern struct {
    dwAddr: u32,
    dwIndex: u32,
    dwMask: u32,
    dwBCastAddr: u32,
    dwReasmSize: u32,
    unused1: u16,
    unused2: u16,
};

pub const MIB_IPADDRTABLE = extern struct {
    dwNumEntries: u32,
    table: [1]MIB_IPADDRROW_XP,
};

pub const MIB_IPFORWARDNUMBER = extern struct {
    dwValue: u32,
};

pub const MIB_IPFORWARDROW = extern struct {
    dwForwardDest: u32,
    dwForwardMask: u32,
    dwForwardPolicy: u32,
    dwForwardNextHop: u32,
    dwForwardIfIndex: u32,
    Anonymous1: MIB_IPFORWARDROW._Anonymous1_e__Union,
    Anonymous2: MIB_IPFORWARDROW._Anonymous2_e__Union,
    dwForwardAge: u32,
    dwForwardNextHopAS: u32,
    dwForwardMetric1: u32,
    dwForwardMetric2: u32,
    dwForwardMetric3: u32,
    dwForwardMetric4: u32,
    dwForwardMetric5: u32,
    const _Anonymous1_e__Union = u32; // TODO: generate this nested type!
    const _Anonymous2_e__Union = u32; // TODO: generate this nested type!
};

pub const MIB_IPFORWARDTABLE = extern struct {
    dwNumEntries: u32,
    table: [1]MIB_IPFORWARDROW,
};

pub const MIB_IPNETROW_LH = extern struct {
    dwIndex: u32,
    dwPhysAddrLen: u32,
    bPhysAddr: [8]u8,
    dwAddr: u32,
    Anonymous: MIB_IPNETROW_LH._Anonymous_e__Union,
    const _Anonymous_e__Union = u32; // TODO: generate this nested type!
};

pub const MIB_IPNETROW_W2K = extern struct {
    dwIndex: u32,
    dwPhysAddrLen: u32,
    bPhysAddr: [8]u8,
    dwAddr: u32,
    dwType: u32,
};

pub const MIB_IPNETTABLE = extern struct {
    dwNumEntries: u32,
    table: [1]MIB_IPNETROW_LH,
};

pub const MIB_IPSTATS_LH = extern struct {
    Anonymous: MIB_IPSTATS_LH._Anonymous_e__Union,
    dwDefaultTTL: u32,
    dwInReceives: u32,
    dwInHdrErrors: u32,
    dwInAddrErrors: u32,
    dwForwDatagrams: u32,
    dwInUnknownProtos: u32,
    dwInDiscards: u32,
    dwInDelivers: u32,
    dwOutRequests: u32,
    dwRoutingDiscards: u32,
    dwOutDiscards: u32,
    dwOutNoRoutes: u32,
    dwReasmTimeout: u32,
    dwReasmReqds: u32,
    dwReasmOks: u32,
    dwReasmFails: u32,
    dwFragOks: u32,
    dwFragFails: u32,
    dwFragCreates: u32,
    dwNumIf: u32,
    dwNumAddr: u32,
    dwNumRoutes: u32,
    const _Anonymous_e__Union = u32; // TODO: generate this nested type!
};

pub const MIB_IPSTATS_W2K = extern struct {
    dwForwarding: u32,
    dwDefaultTTL: u32,
    dwInReceives: u32,
    dwInHdrErrors: u32,
    dwInAddrErrors: u32,
    dwForwDatagrams: u32,
    dwInUnknownProtos: u32,
    dwInDiscards: u32,
    dwInDelivers: u32,
    dwOutRequests: u32,
    dwRoutingDiscards: u32,
    dwOutDiscards: u32,
    dwOutNoRoutes: u32,
    dwReasmTimeout: u32,
    dwReasmReqds: u32,
    dwReasmOks: u32,
    dwReasmFails: u32,
    dwFragOks: u32,
    dwFragFails: u32,
    dwFragCreates: u32,
    dwNumIf: u32,
    dwNumAddr: u32,
    dwNumRoutes: u32,
};

pub const MIBICMPSTATS = extern struct {
    dwMsgs: u32,
    dwErrors: u32,
    dwDestUnreachs: u32,
    dwTimeExcds: u32,
    dwParmProbs: u32,
    dwSrcQuenchs: u32,
    dwRedirects: u32,
    dwEchos: u32,
    dwEchoReps: u32,
    dwTimestamps: u32,
    dwTimestampReps: u32,
    dwAddrMasks: u32,
    dwAddrMaskReps: u32,
};

pub const MIBICMPINFO = extern struct {
    icmpInStats: MIBICMPSTATS,
    icmpOutStats: MIBICMPSTATS,
};

pub const MIB_ICMP = extern struct {
    stats: MIBICMPINFO,
};

pub const MIBICMPSTATS_EX_XPSP1 = extern struct {
    dwMsgs: u32,
    dwErrors: u32,
    rgdwTypeCount: [256]u32,
};

pub const MIB_ICMP_EX_XPSP1 = extern struct {
    icmpInStats: MIBICMPSTATS_EX_XPSP1,
    icmpOutStats: MIBICMPSTATS_EX_XPSP1,
};

pub const ICMP6_TYPE = extern enum(i32) {
    ICMP6_DST_UNREACH = 1,
    ICMP6_PACKET_TOO_BIG = 2,
    ICMP6_TIME_EXCEEDED = 3,
    ICMP6_PARAM_PROB = 4,
    ICMP6_ECHO_REQUEST = 128,
    ICMP6_ECHO_REPLY = 129,
    ICMP6_MEMBERSHIP_QUERY = 130,
    ICMP6_MEMBERSHIP_REPORT = 131,
    ICMP6_MEMBERSHIP_REDUCTION = 132,
    ND_ROUTER_SOLICIT = 133,
    ND_ROUTER_ADVERT = 134,
    ND_NEIGHBOR_SOLICIT = 135,
    ND_NEIGHBOR_ADVERT = 136,
    ND_REDIRECT = 137,
    ICMP6_V2_MEMBERSHIP_REPORT = 143,
};
pub const ICMP6_DST_UNREACH = ICMP6_TYPE.ICMP6_DST_UNREACH;
pub const ICMP6_PACKET_TOO_BIG = ICMP6_TYPE.ICMP6_PACKET_TOO_BIG;
pub const ICMP6_TIME_EXCEEDED = ICMP6_TYPE.ICMP6_TIME_EXCEEDED;
pub const ICMP6_PARAM_PROB = ICMP6_TYPE.ICMP6_PARAM_PROB;
pub const ICMP6_ECHO_REQUEST = ICMP6_TYPE.ICMP6_ECHO_REQUEST;
pub const ICMP6_ECHO_REPLY = ICMP6_TYPE.ICMP6_ECHO_REPLY;
pub const ICMP6_MEMBERSHIP_QUERY = ICMP6_TYPE.ICMP6_MEMBERSHIP_QUERY;
pub const ICMP6_MEMBERSHIP_REPORT = ICMP6_TYPE.ICMP6_MEMBERSHIP_REPORT;
pub const ICMP6_MEMBERSHIP_REDUCTION = ICMP6_TYPE.ICMP6_MEMBERSHIP_REDUCTION;
pub const ND_ROUTER_SOLICIT = ICMP6_TYPE.ND_ROUTER_SOLICIT;
pub const ND_ROUTER_ADVERT = ICMP6_TYPE.ND_ROUTER_ADVERT;
pub const ND_NEIGHBOR_SOLICIT = ICMP6_TYPE.ND_NEIGHBOR_SOLICIT;
pub const ND_NEIGHBOR_ADVERT = ICMP6_TYPE.ND_NEIGHBOR_ADVERT;
pub const ND_REDIRECT = ICMP6_TYPE.ND_REDIRECT;
pub const ICMP6_V2_MEMBERSHIP_REPORT = ICMP6_TYPE.ICMP6_V2_MEMBERSHIP_REPORT;

pub const ICMP4_TYPE = extern enum(i32) {
    ECHO_REPLY = 0,
    DST_UNREACH = 3,
    SOURCE_QUENCH = 4,
    REDIRECT = 5,
    ECHO_REQUEST = 8,
    ROUTER_ADVERT = 9,
    ROUTER_SOLICIT = 10,
    TIME_EXCEEDED = 11,
    PARAM_PROB = 12,
    TIMESTAMP_REQUEST = 13,
    TIMESTAMP_REPLY = 14,
    MASK_REQUEST = 17,
    MASK_REPLY = 18,
};
pub const ICMP4_ECHO_REPLY = ICMP4_TYPE.ECHO_REPLY;
pub const ICMP4_DST_UNREACH = ICMP4_TYPE.DST_UNREACH;
pub const ICMP4_SOURCE_QUENCH = ICMP4_TYPE.SOURCE_QUENCH;
pub const ICMP4_REDIRECT = ICMP4_TYPE.REDIRECT;
pub const ICMP4_ECHO_REQUEST = ICMP4_TYPE.ECHO_REQUEST;
pub const ICMP4_ROUTER_ADVERT = ICMP4_TYPE.ROUTER_ADVERT;
pub const ICMP4_ROUTER_SOLICIT = ICMP4_TYPE.ROUTER_SOLICIT;
pub const ICMP4_TIME_EXCEEDED = ICMP4_TYPE.TIME_EXCEEDED;
pub const ICMP4_PARAM_PROB = ICMP4_TYPE.PARAM_PROB;
pub const ICMP4_TIMESTAMP_REQUEST = ICMP4_TYPE.TIMESTAMP_REQUEST;
pub const ICMP4_TIMESTAMP_REPLY = ICMP4_TYPE.TIMESTAMP_REPLY;
pub const ICMP4_MASK_REQUEST = ICMP4_TYPE.MASK_REQUEST;
pub const ICMP4_MASK_REPLY = ICMP4_TYPE.MASK_REPLY;

pub const MIB_IPMCAST_OIF_XP = extern struct {
    dwOutIfIndex: u32,
    dwNextHopAddr: u32,
    dwReserved: u32,
    dwReserved1: u32,
};

pub const MIB_IPMCAST_OIF_W2K = extern struct {
    dwOutIfIndex: u32,
    dwNextHopAddr: u32,
    pvReserved: *c_void,
    dwReserved: u32,
};

pub const MIB_IPMCAST_MFE = extern struct {
    dwGroup: u32,
    dwSource: u32,
    dwSrcMask: u32,
    dwUpStrmNgbr: u32,
    dwInIfIndex: u32,
    dwInIfProtocol: u32,
    dwRouteProtocol: u32,
    dwRouteNetwork: u32,
    dwRouteMask: u32,
    ulUpTime: u32,
    ulExpiryTime: u32,
    ulTimeOut: u32,
    ulNumOutIf: u32,
    fFlags: u32,
    dwReserved: u32,
    rgmioOutInfo: [1]MIB_IPMCAST_OIF_XP,
};

pub const MIB_MFE_TABLE = extern struct {
    dwNumEntries: u32,
    table: [1]MIB_IPMCAST_MFE,
};

pub const MIB_IPMCAST_OIF_STATS_LH = extern struct {
    dwOutIfIndex: u32,
    dwNextHopAddr: u32,
    dwDialContext: u32,
    ulTtlTooLow: u32,
    ulFragNeeded: u32,
    ulOutPackets: u32,
    ulOutDiscards: u32,
};

pub const MIB_IPMCAST_OIF_STATS_W2K = extern struct {
    dwOutIfIndex: u32,
    dwNextHopAddr: u32,
    pvDialContext: *c_void,
    ulTtlTooLow: u32,
    ulFragNeeded: u32,
    ulOutPackets: u32,
    ulOutDiscards: u32,
};

pub const MIB_IPMCAST_MFE_STATS = extern struct {
    dwGroup: u32,
    dwSource: u32,
    dwSrcMask: u32,
    dwUpStrmNgbr: u32,
    dwInIfIndex: u32,
    dwInIfProtocol: u32,
    dwRouteProtocol: u32,
    dwRouteNetwork: u32,
    dwRouteMask: u32,
    ulUpTime: u32,
    ulExpiryTime: u32,
    ulNumOutIf: u32,
    ulInPkts: u32,
    ulInOctets: u32,
    ulPktsDifferentIf: u32,
    ulQueueOverflow: u32,
    rgmiosOutStats: [1]MIB_IPMCAST_OIF_STATS_LH,
};

pub const MIB_MFE_STATS_TABLE = extern struct {
    dwNumEntries: u32,
    table: [1]MIB_IPMCAST_MFE_STATS,
};

pub const MIB_IPMCAST_MFE_STATS_EX_XP = extern struct {
    dwGroup: u32,
    dwSource: u32,
    dwSrcMask: u32,
    dwUpStrmNgbr: u32,
    dwInIfIndex: u32,
    dwInIfProtocol: u32,
    dwRouteProtocol: u32,
    dwRouteNetwork: u32,
    dwRouteMask: u32,
    ulUpTime: u32,
    ulExpiryTime: u32,
    ulNumOutIf: u32,
    ulInPkts: u32,
    ulInOctets: u32,
    ulPktsDifferentIf: u32,
    ulQueueOverflow: u32,
    ulUninitMfe: u32,
    ulNegativeMfe: u32,
    ulInDiscards: u32,
    ulInHdrErrors: u32,
    ulTotalOutPackets: u32,
    rgmiosOutStats: [1]MIB_IPMCAST_OIF_STATS_LH,
};

pub const MIB_MFE_STATS_TABLE_EX_XP = extern struct {
    dwNumEntries: u32,
    table: [1]*MIB_IPMCAST_MFE_STATS_EX_XP,
};

pub const MIB_IPMCAST_GLOBAL = extern struct {
    dwEnable: u32,
};

pub const MIB_IPMCAST_IF_ENTRY = extern struct {
    dwIfIndex: u32,
    dwTtl: u32,
    dwProtocol: u32,
    dwRateLimit: u32,
    ulInMcastOctets: u32,
    ulOutMcastOctets: u32,
};

pub const MIB_IPMCAST_IF_TABLE = extern struct {
    dwNumEntries: u32,
    table: [1]MIB_IPMCAST_IF_ENTRY,
};

pub const TCP_CONNECTION_OFFLOAD_STATE = extern enum(i32) {
    InHost = 0,
    Offloading = 1,
    Offloaded = 2,
    Uploading = 3,
    Max = 4,
};
pub const TcpConnectionOffloadStateInHost = TCP_CONNECTION_OFFLOAD_STATE.InHost;
pub const TcpConnectionOffloadStateOffloading = TCP_CONNECTION_OFFLOAD_STATE.Offloading;
pub const TcpConnectionOffloadStateOffloaded = TCP_CONNECTION_OFFLOAD_STATE.Offloaded;
pub const TcpConnectionOffloadStateUploading = TCP_CONNECTION_OFFLOAD_STATE.Uploading;
pub const TcpConnectionOffloadStateMax = TCP_CONNECTION_OFFLOAD_STATE.Max;

pub const MIB_TCPROW_LH = extern struct {
    Anonymous: MIB_TCPROW_LH._Anonymous_e__Union,
    dwLocalAddr: u32,
    dwLocalPort: u32,
    dwRemoteAddr: u32,
    dwRemotePort: u32,
    const _Anonymous_e__Union = u32; // TODO: generate this nested type!
};

pub const MIB_TCPROW_W2K = extern struct {
    dwState: u32,
    dwLocalAddr: u32,
    dwLocalPort: u32,
    dwRemoteAddr: u32,
    dwRemotePort: u32,
};

pub const MIB_TCPTABLE = extern struct {
    dwNumEntries: u32,
    table: [1]MIB_TCPROW_LH,
};

pub const MIB_TCPROW2 = extern struct {
    dwState: u32,
    dwLocalAddr: u32,
    dwLocalPort: u32,
    dwRemoteAddr: u32,
    dwRemotePort: u32,
    dwOwningPid: u32,
    dwOffloadState: TCP_CONNECTION_OFFLOAD_STATE,
};

pub const MIB_TCPTABLE2 = extern struct {
    dwNumEntries: u32,
    table: [1]MIB_TCPROW2,
};

pub const MIB_TCPROW_OWNER_PID = extern struct {
    dwState: u32,
    dwLocalAddr: u32,
    dwLocalPort: u32,
    dwRemoteAddr: u32,
    dwRemotePort: u32,
    dwOwningPid: u32,
};

pub const MIB_TCPTABLE_OWNER_PID = extern struct {
    dwNumEntries: u32,
    table: [1]MIB_TCPROW_OWNER_PID,
};

pub const MIB_TCPROW_OWNER_MODULE = extern struct {
    dwState: u32,
    dwLocalAddr: u32,
    dwLocalPort: u32,
    dwRemoteAddr: u32,
    dwRemotePort: u32,
    dwOwningPid: u32,
    liCreateTimestamp: LARGE_INTEGER,
    OwningModuleInfo: [16]u64,
};

pub const MIB_TCPTABLE_OWNER_MODULE = extern struct {
    dwNumEntries: u32,
    table: [1]MIB_TCPROW_OWNER_MODULE,
};

pub const MIB_TCP6ROW = extern struct {
    State: MIB_TCP_STATE,
    LocalAddr: in6_addr,
    dwLocalScopeId: u32,
    dwLocalPort: u32,
    RemoteAddr: in6_addr,
    dwRemoteScopeId: u32,
    dwRemotePort: u32,
};

pub const MIB_TCP6TABLE = extern struct {
    dwNumEntries: u32,
    table: [1]MIB_TCP6ROW,
};

pub const MIB_TCP6ROW2 = extern struct {
    LocalAddr: in6_addr,
    dwLocalScopeId: u32,
    dwLocalPort: u32,
    RemoteAddr: in6_addr,
    dwRemoteScopeId: u32,
    dwRemotePort: u32,
    State: MIB_TCP_STATE,
    dwOwningPid: u32,
    dwOffloadState: TCP_CONNECTION_OFFLOAD_STATE,
};

pub const MIB_TCP6TABLE2 = extern struct {
    dwNumEntries: u32,
    table: [1]MIB_TCP6ROW2,
};

pub const MIB_TCP6ROW_OWNER_PID = extern struct {
    ucLocalAddr: [16]u8,
    dwLocalScopeId: u32,
    dwLocalPort: u32,
    ucRemoteAddr: [16]u8,
    dwRemoteScopeId: u32,
    dwRemotePort: u32,
    dwState: u32,
    dwOwningPid: u32,
};

pub const MIB_TCP6TABLE_OWNER_PID = extern struct {
    dwNumEntries: u32,
    table: [1]MIB_TCP6ROW_OWNER_PID,
};

pub const MIB_TCP6ROW_OWNER_MODULE = extern struct {
    ucLocalAddr: [16]u8,
    dwLocalScopeId: u32,
    dwLocalPort: u32,
    ucRemoteAddr: [16]u8,
    dwRemoteScopeId: u32,
    dwRemotePort: u32,
    dwState: u32,
    dwOwningPid: u32,
    liCreateTimestamp: LARGE_INTEGER,
    OwningModuleInfo: [16]u64,
};

pub const MIB_TCP6TABLE_OWNER_MODULE = extern struct {
    dwNumEntries: u32,
    table: [1]MIB_TCP6ROW_OWNER_MODULE,
};

pub const MIB_TCPSTATS_LH = extern struct {
    Anonymous: MIB_TCPSTATS_LH._Anonymous_e__Union,
    dwRtoMin: u32,
    dwRtoMax: u32,
    dwMaxConn: u32,
    dwActiveOpens: u32,
    dwPassiveOpens: u32,
    dwAttemptFails: u32,
    dwEstabResets: u32,
    dwCurrEstab: u32,
    dwInSegs: u32,
    dwOutSegs: u32,
    dwRetransSegs: u32,
    dwInErrs: u32,
    dwOutRsts: u32,
    dwNumConns: u32,
    const _Anonymous_e__Union = u32; // TODO: generate this nested type!
};

pub const MIB_TCPSTATS_W2K = extern struct {
    dwRtoAlgorithm: u32,
    dwRtoMin: u32,
    dwRtoMax: u32,
    dwMaxConn: u32,
    dwActiveOpens: u32,
    dwPassiveOpens: u32,
    dwAttemptFails: u32,
    dwEstabResets: u32,
    dwCurrEstab: u32,
    dwInSegs: u32,
    dwOutSegs: u32,
    dwRetransSegs: u32,
    dwInErrs: u32,
    dwOutRsts: u32,
    dwNumConns: u32,
};

pub const MIB_TCPSTATS2 = extern struct {
    RtoAlgorithm: TCP_RTO_ALGORITHM,
    dwRtoMin: u32,
    dwRtoMax: u32,
    dwMaxConn: u32,
    dwActiveOpens: u32,
    dwPassiveOpens: u32,
    dwAttemptFails: u32,
    dwEstabResets: u32,
    dwCurrEstab: u32,
    dw64InSegs: u64,
    dw64OutSegs: u64,
    dwRetransSegs: u32,
    dwInErrs: u32,
    dwOutRsts: u32,
    dwNumConns: u32,
};

pub const MIB_UDPROW = extern struct {
    dwLocalAddr: u32,
    dwLocalPort: u32,
};

pub const MIB_UDPTABLE = extern struct {
    dwNumEntries: u32,
    table: [1]MIB_UDPROW,
};

pub const MIB_UDPROW_OWNER_PID = extern struct {
    dwLocalAddr: u32,
    dwLocalPort: u32,
    dwOwningPid: u32,
};

pub const MIB_UDPTABLE_OWNER_PID = extern struct {
    dwNumEntries: u32,
    table: [1]MIB_UDPROW_OWNER_PID,
};

pub const MIB_UDPROW_OWNER_MODULE = extern struct {
    dwLocalAddr: u32,
    dwLocalPort: u32,
    dwOwningPid: u32,
    liCreateTimestamp: LARGE_INTEGER,
    Anonymous: MIB_UDPROW_OWNER_MODULE._Anonymous_e__Union,
    OwningModuleInfo: [16]u64,
    const _Anonymous_e__Union = u32; // TODO: generate this nested type!
};

pub const MIB_UDPTABLE_OWNER_MODULE = extern struct {
    dwNumEntries: u32,
    table: [1]MIB_UDPROW_OWNER_MODULE,
};

pub const MIB_UDP6ROW = extern struct {
    dwLocalAddr: in6_addr,
    dwLocalScopeId: u32,
    dwLocalPort: u32,
};

pub const MIB_UDP6TABLE = extern struct {
    dwNumEntries: u32,
    table: [1]MIB_UDP6ROW,
};

pub const MIB_UDP6ROW_OWNER_PID = extern struct {
    ucLocalAddr: [16]u8,
    dwLocalScopeId: u32,
    dwLocalPort: u32,
    dwOwningPid: u32,
};

pub const MIB_UDP6TABLE_OWNER_PID = extern struct {
    dwNumEntries: u32,
    table: [1]MIB_UDP6ROW_OWNER_PID,
};

pub const MIB_UDP6ROW_OWNER_MODULE = extern struct {
    ucLocalAddr: [16]u8,
    dwLocalScopeId: u32,
    dwLocalPort: u32,
    dwOwningPid: u32,
    liCreateTimestamp: LARGE_INTEGER,
    Anonymous: MIB_UDP6ROW_OWNER_MODULE._Anonymous_e__Union,
    OwningModuleInfo: [16]u64,
    const _Anonymous_e__Union = u32; // TODO: generate this nested type!
};

pub const MIB_UDP6TABLE_OWNER_MODULE = extern struct {
    dwNumEntries: u32,
    table: [1]MIB_UDP6ROW_OWNER_MODULE,
};

pub const MIB_UDPSTATS = extern struct {
    dwInDatagrams: u32,
    dwNoPorts: u32,
    dwInErrors: u32,
    dwOutDatagrams: u32,
    dwNumAddrs: u32,
};

pub const MIB_UDPSTATS2 = extern struct {
    dw64InDatagrams: u64,
    dwNoPorts: u32,
    dwInErrors: u32,
    dw64OutDatagrams: u64,
    dwNumAddrs: u32,
};

pub const MIB_IPMCAST_BOUNDARY = extern struct {
    dwIfIndex: u32,
    dwGroupAddress: u32,
    dwGroupMask: u32,
    dwStatus: u32,
};

pub const MIB_IPMCAST_BOUNDARY_TABLE = extern struct {
    dwNumEntries: u32,
    table: [1]MIB_IPMCAST_BOUNDARY,
};

pub const MIB_BOUNDARYROW = extern struct {
    dwGroupAddress: u32,
    dwGroupMask: u32,
};

pub const MIB_MCAST_LIMIT_ROW = extern struct {
    dwTtl: u32,
    dwRateLimit: u32,
};

pub const MIB_IPMCAST_SCOPE = extern struct {
    dwGroupAddress: u32,
    dwGroupMask: u32,
    snNameBuffer: [256]u16,
    dwStatus: u32,
};

pub const MIB_BEST_IF = extern struct {
    dwDestAddr: u32,
    dwIfIndex: u32,
};

pub const MIB_PROXYARP = extern struct {
    dwAddress: u32,
    dwMask: u32,
    dwIfIndex: u32,
};

pub const MIB_IFSTATUS = extern struct {
    dwIfIndex: u32,
    dwAdminStatus: u32,
    dwOperationalStatus: u32,
    bMHbeatActive: BOOL,
    bMHbeatAlive: BOOL,
};

pub const MIB_OPAQUE_INFO = extern struct {
    dwId: u32,
    Anonymous: MIB_OPAQUE_INFO._Anonymous_e__Union,
    const _Anonymous_e__Union = u32; // TODO: generate this nested type!
};


//--------------------------------------------------------------------------------
// Section: Functions (0)
//--------------------------------------------------------------------------------

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
// Section: Imports (29)
//--------------------------------------------------------------------------------
const Guid = @import("../zig.zig").Guid;
const NET_IF_ACCESS_TYPE = @import("network_drivers.zig").NET_IF_ACCESS_TYPE;
const NL_DAD_STATE = @import("ip_helper.zig").NL_DAD_STATE;
const NL_SUFFIX_ORIGIN = @import("ip_helper.zig").NL_SUFFIX_ORIGIN;
const NL_ROUTE_PROTOCOL = @import("network_drivers.zig").NL_ROUTE_PROTOCOL;
const NL_BANDWIDTH_INFORMATION = @import("ip_helper.zig").NL_BANDWIDTH_INFORMATION;
const NET_IF_ADMIN_STATUS = @import("network_drivers.zig").NET_IF_ADMIN_STATUS;
const NL_ROUTER_DISCOVERY_BEHAVIOR = @import("network_drivers.zig").NL_ROUTER_DISCOVERY_BEHAVIOR;
const BOOL = @import("system_services.zig").BOOL;
const SCOPE_ID = @import("win_sock.zig").SCOPE_ID;
const MIB_TCP_STATE = @import("ip_helper.zig").MIB_TCP_STATE;
const in6_addr = @import("win_sock.zig").in6_addr;
const NDIS_PHYSICAL_MEDIUM = @import("native_wi_fi.zig").NDIS_PHYSICAL_MEDIUM;
const IF_OPER_STATUS = @import("ip_helper.zig").IF_OPER_STATUS;
const SOCKADDR_INET = @import("ip_helper.zig").SOCKADDR_INET;
const NET_LUID_LH = @import("ip_helper.zig").NET_LUID_LH;
const NL_NEIGHBOR_STATE = @import("network_drivers.zig").NL_NEIGHBOR_STATE;
const NL_PREFIX_ORIGIN = @import("ip_helper.zig").NL_PREFIX_ORIGIN;
const NL_LINK_LOCAL_ADDRESS_BEHAVIOR = @import("network_drivers.zig").NL_LINK_LOCAL_ADDRESS_BEHAVIOR;
const INTERNAL_IF_OPER_STATUS = @import("ip_helper.zig").INTERNAL_IF_OPER_STATUS;
const NDIS_MEDIUM = @import("native_wi_fi.zig").NDIS_MEDIUM;
const IP_ADDRESS_PREFIX = @import("ip_helper.zig").IP_ADDRESS_PREFIX;
const TCP_RTO_ALGORITHM = @import("ip_helper.zig").TCP_RTO_ALGORITHM;
const NET_IF_MEDIA_CONNECT_STATE = @import("network_drivers.zig").NET_IF_MEDIA_CONNECT_STATE;
const NET_IF_CONNECTION_TYPE = @import("network_drivers.zig").NET_IF_CONNECTION_TYPE;
const LARGE_INTEGER = @import("system_services.zig").LARGE_INTEGER;
const NET_IF_DIRECTION_TYPE = @import("network_drivers.zig").NET_IF_DIRECTION_TYPE;
const TUNNEL_TYPE = @import("network_drivers.zig").TUNNEL_TYPE;
const NL_ROUTE_ORIGIN = @import("network_drivers.zig").NL_ROUTE_ORIGIN;

test {
    const constant_export_count = 0;
    const type_export_count = 102;
    const enum_value_export_count = 37;
    const com_iface_id_export_count = 0;
    const com_class_id_export_count = 0;
    const func_export_count = 0;
    const unicode_alias_count = 0;
    const import_count = 29;
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