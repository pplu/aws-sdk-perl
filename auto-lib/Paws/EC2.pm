package Paws::EC2;
  use Moose;
  sub service { 'ec2' }
  sub signing_name { 'ec2' }
  sub version { '2016-11-15' }
  sub flattened_arrays { 1 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
       sub { defined $_[0]->http_status and $_[0]->http_status == 503 and $_[0]->code eq 'EC2ThrottledException' },
       sub { defined $_[0]->http_status and $_[0]->http_status == 503 and $_[0]->code eq 'RequestLimitExceeded' },
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::EC2Caller';

  
  sub AcceptReservedInstancesExchangeQuote {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AcceptReservedInstancesExchangeQuote', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AcceptTransitGatewayMulticastDomainAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AcceptTransitGatewayMulticastDomainAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AcceptTransitGatewayPeeringAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AcceptTransitGatewayPeeringAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AcceptTransitGatewayVpcAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AcceptTransitGatewayVpcAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AcceptVpcEndpointConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AcceptVpcEndpointConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AcceptVpcPeeringConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AcceptVpcPeeringConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AdvertiseByoipCidr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AdvertiseByoipCidr', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AllocateAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AllocateAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AllocateHosts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AllocateHosts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ApplySecurityGroupsToClientVpnTargetNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ApplySecurityGroupsToClientVpnTargetNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssignIpv6Addresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssignIpv6Addresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssignPrivateIpAddresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssignPrivateIpAddresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateClientVpnTargetNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateClientVpnTargetNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateDhcpOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateDhcpOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateEnclaveCertificateIamRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateEnclaveCertificateIamRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateIamInstanceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateIamInstanceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateRouteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateRouteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateSubnetCidrBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateSubnetCidrBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateTransitGatewayMulticastDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateTransitGatewayMulticastDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateTransitGatewayRouteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateTransitGatewayRouteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateVpcCidrBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateVpcCidrBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachClassicLinkVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AttachClassicLinkVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachInternetGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AttachInternetGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachNetworkInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AttachNetworkInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AttachVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachVpnGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AttachVpnGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AuthorizeClientVpnIngress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AuthorizeClientVpnIngress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AuthorizeSecurityGroupEgress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AuthorizeSecurityGroupEgress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AuthorizeSecurityGroupIngress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AuthorizeSecurityGroupIngress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BundleInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::BundleInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelBundleTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelBundleTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelCapacityReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelCapacityReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelConversionTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelConversionTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelExportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelExportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelImportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelImportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelReservedInstancesListing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelReservedInstancesListing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelSpotFleetRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelSpotFleetRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelSpotInstanceRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelSpotInstanceRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ConfirmProductInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ConfirmProductInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyFpgaImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CopyFpgaImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CopyImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopySnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CopySnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCapacityReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateCapacityReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCarrierGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateCarrierGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateClientVpnEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateClientVpnEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateClientVpnRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateClientVpnRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCustomerGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateCustomerGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDefaultSubnet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateDefaultSubnet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDefaultVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateDefaultVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDhcpOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateDhcpOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEgressOnlyInternetGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateEgressOnlyInternetGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFlowLogs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateFlowLogs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFpgaImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateFpgaImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInstanceExportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateInstanceExportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInternetGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateInternetGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKeyPair {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateKeyPair', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLaunchTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateLaunchTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLaunchTemplateVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateLaunchTemplateVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocalGatewayRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateLocalGatewayRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLocalGatewayRouteTableVpcAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateLocalGatewayRouteTableVpcAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateManagedPrefixList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateManagedPrefixList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNatGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateNatGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNetworkAcl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateNetworkAcl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNetworkAclEntry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateNetworkAclEntry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNetworkInsightsPath {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateNetworkInsightsPath', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNetworkInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateNetworkInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNetworkInterfacePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateNetworkInterfacePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePlacementGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreatePlacementGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReplaceRootVolumeTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateReplaceRootVolumeTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReservedInstancesListing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateReservedInstancesListing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRestoreImageTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateRestoreImageTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRouteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateRouteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSecurityGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateSecurityGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSpotDatafeedSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateSpotDatafeedSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStoreImageTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateStoreImageTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSubnet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateSubnet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrafficMirrorFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTrafficMirrorFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrafficMirrorFilterRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTrafficMirrorFilterRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrafficMirrorSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTrafficMirrorSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrafficMirrorTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTrafficMirrorTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransitGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTransitGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransitGatewayConnect {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTransitGatewayConnect', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransitGatewayConnectPeer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTransitGatewayConnectPeer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransitGatewayMulticastDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTransitGatewayMulticastDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransitGatewayPeeringAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTransitGatewayPeeringAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransitGatewayPrefixListReference {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTransitGatewayPrefixListReference', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransitGatewayRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTransitGatewayRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransitGatewayRouteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTransitGatewayRouteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransitGatewayVpcAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTransitGatewayVpcAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpcEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcEndpointConnectionNotification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpcEndpointConnectionNotification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcEndpointServiceConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpcEndpointServiceConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcPeeringConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpcPeeringConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpnConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpnConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpnConnectionRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpnConnectionRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpnGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpnGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCarrierGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteCarrierGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteClientVpnEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteClientVpnEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteClientVpnRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteClientVpnRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCustomerGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteCustomerGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDhcpOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteDhcpOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEgressOnlyInternetGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteEgressOnlyInternetGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFleets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteFleets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFlowLogs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteFlowLogs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFpgaImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteFpgaImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInternetGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteInternetGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKeyPair {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteKeyPair', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLaunchTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteLaunchTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLaunchTemplateVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteLaunchTemplateVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLocalGatewayRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteLocalGatewayRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLocalGatewayRouteTableVpcAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteLocalGatewayRouteTableVpcAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteManagedPrefixList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteManagedPrefixList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNatGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteNatGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetworkAcl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteNetworkAcl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetworkAclEntry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteNetworkAclEntry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetworkInsightsAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteNetworkInsightsAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetworkInsightsPath {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteNetworkInsightsPath', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetworkInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteNetworkInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetworkInterfacePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteNetworkInterfacePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePlacementGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeletePlacementGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteQueuedReservedInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteQueuedReservedInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRouteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteRouteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSecurityGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteSecurityGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSpotDatafeedSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteSpotDatafeedSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSubnet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteSubnet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrafficMirrorFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTrafficMirrorFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrafficMirrorFilterRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTrafficMirrorFilterRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrafficMirrorSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTrafficMirrorSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrafficMirrorTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTrafficMirrorTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTransitGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTransitGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTransitGatewayConnect {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTransitGatewayConnect', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTransitGatewayConnectPeer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTransitGatewayConnectPeer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTransitGatewayMulticastDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTransitGatewayMulticastDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTransitGatewayPeeringAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTransitGatewayPeeringAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTransitGatewayPrefixListReference {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTransitGatewayPrefixListReference', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTransitGatewayRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTransitGatewayRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTransitGatewayRouteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTransitGatewayRouteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTransitGatewayVpcAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTransitGatewayVpcAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpcEndpointConnectionNotifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpcEndpointConnectionNotifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpcEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpcEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpcEndpointServiceConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpcEndpointServiceConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpcPeeringConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpcPeeringConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpnConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpnConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpnConnectionRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpnConnectionRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpnGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpnGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeprovisionByoipCidr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeprovisionByoipCidr', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeregisterImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterInstanceEventNotificationAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeregisterInstanceEventNotificationAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterTransitGatewayMulticastGroupMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeregisterTransitGatewayMulticastGroupMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterTransitGatewayMulticastGroupSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeregisterTransitGatewayMulticastGroupSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeAccountAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAddresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeAddresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAddressesAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeAddressesAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAggregateIdFormat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeAggregateIdFormat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAvailabilityZones {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeAvailabilityZones', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBundleTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeBundleTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeByoipCidrs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeByoipCidrs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCapacityReservations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeCapacityReservations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCarrierGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeCarrierGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClassicLinkInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeClassicLinkInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClientVpnAuthorizationRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeClientVpnAuthorizationRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClientVpnConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeClientVpnConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClientVpnEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeClientVpnEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClientVpnRoutes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeClientVpnRoutes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClientVpnTargetNetworks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeClientVpnTargetNetworks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCoipPools {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeCoipPools', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConversionTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeConversionTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCustomerGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeCustomerGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDhcpOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeDhcpOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEgressOnlyInternetGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeEgressOnlyInternetGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeElasticGpus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeElasticGpus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExportImageTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeExportImageTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExportTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeExportTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFastSnapshotRestores {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeFastSnapshotRestores', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeFleetHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleetInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeFleetInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFleets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeFleets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFlowLogs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeFlowLogs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFpgaImageAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeFpgaImageAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFpgaImages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeFpgaImages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHostReservationOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeHostReservationOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHostReservations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeHostReservations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHosts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeHosts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIamInstanceProfileAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeIamInstanceProfileAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIdentityIdFormat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeIdentityIdFormat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIdFormat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeIdFormat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImageAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeImageAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeImages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImportImageTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeImportImageTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImportSnapshotTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeImportSnapshotTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInstanceAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceCreditSpecifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInstanceCreditSpecifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceEventNotificationAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInstanceEventNotificationAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInstanceStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceTypeOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInstanceTypeOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInstanceTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInternetGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInternetGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIpv6Pools {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeIpv6Pools', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeKeyPairs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeKeyPairs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLaunchTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeLaunchTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLaunchTemplateVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeLaunchTemplateVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocalGatewayRouteTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeLocalGatewayRouteTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocalGatewayRouteTableVpcAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeLocalGatewayRouteTableVpcAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocalGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeLocalGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocalGatewayVirtualInterfaceGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeLocalGatewayVirtualInterfaceGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLocalGatewayVirtualInterfaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeLocalGatewayVirtualInterfaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeManagedPrefixLists {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeManagedPrefixLists', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMovingAddresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeMovingAddresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNatGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeNatGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNetworkAcls {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeNetworkAcls', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNetworkInsightsAnalyses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeNetworkInsightsAnalyses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNetworkInsightsPaths {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeNetworkInsightsPaths', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNetworkInterfaceAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeNetworkInterfaceAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNetworkInterfacePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeNetworkInterfacePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNetworkInterfaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeNetworkInterfaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePlacementGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribePlacementGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePrefixLists {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribePrefixLists', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePrincipalIdFormat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribePrincipalIdFormat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePublicIpv4Pools {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribePublicIpv4Pools', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRegions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeRegions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplaceRootVolumeTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeReplaceRootVolumeTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservedInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeReservedInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservedInstancesListings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeReservedInstancesListings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservedInstancesModifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeReservedInstancesModifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservedInstancesOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeReservedInstancesOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRouteTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeRouteTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScheduledInstanceAvailability {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeScheduledInstanceAvailability', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScheduledInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeScheduledInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSecurityGroupReferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSecurityGroupReferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSecurityGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSecurityGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSnapshotAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSnapshotAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSpotDatafeedSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSpotDatafeedSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSpotFleetInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSpotFleetInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSpotFleetRequestHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSpotFleetRequestHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSpotFleetRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSpotFleetRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSpotInstanceRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSpotInstanceRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSpotPriceHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSpotPriceHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStaleSecurityGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeStaleSecurityGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStoreImageTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeStoreImageTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSubnets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSubnets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrafficMirrorFilters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTrafficMirrorFilters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrafficMirrorSessions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTrafficMirrorSessions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrafficMirrorTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTrafficMirrorTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTransitGatewayAttachments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTransitGatewayAttachments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTransitGatewayConnectPeers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTransitGatewayConnectPeers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTransitGatewayConnects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTransitGatewayConnects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTransitGatewayMulticastDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTransitGatewayMulticastDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTransitGatewayPeeringAttachments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTransitGatewayPeeringAttachments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTransitGatewayRouteTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTransitGatewayRouteTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTransitGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTransitGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTransitGatewayVpcAttachments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTransitGatewayVpcAttachments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVolumeAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVolumeAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVolumes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVolumes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVolumesModifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVolumesModifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVolumeStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVolumeStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcClassicLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcClassicLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcClassicLinkDnsSupport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcClassicLinkDnsSupport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcEndpointConnectionNotifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcEndpointConnectionNotifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcEndpointConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcEndpointConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcEndpointServiceConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcEndpointServiceConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcEndpointServicePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcEndpointServicePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcEndpointServices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcEndpointServices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcPeeringConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcPeeringConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpnConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpnConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpnGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpnGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachClassicLinkVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DetachClassicLinkVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachInternetGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DetachInternetGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachNetworkInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DetachNetworkInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DetachVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachVpnGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DetachVpnGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableEbsEncryptionByDefault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableEbsEncryptionByDefault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableFastSnapshotRestores {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableFastSnapshotRestores', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableSerialConsoleAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableSerialConsoleAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableTransitGatewayRouteTablePropagation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableTransitGatewayRouteTablePropagation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableVgwRoutePropagation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableVgwRoutePropagation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableVpcClassicLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableVpcClassicLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableVpcClassicLinkDnsSupport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableVpcClassicLinkDnsSupport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateClientVpnTargetNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateClientVpnTargetNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateEnclaveCertificateIamRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateEnclaveCertificateIamRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateIamInstanceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateIamInstanceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateRouteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateRouteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateSubnetCidrBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateSubnetCidrBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateTransitGatewayMulticastDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateTransitGatewayMulticastDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateTransitGatewayRouteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateTransitGatewayRouteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateVpcCidrBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateVpcCidrBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableEbsEncryptionByDefault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableEbsEncryptionByDefault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableFastSnapshotRestores {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableFastSnapshotRestores', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableSerialConsoleAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableSerialConsoleAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableTransitGatewayRouteTablePropagation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableTransitGatewayRouteTablePropagation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableVgwRoutePropagation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableVgwRoutePropagation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableVolumeIO {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableVolumeIO', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableVpcClassicLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableVpcClassicLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableVpcClassicLinkDnsSupport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableVpcClassicLinkDnsSupport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportClientVpnClientCertificateRevocationList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ExportClientVpnClientCertificateRevocationList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportClientVpnClientConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ExportClientVpnClientConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ExportImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportTransitGatewayRoutes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ExportTransitGatewayRoutes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssociatedEnclaveCertificateIamRoles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetAssociatedEnclaveCertificateIamRoles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssociatedIpv6PoolCidrs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetAssociatedIpv6PoolCidrs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCapacityReservationUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetCapacityReservationUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCoipPoolUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetCoipPoolUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConsoleOutput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetConsoleOutput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConsoleScreenshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetConsoleScreenshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDefaultCreditSpecification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetDefaultCreditSpecification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEbsDefaultKmsKeyId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetEbsDefaultKmsKeyId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEbsEncryptionByDefault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetEbsEncryptionByDefault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFlowLogsIntegrationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetFlowLogsIntegrationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGroupsForCapacityReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetGroupsForCapacityReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetHostReservationPurchasePreview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetHostReservationPurchasePreview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLaunchTemplateData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetLaunchTemplateData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetManagedPrefixListAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetManagedPrefixListAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetManagedPrefixListEntries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetManagedPrefixListEntries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPasswordData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetPasswordData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReservedInstancesExchangeQuote {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetReservedInstancesExchangeQuote', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSerialConsoleAccessStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetSerialConsoleAccessStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTransitGatewayAttachmentPropagations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetTransitGatewayAttachmentPropagations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTransitGatewayMulticastDomainAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetTransitGatewayMulticastDomainAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTransitGatewayPrefixListReferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetTransitGatewayPrefixListReferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTransitGatewayRouteTableAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetTransitGatewayRouteTableAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTransitGatewayRouteTablePropagations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetTransitGatewayRouteTablePropagations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportClientVpnClientCertificateRevocationList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ImportClientVpnClientCertificateRevocationList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ImportImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ImportInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportKeyPair {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ImportKeyPair', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ImportSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ImportVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyAddressAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyAddressAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyAvailabilityZoneGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyAvailabilityZoneGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyCapacityReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyCapacityReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyClientVpnEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyClientVpnEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDefaultCreditSpecification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyDefaultCreditSpecification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyEbsDefaultKmsKeyId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyEbsDefaultKmsKeyId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyFpgaImageAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyFpgaImageAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyHosts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyHosts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyIdentityIdFormat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyIdentityIdFormat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyIdFormat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyIdFormat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyImageAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyImageAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyInstanceAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyInstanceAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyInstanceCapacityReservationAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyInstanceCapacityReservationAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyInstanceCreditSpecification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyInstanceCreditSpecification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyInstanceEventStartTime {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyInstanceEventStartTime', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyInstanceMetadataOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyInstanceMetadataOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyInstancePlacement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyInstancePlacement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyLaunchTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyLaunchTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyManagedPrefixList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyManagedPrefixList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyNetworkInterfaceAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyNetworkInterfaceAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyReservedInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyReservedInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifySnapshotAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifySnapshotAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifySpotFleetRequest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifySpotFleetRequest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifySubnetAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifySubnetAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyTrafficMirrorFilterNetworkServices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyTrafficMirrorFilterNetworkServices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyTrafficMirrorFilterRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyTrafficMirrorFilterRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyTrafficMirrorSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyTrafficMirrorSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyTransitGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyTransitGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyTransitGatewayPrefixListReference {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyTransitGatewayPrefixListReference', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyTransitGatewayVpcAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyTransitGatewayVpcAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVolumeAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVolumeAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpcAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpcAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpcEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpcEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpcEndpointConnectionNotification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpcEndpointConnectionNotification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpcEndpointServiceConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpcEndpointServiceConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpcEndpointServicePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpcEndpointServicePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpcPeeringConnectionOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpcPeeringConnectionOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpcTenancy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpcTenancy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpnConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpnConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpnConnectionOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpnConnectionOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpnTunnelCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpnTunnelCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpnTunnelOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpnTunnelOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MonitorInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::MonitorInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MoveAddressToVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::MoveAddressToVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ProvisionByoipCidr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ProvisionByoipCidr', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PurchaseHostReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::PurchaseHostReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PurchaseReservedInstancesOffering {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::PurchaseReservedInstancesOffering', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PurchaseScheduledInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::PurchaseScheduledInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebootInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RebootInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RegisterImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterInstanceEventNotificationAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RegisterInstanceEventNotificationAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterTransitGatewayMulticastGroupMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RegisterTransitGatewayMulticastGroupMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterTransitGatewayMulticastGroupSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RegisterTransitGatewayMulticastGroupSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectTransitGatewayMulticastDomainAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RejectTransitGatewayMulticastDomainAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectTransitGatewayPeeringAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RejectTransitGatewayPeeringAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectTransitGatewayVpcAttachment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RejectTransitGatewayVpcAttachment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectVpcEndpointConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RejectVpcEndpointConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectVpcPeeringConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RejectVpcPeeringConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReleaseAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReleaseAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReleaseHosts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReleaseHosts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplaceIamInstanceProfileAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReplaceIamInstanceProfileAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplaceNetworkAclAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReplaceNetworkAclAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplaceNetworkAclEntry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReplaceNetworkAclEntry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplaceRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReplaceRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplaceRouteTableAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReplaceRouteTableAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplaceTransitGatewayRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReplaceTransitGatewayRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReportInstanceStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReportInstanceStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RequestSpotFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RequestSpotFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RequestSpotInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RequestSpotInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetAddressAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ResetAddressAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetEbsDefaultKmsKeyId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ResetEbsDefaultKmsKeyId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetFpgaImageAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ResetFpgaImageAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetImageAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ResetImageAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetInstanceAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ResetInstanceAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetNetworkInterfaceAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ResetNetworkInterfaceAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetSnapshotAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ResetSnapshotAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreAddressToClassic {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RestoreAddressToClassic', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreManagedPrefixListVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RestoreManagedPrefixListVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeClientVpnIngress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RevokeClientVpnIngress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeSecurityGroupEgress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RevokeSecurityGroupEgress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeSecurityGroupIngress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RevokeSecurityGroupIngress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RunInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RunInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RunScheduledInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RunScheduledInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchLocalGatewayRoutes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::SearchLocalGatewayRoutes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchTransitGatewayMulticastGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::SearchTransitGatewayMulticastGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchTransitGatewayRoutes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::SearchTransitGatewayRoutes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendDiagnosticInterrupt {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::SendDiagnosticInterrupt', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::StartInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartNetworkInsightsAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::StartNetworkInsightsAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartVpcEndpointServicePrivateDnsVerification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::StartVpcEndpointServicePrivateDnsVerification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::StopInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateClientVpnConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::TerminateClientVpnConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::TerminateInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnassignIpv6Addresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::UnassignIpv6Addresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnassignPrivateIpAddresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::UnassignPrivateIpAddresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnmonitorInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::UnmonitorInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSecurityGroupRuleDescriptionsEgress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::UpdateSecurityGroupRuleDescriptionsEgress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSecurityGroupRuleDescriptionsIngress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::UpdateSecurityGroupRuleDescriptionsIngress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub WithdrawByoipCidr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::WithdrawByoipCidr', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAllAddressesAttribute {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeAddressesAttribute(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeAddressesAttribute(@_, NextToken => $next_result->NextToken);
        push @{ $result->Addresses }, @{ $next_result->Addresses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Addresses') foreach (@{ $result->Addresses });
        $result = $self->DescribeAddressesAttribute(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Addresses') foreach (@{ $result->Addresses });
    }

    return undef
  }
  sub DescribeAllByoipCidrs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeByoipCidrs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeByoipCidrs(@_, NextToken => $next_result->NextToken);
        push @{ $result->ByoipCidrs }, @{ $next_result->ByoipCidrs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ByoipCidrs') foreach (@{ $result->ByoipCidrs });
        $result = $self->DescribeByoipCidrs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ByoipCidrs') foreach (@{ $result->ByoipCidrs });
    }

    return undef
  }
  sub DescribeAllCapacityReservations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCapacityReservations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeCapacityReservations(@_, NextToken => $next_result->NextToken);
        push @{ $result->CapacityReservations }, @{ $next_result->CapacityReservations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CapacityReservations') foreach (@{ $result->CapacityReservations });
        $result = $self->DescribeCapacityReservations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CapacityReservations') foreach (@{ $result->CapacityReservations });
    }

    return undef
  }
  sub DescribeAllCarrierGateways {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCarrierGateways(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeCarrierGateways(@_, NextToken => $next_result->NextToken);
        push @{ $result->CarrierGateways }, @{ $next_result->CarrierGateways };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CarrierGateways') foreach (@{ $result->CarrierGateways });
        $result = $self->DescribeCarrierGateways(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CarrierGateways') foreach (@{ $result->CarrierGateways });
    }

    return undef
  }
  sub DescribeAllClassicLinkInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClassicLinkInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeClassicLinkInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->Instances }, @{ $next_result->Instances };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Instances') foreach (@{ $result->Instances });
        $result = $self->DescribeClassicLinkInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Instances') foreach (@{ $result->Instances });
    }

    return undef
  }
  sub DescribeAllClientVpnAuthorizationRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClientVpnAuthorizationRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeClientVpnAuthorizationRules(@_, NextToken => $next_result->NextToken);
        push @{ $result->AuthorizationRules }, @{ $next_result->AuthorizationRules };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AuthorizationRules') foreach (@{ $result->AuthorizationRules });
        $result = $self->DescribeClientVpnAuthorizationRules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AuthorizationRules') foreach (@{ $result->AuthorizationRules });
    }

    return undef
  }
  sub DescribeAllClientVpnConnections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClientVpnConnections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeClientVpnConnections(@_, NextToken => $next_result->NextToken);
        push @{ $result->Connections }, @{ $next_result->Connections };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Connections') foreach (@{ $result->Connections });
        $result = $self->DescribeClientVpnConnections(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Connections') foreach (@{ $result->Connections });
    }

    return undef
  }
  sub DescribeAllClientVpnEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClientVpnEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeClientVpnEndpoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->ClientVpnEndpoints }, @{ $next_result->ClientVpnEndpoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ClientVpnEndpoints') foreach (@{ $result->ClientVpnEndpoints });
        $result = $self->DescribeClientVpnEndpoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ClientVpnEndpoints') foreach (@{ $result->ClientVpnEndpoints });
    }

    return undef
  }
  sub DescribeAllClientVpnRoutes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClientVpnRoutes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeClientVpnRoutes(@_, NextToken => $next_result->NextToken);
        push @{ $result->Routes }, @{ $next_result->Routes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Routes') foreach (@{ $result->Routes });
        $result = $self->DescribeClientVpnRoutes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Routes') foreach (@{ $result->Routes });
    }

    return undef
  }
  sub DescribeAllClientVpnTargetNetworks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClientVpnTargetNetworks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeClientVpnTargetNetworks(@_, NextToken => $next_result->NextToken);
        push @{ $result->ClientVpnTargetNetworks }, @{ $next_result->ClientVpnTargetNetworks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ClientVpnTargetNetworks') foreach (@{ $result->ClientVpnTargetNetworks });
        $result = $self->DescribeClientVpnTargetNetworks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ClientVpnTargetNetworks') foreach (@{ $result->ClientVpnTargetNetworks });
    }

    return undef
  }
  sub DescribeAllCoipPools {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeCoipPools(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeCoipPools(@_, NextToken => $next_result->NextToken);
        push @{ $result->CoipPools }, @{ $next_result->CoipPools };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CoipPools') foreach (@{ $result->CoipPools });
        $result = $self->DescribeCoipPools(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CoipPools') foreach (@{ $result->CoipPools });
    }

    return undef
  }
  sub DescribeAllDhcpOptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDhcpOptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeDhcpOptions(@_, NextToken => $next_result->NextToken);
        push @{ $result->DhcpOptions }, @{ $next_result->DhcpOptions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DhcpOptions') foreach (@{ $result->DhcpOptions });
        $result = $self->DescribeDhcpOptions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DhcpOptions') foreach (@{ $result->DhcpOptions });
    }

    return undef
  }
  sub DescribeAllEgressOnlyInternetGateways {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEgressOnlyInternetGateways(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeEgressOnlyInternetGateways(@_, NextToken => $next_result->NextToken);
        push @{ $result->EgressOnlyInternetGateways }, @{ $next_result->EgressOnlyInternetGateways };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EgressOnlyInternetGateways') foreach (@{ $result->EgressOnlyInternetGateways });
        $result = $self->DescribeEgressOnlyInternetGateways(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EgressOnlyInternetGateways') foreach (@{ $result->EgressOnlyInternetGateways });
    }

    return undef
  }
  sub DescribeAllExportImageTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeExportImageTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeExportImageTasks(@_, NextToken => $next_result->NextToken);
        push @{ $result->ExportImageTasks }, @{ $next_result->ExportImageTasks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ExportImageTasks') foreach (@{ $result->ExportImageTasks });
        $result = $self->DescribeExportImageTasks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ExportImageTasks') foreach (@{ $result->ExportImageTasks });
    }

    return undef
  }
  sub DescribeAllFastSnapshotRestores {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFastSnapshotRestores(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeFastSnapshotRestores(@_, NextToken => $next_result->NextToken);
        push @{ $result->FastSnapshotRestores }, @{ $next_result->FastSnapshotRestores };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FastSnapshotRestores') foreach (@{ $result->FastSnapshotRestores });
        $result = $self->DescribeFastSnapshotRestores(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FastSnapshotRestores') foreach (@{ $result->FastSnapshotRestores });
    }

    return undef
  }
  sub DescribeAllFleets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFleets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeFleets(@_, NextToken => $next_result->NextToken);
        push @{ $result->Fleets }, @{ $next_result->Fleets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Fleets') foreach (@{ $result->Fleets });
        $result = $self->DescribeFleets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Fleets') foreach (@{ $result->Fleets });
    }

    return undef
  }
  sub DescribeAllFlowLogs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFlowLogs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeFlowLogs(@_, NextToken => $next_result->NextToken);
        push @{ $result->FlowLogs }, @{ $next_result->FlowLogs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FlowLogs') foreach (@{ $result->FlowLogs });
        $result = $self->DescribeFlowLogs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FlowLogs') foreach (@{ $result->FlowLogs });
    }

    return undef
  }
  sub DescribeAllFpgaImages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFpgaImages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeFpgaImages(@_, NextToken => $next_result->NextToken);
        push @{ $result->FpgaImages }, @{ $next_result->FpgaImages };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FpgaImages') foreach (@{ $result->FpgaImages });
        $result = $self->DescribeFpgaImages(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FpgaImages') foreach (@{ $result->FpgaImages });
    }

    return undef
  }
  sub DescribeAllHostReservationOfferings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeHostReservationOfferings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeHostReservationOfferings(@_, NextToken => $next_result->NextToken);
        push @{ $result->OfferingSet }, @{ $next_result->OfferingSet };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'OfferingSet') foreach (@{ $result->OfferingSet });
        $result = $self->DescribeHostReservationOfferings(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'OfferingSet') foreach (@{ $result->OfferingSet });
    }

    return undef
  }
  sub DescribeAllHostReservations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeHostReservations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeHostReservations(@_, NextToken => $next_result->NextToken);
        push @{ $result->HostReservationSet }, @{ $next_result->HostReservationSet };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'HostReservationSet') foreach (@{ $result->HostReservationSet });
        $result = $self->DescribeHostReservations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'HostReservationSet') foreach (@{ $result->HostReservationSet });
    }

    return undef
  }
  sub DescribeAllHosts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeHosts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeHosts(@_, NextToken => $next_result->NextToken);
        push @{ $result->Hosts }, @{ $next_result->Hosts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Hosts') foreach (@{ $result->Hosts });
        $result = $self->DescribeHosts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Hosts') foreach (@{ $result->Hosts });
    }

    return undef
  }
  sub DescribeAllIamInstanceProfileAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeIamInstanceProfileAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeIamInstanceProfileAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->IamInstanceProfileAssociations }, @{ $next_result->IamInstanceProfileAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IamInstanceProfileAssociations') foreach (@{ $result->IamInstanceProfileAssociations });
        $result = $self->DescribeIamInstanceProfileAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IamInstanceProfileAssociations') foreach (@{ $result->IamInstanceProfileAssociations });
    }

    return undef
  }
  sub DescribeAllImportImageTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeImportImageTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeImportImageTasks(@_, NextToken => $next_result->NextToken);
        push @{ $result->ImportImageTasks }, @{ $next_result->ImportImageTasks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ImportImageTasks') foreach (@{ $result->ImportImageTasks });
        $result = $self->DescribeImportImageTasks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ImportImageTasks') foreach (@{ $result->ImportImageTasks });
    }

    return undef
  }
  sub DescribeAllImportSnapshotTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeImportSnapshotTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeImportSnapshotTasks(@_, NextToken => $next_result->NextToken);
        push @{ $result->ImportSnapshotTasks }, @{ $next_result->ImportSnapshotTasks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ImportSnapshotTasks') foreach (@{ $result->ImportSnapshotTasks });
        $result = $self->DescribeImportSnapshotTasks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ImportSnapshotTasks') foreach (@{ $result->ImportSnapshotTasks });
    }

    return undef
  }
  sub DescribeAllInstanceCreditSpecifications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeInstanceCreditSpecifications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeInstanceCreditSpecifications(@_, NextToken => $next_result->NextToken);
        push @{ $result->InstanceCreditSpecifications }, @{ $next_result->InstanceCreditSpecifications };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InstanceCreditSpecifications') foreach (@{ $result->InstanceCreditSpecifications });
        $result = $self->DescribeInstanceCreditSpecifications(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InstanceCreditSpecifications') foreach (@{ $result->InstanceCreditSpecifications });
    }

    return undef
  }
  sub DescribeAllInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->Reservations }, @{ $next_result->Reservations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Reservations') foreach (@{ $result->Reservations });
        $result = $self->DescribeInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Reservations') foreach (@{ $result->Reservations });
    }

    return undef
  }
  sub DescribeAllInstanceStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeInstanceStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeInstanceStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->InstanceStatuses }, @{ $next_result->InstanceStatuses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InstanceStatuses') foreach (@{ $result->InstanceStatuses });
        $result = $self->DescribeInstanceStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InstanceStatuses') foreach (@{ $result->InstanceStatuses });
    }

    return undef
  }
  sub DescribeAllInstanceTypeOfferings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeInstanceTypeOfferings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeInstanceTypeOfferings(@_, NextToken => $next_result->NextToken);
        push @{ $result->InstanceTypeOfferings }, @{ $next_result->InstanceTypeOfferings };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InstanceTypeOfferings') foreach (@{ $result->InstanceTypeOfferings });
        $result = $self->DescribeInstanceTypeOfferings(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InstanceTypeOfferings') foreach (@{ $result->InstanceTypeOfferings });
    }

    return undef
  }
  sub DescribeAllInstanceTypes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeInstanceTypes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeInstanceTypes(@_, NextToken => $next_result->NextToken);
        push @{ $result->InstanceTypes }, @{ $next_result->InstanceTypes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InstanceTypes') foreach (@{ $result->InstanceTypes });
        $result = $self->DescribeInstanceTypes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InstanceTypes') foreach (@{ $result->InstanceTypes });
    }

    return undef
  }
  sub DescribeAllInternetGateways {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeInternetGateways(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeInternetGateways(@_, NextToken => $next_result->NextToken);
        push @{ $result->InternetGateways }, @{ $next_result->InternetGateways };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InternetGateways') foreach (@{ $result->InternetGateways });
        $result = $self->DescribeInternetGateways(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InternetGateways') foreach (@{ $result->InternetGateways });
    }

    return undef
  }
  sub DescribeAllIpv6Pools {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeIpv6Pools(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeIpv6Pools(@_, NextToken => $next_result->NextToken);
        push @{ $result->Ipv6Pools }, @{ $next_result->Ipv6Pools };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Ipv6Pools') foreach (@{ $result->Ipv6Pools });
        $result = $self->DescribeIpv6Pools(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Ipv6Pools') foreach (@{ $result->Ipv6Pools });
    }

    return undef
  }
  sub DescribeAllLaunchTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLaunchTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeLaunchTemplates(@_, NextToken => $next_result->NextToken);
        push @{ $result->LaunchTemplates }, @{ $next_result->LaunchTemplates };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LaunchTemplates') foreach (@{ $result->LaunchTemplates });
        $result = $self->DescribeLaunchTemplates(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LaunchTemplates') foreach (@{ $result->LaunchTemplates });
    }

    return undef
  }
  sub DescribeAllLaunchTemplateVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLaunchTemplateVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeLaunchTemplateVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->LaunchTemplateVersions }, @{ $next_result->LaunchTemplateVersions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LaunchTemplateVersions') foreach (@{ $result->LaunchTemplateVersions });
        $result = $self->DescribeLaunchTemplateVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LaunchTemplateVersions') foreach (@{ $result->LaunchTemplateVersions });
    }

    return undef
  }
  sub DescribeAllLocalGatewayRouteTables {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLocalGatewayRouteTables(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeLocalGatewayRouteTables(@_, NextToken => $next_result->NextToken);
        push @{ $result->LocalGatewayRouteTables }, @{ $next_result->LocalGatewayRouteTables };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LocalGatewayRouteTables') foreach (@{ $result->LocalGatewayRouteTables });
        $result = $self->DescribeLocalGatewayRouteTables(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LocalGatewayRouteTables') foreach (@{ $result->LocalGatewayRouteTables });
    }

    return undef
  }
  sub DescribeAllLocalGatewayRouteTableVirtualInterfaceGroupAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->LocalGatewayRouteTableVirtualInterfaceGroupAssociations }, @{ $next_result->LocalGatewayRouteTableVirtualInterfaceGroupAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LocalGatewayRouteTableVirtualInterfaceGroupAssociations') foreach (@{ $result->LocalGatewayRouteTableVirtualInterfaceGroupAssociations });
        $result = $self->DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LocalGatewayRouteTableVirtualInterfaceGroupAssociations') foreach (@{ $result->LocalGatewayRouteTableVirtualInterfaceGroupAssociations });
    }

    return undef
  }
  sub DescribeAllLocalGatewayRouteTableVpcAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLocalGatewayRouteTableVpcAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeLocalGatewayRouteTableVpcAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->LocalGatewayRouteTableVpcAssociations }, @{ $next_result->LocalGatewayRouteTableVpcAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LocalGatewayRouteTableVpcAssociations') foreach (@{ $result->LocalGatewayRouteTableVpcAssociations });
        $result = $self->DescribeLocalGatewayRouteTableVpcAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LocalGatewayRouteTableVpcAssociations') foreach (@{ $result->LocalGatewayRouteTableVpcAssociations });
    }

    return undef
  }
  sub DescribeAllLocalGateways {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLocalGateways(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeLocalGateways(@_, NextToken => $next_result->NextToken);
        push @{ $result->LocalGateways }, @{ $next_result->LocalGateways };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LocalGateways') foreach (@{ $result->LocalGateways });
        $result = $self->DescribeLocalGateways(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LocalGateways') foreach (@{ $result->LocalGateways });
    }

    return undef
  }
  sub DescribeAllLocalGatewayVirtualInterfaceGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLocalGatewayVirtualInterfaceGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeLocalGatewayVirtualInterfaceGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->LocalGatewayVirtualInterfaceGroups }, @{ $next_result->LocalGatewayVirtualInterfaceGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LocalGatewayVirtualInterfaceGroups') foreach (@{ $result->LocalGatewayVirtualInterfaceGroups });
        $result = $self->DescribeLocalGatewayVirtualInterfaceGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LocalGatewayVirtualInterfaceGroups') foreach (@{ $result->LocalGatewayVirtualInterfaceGroups });
    }

    return undef
  }
  sub DescribeAllLocalGatewayVirtualInterfaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLocalGatewayVirtualInterfaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeLocalGatewayVirtualInterfaces(@_, NextToken => $next_result->NextToken);
        push @{ $result->LocalGatewayVirtualInterfaces }, @{ $next_result->LocalGatewayVirtualInterfaces };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LocalGatewayVirtualInterfaces') foreach (@{ $result->LocalGatewayVirtualInterfaces });
        $result = $self->DescribeLocalGatewayVirtualInterfaces(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LocalGatewayVirtualInterfaces') foreach (@{ $result->LocalGatewayVirtualInterfaces });
    }

    return undef
  }
  sub DescribeAllManagedPrefixLists {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeManagedPrefixLists(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeManagedPrefixLists(@_, NextToken => $next_result->NextToken);
        push @{ $result->PrefixLists }, @{ $next_result->PrefixLists };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PrefixLists') foreach (@{ $result->PrefixLists });
        $result = $self->DescribeManagedPrefixLists(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PrefixLists') foreach (@{ $result->PrefixLists });
    }

    return undef
  }
  sub DescribeAllMovingAddresses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeMovingAddresses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeMovingAddresses(@_, NextToken => $next_result->NextToken);
        push @{ $result->MovingAddressStatuses }, @{ $next_result->MovingAddressStatuses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MovingAddressStatuses') foreach (@{ $result->MovingAddressStatuses });
        $result = $self->DescribeMovingAddresses(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MovingAddressStatuses') foreach (@{ $result->MovingAddressStatuses });
    }

    return undef
  }
  sub DescribeAllNatGateways {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeNatGateways(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeNatGateways(@_, NextToken => $next_result->NextToken);
        push @{ $result->NatGateways }, @{ $next_result->NatGateways };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NatGateways') foreach (@{ $result->NatGateways });
        $result = $self->DescribeNatGateways(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NatGateways') foreach (@{ $result->NatGateways });
    }

    return undef
  }
  sub DescribeAllNetworkAcls {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeNetworkAcls(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeNetworkAcls(@_, NextToken => $next_result->NextToken);
        push @{ $result->NetworkAcls }, @{ $next_result->NetworkAcls };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NetworkAcls') foreach (@{ $result->NetworkAcls });
        $result = $self->DescribeNetworkAcls(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NetworkAcls') foreach (@{ $result->NetworkAcls });
    }

    return undef
  }
  sub DescribeAllNetworkInsightsAnalyses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeNetworkInsightsAnalyses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeNetworkInsightsAnalyses(@_, NextToken => $next_result->NextToken);
        push @{ $result->NetworkInsightsAnalyses }, @{ $next_result->NetworkInsightsAnalyses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NetworkInsightsAnalyses') foreach (@{ $result->NetworkInsightsAnalyses });
        $result = $self->DescribeNetworkInsightsAnalyses(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NetworkInsightsAnalyses') foreach (@{ $result->NetworkInsightsAnalyses });
    }

    return undef
  }
  sub DescribeAllNetworkInsightsPaths {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeNetworkInsightsPaths(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeNetworkInsightsPaths(@_, NextToken => $next_result->NextToken);
        push @{ $result->NetworkInsightsPaths }, @{ $next_result->NetworkInsightsPaths };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NetworkInsightsPaths') foreach (@{ $result->NetworkInsightsPaths });
        $result = $self->DescribeNetworkInsightsPaths(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NetworkInsightsPaths') foreach (@{ $result->NetworkInsightsPaths });
    }

    return undef
  }
  sub DescribeAllNetworkInterfacePermissions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeNetworkInterfacePermissions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeNetworkInterfacePermissions(@_, NextToken => $next_result->NextToken);
        push @{ $result->NetworkInterfacePermissions }, @{ $next_result->NetworkInterfacePermissions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NetworkInterfacePermissions') foreach (@{ $result->NetworkInterfacePermissions });
        $result = $self->DescribeNetworkInterfacePermissions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NetworkInterfacePermissions') foreach (@{ $result->NetworkInterfacePermissions });
    }

    return undef
  }
  sub DescribeAllNetworkInterfaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeNetworkInterfaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeNetworkInterfaces(@_, NextToken => $next_result->NextToken);
        push @{ $result->NetworkInterfaces }, @{ $next_result->NetworkInterfaces };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NetworkInterfaces') foreach (@{ $result->NetworkInterfaces });
        $result = $self->DescribeNetworkInterfaces(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NetworkInterfaces') foreach (@{ $result->NetworkInterfaces });
    }

    return undef
  }
  sub DescribeAllPrefixLists {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribePrefixLists(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribePrefixLists(@_, NextToken => $next_result->NextToken);
        push @{ $result->PrefixLists }, @{ $next_result->PrefixLists };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PrefixLists') foreach (@{ $result->PrefixLists });
        $result = $self->DescribePrefixLists(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PrefixLists') foreach (@{ $result->PrefixLists });
    }

    return undef
  }
  sub DescribeAllPrincipalIdFormat {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribePrincipalIdFormat(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribePrincipalIdFormat(@_, NextToken => $next_result->NextToken);
        push @{ $result->Principals }, @{ $next_result->Principals };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Principals') foreach (@{ $result->Principals });
        $result = $self->DescribePrincipalIdFormat(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Principals') foreach (@{ $result->Principals });
    }

    return undef
  }
  sub DescribeAllPublicIpv4Pools {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribePublicIpv4Pools(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribePublicIpv4Pools(@_, NextToken => $next_result->NextToken);
        push @{ $result->PublicIpv4Pools }, @{ $next_result->PublicIpv4Pools };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PublicIpv4Pools') foreach (@{ $result->PublicIpv4Pools });
        $result = $self->DescribePublicIpv4Pools(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PublicIpv4Pools') foreach (@{ $result->PublicIpv4Pools });
    }

    return undef
  }
  sub DescribeAllReplaceRootVolumeTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReplaceRootVolumeTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeReplaceRootVolumeTasks(@_, NextToken => $next_result->NextToken);
        push @{ $result->ReplaceRootVolumeTasks }, @{ $next_result->ReplaceRootVolumeTasks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ReplaceRootVolumeTasks') foreach (@{ $result->ReplaceRootVolumeTasks });
        $result = $self->DescribeReplaceRootVolumeTasks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ReplaceRootVolumeTasks') foreach (@{ $result->ReplaceRootVolumeTasks });
    }

    return undef
  }
  sub DescribeAllReservedInstancesModifications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReservedInstancesModifications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeReservedInstancesModifications(@_, NextToken => $next_result->NextToken);
        push @{ $result->ReservedInstancesModifications }, @{ $next_result->ReservedInstancesModifications };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ReservedInstancesModifications') foreach (@{ $result->ReservedInstancesModifications });
        $result = $self->DescribeReservedInstancesModifications(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ReservedInstancesModifications') foreach (@{ $result->ReservedInstancesModifications });
    }

    return undef
  }
  sub DescribeAllReservedInstancesOfferings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReservedInstancesOfferings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeReservedInstancesOfferings(@_, NextToken => $next_result->NextToken);
        push @{ $result->ReservedInstancesOfferings }, @{ $next_result->ReservedInstancesOfferings };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ReservedInstancesOfferings') foreach (@{ $result->ReservedInstancesOfferings });
        $result = $self->DescribeReservedInstancesOfferings(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ReservedInstancesOfferings') foreach (@{ $result->ReservedInstancesOfferings });
    }

    return undef
  }
  sub DescribeAllRouteTables {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeRouteTables(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeRouteTables(@_, NextToken => $next_result->NextToken);
        push @{ $result->RouteTables }, @{ $next_result->RouteTables };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RouteTables') foreach (@{ $result->RouteTables });
        $result = $self->DescribeRouteTables(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RouteTables') foreach (@{ $result->RouteTables });
    }

    return undef
  }
  sub DescribeAllScheduledInstanceAvailability {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeScheduledInstanceAvailability(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeScheduledInstanceAvailability(@_, NextToken => $next_result->NextToken);
        push @{ $result->ScheduledInstanceAvailabilitySet }, @{ $next_result->ScheduledInstanceAvailabilitySet };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ScheduledInstanceAvailabilitySet') foreach (@{ $result->ScheduledInstanceAvailabilitySet });
        $result = $self->DescribeScheduledInstanceAvailability(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ScheduledInstanceAvailabilitySet') foreach (@{ $result->ScheduledInstanceAvailabilitySet });
    }

    return undef
  }
  sub DescribeAllScheduledInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeScheduledInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeScheduledInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->ScheduledInstanceSet }, @{ $next_result->ScheduledInstanceSet };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ScheduledInstanceSet') foreach (@{ $result->ScheduledInstanceSet });
        $result = $self->DescribeScheduledInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ScheduledInstanceSet') foreach (@{ $result->ScheduledInstanceSet });
    }

    return undef
  }
  sub DescribeAllSecurityGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSecurityGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSecurityGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->SecurityGroups }, @{ $next_result->SecurityGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SecurityGroups') foreach (@{ $result->SecurityGroups });
        $result = $self->DescribeSecurityGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SecurityGroups') foreach (@{ $result->SecurityGroups });
    }

    return undef
  }
  sub DescribeAllSnapshots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSnapshots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSnapshots(@_, NextToken => $next_result->NextToken);
        push @{ $result->Snapshots }, @{ $next_result->Snapshots };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Snapshots') foreach (@{ $result->Snapshots });
        $result = $self->DescribeSnapshots(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Snapshots') foreach (@{ $result->Snapshots });
    }

    return undef
  }
  sub DescribeAllSpotFleetInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSpotFleetInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSpotFleetInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->ActiveInstances }, @{ $next_result->ActiveInstances };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ActiveInstances') foreach (@{ $result->ActiveInstances });
        $result = $self->DescribeSpotFleetInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ActiveInstances') foreach (@{ $result->ActiveInstances });
    }

    return undef
  }
  sub DescribeAllSpotFleetRequests {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSpotFleetRequests(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSpotFleetRequests(@_, NextToken => $next_result->NextToken);
        push @{ $result->SpotFleetRequestConfigs }, @{ $next_result->SpotFleetRequestConfigs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SpotFleetRequestConfigs') foreach (@{ $result->SpotFleetRequestConfigs });
        $result = $self->DescribeSpotFleetRequests(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SpotFleetRequestConfigs') foreach (@{ $result->SpotFleetRequestConfigs });
    }

    return undef
  }
  sub DescribeAllSpotInstanceRequests {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSpotInstanceRequests(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSpotInstanceRequests(@_, NextToken => $next_result->NextToken);
        push @{ $result->SpotInstanceRequests }, @{ $next_result->SpotInstanceRequests };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SpotInstanceRequests') foreach (@{ $result->SpotInstanceRequests });
        $result = $self->DescribeSpotInstanceRequests(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SpotInstanceRequests') foreach (@{ $result->SpotInstanceRequests });
    }

    return undef
  }
  sub DescribeAllSpotPriceHistory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSpotPriceHistory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSpotPriceHistory(@_, NextToken => $next_result->NextToken);
        push @{ $result->SpotPriceHistory }, @{ $next_result->SpotPriceHistory };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SpotPriceHistory') foreach (@{ $result->SpotPriceHistory });
        $result = $self->DescribeSpotPriceHistory(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SpotPriceHistory') foreach (@{ $result->SpotPriceHistory });
    }

    return undef
  }
  sub DescribeAllStaleSecurityGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeStaleSecurityGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeStaleSecurityGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->StaleSecurityGroupSet }, @{ $next_result->StaleSecurityGroupSet };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'StaleSecurityGroupSet') foreach (@{ $result->StaleSecurityGroupSet });
        $result = $self->DescribeStaleSecurityGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'StaleSecurityGroupSet') foreach (@{ $result->StaleSecurityGroupSet });
    }

    return undef
  }
  sub DescribeAllStoreImageTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeStoreImageTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeStoreImageTasks(@_, NextToken => $next_result->NextToken);
        push @{ $result->StoreImageTaskResults }, @{ $next_result->StoreImageTaskResults };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'StoreImageTaskResults') foreach (@{ $result->StoreImageTaskResults });
        $result = $self->DescribeStoreImageTasks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'StoreImageTaskResults') foreach (@{ $result->StoreImageTaskResults });
    }

    return undef
  }
  sub DescribeAllSubnets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSubnets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSubnets(@_, NextToken => $next_result->NextToken);
        push @{ $result->Subnets }, @{ $next_result->Subnets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Subnets') foreach (@{ $result->Subnets });
        $result = $self->DescribeSubnets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Subnets') foreach (@{ $result->Subnets });
    }

    return undef
  }
  sub DescribeAllTags {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTags(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTags(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->DescribeTags(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }
  sub DescribeAllTrafficMirrorFilters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTrafficMirrorFilters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTrafficMirrorFilters(@_, NextToken => $next_result->NextToken);
        push @{ $result->TrafficMirrorFilters }, @{ $next_result->TrafficMirrorFilters };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TrafficMirrorFilters') foreach (@{ $result->TrafficMirrorFilters });
        $result = $self->DescribeTrafficMirrorFilters(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TrafficMirrorFilters') foreach (@{ $result->TrafficMirrorFilters });
    }

    return undef
  }
  sub DescribeAllTrafficMirrorSessions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTrafficMirrorSessions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTrafficMirrorSessions(@_, NextToken => $next_result->NextToken);
        push @{ $result->TrafficMirrorSessions }, @{ $next_result->TrafficMirrorSessions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TrafficMirrorSessions') foreach (@{ $result->TrafficMirrorSessions });
        $result = $self->DescribeTrafficMirrorSessions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TrafficMirrorSessions') foreach (@{ $result->TrafficMirrorSessions });
    }

    return undef
  }
  sub DescribeAllTrafficMirrorTargets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTrafficMirrorTargets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTrafficMirrorTargets(@_, NextToken => $next_result->NextToken);
        push @{ $result->TrafficMirrorTargets }, @{ $next_result->TrafficMirrorTargets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TrafficMirrorTargets') foreach (@{ $result->TrafficMirrorTargets });
        $result = $self->DescribeTrafficMirrorTargets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TrafficMirrorTargets') foreach (@{ $result->TrafficMirrorTargets });
    }

    return undef
  }
  sub DescribeAllTransitGatewayAttachments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTransitGatewayAttachments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTransitGatewayAttachments(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayAttachments }, @{ $next_result->TransitGatewayAttachments };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayAttachments') foreach (@{ $result->TransitGatewayAttachments });
        $result = $self->DescribeTransitGatewayAttachments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayAttachments') foreach (@{ $result->TransitGatewayAttachments });
    }

    return undef
  }
  sub DescribeAllTransitGatewayConnectPeers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTransitGatewayConnectPeers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTransitGatewayConnectPeers(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayConnectPeers }, @{ $next_result->TransitGatewayConnectPeers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayConnectPeers') foreach (@{ $result->TransitGatewayConnectPeers });
        $result = $self->DescribeTransitGatewayConnectPeers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayConnectPeers') foreach (@{ $result->TransitGatewayConnectPeers });
    }

    return undef
  }
  sub DescribeAllTransitGatewayConnects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTransitGatewayConnects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTransitGatewayConnects(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayConnects }, @{ $next_result->TransitGatewayConnects };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayConnects') foreach (@{ $result->TransitGatewayConnects });
        $result = $self->DescribeTransitGatewayConnects(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayConnects') foreach (@{ $result->TransitGatewayConnects });
    }

    return undef
  }
  sub DescribeAllTransitGatewayMulticastDomains {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTransitGatewayMulticastDomains(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTransitGatewayMulticastDomains(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayMulticastDomains }, @{ $next_result->TransitGatewayMulticastDomains };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayMulticastDomains') foreach (@{ $result->TransitGatewayMulticastDomains });
        $result = $self->DescribeTransitGatewayMulticastDomains(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayMulticastDomains') foreach (@{ $result->TransitGatewayMulticastDomains });
    }

    return undef
  }
  sub DescribeAllTransitGatewayPeeringAttachments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTransitGatewayPeeringAttachments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTransitGatewayPeeringAttachments(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayPeeringAttachments }, @{ $next_result->TransitGatewayPeeringAttachments };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayPeeringAttachments') foreach (@{ $result->TransitGatewayPeeringAttachments });
        $result = $self->DescribeTransitGatewayPeeringAttachments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayPeeringAttachments') foreach (@{ $result->TransitGatewayPeeringAttachments });
    }

    return undef
  }
  sub DescribeAllTransitGatewayRouteTables {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTransitGatewayRouteTables(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTransitGatewayRouteTables(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayRouteTables }, @{ $next_result->TransitGatewayRouteTables };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayRouteTables') foreach (@{ $result->TransitGatewayRouteTables });
        $result = $self->DescribeTransitGatewayRouteTables(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayRouteTables') foreach (@{ $result->TransitGatewayRouteTables });
    }

    return undef
  }
  sub DescribeAllTransitGateways {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTransitGateways(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTransitGateways(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGateways }, @{ $next_result->TransitGateways };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGateways') foreach (@{ $result->TransitGateways });
        $result = $self->DescribeTransitGateways(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGateways') foreach (@{ $result->TransitGateways });
    }

    return undef
  }
  sub DescribeAllTransitGatewayVpcAttachments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTransitGatewayVpcAttachments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTransitGatewayVpcAttachments(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayVpcAttachments }, @{ $next_result->TransitGatewayVpcAttachments };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayVpcAttachments') foreach (@{ $result->TransitGatewayVpcAttachments });
        $result = $self->DescribeTransitGatewayVpcAttachments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayVpcAttachments') foreach (@{ $result->TransitGatewayVpcAttachments });
    }

    return undef
  }
  sub DescribeAllVolumes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVolumes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVolumes(@_, NextToken => $next_result->NextToken);
        push @{ $result->Volumes }, @{ $next_result->Volumes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Volumes') foreach (@{ $result->Volumes });
        $result = $self->DescribeVolumes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Volumes') foreach (@{ $result->Volumes });
    }

    return undef
  }
  sub DescribeAllVolumesModifications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVolumesModifications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVolumesModifications(@_, NextToken => $next_result->NextToken);
        push @{ $result->VolumesModifications }, @{ $next_result->VolumesModifications };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'VolumesModifications') foreach (@{ $result->VolumesModifications });
        $result = $self->DescribeVolumesModifications(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'VolumesModifications') foreach (@{ $result->VolumesModifications });
    }

    return undef
  }
  sub DescribeAllVolumeStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVolumeStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVolumeStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->VolumeStatuses }, @{ $next_result->VolumeStatuses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'VolumeStatuses') foreach (@{ $result->VolumeStatuses });
        $result = $self->DescribeVolumeStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'VolumeStatuses') foreach (@{ $result->VolumeStatuses });
    }

    return undef
  }
  sub DescribeAllVpcClassicLinkDnsSupport {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVpcClassicLinkDnsSupport(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVpcClassicLinkDnsSupport(@_, NextToken => $next_result->NextToken);
        push @{ $result->Vpcs }, @{ $next_result->Vpcs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Vpcs') foreach (@{ $result->Vpcs });
        $result = $self->DescribeVpcClassicLinkDnsSupport(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Vpcs') foreach (@{ $result->Vpcs });
    }

    return undef
  }
  sub DescribeAllVpcEndpointConnectionNotifications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVpcEndpointConnectionNotifications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVpcEndpointConnectionNotifications(@_, NextToken => $next_result->NextToken);
        push @{ $result->ConnectionNotificationSet }, @{ $next_result->ConnectionNotificationSet };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConnectionNotificationSet') foreach (@{ $result->ConnectionNotificationSet });
        $result = $self->DescribeVpcEndpointConnectionNotifications(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ConnectionNotificationSet') foreach (@{ $result->ConnectionNotificationSet });
    }

    return undef
  }
  sub DescribeAllVpcEndpointConnections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVpcEndpointConnections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVpcEndpointConnections(@_, NextToken => $next_result->NextToken);
        push @{ $result->VpcEndpointConnections }, @{ $next_result->VpcEndpointConnections };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'VpcEndpointConnections') foreach (@{ $result->VpcEndpointConnections });
        $result = $self->DescribeVpcEndpointConnections(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'VpcEndpointConnections') foreach (@{ $result->VpcEndpointConnections });
    }

    return undef
  }
  sub DescribeAllVpcEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVpcEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVpcEndpoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->VpcEndpoints }, @{ $next_result->VpcEndpoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'VpcEndpoints') foreach (@{ $result->VpcEndpoints });
        $result = $self->DescribeVpcEndpoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'VpcEndpoints') foreach (@{ $result->VpcEndpoints });
    }

    return undef
  }
  sub DescribeAllVpcEndpointServiceConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVpcEndpointServiceConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVpcEndpointServiceConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->ServiceConfigurations }, @{ $next_result->ServiceConfigurations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ServiceConfigurations') foreach (@{ $result->ServiceConfigurations });
        $result = $self->DescribeVpcEndpointServiceConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ServiceConfigurations') foreach (@{ $result->ServiceConfigurations });
    }

    return undef
  }
  sub DescribeAllVpcEndpointServicePermissions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVpcEndpointServicePermissions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVpcEndpointServicePermissions(@_, NextToken => $next_result->NextToken);
        push @{ $result->AllowedPrincipals }, @{ $next_result->AllowedPrincipals };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AllowedPrincipals') foreach (@{ $result->AllowedPrincipals });
        $result = $self->DescribeVpcEndpointServicePermissions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AllowedPrincipals') foreach (@{ $result->AllowedPrincipals });
    }

    return undef
  }
  sub DescribeAllVpcEndpointServices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVpcEndpointServices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVpcEndpointServices(@_, NextToken => $next_result->NextToken);
        push @{ $result->ServiceDetails }, @{ $next_result->ServiceDetails };
        push @{ $result->ServiceNames }, @{ $next_result->ServiceNames };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ServiceDetails') foreach (@{ $result->ServiceDetails });
        $callback->($_ => 'ServiceNames') foreach (@{ $result->ServiceNames });
        $result = $self->DescribeVpcEndpointServices(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ServiceDetails') foreach (@{ $result->ServiceDetails });
      $callback->($_ => 'ServiceNames') foreach (@{ $result->ServiceNames });
    }

    return undef
  }
  sub DescribeAllVpcPeeringConnections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVpcPeeringConnections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVpcPeeringConnections(@_, NextToken => $next_result->NextToken);
        push @{ $result->VpcPeeringConnections }, @{ $next_result->VpcPeeringConnections };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'VpcPeeringConnections') foreach (@{ $result->VpcPeeringConnections });
        $result = $self->DescribeVpcPeeringConnections(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'VpcPeeringConnections') foreach (@{ $result->VpcPeeringConnections });
    }

    return undef
  }
  sub DescribeAllVpcs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVpcs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVpcs(@_, NextToken => $next_result->NextToken);
        push @{ $result->Vpcs }, @{ $next_result->Vpcs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Vpcs') foreach (@{ $result->Vpcs });
        $result = $self->DescribeVpcs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Vpcs') foreach (@{ $result->Vpcs });
    }

    return undef
  }
  sub GetAllAssociatedIpv6PoolCidrs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetAssociatedIpv6PoolCidrs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetAssociatedIpv6PoolCidrs(@_, NextToken => $next_result->NextToken);
        push @{ $result->Ipv6CidrAssociations }, @{ $next_result->Ipv6CidrAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Ipv6CidrAssociations') foreach (@{ $result->Ipv6CidrAssociations });
        $result = $self->GetAssociatedIpv6PoolCidrs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Ipv6CidrAssociations') foreach (@{ $result->Ipv6CidrAssociations });
    }

    return undef
  }
  sub GetAllGroupsForCapacityReservation {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetGroupsForCapacityReservation(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetGroupsForCapacityReservation(@_, NextToken => $next_result->NextToken);
        push @{ $result->CapacityReservationGroups }, @{ $next_result->CapacityReservationGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CapacityReservationGroups') foreach (@{ $result->CapacityReservationGroups });
        $result = $self->GetGroupsForCapacityReservation(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CapacityReservationGroups') foreach (@{ $result->CapacityReservationGroups });
    }

    return undef
  }
  sub GetAllManagedPrefixListAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetManagedPrefixListAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetManagedPrefixListAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->PrefixListAssociations }, @{ $next_result->PrefixListAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PrefixListAssociations') foreach (@{ $result->PrefixListAssociations });
        $result = $self->GetManagedPrefixListAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PrefixListAssociations') foreach (@{ $result->PrefixListAssociations });
    }

    return undef
  }
  sub GetAllManagedPrefixListEntries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetManagedPrefixListEntries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetManagedPrefixListEntries(@_, NextToken => $next_result->NextToken);
        push @{ $result->Entries }, @{ $next_result->Entries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Entries') foreach (@{ $result->Entries });
        $result = $self->GetManagedPrefixListEntries(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Entries') foreach (@{ $result->Entries });
    }

    return undef
  }
  sub GetAllTransitGatewayAttachmentPropagations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTransitGatewayAttachmentPropagations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTransitGatewayAttachmentPropagations(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayAttachmentPropagations }, @{ $next_result->TransitGatewayAttachmentPropagations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayAttachmentPropagations') foreach (@{ $result->TransitGatewayAttachmentPropagations });
        $result = $self->GetTransitGatewayAttachmentPropagations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayAttachmentPropagations') foreach (@{ $result->TransitGatewayAttachmentPropagations });
    }

    return undef
  }
  sub GetAllTransitGatewayMulticastDomainAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTransitGatewayMulticastDomainAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTransitGatewayMulticastDomainAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->MulticastDomainAssociations }, @{ $next_result->MulticastDomainAssociations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MulticastDomainAssociations') foreach (@{ $result->MulticastDomainAssociations });
        $result = $self->GetTransitGatewayMulticastDomainAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MulticastDomainAssociations') foreach (@{ $result->MulticastDomainAssociations });
    }

    return undef
  }
  sub GetAllTransitGatewayPrefixListReferences {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTransitGatewayPrefixListReferences(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTransitGatewayPrefixListReferences(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayPrefixListReferences }, @{ $next_result->TransitGatewayPrefixListReferences };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayPrefixListReferences') foreach (@{ $result->TransitGatewayPrefixListReferences });
        $result = $self->GetTransitGatewayPrefixListReferences(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayPrefixListReferences') foreach (@{ $result->TransitGatewayPrefixListReferences });
    }

    return undef
  }
  sub GetAllTransitGatewayRouteTableAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTransitGatewayRouteTableAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTransitGatewayRouteTableAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Associations }, @{ $next_result->Associations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Associations') foreach (@{ $result->Associations });
        $result = $self->GetTransitGatewayRouteTableAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Associations') foreach (@{ $result->Associations });
    }

    return undef
  }
  sub GetAllTransitGatewayRouteTablePropagations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTransitGatewayRouteTablePropagations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTransitGatewayRouteTablePropagations(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransitGatewayRouteTablePropagations }, @{ $next_result->TransitGatewayRouteTablePropagations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransitGatewayRouteTablePropagations') foreach (@{ $result->TransitGatewayRouteTablePropagations });
        $result = $self->GetTransitGatewayRouteTablePropagations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransitGatewayRouteTablePropagations') foreach (@{ $result->TransitGatewayRouteTablePropagations });
    }

    return undef
  }
  sub SearchAllLocalGatewayRoutes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchLocalGatewayRoutes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchLocalGatewayRoutes(@_, NextToken => $next_result->NextToken);
        push @{ $result->Routes }, @{ $next_result->Routes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Routes') foreach (@{ $result->Routes });
        $result = $self->SearchLocalGatewayRoutes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Routes') foreach (@{ $result->Routes });
    }

    return undef
  }
  sub SearchAllTransitGatewayMulticastGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchTransitGatewayMulticastGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchTransitGatewayMulticastGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->MulticastGroups }, @{ $next_result->MulticastGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MulticastGroups') foreach (@{ $result->MulticastGroups });
        $result = $self->SearchTransitGatewayMulticastGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MulticastGroups') foreach (@{ $result->MulticastGroups });
    }

    return undef
  }


  sub operations { qw/AcceptReservedInstancesExchangeQuote AcceptTransitGatewayMulticastDomainAssociations AcceptTransitGatewayPeeringAttachment AcceptTransitGatewayVpcAttachment AcceptVpcEndpointConnections AcceptVpcPeeringConnection AdvertiseByoipCidr AllocateAddress AllocateHosts ApplySecurityGroupsToClientVpnTargetNetwork AssignIpv6Addresses AssignPrivateIpAddresses AssociateAddress AssociateClientVpnTargetNetwork AssociateDhcpOptions AssociateEnclaveCertificateIamRole AssociateIamInstanceProfile AssociateRouteTable AssociateSubnetCidrBlock AssociateTransitGatewayMulticastDomain AssociateTransitGatewayRouteTable AssociateVpcCidrBlock AttachClassicLinkVpc AttachInternetGateway AttachNetworkInterface AttachVolume AttachVpnGateway AuthorizeClientVpnIngress AuthorizeSecurityGroupEgress AuthorizeSecurityGroupIngress BundleInstance CancelBundleTask CancelCapacityReservation CancelConversionTask CancelExportTask CancelImportTask CancelReservedInstancesListing CancelSpotFleetRequests CancelSpotInstanceRequests ConfirmProductInstance CopyFpgaImage CopyImage CopySnapshot CreateCapacityReservation CreateCarrierGateway CreateClientVpnEndpoint CreateClientVpnRoute CreateCustomerGateway CreateDefaultSubnet CreateDefaultVpc CreateDhcpOptions CreateEgressOnlyInternetGateway CreateFleet CreateFlowLogs CreateFpgaImage CreateImage CreateInstanceExportTask CreateInternetGateway CreateKeyPair CreateLaunchTemplate CreateLaunchTemplateVersion CreateLocalGatewayRoute CreateLocalGatewayRouteTableVpcAssociation CreateManagedPrefixList CreateNatGateway CreateNetworkAcl CreateNetworkAclEntry CreateNetworkInsightsPath CreateNetworkInterface CreateNetworkInterfacePermission CreatePlacementGroup CreateReplaceRootVolumeTask CreateReservedInstancesListing CreateRestoreImageTask CreateRoute CreateRouteTable CreateSecurityGroup CreateSnapshot CreateSnapshots CreateSpotDatafeedSubscription CreateStoreImageTask CreateSubnet CreateTags CreateTrafficMirrorFilter CreateTrafficMirrorFilterRule CreateTrafficMirrorSession CreateTrafficMirrorTarget CreateTransitGateway CreateTransitGatewayConnect CreateTransitGatewayConnectPeer CreateTransitGatewayMulticastDomain CreateTransitGatewayPeeringAttachment CreateTransitGatewayPrefixListReference CreateTransitGatewayRoute CreateTransitGatewayRouteTable CreateTransitGatewayVpcAttachment CreateVolume CreateVpc CreateVpcEndpoint CreateVpcEndpointConnectionNotification CreateVpcEndpointServiceConfiguration CreateVpcPeeringConnection CreateVpnConnection CreateVpnConnectionRoute CreateVpnGateway DeleteCarrierGateway DeleteClientVpnEndpoint DeleteClientVpnRoute DeleteCustomerGateway DeleteDhcpOptions DeleteEgressOnlyInternetGateway DeleteFleets DeleteFlowLogs DeleteFpgaImage DeleteInternetGateway DeleteKeyPair DeleteLaunchTemplate DeleteLaunchTemplateVersions DeleteLocalGatewayRoute DeleteLocalGatewayRouteTableVpcAssociation DeleteManagedPrefixList DeleteNatGateway DeleteNetworkAcl DeleteNetworkAclEntry DeleteNetworkInsightsAnalysis DeleteNetworkInsightsPath DeleteNetworkInterface DeleteNetworkInterfacePermission DeletePlacementGroup DeleteQueuedReservedInstances DeleteRoute DeleteRouteTable DeleteSecurityGroup DeleteSnapshot DeleteSpotDatafeedSubscription DeleteSubnet DeleteTags DeleteTrafficMirrorFilter DeleteTrafficMirrorFilterRule DeleteTrafficMirrorSession DeleteTrafficMirrorTarget DeleteTransitGateway DeleteTransitGatewayConnect DeleteTransitGatewayConnectPeer DeleteTransitGatewayMulticastDomain DeleteTransitGatewayPeeringAttachment DeleteTransitGatewayPrefixListReference DeleteTransitGatewayRoute DeleteTransitGatewayRouteTable DeleteTransitGatewayVpcAttachment DeleteVolume DeleteVpc DeleteVpcEndpointConnectionNotifications DeleteVpcEndpoints DeleteVpcEndpointServiceConfigurations DeleteVpcPeeringConnection DeleteVpnConnection DeleteVpnConnectionRoute DeleteVpnGateway DeprovisionByoipCidr DeregisterImage DeregisterInstanceEventNotificationAttributes DeregisterTransitGatewayMulticastGroupMembers DeregisterTransitGatewayMulticastGroupSources DescribeAccountAttributes DescribeAddresses DescribeAddressesAttribute DescribeAggregateIdFormat DescribeAvailabilityZones DescribeBundleTasks DescribeByoipCidrs DescribeCapacityReservations DescribeCarrierGateways DescribeClassicLinkInstances DescribeClientVpnAuthorizationRules DescribeClientVpnConnections DescribeClientVpnEndpoints DescribeClientVpnRoutes DescribeClientVpnTargetNetworks DescribeCoipPools DescribeConversionTasks DescribeCustomerGateways DescribeDhcpOptions DescribeEgressOnlyInternetGateways DescribeElasticGpus DescribeExportImageTasks DescribeExportTasks DescribeFastSnapshotRestores DescribeFleetHistory DescribeFleetInstances DescribeFleets DescribeFlowLogs DescribeFpgaImageAttribute DescribeFpgaImages DescribeHostReservationOfferings DescribeHostReservations DescribeHosts DescribeIamInstanceProfileAssociations DescribeIdentityIdFormat DescribeIdFormat DescribeImageAttribute DescribeImages DescribeImportImageTasks DescribeImportSnapshotTasks DescribeInstanceAttribute DescribeInstanceCreditSpecifications DescribeInstanceEventNotificationAttributes DescribeInstances DescribeInstanceStatus DescribeInstanceTypeOfferings DescribeInstanceTypes DescribeInternetGateways DescribeIpv6Pools DescribeKeyPairs DescribeLaunchTemplates DescribeLaunchTemplateVersions DescribeLocalGatewayRouteTables DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations DescribeLocalGatewayRouteTableVpcAssociations DescribeLocalGateways DescribeLocalGatewayVirtualInterfaceGroups DescribeLocalGatewayVirtualInterfaces DescribeManagedPrefixLists DescribeMovingAddresses DescribeNatGateways DescribeNetworkAcls DescribeNetworkInsightsAnalyses DescribeNetworkInsightsPaths DescribeNetworkInterfaceAttribute DescribeNetworkInterfacePermissions DescribeNetworkInterfaces DescribePlacementGroups DescribePrefixLists DescribePrincipalIdFormat DescribePublicIpv4Pools DescribeRegions DescribeReplaceRootVolumeTasks DescribeReservedInstances DescribeReservedInstancesListings DescribeReservedInstancesModifications DescribeReservedInstancesOfferings DescribeRouteTables DescribeScheduledInstanceAvailability DescribeScheduledInstances DescribeSecurityGroupReferences DescribeSecurityGroups DescribeSnapshotAttribute DescribeSnapshots DescribeSpotDatafeedSubscription DescribeSpotFleetInstances DescribeSpotFleetRequestHistory DescribeSpotFleetRequests DescribeSpotInstanceRequests DescribeSpotPriceHistory DescribeStaleSecurityGroups DescribeStoreImageTasks DescribeSubnets DescribeTags DescribeTrafficMirrorFilters DescribeTrafficMirrorSessions DescribeTrafficMirrorTargets DescribeTransitGatewayAttachments DescribeTransitGatewayConnectPeers DescribeTransitGatewayConnects DescribeTransitGatewayMulticastDomains DescribeTransitGatewayPeeringAttachments DescribeTransitGatewayRouteTables DescribeTransitGateways DescribeTransitGatewayVpcAttachments DescribeVolumeAttribute DescribeVolumes DescribeVolumesModifications DescribeVolumeStatus DescribeVpcAttribute DescribeVpcClassicLink DescribeVpcClassicLinkDnsSupport DescribeVpcEndpointConnectionNotifications DescribeVpcEndpointConnections DescribeVpcEndpoints DescribeVpcEndpointServiceConfigurations DescribeVpcEndpointServicePermissions DescribeVpcEndpointServices DescribeVpcPeeringConnections DescribeVpcs DescribeVpnConnections DescribeVpnGateways DetachClassicLinkVpc DetachInternetGateway DetachNetworkInterface DetachVolume DetachVpnGateway DisableEbsEncryptionByDefault DisableFastSnapshotRestores DisableSerialConsoleAccess DisableTransitGatewayRouteTablePropagation DisableVgwRoutePropagation DisableVpcClassicLink DisableVpcClassicLinkDnsSupport DisassociateAddress DisassociateClientVpnTargetNetwork DisassociateEnclaveCertificateIamRole DisassociateIamInstanceProfile DisassociateRouteTable DisassociateSubnetCidrBlock DisassociateTransitGatewayMulticastDomain DisassociateTransitGatewayRouteTable DisassociateVpcCidrBlock EnableEbsEncryptionByDefault EnableFastSnapshotRestores EnableSerialConsoleAccess EnableTransitGatewayRouteTablePropagation EnableVgwRoutePropagation EnableVolumeIO EnableVpcClassicLink EnableVpcClassicLinkDnsSupport ExportClientVpnClientCertificateRevocationList ExportClientVpnClientConfiguration ExportImage ExportTransitGatewayRoutes GetAssociatedEnclaveCertificateIamRoles GetAssociatedIpv6PoolCidrs GetCapacityReservationUsage GetCoipPoolUsage GetConsoleOutput GetConsoleScreenshot GetDefaultCreditSpecification GetEbsDefaultKmsKeyId GetEbsEncryptionByDefault GetFlowLogsIntegrationTemplate GetGroupsForCapacityReservation GetHostReservationPurchasePreview GetLaunchTemplateData GetManagedPrefixListAssociations GetManagedPrefixListEntries GetPasswordData GetReservedInstancesExchangeQuote GetSerialConsoleAccessStatus GetTransitGatewayAttachmentPropagations GetTransitGatewayMulticastDomainAssociations GetTransitGatewayPrefixListReferences GetTransitGatewayRouteTableAssociations GetTransitGatewayRouteTablePropagations ImportClientVpnClientCertificateRevocationList ImportImage ImportInstance ImportKeyPair ImportSnapshot ImportVolume ModifyAddressAttribute ModifyAvailabilityZoneGroup ModifyCapacityReservation ModifyClientVpnEndpoint ModifyDefaultCreditSpecification ModifyEbsDefaultKmsKeyId ModifyFleet ModifyFpgaImageAttribute ModifyHosts ModifyIdentityIdFormat ModifyIdFormat ModifyImageAttribute ModifyInstanceAttribute ModifyInstanceCapacityReservationAttributes ModifyInstanceCreditSpecification ModifyInstanceEventStartTime ModifyInstanceMetadataOptions ModifyInstancePlacement ModifyLaunchTemplate ModifyManagedPrefixList ModifyNetworkInterfaceAttribute ModifyReservedInstances ModifySnapshotAttribute ModifySpotFleetRequest ModifySubnetAttribute ModifyTrafficMirrorFilterNetworkServices ModifyTrafficMirrorFilterRule ModifyTrafficMirrorSession ModifyTransitGateway ModifyTransitGatewayPrefixListReference ModifyTransitGatewayVpcAttachment ModifyVolume ModifyVolumeAttribute ModifyVpcAttribute ModifyVpcEndpoint ModifyVpcEndpointConnectionNotification ModifyVpcEndpointServiceConfiguration ModifyVpcEndpointServicePermissions ModifyVpcPeeringConnectionOptions ModifyVpcTenancy ModifyVpnConnection ModifyVpnConnectionOptions ModifyVpnTunnelCertificate ModifyVpnTunnelOptions MonitorInstances MoveAddressToVpc ProvisionByoipCidr PurchaseHostReservation PurchaseReservedInstancesOffering PurchaseScheduledInstances RebootInstances RegisterImage RegisterInstanceEventNotificationAttributes RegisterTransitGatewayMulticastGroupMembers RegisterTransitGatewayMulticastGroupSources RejectTransitGatewayMulticastDomainAssociations RejectTransitGatewayPeeringAttachment RejectTransitGatewayVpcAttachment RejectVpcEndpointConnections RejectVpcPeeringConnection ReleaseAddress ReleaseHosts ReplaceIamInstanceProfileAssociation ReplaceNetworkAclAssociation ReplaceNetworkAclEntry ReplaceRoute ReplaceRouteTableAssociation ReplaceTransitGatewayRoute ReportInstanceStatus RequestSpotFleet RequestSpotInstances ResetAddressAttribute ResetEbsDefaultKmsKeyId ResetFpgaImageAttribute ResetImageAttribute ResetInstanceAttribute ResetNetworkInterfaceAttribute ResetSnapshotAttribute RestoreAddressToClassic RestoreManagedPrefixListVersion RevokeClientVpnIngress RevokeSecurityGroupEgress RevokeSecurityGroupIngress RunInstances RunScheduledInstances SearchLocalGatewayRoutes SearchTransitGatewayMulticastGroups SearchTransitGatewayRoutes SendDiagnosticInterrupt StartInstances StartNetworkInsightsAnalysis StartVpcEndpointServicePrivateDnsVerification StopInstances TerminateClientVpnConnections TerminateInstances UnassignIpv6Addresses UnassignPrivateIpAddresses UnmonitorInstances UpdateSecurityGroupRuleDescriptionsEgress UpdateSecurityGroupRuleDescriptionsIngress WithdrawByoipCidr / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2 - Perl Interface to AWS Amazon Elastic Compute Cloud

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('EC2');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Elastic Compute Cloud

Amazon Elastic Compute Cloud (Amazon EC2) provides secure and resizable
computing capacity in the AWS Cloud. Using Amazon EC2 eliminates the
need to invest in hardware up front, so you can develop and deploy
applications faster. Amazon Virtual Private Cloud (Amazon VPC) enables
you to provision a logically isolated section of the AWS Cloud where
you can launch AWS resources in a virtual network that you've defined.
Amazon Elastic Block Store (Amazon EBS) provides block level storage
volumes for use with EC2 instances. EBS volumes are highly available
and reliable storage volumes that can be attached to any running
instance and used like a hard drive.

To learn more, see the following resources:

=over

=item *

Amazon EC2: AmazonEC2 product page (http://aws.amazon.com/ec2), Amazon
EC2 documentation (http://aws.amazon.com/documentation/ec2)

=item *

Amazon EBS: Amazon EBS product page (http://aws.amazon.com/ebs), Amazon
EBS documentation (http://aws.amazon.com/documentation/ebs)

=item *

Amazon VPC: Amazon VPC product page (http://aws.amazon.com/vpc), Amazon
VPC documentation (http://aws.amazon.com/documentation/vpc)

=item *

AWS VPN: AWS VPN product page (http://aws.amazon.com/vpn), AWS VPN
documentation (http://aws.amazon.com/documentation/vpn)

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15>


=head1 METHODS

=head2 AcceptReservedInstancesExchangeQuote

=over

=item ReservedInstanceIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]

=item [TargetConfigurations => ArrayRef[L<Paws::EC2::TargetConfigurationRequest>]]


=back

Each argument is described in detail in: L<Paws::EC2::AcceptReservedInstancesExchangeQuote>

Returns: a L<Paws::EC2::AcceptReservedInstancesExchangeQuoteResult> instance

Accepts the Convertible Reserved Instance exchange quote described in
the GetReservedInstancesExchangeQuote call.


=head2 AcceptTransitGatewayMulticastDomainAssociations

=over

=item [DryRun => Bool]

=item [SubnetIds => ArrayRef[Str|Undef]]

=item [TransitGatewayAttachmentId => Str]

=item [TransitGatewayMulticastDomainId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::AcceptTransitGatewayMulticastDomainAssociations>

Returns: a L<Paws::EC2::AcceptTransitGatewayMulticastDomainAssociationsResult> instance

Accepts a request to associate subnets with a transit gateway multicast
domain.


=head2 AcceptTransitGatewayPeeringAttachment

=over

=item TransitGatewayAttachmentId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AcceptTransitGatewayPeeringAttachment>

Returns: a L<Paws::EC2::AcceptTransitGatewayPeeringAttachmentResult> instance

Accepts a transit gateway peering attachment request. The peering
attachment must be in the C<pendingAcceptance> state.


=head2 AcceptTransitGatewayVpcAttachment

=over

=item TransitGatewayAttachmentId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AcceptTransitGatewayVpcAttachment>

Returns: a L<Paws::EC2::AcceptTransitGatewayVpcAttachmentResult> instance

Accepts a request to attach a VPC to a transit gateway.

The VPC attachment must be in the C<pendingAcceptance> state. Use
DescribeTransitGatewayVpcAttachments to view your pending VPC
attachment requests. Use RejectTransitGatewayVpcAttachment to reject a
VPC attachment request.


=head2 AcceptVpcEndpointConnections

=over

=item ServiceId => Str

=item VpcEndpointIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AcceptVpcEndpointConnections>

Returns: a L<Paws::EC2::AcceptVpcEndpointConnectionsResult> instance

Accepts one or more interface VPC endpoint connection requests to your
VPC endpoint service.


=head2 AcceptVpcPeeringConnection

=over

=item [DryRun => Bool]

=item [VpcPeeringConnectionId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::AcceptVpcPeeringConnection>

Returns: a L<Paws::EC2::AcceptVpcPeeringConnectionResult> instance

Accept a VPC peering connection request. To accept a request, the VPC
peering connection must be in the C<pending-acceptance> state, and you
must be the owner of the peer VPC. Use DescribeVpcPeeringConnections to
view your outstanding VPC peering connection requests.

For an inter-Region VPC peering connection request, you must accept the
VPC peering connection in the Region of the accepter VPC.


=head2 AdvertiseByoipCidr

=over

=item Cidr => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AdvertiseByoipCidr>

Returns: a L<Paws::EC2::AdvertiseByoipCidrResult> instance

Advertises an IPv4 or IPv6 address range that is provisioned for use
with your AWS resources through bring your own IP addresses (BYOIP).

You can perform this operation at most once every 10 seconds, even if
you specify different address ranges each time.

We recommend that you stop advertising the BYOIP CIDR from other
locations when you advertise it from AWS. To minimize down time, you
can configure your AWS resources to use an address from a BYOIP CIDR
before it is advertised, and then simultaneously stop advertising it
from the current location and start advertising it through AWS.

It can take a few minutes before traffic to the specified addresses
starts routing to AWS because of BGP propagation delays.

To stop advertising the BYOIP CIDR, use WithdrawByoipCidr.


=head2 AllocateAddress

=over

=item [Address => Str]

=item [CustomerOwnedIpv4Pool => Str]

=item [Domain => Str]

=item [DryRun => Bool]

=item [NetworkBorderGroup => Str]

=item [PublicIpv4Pool => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::AllocateAddress>

Returns: a L<Paws::EC2::AllocateAddressResult> instance

Allocates an Elastic IP address to your AWS account. After you allocate
the Elastic IP address you can associate it with an instance or network
interface. After you release an Elastic IP address, it is released to
the IP address pool and can be allocated to a different AWS account.

You can allocate an Elastic IP address from an address pool owned by
AWS or from an address pool created from a public IPv4 address range
that you have brought to AWS for use with your AWS resources using
bring your own IP addresses (BYOIP). For more information, see Bring
Your Own IP Addresses (BYOIP)
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html) in
the I<Amazon Elastic Compute Cloud User Guide>.

[EC2-VPC] If you release an Elastic IP address, you might be able to
recover it. You cannot recover an Elastic IP address that you released
after it is allocated to another AWS account. You cannot recover an
Elastic IP address for EC2-Classic. To attempt to recover an Elastic IP
address that you released, specify it in this operation.

An Elastic IP address is for use either in the EC2-Classic platform or
in a VPC. By default, you can allocate 5 Elastic IP addresses for
EC2-Classic per Region and 5 Elastic IP addresses for EC2-VPC per
Region.

For more information, see Elastic IP Addresses
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

You can allocate a carrier IP address which is a public IP address from
a telecommunication carrier, to a network interface which resides in a
subnet in a Wavelength Zone (for example an EC2 instance).


=head2 AllocateHosts

=over

=item AvailabilityZone => Str

=item Quantity => Int

=item [AutoPlacement => Str]

=item [ClientToken => Str]

=item [HostRecovery => Str]

=item [InstanceFamily => Str]

=item [InstanceType => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::AllocateHosts>

Returns: a L<Paws::EC2::AllocateHostsResult> instance

Allocates a Dedicated Host to your account. At a minimum, specify the
supported instance type or instance family, the Availability Zone in
which to allocate the host, and the number of hosts to allocate.


=head2 ApplySecurityGroupsToClientVpnTargetNetwork

=over

=item ClientVpnEndpointId => Str

=item SecurityGroupIds => ArrayRef[Str|Undef]

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ApplySecurityGroupsToClientVpnTargetNetwork>

Returns: a L<Paws::EC2::ApplySecurityGroupsToClientVpnTargetNetworkResult> instance

Applies a security group to the association between the target network
and the Client VPN endpoint. This action replaces the existing security
groups with the specified security groups.


=head2 AssignIpv6Addresses

=over

=item NetworkInterfaceId => Str

=item [Ipv6AddressCount => Int]

=item [Ipv6Addresses => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::AssignIpv6Addresses>

Returns: a L<Paws::EC2::AssignIpv6AddressesResult> instance

Assigns one or more IPv6 addresses to the specified network interface.
You can specify one or more specific IPv6 addresses, or you can specify
the number of IPv6 addresses to be automatically assigned from within
the subnet's IPv6 CIDR block range. You can assign as many IPv6
addresses to a network interface as you can assign private IPv4
addresses, and the limit varies per instance type. For information, see
IP Addresses Per Network Interface Per Instance Type
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI)
in the I<Amazon Elastic Compute Cloud User Guide>.

You must specify either the IPv6 addresses or the IPv6 address count in
the request.


=head2 AssignPrivateIpAddresses

=over

=item NetworkInterfaceId => Str

=item [AllowReassignment => Bool]

=item [PrivateIpAddresses => ArrayRef[Str|Undef]]

=item [SecondaryPrivateIpAddressCount => Int]


=back

Each argument is described in detail in: L<Paws::EC2::AssignPrivateIpAddresses>

Returns: a L<Paws::EC2::AssignPrivateIpAddressesResult> instance

Assigns one or more secondary private IP addresses to the specified
network interface.

You can specify one or more specific secondary IP addresses, or you can
specify the number of secondary IP addresses to be automatically
assigned within the subnet's CIDR block range. The number of secondary
IP addresses that you can assign to an instance varies by instance
type. For information about instance types, see Instance Types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
in the I<Amazon Elastic Compute Cloud User Guide>. For more information
about Elastic IP addresses, see Elastic IP Addresses
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

When you move a secondary private IP address to another network
interface, any Elastic IP address that is associated with the IP
address is also moved.

Remapping an IP address is an asynchronous operation. When you move an
IP address from one network interface to another, check
C<network/interfaces/macs/mac/local-ipv4s> in the instance metadata to
confirm that the remapping is complete.

You must specify either the IP addresses or the IP address count in the
request.


=head2 AssociateAddress

=over

=item [AllocationId => Str]

=item [AllowReassociation => Bool]

=item [DryRun => Bool]

=item [InstanceId => Str]

=item [NetworkInterfaceId => Str]

=item [PrivateIpAddress => Str]

=item [PublicIp => Str]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateAddress>

Returns: a L<Paws::EC2::AssociateAddressResult> instance

Associates an Elastic IP address, or carrier IP address (for instances
that are in subnets in Wavelength Zones) with an instance or a network
interface. Before you can use an Elastic IP address, you must allocate
it to your account.

An Elastic IP address is for use in either the EC2-Classic platform or
in a VPC. For more information, see Elastic IP Addresses
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

[EC2-Classic, VPC in an EC2-VPC-only account] If the Elastic IP address
is already associated with a different instance, it is disassociated
from that instance and associated with the specified instance. If you
associate an Elastic IP address with an instance that has an existing
Elastic IP address, the existing address is disassociated from the
instance, but remains allocated to your account.

[VPC in an EC2-Classic account] If you don't specify a private IP
address, the Elastic IP address is associated with the primary IP
address. If the Elastic IP address is already associated with a
different instance or a network interface, you get an error unless you
allow reassociation. You cannot associate an Elastic IP address with an
instance or network interface that has an existing Elastic IP address.

[Subnets in Wavelength Zones] You can associate an IP address from the
telecommunication carrier to the instance or network interface.

You cannot associate an Elastic IP address with an interface in a
different network border group.

This is an idempotent operation. If you perform the operation more than
once, Amazon EC2 doesn't return an error, and you may be charged for
each time the Elastic IP address is remapped to the same instance. For
more information, see the I<Elastic IP Addresses> section of Amazon EC2
Pricing (http://aws.amazon.com/ec2/pricing/).


=head2 AssociateClientVpnTargetNetwork

=over

=item ClientVpnEndpointId => Str

=item SubnetId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateClientVpnTargetNetwork>

Returns: a L<Paws::EC2::AssociateClientVpnTargetNetworkResult> instance

Associates a target network with a Client VPN endpoint. A target
network is a subnet in a VPC. You can associate multiple subnets from
the same VPC with a Client VPN endpoint. You can associate only one
subnet in each Availability Zone. We recommend that you associate at
least two subnets to provide Availability Zone redundancy.

If you specified a VPC when you created the Client VPN endpoint or if
you have previous subnet associations, the specified subnet must be in
the same VPC. To specify a subnet that's in a different VPC, you must
first modify the Client VPN endpoint (ModifyClientVpnEndpoint) and
change the VPC that's associated with it.


=head2 AssociateDhcpOptions

=over

=item DhcpOptionsId => Str

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateDhcpOptions>

Returns: nothing

Associates a set of DHCP options (that you've previously created) with
the specified VPC, or associates no DHCP options with the VPC.

After you associate the options with the VPC, any existing instances
and all new instances that you launch in that VPC use the options. You
don't need to restart or relaunch the instances. They automatically
pick up the changes within a few hours, depending on how frequently the
instance renews its DHCP lease. You can explicitly renew the lease
using the operating system on the instance.

For more information, see DHCP Options Sets
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html)
in the I<Amazon Virtual Private Cloud User Guide>.


=head2 AssociateEnclaveCertificateIamRole

=over

=item [CertificateArn => Str]

=item [DryRun => Bool]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateEnclaveCertificateIamRole>

Returns: a L<Paws::EC2::AssociateEnclaveCertificateIamRoleResult> instance

Associates an AWS Identity and Access Management (IAM) role with an AWS
Certificate Manager (ACM) certificate. This enables the certificate to
be used by the ACM for Nitro Enclaves application inside an enclave.
For more information, see AWS Certificate Manager for Nitro Enclaves
(https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave-refapp.html)
in the I<AWS Nitro Enclaves User Guide>.

When the IAM role is associated with the ACM certificate, the
certificate, certificate chain, and encrypted private key are placed in
an Amazon S3 bucket that only the associated IAM role can access. The
private key of the certificate is encrypted with an AWS-managed KMS
customer master (CMK) that has an attached attestation-based CMK
policy.

To enable the IAM role to access the Amazon S3 object, you must grant
it permission to call C<s3:GetObject> on the Amazon S3 bucket returned
by the command. To enable the IAM role to access the AWS KMS CMK, you
must grant it permission to call C<kms:Decrypt> on the AWS KMS CMK
returned by the command. For more information, see Grant the role
permission to access the certificate and encryption key
(https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave-refapp.html#add-policy)
in the I<AWS Nitro Enclaves User Guide>.


=head2 AssociateIamInstanceProfile

=over

=item IamInstanceProfile => L<Paws::EC2::IamInstanceProfileSpecification>

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::EC2::AssociateIamInstanceProfile>

Returns: a L<Paws::EC2::AssociateIamInstanceProfileResult> instance

Associates an IAM instance profile with a running or stopped instance.
You cannot associate more than one IAM instance profile with an
instance.


=head2 AssociateRouteTable

=over

=item RouteTableId => Str

=item [DryRun => Bool]

=item [GatewayId => Str]

=item [SubnetId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateRouteTable>

Returns: a L<Paws::EC2::AssociateRouteTableResult> instance

Associates a subnet in your VPC or an internet gateway or virtual
private gateway attached to your VPC with a route table in your VPC.
This association causes traffic from the subnet or gateway to be routed
according to the routes in the route table. The action returns an
association ID, which you need in order to disassociate the route table
later. A route table can be associated with multiple subnets.

For more information, see Route Tables
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
in the I<Amazon Virtual Private Cloud User Guide>.


=head2 AssociateSubnetCidrBlock

=over

=item Ipv6CidrBlock => Str

=item SubnetId => Str


=back

Each argument is described in detail in: L<Paws::EC2::AssociateSubnetCidrBlock>

Returns: a L<Paws::EC2::AssociateSubnetCidrBlockResult> instance

Associates a CIDR block with your subnet. You can only associate a
single IPv6 CIDR block with your subnet. An IPv6 CIDR block must have a
prefix length of /64.


=head2 AssociateTransitGatewayMulticastDomain

=over

=item [DryRun => Bool]

=item [SubnetIds => ArrayRef[Str|Undef]]

=item [TransitGatewayAttachmentId => Str]

=item [TransitGatewayMulticastDomainId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateTransitGatewayMulticastDomain>

Returns: a L<Paws::EC2::AssociateTransitGatewayMulticastDomainResult> instance

Associates the specified subnets and transit gateway attachments with
the specified transit gateway multicast domain.

The transit gateway attachment must be in the available state before
you can add a resource. Use DescribeTransitGatewayAttachments
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGatewayAttachments.html)
to see the state of the attachment.


=head2 AssociateTransitGatewayRouteTable

=over

=item TransitGatewayAttachmentId => Str

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateTransitGatewayRouteTable>

Returns: a L<Paws::EC2::AssociateTransitGatewayRouteTableResult> instance

Associates the specified attachment with the specified transit gateway
route table. You can associate only one route table with an attachment.


=head2 AssociateVpcCidrBlock

=over

=item VpcId => Str

=item [AmazonProvidedIpv6CidrBlock => Bool]

=item [CidrBlock => Str]

=item [Ipv6CidrBlock => Str]

=item [Ipv6CidrBlockNetworkBorderGroup => Str]

=item [Ipv6Pool => Str]


=back

Each argument is described in detail in: L<Paws::EC2::AssociateVpcCidrBlock>

Returns: a L<Paws::EC2::AssociateVpcCidrBlockResult> instance

Associates a CIDR block with your VPC. You can associate a secondary
IPv4 CIDR block, an Amazon-provided IPv6 CIDR block, or an IPv6 CIDR
block from an IPv6 address pool that you provisioned through bring your
own IP addresses (BYOIP
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html)).
The IPv6 CIDR block size is fixed at /56.

You must specify one of the following in the request: an IPv4 CIDR
block, an IPv6 pool, or an Amazon-provided IPv6 CIDR block.

For more information about associating CIDR blocks with your VPC and
applicable restrictions, see VPC and Subnet Sizing
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html#VPC_Sizing)
in the I<Amazon Virtual Private Cloud User Guide>.


=head2 AttachClassicLinkVpc

=over

=item Groups => ArrayRef[Str|Undef]

=item InstanceId => Str

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AttachClassicLinkVpc>

Returns: a L<Paws::EC2::AttachClassicLinkVpcResult> instance

Links an EC2-Classic instance to a ClassicLink-enabled VPC through one
or more of the VPC's security groups. You cannot link an EC2-Classic
instance to more than one VPC at a time. You can only link an instance
that's in the C<running> state. An instance is automatically unlinked
from a VPC when it's stopped - you can link it to the VPC again when
you restart it.

After you've linked an instance, you cannot change the VPC security
groups that are associated with it. To change the security groups, you
must first unlink the instance, and then link it again.

Linking your instance to a VPC is sometimes referred to as I<attaching>
your instance.


=head2 AttachInternetGateway

=over

=item InternetGatewayId => Str

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AttachInternetGateway>

Returns: nothing

Attaches an internet gateway or a virtual private gateway to a VPC,
enabling connectivity between the internet and the VPC. For more
information about your VPC and internet gateway, see the Amazon Virtual
Private Cloud User Guide
(https://docs.aws.amazon.com/vpc/latest/userguide/).


=head2 AttachNetworkInterface

=over

=item DeviceIndex => Int

=item InstanceId => Str

=item NetworkInterfaceId => Str

=item [DryRun => Bool]

=item [NetworkCardIndex => Int]


=back

Each argument is described in detail in: L<Paws::EC2::AttachNetworkInterface>

Returns: a L<Paws::EC2::AttachNetworkInterfaceResult> instance

Attaches a network interface to an instance.


=head2 AttachVolume

=over

=item Device => Str

=item InstanceId => Str

=item VolumeId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AttachVolume>

Returns: a L<Paws::EC2::VolumeAttachment> instance

Attaches an EBS volume to a running or stopped instance and exposes it
to the instance with the specified device name.

Encrypted EBS volumes must be attached to instances that support Amazon
EBS encryption. For more information, see Amazon EBS encryption
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

After you attach an EBS volume, you must make it available. For more
information, see Making an EBS volume available for use
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-using-volumes.html).

If a volume has an AWS Marketplace product code:

=over

=item *

The volume can be attached only to a stopped instance.

=item *

AWS Marketplace product codes are copied from the volume to the
instance.

=item *

You must be subscribed to the product.

=item *

The instance type and operating system of the instance must support the
product. For example, you can't detach a volume from a Windows instance
and attach it to a Linux instance.

=back

For more information, see Attaching Amazon EBS volumes
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-attaching-volume.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 AttachVpnGateway

=over

=item VpcId => Str

=item VpnGatewayId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AttachVpnGateway>

Returns: a L<Paws::EC2::AttachVpnGatewayResult> instance

Attaches a virtual private gateway to a VPC. You can attach one virtual
private gateway to one VPC at a time.

For more information, see AWS Site-to-Site VPN
(https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the
I<AWS Site-to-Site VPN User Guide>.


=head2 AuthorizeClientVpnIngress

=over

=item ClientVpnEndpointId => Str

=item TargetNetworkCidr => Str

=item [AccessGroupId => Str]

=item [AuthorizeAllGroups => Bool]

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::AuthorizeClientVpnIngress>

Returns: a L<Paws::EC2::AuthorizeClientVpnIngressResult> instance

Adds an ingress authorization rule to a Client VPN endpoint. Ingress
authorization rules act as firewall rules that grant access to
networks. You must configure ingress authorization rules to enable
clients to access resources in AWS or on-premises networks.


=head2 AuthorizeSecurityGroupEgress

=over

=item GroupId => Str

=item [CidrIp => Str]

=item [DryRun => Bool]

=item [FromPort => Int]

=item [IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>]]

=item [IpProtocol => Str]

=item [SourceSecurityGroupName => Str]

=item [SourceSecurityGroupOwnerId => Str]

=item [ToPort => Int]


=back

Each argument is described in detail in: L<Paws::EC2::AuthorizeSecurityGroupEgress>

Returns: nothing

[VPC only] Adds the specified egress rules to a security group for use
with a VPC.

An outbound rule permits instances to send traffic to the specified
IPv4 or IPv6 CIDR address ranges, or to the instances associated with
the specified destination security groups.

You specify a protocol for each rule (for example, TCP). For the TCP
and UDP protocols, you must also specify the destination port or port
range. For the ICMP protocol, you must also specify the ICMP type and
code. You can use -1 for the type or code to mean all types or all
codes.

Rule changes are propagated to affected instances as quickly as
possible. However, a small delay might occur.

For more information about VPC security group limits, see Amazon VPC
Limits
(https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html).


=head2 AuthorizeSecurityGroupIngress

=over

=item [CidrIp => Str]

=item [DryRun => Bool]

=item [FromPort => Int]

=item [GroupId => Str]

=item [GroupName => Str]

=item [IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>]]

=item [IpProtocol => Str]

=item [SourceSecurityGroupName => Str]

=item [SourceSecurityGroupOwnerId => Str]

=item [ToPort => Int]


=back

Each argument is described in detail in: L<Paws::EC2::AuthorizeSecurityGroupIngress>

Returns: nothing

Adds the specified ingress rules to a security group.

An inbound rule permits instances to receive traffic from the specified
IPv4 or IPv6 CIDR address ranges, or from the instances associated with
the specified destination security groups.

You specify a protocol for each rule (for example, TCP). For TCP and
UDP, you must also specify the destination port or port range. For
ICMP/ICMPv6, you must also specify the ICMP/ICMPv6 type and code. You
can use -1 to mean all types or all codes.

Rule changes are propagated to instances within the security group as
quickly as possible. However, a small delay might occur.

For more information about VPC security group limits, see Amazon VPC
Limits
(https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html).


=head2 BundleInstance

=over

=item InstanceId => Str

=item Storage => L<Paws::EC2::Storage>

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::BundleInstance>

Returns: a L<Paws::EC2::BundleInstanceResult> instance

Bundles an Amazon instance store-backed Windows instance.

During bundling, only the root device volume (C:\) is bundled. Data on
other instance store volumes is not preserved.

This action is not applicable for Linux/Unix instances or Windows
instances that are backed by Amazon EBS.


=head2 CancelBundleTask

=over

=item BundleId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CancelBundleTask>

Returns: a L<Paws::EC2::CancelBundleTaskResult> instance

Cancels a bundling operation for an instance store-backed Windows
instance.


=head2 CancelCapacityReservation

=over

=item CapacityReservationId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CancelCapacityReservation>

Returns: a L<Paws::EC2::CancelCapacityReservationResult> instance

Cancels the specified Capacity Reservation, releases the reserved
capacity, and changes the Capacity Reservation's state to C<cancelled>.

Instances running in the reserved capacity continue running until you
stop them. Stopped instances that target the Capacity Reservation can
no longer launch. Modify these instances to either target a different
Capacity Reservation, launch On-Demand Instance capacity, or run in any
open Capacity Reservation that has matching attributes and sufficient
capacity.


=head2 CancelConversionTask

=over

=item ConversionTaskId => Str

=item [DryRun => Bool]

=item [ReasonMessage => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CancelConversionTask>

Returns: nothing

Cancels an active conversion task. The task can be the import of an
instance or volume. The action removes all artifacts of the conversion,
including a partially uploaded volume or instance. If the conversion is
complete or is in the process of transferring the final disk image, the
command fails and returns an exception.

For more information, see Importing a Virtual Machine Using the Amazon
EC2 CLI
(https://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/ec2-cli-vmimport-export.html).


=head2 CancelExportTask

=over

=item ExportTaskId => Str


=back

Each argument is described in detail in: L<Paws::EC2::CancelExportTask>

Returns: nothing

Cancels an active export task. The request removes all artifacts of the
export, including any partially-created Amazon S3 objects. If the
export task is complete or is in the process of transferring the final
disk image, the command fails and returns an error.


=head2 CancelImportTask

=over

=item [CancelReason => Str]

=item [DryRun => Bool]

=item [ImportTaskId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CancelImportTask>

Returns: a L<Paws::EC2::CancelImportTaskResult> instance

Cancels an in-process import virtual machine or import snapshot task.


=head2 CancelReservedInstancesListing

=over

=item ReservedInstancesListingId => Str


=back

Each argument is described in detail in: L<Paws::EC2::CancelReservedInstancesListing>

Returns: a L<Paws::EC2::CancelReservedInstancesListingResult> instance

Cancels the specified Reserved Instance listing in the Reserved
Instance Marketplace.

For more information, see Reserved Instance Marketplace
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
in the I<Amazon EC2 User Guide>.


=head2 CancelSpotFleetRequests

=over

=item SpotFleetRequestIds => ArrayRef[Str|Undef]

=item TerminateInstances => Bool

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CancelSpotFleetRequests>

Returns: a L<Paws::EC2::CancelSpotFleetRequestsResponse> instance

Cancels the specified Spot Fleet requests.

After you cancel a Spot Fleet request, the Spot Fleet launches no new
Spot Instances. You must specify whether the Spot Fleet should also
terminate its Spot Instances. If you terminate the instances, the Spot
Fleet request enters the C<cancelled_terminating> state. Otherwise, the
Spot Fleet request enters the C<cancelled_running> state and the
instances continue to run until they are interrupted or you terminate
them manually.


=head2 CancelSpotInstanceRequests

=over

=item SpotInstanceRequestIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CancelSpotInstanceRequests>

Returns: a L<Paws::EC2::CancelSpotInstanceRequestsResult> instance

Cancels one or more Spot Instance requests.

Canceling a Spot Instance request does not terminate running Spot
Instances associated with the request.


=head2 ConfirmProductInstance

=over

=item InstanceId => Str

=item ProductCode => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ConfirmProductInstance>

Returns: a L<Paws::EC2::ConfirmProductInstanceResult> instance

Determines whether a product code is associated with an instance. This
action can only be used by the owner of the product code. It is useful
when a product code owner must verify whether another user's instance
is eligible for support.


=head2 CopyFpgaImage

=over

=item SourceFpgaImageId => Str

=item SourceRegion => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CopyFpgaImage>

Returns: a L<Paws::EC2::CopyFpgaImageResult> instance

Copies the specified Amazon FPGA Image (AFI) to the current Region.


=head2 CopyImage

=over

=item Name => Str

=item SourceImageId => Str

=item SourceRegion => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DestinationOutpostArn => Str]

=item [DryRun => Bool]

=item [Encrypted => Bool]

=item [KmsKeyId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CopyImage>

Returns: a L<Paws::EC2::CopyImageResult> instance

Initiates the copy of an AMI. You can copy an AMI from one Region to
another, or from a Region to an AWS Outpost. You can't copy an AMI from
an Outpost to a Region, from one Outpost to another, or within the same
Outpost. To copy an AMI to another partition, see CreateStoreImageTask
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateStoreImageTask.html).

To copy an AMI from one Region to another, specify the source Region
using the B<SourceRegion> parameter, and specify the destination Region
using its endpoint. Copies of encrypted backing snapshots for the AMI
are encrypted. Copies of unencrypted backing snapshots remain
unencrypted, unless you set C<Encrypted> during the copy operation. You
cannot create an unencrypted copy of an encrypted backing snapshot.

To copy an AMI from a Region to an Outpost, specify the source Region
using the B<SourceRegion> parameter, and specify the ARN of the
destination Outpost using B<DestinationOutpostArn>. Backing snapshots
copied to an Outpost are encrypted by default using the default
encryption key for the Region, or a different key that you specify in
the request using B<KmsKeyId>. Outposts do not support unencrypted
snapshots. For more information, Amazon EBS local snapshots on Outposts
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#ami)
in the I<Amazon Elastic Compute Cloud User Guide>.

For more information about the prerequisites and limits when copying an
AMI, see Copying an AMI
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/CopyingAMIs.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 CopySnapshot

=over

=item SourceRegion => Str

=item SourceSnapshotId => Str

=item [Description => Str]

=item [DestinationOutpostArn => Str]

=item [DestinationRegion => Str]

=item [DryRun => Bool]

=item [Encrypted => Bool]

=item [KmsKeyId => Str]

=item [PresignedUrl => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CopySnapshot>

Returns: a L<Paws::EC2::CopySnapshotResult> instance

Copies a point-in-time snapshot of an EBS volume and stores it in
Amazon S3. You can copy a snapshot within the same Region, from one
Region to another, or from a Region to an Outpost. You can't copy a
snapshot from an Outpost to a Region, from one Outpost to another, or
within the same Outpost.

You can use the snapshot to create EBS volumes or Amazon Machine Images
(AMIs).

When copying snapshots to a Region, copies of encrypted EBS snapshots
remain encrypted. Copies of unencrypted snapshots remain unencrypted,
unless you enable encryption for the snapshot copy operation. By
default, encrypted snapshot copies use the default AWS Key Management
Service (AWS KMS) customer master key (CMK); however, you can specify a
different CMK. To copy an encrypted snapshot that has been shared from
another account, you must have permissions for the CMK used to encrypt
the snapshot.

Snapshots copied to an Outpost are encrypted by default using the
default encryption key for the Region, or a different key that you
specify in the request using B<KmsKeyId>. Outposts do not support
unencrypted snapshots. For more information, Amazon EBS local snapshots
on Outposts
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#ami)
in the I<Amazon Elastic Compute Cloud User Guide>.

Snapshots created by copying another snapshot have an arbitrary volume
ID that should not be used for any purpose.

For more information, see Copying an Amazon EBS snapshot
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-copy-snapshot.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 CreateCapacityReservation

=over

=item InstanceCount => Int

=item InstancePlatform => Str

=item InstanceType => Str

=item [AvailabilityZone => Str]

=item [AvailabilityZoneId => Str]

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [EbsOptimized => Bool]

=item [EndDate => Str]

=item [EndDateType => Str]

=item [EphemeralStorage => Bool]

=item [InstanceMatchCriteria => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [Tenancy => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateCapacityReservation>

Returns: a L<Paws::EC2::CreateCapacityReservationResult> instance

Creates a new Capacity Reservation with the specified attributes.

Capacity Reservations enable you to reserve capacity for your Amazon
EC2 instances in a specific Availability Zone for any duration. This
gives you the flexibility to selectively add capacity reservations and
still get the Regional RI discounts for that usage. By creating
Capacity Reservations, you ensure that you always have access to Amazon
EC2 capacity when you need it, for as long as you need it. For more
information, see Capacity Reservations
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-capacity-reservations.html)
in the I<Amazon EC2 User Guide>.

Your request to create a Capacity Reservation could fail if Amazon EC2
does not have sufficient capacity to fulfill the request. If your
request fails due to Amazon EC2 capacity constraints, either try again
at a later time, try in a different Availability Zone, or request a
smaller capacity reservation. If your application is flexible across
instance types and sizes, try to create a Capacity Reservation with
different instance attributes.

Your request could also fail if the requested quantity exceeds your
On-Demand Instance limit for the selected instance type. If your
request fails due to limit constraints, increase your On-Demand
Instance limit for the required instance type and try again. For more
information about increasing your instance limits, see Amazon EC2
Service Quotas
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-resource-limits.html)
in the I<Amazon EC2 User Guide>.


=head2 CreateCarrierGateway

=over

=item VpcId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateCarrierGateway>

Returns: a L<Paws::EC2::CreateCarrierGatewayResult> instance

Creates a carrier gateway. For more information about carrier gateways,
see Carrier gateways
(https://docs.aws.amazon.com/wavelength/latest/developerguide/how-wavelengths-work.html#wavelength-carrier-gateway)
in the I<AWS Wavelength Developer Guide>.


=head2 CreateClientVpnEndpoint

=over

=item AuthenticationOptions => ArrayRef[L<Paws::EC2::ClientVpnAuthenticationRequest>]

=item ClientCidrBlock => Str

=item ConnectionLogOptions => L<Paws::EC2::ConnectionLogOptions>

=item ServerCertificateArn => Str

=item [ClientConnectOptions => L<Paws::EC2::ClientConnectOptions>]

=item [ClientToken => Str]

=item [Description => Str]

=item [DnsServers => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SelfServicePortal => Str]

=item [SplitTunnel => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [TransportProtocol => Str]

=item [VpcId => Str]

=item [VpnPort => Int]


=back

Each argument is described in detail in: L<Paws::EC2::CreateClientVpnEndpoint>

Returns: a L<Paws::EC2::CreateClientVpnEndpointResult> instance

Creates a Client VPN endpoint. A Client VPN endpoint is the resource
you create and configure to enable and manage client VPN sessions. It
is the destination endpoint at which all client VPN sessions are
terminated.


=head2 CreateClientVpnRoute

=over

=item ClientVpnEndpointId => Str

=item DestinationCidrBlock => Str

=item TargetVpcSubnetId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CreateClientVpnRoute>

Returns: a L<Paws::EC2::CreateClientVpnRouteResult> instance

Adds a route to a network to a Client VPN endpoint. Each Client VPN
endpoint has a route table that describes the available destination
network routes. Each route in the route table specifies the path for
trac to specic resources or networks.


=head2 CreateCustomerGateway

=over

=item BgpAsn => Int

=item Type => Str

=item [CertificateArn => Str]

=item [DeviceName => Str]

=item [DryRun => Bool]

=item [PublicIp => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateCustomerGateway>

Returns: a L<Paws::EC2::CreateCustomerGatewayResult> instance

Provides information to AWS about your VPN customer gateway device. The
customer gateway is the appliance at your end of the VPN connection.
(The device on the AWS side of the VPN connection is the virtual
private gateway.) You must provide the internet-routable IP address of
the customer gateway's external interface. The IP address must be
static and can be behind a device performing network address
translation (NAT).

For devices that use Border Gateway Protocol (BGP), you can also
provide the device's BGP Autonomous System Number (ASN). You can use an
existing ASN assigned to your network. If you don't have an ASN
already, you can use a private ASN (in the 64512 - 65534 range).

Amazon EC2 supports all 4-byte ASN numbers in the range of 1 -
2147483647, with the exception of the following:

=over

=item *

7224 - reserved in the C<us-east-1> Region

=item *

9059 - reserved in the C<eu-west-1> Region

=item *

17943 - reserved in the C<ap-southeast-1> Region

=item *

10124 - reserved in the C<ap-northeast-1> Region

=back

For more information, see AWS Site-to-Site VPN
(https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the
I<AWS Site-to-Site VPN User Guide>.

To create more than one customer gateway with the same VPN type, IP
address, and BGP ASN, specify a unique device name for each customer
gateway. Identical requests return information about the existing
customer gateway and do not create new customer gateways.


=head2 CreateDefaultSubnet

=over

=item AvailabilityZone => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CreateDefaultSubnet>

Returns: a L<Paws::EC2::CreateDefaultSubnetResult> instance

Creates a default subnet with a size C</20> IPv4 CIDR block in the
specified Availability Zone in your default VPC. You can have only one
default subnet per Availability Zone. For more information, see
Creating a Default Subnet
(https://docs.aws.amazon.com/vpc/latest/userguide/default-vpc.html#create-default-subnet)
in the I<Amazon Virtual Private Cloud User Guide>.


=head2 CreateDefaultVpc

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CreateDefaultVpc>

Returns: a L<Paws::EC2::CreateDefaultVpcResult> instance

Creates a default VPC with a size C</16> IPv4 CIDR block and a default
subnet in each Availability Zone. For more information about the
components of a default VPC, see Default VPC and Default Subnets
(https://docs.aws.amazon.com/vpc/latest/userguide/default-vpc.html) in
the I<Amazon Virtual Private Cloud User Guide>. You cannot specify the
components of the default VPC yourself.

If you deleted your previous default VPC, you can create a default VPC.
You cannot have more than one default VPC per Region.

If your account supports EC2-Classic, you cannot use this action to
create a default VPC in a Region that supports EC2-Classic. If you want
a default VPC in a Region that supports EC2-Classic, see "I really want
a default VPC for my existing EC2 account. Is that possible?" in the
Default VPCs FAQ (http://aws.amazon.com/vpc/faqs/#Default_VPCs).


=head2 CreateDhcpOptions

=over

=item DhcpConfigurations => ArrayRef[L<Paws::EC2::NewDhcpConfiguration>]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateDhcpOptions>

Returns: a L<Paws::EC2::CreateDhcpOptionsResult> instance

Creates a set of DHCP options for your VPC. After creating the set, you
must associate it with the VPC, causing all existing and new instances
that you launch in the VPC to use this set of DHCP options. The
following are the individual DHCP options you can specify. For more
information about the options, see RFC 2132
(http://www.ietf.org/rfc/rfc2132.txt).

=over

=item *

C<domain-name-servers> - The IP addresses of up to four domain name
servers, or AmazonProvidedDNS. The default DHCP option set specifies
AmazonProvidedDNS. If specifying more than one domain name server,
specify the IP addresses in a single parameter, separated by commas. To
have your instance receive a custom DNS hostname as specified in
C<domain-name>, you must set C<domain-name-servers> to a custom DNS
server.

=item *

C<domain-name> - If you're using AmazonProvidedDNS in C<us-east-1>,
specify C<ec2.internal>. If you're using AmazonProvidedDNS in another
Region, specify C<region.compute.internal> (for example,
C<ap-northeast-1.compute.internal>). Otherwise, specify a domain name
(for example, C<ExampleCompany.com>). This value is used to complete
unqualified DNS hostnames. B<Important>: Some Linux operating systems
accept multiple domain names separated by spaces. However, Windows and
other Linux operating systems treat the value as a single domain, which
results in unexpected behavior. If your DHCP options set is associated
with a VPC that has instances with multiple operating systems, specify
only one domain name.

=item *

C<ntp-servers> - The IP addresses of up to four Network Time Protocol
(NTP) servers.

=item *

C<netbios-name-servers> - The IP addresses of up to four NetBIOS name
servers.

=item *

C<netbios-node-type> - The NetBIOS node type (1, 2, 4, or 8). We
recommend that you specify 2 (broadcast and multicast are not currently
supported). For more information about these node types, see RFC 2132
(http://www.ietf.org/rfc/rfc2132.txt).

=back

Your VPC automatically starts out with a set of DHCP options that
includes only a DNS server that we provide (AmazonProvidedDNS). If you
create a set of options, and if your VPC has an internet gateway, make
sure to set the C<domain-name-servers> option either to
C<AmazonProvidedDNS> or to a domain name server of your choice. For
more information, see DHCP Options Sets
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html)
in the I<Amazon Virtual Private Cloud User Guide>.


=head2 CreateEgressOnlyInternetGateway

=over

=item VpcId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateEgressOnlyInternetGateway>

Returns: a L<Paws::EC2::CreateEgressOnlyInternetGatewayResult> instance

[IPv6 only] Creates an egress-only internet gateway for your VPC. An
egress-only internet gateway is used to enable outbound communication
over IPv6 from instances in your VPC to the internet, and prevents
hosts outside of your VPC from initiating an IPv6 connection with your
instance.


=head2 CreateFleet

=over

=item LaunchTemplateConfigs => ArrayRef[L<Paws::EC2::FleetLaunchTemplateConfigRequest>]

=item TargetCapacitySpecification => L<Paws::EC2::TargetCapacitySpecificationRequest>

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [ExcessCapacityTerminationPolicy => Str]

=item [OnDemandOptions => L<Paws::EC2::OnDemandOptionsRequest>]

=item [ReplaceUnhealthyInstances => Bool]

=item [SpotOptions => L<Paws::EC2::SpotOptionsRequest>]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [TerminateInstancesWithExpiration => Bool]

=item [Type => Str]

=item [ValidFrom => Str]

=item [ValidUntil => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateFleet>

Returns: a L<Paws::EC2::CreateFleetResult> instance

Launches an EC2 Fleet.

You can create a single EC2 Fleet that includes multiple launch
specifications that vary by instance type, AMI, Availability Zone, or
subnet.

For more information, see Launching an EC2 Fleet
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet.html) in
the I<Amazon EC2 User Guide>.


=head2 CreateFlowLogs

=over

=item ResourceIds => ArrayRef[Str|Undef]

=item ResourceType => Str

=item TrafficType => Str

=item [ClientToken => Str]

=item [DeliverLogsPermissionArn => Str]

=item [DryRun => Bool]

=item [LogDestination => Str]

=item [LogDestinationType => Str]

=item [LogFormat => Str]

=item [LogGroupName => Str]

=item [MaxAggregationInterval => Int]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateFlowLogs>

Returns: a L<Paws::EC2::CreateFlowLogsResult> instance

Creates one or more flow logs to capture information about IP traffic
for a specific network interface, subnet, or VPC.

Flow log data for a monitored network interface is recorded as flow log
records, which are log events consisting of fields that describe the
traffic flow. For more information, see Flow Log Records
(https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html#flow-log-records)
in the I<Amazon Virtual Private Cloud User Guide>.

When publishing to CloudWatch Logs, flow log records are published to a
log group, and each network interface has a unique log stream in the
log group. When publishing to Amazon S3, flow log records for all of
the monitored network interfaces are published to a single log file
object that is stored in the specified bucket.

For more information, see VPC Flow Logs
(https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html) in
the I<Amazon Virtual Private Cloud User Guide>.


=head2 CreateFpgaImage

=over

=item InputStorageLocation => L<Paws::EC2::StorageLocation>

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [LogsStorageLocation => L<Paws::EC2::StorageLocation>]

=item [Name => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateFpgaImage>

Returns: a L<Paws::EC2::CreateFpgaImageResult> instance

Creates an Amazon FPGA Image (AFI) from the specified design checkpoint
(DCP).

The create operation is asynchronous. To verify that the AFI is ready
for use, check the output logs.

An AFI contains the FPGA bitstream that is ready to download to an
FPGA. You can securely deploy an AFI on multiple FPGA-accelerated
instances. For more information, see the AWS FPGA Hardware Development
Kit (https://github.com/aws/aws-fpga/).


=head2 CreateImage

=over

=item InstanceId => Str

=item Name => Str

=item [BlockDeviceMappings => ArrayRef[L<Paws::EC2::BlockDeviceMapping>]]

=item [Description => Str]

=item [DryRun => Bool]

=item [NoReboot => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateImage>

Returns: a L<Paws::EC2::CreateImageResult> instance

Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance
that is either running or stopped.

If you customized your instance with instance store volumes or EBS
volumes in addition to the root device volume, the new AMI contains
block device mapping information for those volumes. When you launch an
instance from this new AMI, the instance automatically launches with
those additional volumes.

For more information, see Creating Amazon EBS-Backed Linux AMIs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 CreateInstanceExportTask

=over

=item ExportToS3Task => L<Paws::EC2::ExportToS3TaskSpecification>

=item InstanceId => Str

=item TargetEnvironment => Str

=item [Description => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateInstanceExportTask>

Returns: a L<Paws::EC2::CreateInstanceExportTaskResult> instance

Exports a running or stopped instance to an Amazon S3 bucket.

For information about the supported operating systems, image formats,
and known limitations for the types of instances you can export, see
Exporting an instance as a VM Using VM Import/Export
(https://docs.aws.amazon.com/vm-import/latest/userguide/vmexport.html)
in the I<VM Import/Export User Guide>.


=head2 CreateInternetGateway

=over

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateInternetGateway>

Returns: a L<Paws::EC2::CreateInternetGatewayResult> instance

Creates an internet gateway for use with a VPC. After creating the
internet gateway, you attach it to a VPC using AttachInternetGateway.

For more information about your VPC and internet gateway, see the
Amazon Virtual Private Cloud User Guide
(https://docs.aws.amazon.com/vpc/latest/userguide/).


=head2 CreateKeyPair

=over

=item KeyName => Str

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateKeyPair>

Returns: a L<Paws::EC2::KeyPair> instance

Creates a 2048-bit RSA key pair with the specified name. Amazon EC2
stores the public key and displays the private key for you to save to a
file. The private key is returned as an unencrypted PEM encoded PKCS#1
private key. If a key with the specified name already exists, Amazon
EC2 returns an error.

You can have up to five thousand key pairs per Region.

The key pair returned to you is available only in the Region in which
you create it. If you prefer, you can create your own key pair using a
third-party tool and upload it to any Region using ImportKeyPair.

For more information, see Key Pairs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 CreateLaunchTemplate

=over

=item LaunchTemplateData => L<Paws::EC2::RequestLaunchTemplateData>

=item LaunchTemplateName => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [VersionDescription => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateLaunchTemplate>

Returns: a L<Paws::EC2::CreateLaunchTemplateResult> instance

Creates a launch template. A launch template contains the parameters to
launch an instance. When you launch an instance using RunInstances, you
can specify a launch template instead of providing the launch
parameters in the request. For more information, see Launching an
instance from a launch template
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html)in
the I<Amazon Elastic Compute Cloud User Guide>.


=head2 CreateLaunchTemplateVersion

=over

=item LaunchTemplateData => L<Paws::EC2::RequestLaunchTemplateData>

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [LaunchTemplateId => Str]

=item [LaunchTemplateName => Str]

=item [SourceVersion => Str]

=item [VersionDescription => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateLaunchTemplateVersion>

Returns: a L<Paws::EC2::CreateLaunchTemplateVersionResult> instance

Creates a new version for a launch template. You can specify an
existing version of launch template from which to base the new version.

Launch template versions are numbered in the order in which they are
created. You cannot specify, change, or replace the numbering of launch
template versions.

For more information, see Managing launch template versions
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#manage-launch-template-versions)in
the I<Amazon Elastic Compute Cloud User Guide>.


=head2 CreateLocalGatewayRoute

=over

=item DestinationCidrBlock => Str

=item LocalGatewayRouteTableId => Str

=item LocalGatewayVirtualInterfaceGroupId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CreateLocalGatewayRoute>

Returns: a L<Paws::EC2::CreateLocalGatewayRouteResult> instance

Creates a static route for the specified local gateway route table.


=head2 CreateLocalGatewayRouteTableVpcAssociation

=over

=item LocalGatewayRouteTableId => Str

=item VpcId => Str

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateLocalGatewayRouteTableVpcAssociation>

Returns: a L<Paws::EC2::CreateLocalGatewayRouteTableVpcAssociationResult> instance

Associates the specified VPC with the specified local gateway route
table.


=head2 CreateManagedPrefixList

=over

=item AddressFamily => Str

=item MaxEntries => Int

=item PrefixListName => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [Entries => ArrayRef[L<Paws::EC2::AddPrefixListEntry>]]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateManagedPrefixList>

Returns: a L<Paws::EC2::CreateManagedPrefixListResult> instance

Creates a managed prefix list. You can specify one or more entries for
the prefix list. Each entry consists of a CIDR block and an optional
description.

You must specify the maximum number of entries for the prefix list. The
maximum number of entries cannot be changed later.


=head2 CreateNatGateway

=over

=item AllocationId => Str

=item SubnetId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateNatGateway>

Returns: a L<Paws::EC2::CreateNatGatewayResult> instance

Creates a NAT gateway in the specified public subnet. This action
creates a network interface in the specified subnet with a private IP
address from the IP address range of the subnet. Internet-bound traffic
from a private subnet can be routed to the NAT gateway, therefore
enabling instances in the private subnet to connect to the internet.
For more information, see NAT Gateways
(https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html)
in the I<Amazon Virtual Private Cloud User Guide>.


=head2 CreateNetworkAcl

=over

=item VpcId => Str

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateNetworkAcl>

Returns: a L<Paws::EC2::CreateNetworkAclResult> instance

Creates a network ACL in a VPC. Network ACLs provide an optional layer
of security (in addition to security groups) for the instances in your
VPC.

For more information, see Network ACLs
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_ACLs.html) in the
I<Amazon Virtual Private Cloud User Guide>.


=head2 CreateNetworkAclEntry

=over

=item Egress => Bool

=item NetworkAclId => Str

=item Protocol => Str

=item RuleAction => Str

=item RuleNumber => Int

=item [CidrBlock => Str]

=item [DryRun => Bool]

=item [IcmpTypeCode => L<Paws::EC2::IcmpTypeCode>]

=item [Ipv6CidrBlock => Str]

=item [PortRange => L<Paws::EC2::PortRange>]


=back

Each argument is described in detail in: L<Paws::EC2::CreateNetworkAclEntry>

Returns: nothing

Creates an entry (a rule) in a network ACL with the specified rule
number. Each network ACL has a set of numbered ingress rules and a
separate set of numbered egress rules. When determining whether a
packet should be allowed in or out of a subnet associated with the ACL,
we process the entries in the ACL according to the rule numbers, in
ascending order. Each network ACL has a set of ingress rules and a
separate set of egress rules.

We recommend that you leave room between the rule numbers (for example,
100, 110, 120, ...), and not number them one right after the other (for
example, 101, 102, 103, ...). This makes it easier to add a rule
between existing ones without having to renumber the rules.

After you add an entry, you can't modify it; you must either replace
it, or create an entry and delete the old one.

For more information about network ACLs, see Network ACLs
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_ACLs.html) in the
I<Amazon Virtual Private Cloud User Guide>.


=head2 CreateNetworkInsightsPath

=over

=item ClientToken => Str

=item Destination => Str

=item Protocol => Str

=item Source => Str

=item [DestinationIp => Str]

=item [DestinationPort => Int]

=item [DryRun => Bool]

=item [SourceIp => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateNetworkInsightsPath>

Returns: a L<Paws::EC2::CreateNetworkInsightsPathResult> instance

Creates a path to analyze for reachability.

Reachability Analyzer enables you to analyze and debug network
reachability between two resources in your virtual private cloud (VPC).
For more information, see What is Reachability Analyzer
(https://docs.aws.amazon.com/vpc/latest/reachability/).


=head2 CreateNetworkInterface

=over

=item SubnetId => Str

=item [Description => Str]

=item [DryRun => Bool]

=item [Groups => ArrayRef[Str|Undef]]

=item [InterfaceType => Str]

=item [Ipv6AddressCount => Int]

=item [Ipv6Addresses => ArrayRef[L<Paws::EC2::InstanceIpv6Address>]]

=item [PrivateIpAddress => Str]

=item [PrivateIpAddresses => ArrayRef[L<Paws::EC2::PrivateIpAddressSpecification>]]

=item [SecondaryPrivateIpAddressCount => Int]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateNetworkInterface>

Returns: a L<Paws::EC2::CreateNetworkInterfaceResult> instance

Creates a network interface in the specified subnet.

For more information about network interfaces, see Elastic Network
Interfaces
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html) in
the I<Amazon Virtual Private Cloud User Guide>.


=head2 CreateNetworkInterfacePermission

=over

=item NetworkInterfaceId => Str

=item Permission => Str

=item [AwsAccountId => Str]

=item [AwsService => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CreateNetworkInterfacePermission>

Returns: a L<Paws::EC2::CreateNetworkInterfacePermissionResult> instance

Grants an AWS-authorized account permission to attach the specified
network interface to an instance in their account.

You can grant permission to a single AWS account only, and only one
account at a time.


=head2 CreatePlacementGroup

=over

=item [DryRun => Bool]

=item [GroupName => Str]

=item [PartitionCount => Int]

=item [Strategy => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreatePlacementGroup>

Returns: a L<Paws::EC2::CreatePlacementGroupResult> instance

Creates a placement group in which to launch instances. The strategy of
the placement group determines how the instances are organized within
the group.

A C<cluster> placement group is a logical grouping of instances within
a single Availability Zone that benefit from low network latency, high
network throughput. A C<spread> placement group places instances on
distinct hardware. A C<partition> placement group places groups of
instances in different partitions, where instances in one partition do
not share the same hardware with instances in another partition.

For more information, see Placement groups
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)
in the I<Amazon EC2 User Guide>.


=head2 CreateReplaceRootVolumeTask

=over

=item InstanceId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [SnapshotId => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateReplaceRootVolumeTask>

Returns: a L<Paws::EC2::CreateReplaceRootVolumeTaskResult> instance

Creates a root volume replacement task for an Amazon EC2 instance. The
root volume can either be restored to its initial launch state, or it
can be restored using a specific snapshot.

For more information, see Replace a root volume
(https://docs.aws.amazon.com/) in the I<Amazon Elastic Compute Cloud
User Guide>.


=head2 CreateReservedInstancesListing

=over

=item ClientToken => Str

=item InstanceCount => Int

=item PriceSchedules => ArrayRef[L<Paws::EC2::PriceScheduleSpecification>]

=item ReservedInstancesId => Str


=back

Each argument is described in detail in: L<Paws::EC2::CreateReservedInstancesListing>

Returns: a L<Paws::EC2::CreateReservedInstancesListingResult> instance

Creates a listing for Amazon EC2 Standard Reserved Instances to be sold
in the Reserved Instance Marketplace. You can submit one Standard
Reserved Instance listing at a time. To get a list of your Standard
Reserved Instances, you can use the DescribeReservedInstances
operation.

Only Standard Reserved Instances can be sold in the Reserved Instance
Marketplace. Convertible Reserved Instances cannot be sold.

The Reserved Instance Marketplace matches sellers who want to resell
Standard Reserved Instance capacity that they no longer need with
buyers who want to purchase additional capacity. Reserved Instances
bought and sold through the Reserved Instance Marketplace work like any
other Reserved Instances.

To sell your Standard Reserved Instances, you must first register as a
seller in the Reserved Instance Marketplace. After completing the
registration process, you can create a Reserved Instance Marketplace
listing of some or all of your Standard Reserved Instances, and specify
the upfront price to receive for them. Your Standard Reserved Instance
listings then become available for purchase. To view the details of
your Standard Reserved Instance listing, you can use the
DescribeReservedInstancesListings operation.

For more information, see Reserved Instance Marketplace
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
in the I<Amazon EC2 User Guide>.


=head2 CreateRestoreImageTask

=over

=item Bucket => Str

=item ObjectKey => Str

=item [DryRun => Bool]

=item [Name => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateRestoreImageTask>

Returns: a L<Paws::EC2::CreateRestoreImageTaskResult> instance

Starts a task that restores an AMI from an S3 object that was
previously created by using CreateStoreImageTask
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateStoreImageTask.html).

To use this API, you must have the required permissions. For more
information, see Permissions for storing and restoring AMIs using S3
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html#ami-s3-permissions)
in the I<Amazon Elastic Compute Cloud User Guide>.

For more information, see Store and restore an AMI using S3
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 CreateRoute

=over

=item RouteTableId => Str

=item [CarrierGatewayId => Str]

=item [DestinationCidrBlock => Str]

=item [DestinationIpv6CidrBlock => Str]

=item [DestinationPrefixListId => Str]

=item [DryRun => Bool]

=item [EgressOnlyInternetGatewayId => Str]

=item [GatewayId => Str]

=item [InstanceId => Str]

=item [LocalGatewayId => Str]

=item [NatGatewayId => Str]

=item [NetworkInterfaceId => Str]

=item [TransitGatewayId => Str]

=item [VpcEndpointId => Str]

=item [VpcPeeringConnectionId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateRoute>

Returns: a L<Paws::EC2::CreateRouteResult> instance

Creates a route in a route table within a VPC.

You must specify one of the following targets: internet gateway or
virtual private gateway, NAT instance, NAT gateway, VPC peering
connection, network interface, egress-only internet gateway, or transit
gateway.

When determining how to route traffic, we use the route with the most
specific match. For example, traffic is destined for the IPv4 address
C<192.0.2.3>, and the route table includes the following two IPv4
routes:

=over

=item *

C<192.0.2.0/24> (goes to some target A)

=item *

C<192.0.2.0/28> (goes to some target B)

=back

Both routes apply to the traffic destined for C<192.0.2.3>. However,
the second route in the list covers a smaller number of IP addresses
and is therefore more specific, so we use that route to determine where
to target the traffic.

For more information about route tables, see Route Tables
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
in the I<Amazon Virtual Private Cloud User Guide>.


=head2 CreateRouteTable

=over

=item VpcId => Str

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateRouteTable>

Returns: a L<Paws::EC2::CreateRouteTableResult> instance

Creates a route table for the specified VPC. After you create a route
table, you can add routes and associate the table with a subnet.

For more information, see Route Tables
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
in the I<Amazon Virtual Private Cloud User Guide>.


=head2 CreateSecurityGroup

=over

=item Description => Str

=item GroupName => Str

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [VpcId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateSecurityGroup>

Returns: a L<Paws::EC2::CreateSecurityGroupResult> instance

Creates a security group.

A security group acts as a virtual firewall for your instance to
control inbound and outbound traffic. For more information, see Amazon
EC2 Security Groups
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html)
in the I<Amazon Elastic Compute Cloud User Guide> and Security Groups
for Your VPC
(https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html)
in the I<Amazon Virtual Private Cloud User Guide>.

When you create a security group, you specify a friendly name of your
choice. You can have a security group for use in EC2-Classic with the
same name as a security group for use in a VPC. However, you can't have
two security groups for use in EC2-Classic with the same name or two
security groups for use in a VPC with the same name.

You have a default security group for use in EC2-Classic and a default
security group for use in your VPC. If you don't specify a security
group when you launch an instance, the instance is launched into the
appropriate default security group. A default security group includes a
default rule that grants instances unrestricted network access to each
other.

You can add or remove rules from your security groups using
AuthorizeSecurityGroupIngress, AuthorizeSecurityGroupEgress,
RevokeSecurityGroupIngress, and RevokeSecurityGroupEgress.

For more information about VPC security group limits, see Amazon VPC
Limits
(https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html).


=head2 CreateSnapshot

=over

=item VolumeId => Str

=item [Description => Str]

=item [DryRun => Bool]

=item [OutpostArn => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateSnapshot>

Returns: a L<Paws::EC2::Snapshot> instance

Creates a snapshot of an EBS volume and stores it in Amazon S3. You can
use snapshots for backups, to make copies of EBS volumes, and to save
data before shutting down an instance.

You can create snapshots of volumes in a Region and volumes on an
Outpost. If you create a snapshot of a volume in a Region, the snapshot
must be stored in the same Region as the volume. If you create a
snapshot of a volume on an Outpost, the snapshot can be stored on the
same Outpost as the volume, or in the Region for that Outpost.

When a snapshot is created, any AWS Marketplace product codes that are
associated with the source volume are propagated to the snapshot.

You can take a snapshot of an attached volume that is in use. However,
snapshots only capture data that has been written to your EBS volume at
the time the snapshot command is issued; this might exclude any data
that has been cached by any applications or the operating system. If
you can pause any file systems on the volume long enough to take a
snapshot, your snapshot should be complete. However, if you cannot
pause all file writes to the volume, you should unmount the volume from
within the instance, issue the snapshot command, and then remount the
volume to ensure a consistent and complete snapshot. You may remount
and use your volume while the snapshot status is C<pending>.

To create a snapshot for EBS volumes that serve as root devices, you
should stop the instance before taking the snapshot.

Snapshots that are taken from encrypted volumes are automatically
encrypted. Volumes that are created from encrypted snapshots are also
automatically encrypted. Your encrypted volumes and any associated
snapshots always remain protected.

You can tag your snapshots during creation. For more information, see
Tagging your Amazon EC2 resources
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

For more information, see Amazon Elastic Block Store
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html)
and Amazon EBS encryption
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 CreateSnapshots

=over

=item InstanceSpecification => L<Paws::EC2::InstanceSpecification>

=item [CopyTagsFromSource => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [OutpostArn => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateSnapshots>

Returns: a L<Paws::EC2::CreateSnapshotsResult> instance

Creates crash-consistent snapshots of multiple EBS volumes and stores
the data in S3. Volumes are chosen by specifying an instance. Any
attached volumes will produce one snapshot each that is
crash-consistent across the instance. Boot volumes can be excluded by
changing the parameters.

You can create multi-volume snapshots of instances in a Region and
instances on an Outpost. If you create snapshots from an instance in a
Region, the snapshots must be stored in the same Region as the
instance. If you create snapshots from an instance on an Outpost, the
snapshots can be stored on the same Outpost as the instance, or in the
Region for that Outpost.


=head2 CreateSpotDatafeedSubscription

=over

=item Bucket => Str

=item [DryRun => Bool]

=item [Prefix => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateSpotDatafeedSubscription>

Returns: a L<Paws::EC2::CreateSpotDatafeedSubscriptionResult> instance

Creates a data feed for Spot Instances, enabling you to view Spot
Instance usage logs. You can create one data feed per AWS account. For
more information, see Spot Instance data feed
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html)
in the I<Amazon EC2 User Guide for Linux Instances>.


=head2 CreateStoreImageTask

=over

=item Bucket => Str

=item ImageId => Str

=item [DryRun => Bool]

=item [S3ObjectTags => ArrayRef[L<Paws::EC2::S3ObjectTag>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateStoreImageTask>

Returns: a L<Paws::EC2::CreateStoreImageTaskResult> instance

Stores an AMI as a single object in an S3 bucket.

To use this API, you must have the required permissions. For more
information, see Permissions for storing and restoring AMIs using S3
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html#ami-s3-permissions)
in the I<Amazon Elastic Compute Cloud User Guide>.

For more information, see Store and restore an AMI using S3
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 CreateSubnet

=over

=item CidrBlock => Str

=item VpcId => Str

=item [AvailabilityZone => Str]

=item [AvailabilityZoneId => Str]

=item [DryRun => Bool]

=item [Ipv6CidrBlock => Str]

=item [OutpostArn => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateSubnet>

Returns: a L<Paws::EC2::CreateSubnetResult> instance

Creates a subnet in a specified VPC.

You must specify an IPv4 CIDR block for the subnet. After you create a
subnet, you can't change its CIDR block. The allowed block size is
between a /16 netmask (65,536 IP addresses) and /28 netmask (16 IP
addresses). The CIDR block must not overlap with the CIDR block of an
existing subnet in the VPC.

If you've associated an IPv6 CIDR block with your VPC, you can create a
subnet with an IPv6 CIDR block that uses a /64 prefix length.

AWS reserves both the first four and the last IPv4 address in each
subnet's CIDR block. They're not available for use.

If you add more than one subnet to a VPC, they're set up in a star
topology with a logical router in the middle.

When you stop an instance in a subnet, it retains its private IPv4
address. It's therefore possible to have a subnet with no running
instances (they're all stopped), but no remaining IP addresses
available.

For more information about subnets, see Your VPC and Subnets
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html) in
the I<Amazon Virtual Private Cloud User Guide>.


=head2 CreateTags

=over

=item Resources => ArrayRef[Str|Undef]

=item Tags => ArrayRef[L<Paws::EC2::Tag>]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTags>

Returns: nothing

Adds or overwrites only the specified tags for the specified Amazon EC2
resource or resources. When you specify an existing tag key, the value
is overwritten with the new value. Each resource can have a maximum of
50 tags. Each tag consists of a key and optional value. Tag keys must
be unique per resource.

For more information about tags, see Tagging Your Resources
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
in the I<Amazon Elastic Compute Cloud User Guide>. For more information
about creating IAM policies that control users' access to resources
based on tags, see Supported Resource-Level Permissions for Amazon EC2
API Actions
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-iam-actions-resources.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 CreateTrafficMirrorFilter

=over

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTrafficMirrorFilter>

Returns: a L<Paws::EC2::CreateTrafficMirrorFilterResult> instance

Creates a Traffic Mirror filter.

A Traffic Mirror filter is a set of rules that defines the traffic to
mirror.

By default, no traffic is mirrored. To mirror traffic, use
CreateTrafficMirrorFilterRule
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTrafficMirrorFilterRule.htm)
to add Traffic Mirror rules to the filter. The rules you add define
what traffic gets mirrored. You can also use
ModifyTrafficMirrorFilterNetworkServices
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyTrafficMirrorFilterNetworkServices.html)
to mirror supported network services.


=head2 CreateTrafficMirrorFilterRule

=over

=item DestinationCidrBlock => Str

=item RuleAction => Str

=item RuleNumber => Int

=item SourceCidrBlock => Str

=item TrafficDirection => Str

=item TrafficMirrorFilterId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DestinationPortRange => L<Paws::EC2::TrafficMirrorPortRangeRequest>]

=item [DryRun => Bool]

=item [Protocol => Int]

=item [SourcePortRange => L<Paws::EC2::TrafficMirrorPortRangeRequest>]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTrafficMirrorFilterRule>

Returns: a L<Paws::EC2::CreateTrafficMirrorFilterRuleResult> instance

Creates a Traffic Mirror filter rule.

A Traffic Mirror rule defines the Traffic Mirror source traffic to
mirror.

You need the Traffic Mirror filter ID when you create the rule.


=head2 CreateTrafficMirrorSession

=over

=item NetworkInterfaceId => Str

=item SessionNumber => Int

=item TrafficMirrorFilterId => Str

=item TrafficMirrorTargetId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [PacketLength => Int]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [VirtualNetworkId => Int]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTrafficMirrorSession>

Returns: a L<Paws::EC2::CreateTrafficMirrorSessionResult> instance

Creates a Traffic Mirror session.

A Traffic Mirror session actively copies packets from a Traffic Mirror
source to a Traffic Mirror target. Create a filter, and then assign it
to the session to define a subset of the traffic to mirror, for example
all TCP traffic.

The Traffic Mirror source and the Traffic Mirror target (monitoring
appliances) can be in the same VPC, or in a different VPC connected via
VPC peering or a transit gateway.

By default, no traffic is mirrored. Use CreateTrafficMirrorFilter
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTrafficMirrorFilter.htm)
to create filter rules that specify the traffic to mirror.


=head2 CreateTrafficMirrorTarget

=over

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [NetworkInterfaceId => Str]

=item [NetworkLoadBalancerArn => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTrafficMirrorTarget>

Returns: a L<Paws::EC2::CreateTrafficMirrorTargetResult> instance

Creates a target for your Traffic Mirror session.

A Traffic Mirror target is the destination for mirrored traffic. The
Traffic Mirror source and the Traffic Mirror target (monitoring
appliances) can be in the same VPC, or in different VPCs connected via
VPC peering or a transit gateway.

A Traffic Mirror target can be a network interface, or a Network Load
Balancer.

To use the target in a Traffic Mirror session, use
CreateTrafficMirrorSession
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTrafficMirrorSession.htm).


=head2 CreateTransitGateway

=over

=item [Description => Str]

=item [DryRun => Bool]

=item [Options => L<Paws::EC2::TransitGatewayRequestOptions>]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTransitGateway>

Returns: a L<Paws::EC2::CreateTransitGatewayResult> instance

Creates a transit gateway.

You can use a transit gateway to interconnect your virtual private
clouds (VPC) and on-premises networks. After the transit gateway enters
the C<available> state, you can attach your VPCs and VPN connections to
the transit gateway.

To attach your VPCs, use CreateTransitGatewayVpcAttachment.

To attach a VPN connection, use CreateCustomerGateway to create a
customer gateway and specify the ID of the customer gateway and the ID
of the transit gateway in a call to CreateVpnConnection.

When you create a transit gateway, we create a default transit gateway
route table and use it as the default association route table and the
default propagation route table. You can use
CreateTransitGatewayRouteTable to create additional transit gateway
route tables. If you disable automatic route propagation, we do not
create a default transit gateway route table. You can use
EnableTransitGatewayRouteTablePropagation to propagate routes from a
resource attachment to a transit gateway route table. If you disable
automatic associations, you can use AssociateTransitGatewayRouteTable
to associate a resource attachment with a transit gateway route table.


=head2 CreateTransitGatewayConnect

=over

=item Options => L<Paws::EC2::CreateTransitGatewayConnectRequestOptions>

=item TransportTransitGatewayAttachmentId => Str

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTransitGatewayConnect>

Returns: a L<Paws::EC2::CreateTransitGatewayConnectResult> instance

Creates a Connect attachment from a specified transit gateway
attachment. A Connect attachment is a GRE-based tunnel attachment that
you can use to establish a connection between a transit gateway and an
appliance.

A Connect attachment uses an existing VPC or AWS Direct Connect
attachment as the underlying transport mechanism.


=head2 CreateTransitGatewayConnectPeer

=over

=item InsideCidrBlocks => ArrayRef[Str|Undef]

=item PeerAddress => Str

=item TransitGatewayAttachmentId => Str

=item [BgpOptions => L<Paws::EC2::TransitGatewayConnectRequestBgpOptions>]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [TransitGatewayAddress => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTransitGatewayConnectPeer>

Returns: a L<Paws::EC2::CreateTransitGatewayConnectPeerResult> instance

Creates a Connect peer for a specified transit gateway Connect
attachment between a transit gateway and an appliance.

The peer address and transit gateway address must be the same IP
address family (IPv4 or IPv6).

For more information, see Connect peers
(https://docs.aws.amazon.com/vpc/latest/tgw/tgw-connect.html#tgw-connect-peer)
in the I<Transit Gateways Guide>.


=head2 CreateTransitGatewayMulticastDomain

=over

=item TransitGatewayId => Str

=item [DryRun => Bool]

=item [Options => L<Paws::EC2::CreateTransitGatewayMulticastDomainRequestOptions>]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTransitGatewayMulticastDomain>

Returns: a L<Paws::EC2::CreateTransitGatewayMulticastDomainResult> instance

Creates a multicast domain using the specified transit gateway.

The transit gateway must be in the available state before you create a
domain. Use DescribeTransitGateways
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGateways.html)
to see the state of transit gateway.


=head2 CreateTransitGatewayPeeringAttachment

=over

=item PeerAccountId => Str

=item PeerRegion => Str

=item PeerTransitGatewayId => Str

=item TransitGatewayId => Str

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTransitGatewayPeeringAttachment>

Returns: a L<Paws::EC2::CreateTransitGatewayPeeringAttachmentResult> instance

Requests a transit gateway peering attachment between the specified
transit gateway (requester) and a peer transit gateway (accepter). The
transit gateways must be in different Regions. The peer transit gateway
can be in your account or a different AWS account.

After you create the peering attachment, the owner of the accepter
transit gateway must accept the attachment request.


=head2 CreateTransitGatewayPrefixListReference

=over

=item PrefixListId => Str

=item TransitGatewayRouteTableId => Str

=item [Blackhole => Bool]

=item [DryRun => Bool]

=item [TransitGatewayAttachmentId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTransitGatewayPrefixListReference>

Returns: a L<Paws::EC2::CreateTransitGatewayPrefixListReferenceResult> instance

Creates a reference (route) to a prefix list in a specified transit
gateway route table.


=head2 CreateTransitGatewayRoute

=over

=item DestinationCidrBlock => Str

=item TransitGatewayRouteTableId => Str

=item [Blackhole => Bool]

=item [DryRun => Bool]

=item [TransitGatewayAttachmentId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTransitGatewayRoute>

Returns: a L<Paws::EC2::CreateTransitGatewayRouteResult> instance

Creates a static route for the specified transit gateway route table.


=head2 CreateTransitGatewayRouteTable

=over

=item TransitGatewayId => Str

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTransitGatewayRouteTable>

Returns: a L<Paws::EC2::CreateTransitGatewayRouteTableResult> instance

Creates a route table for the specified transit gateway.


=head2 CreateTransitGatewayVpcAttachment

=over

=item SubnetIds => ArrayRef[Str|Undef]

=item TransitGatewayId => Str

=item VpcId => Str

=item [DryRun => Bool]

=item [Options => L<Paws::EC2::CreateTransitGatewayVpcAttachmentRequestOptions>]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateTransitGatewayVpcAttachment>

Returns: a L<Paws::EC2::CreateTransitGatewayVpcAttachmentResult> instance

Attaches the specified VPC to the specified transit gateway.

If you attach a VPC with a CIDR range that overlaps the CIDR range of a
VPC that is already attached, the new VPC CIDR range is not propagated
to the default propagation route table.

To send VPC traffic to an attached transit gateway, add a route to the
VPC route table using CreateRoute.


=head2 CreateVolume

=over

=item AvailabilityZone => Str

=item [DryRun => Bool]

=item [Encrypted => Bool]

=item [Iops => Int]

=item [KmsKeyId => Str]

=item [MultiAttachEnabled => Bool]

=item [OutpostArn => Str]

=item [Size => Int]

=item [SnapshotId => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [Throughput => Int]

=item [VolumeType => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateVolume>

Returns: a L<Paws::EC2::Volume> instance

Creates an EBS volume that can be attached to an instance in the same
Availability Zone.

You can create a new empty volume or restore a volume from an EBS
snapshot. Any AWS Marketplace product codes from the snapshot are
propagated to the volume.

You can create encrypted volumes. Encrypted volumes must be attached to
instances that support Amazon EBS encryption. Volumes that are created
from encrypted snapshots are also automatically encrypted. For more
information, see Amazon EBS encryption
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

You can tag your volumes during creation. For more information, see
Tagging your Amazon EC2 resources
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

For more information, see Creating an Amazon EBS volume
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-creating-volume.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 CreateVpc

=over

=item CidrBlock => Str

=item [AmazonProvidedIpv6CidrBlock => Bool]

=item [DryRun => Bool]

=item [InstanceTenancy => Str]

=item [Ipv6CidrBlock => Str]

=item [Ipv6CidrBlockNetworkBorderGroup => Str]

=item [Ipv6Pool => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateVpc>

Returns: a L<Paws::EC2::CreateVpcResult> instance

Creates a VPC with the specified IPv4 CIDR block. The smallest VPC you
can create uses a /28 netmask (16 IPv4 addresses), and the largest uses
a /16 netmask (65,536 IPv4 addresses). For more information about how
large to make your VPC, see Your VPC and Subnets
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html) in
the I<Amazon Virtual Private Cloud User Guide>.

You can optionally request an IPv6 CIDR block for the VPC. You can
request an Amazon-provided IPv6 CIDR block from Amazon's pool of IPv6
addresses, or an IPv6 CIDR block from an IPv6 address pool that you
provisioned through bring your own IP addresses (BYOIP
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html)).

By default, each instance you launch in the VPC has the default DHCP
options, which include only a default DNS server that we provide
(AmazonProvidedDNS). For more information, see DHCP Options Sets
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html)
in the I<Amazon Virtual Private Cloud User Guide>.

You can specify the instance tenancy value for the VPC when you create
it. You can't change this value for the VPC after you create it. For
more information, see Dedicated Instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 CreateVpcEndpoint

=over

=item ServiceName => Str

=item VpcId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [PolicyDocument => Str]

=item [PrivateDnsEnabled => Bool]

=item [RouteTableIds => ArrayRef[Str|Undef]]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SubnetIds => ArrayRef[Str|Undef]]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [VpcEndpointType => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateVpcEndpoint>

Returns: a L<Paws::EC2::CreateVpcEndpointResult> instance

Creates a VPC endpoint for a specified service. An endpoint enables you
to create a private connection between your VPC and the service. The
service may be provided by AWS, an AWS Marketplace Partner, or another
AWS account. For more information, see VPC Endpoints
(https://docs.aws.amazon.com/vpc/latest/userguide/vpc-endpoints.html)
in the I<Amazon Virtual Private Cloud User Guide>.

A C<gateway> endpoint serves as a target for a route in your route
table for traffic destined for the AWS service. You can specify an
endpoint policy to attach to the endpoint, which will control access to
the service from your VPC. You can also specify the VPC route tables
that use the endpoint.

An C<interface> endpoint is a network interface in your subnet that
serves as an endpoint for communicating with the specified service. You
can specify the subnets in which to create an endpoint, and the
security groups to associate with the endpoint network interface.

A C<GatewayLoadBalancer> endpoint is a network interface in your subnet
that serves an endpoint for communicating with a Gateway Load Balancer
that you've configured as a VPC endpoint service.

Use DescribeVpcEndpointServices to get a list of supported services.


=head2 CreateVpcEndpointConnectionNotification

=over

=item ConnectionEvents => ArrayRef[Str|Undef]

=item ConnectionNotificationArn => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [ServiceId => Str]

=item [VpcEndpointId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateVpcEndpointConnectionNotification>

Returns: a L<Paws::EC2::CreateVpcEndpointConnectionNotificationResult> instance

Creates a connection notification for a specified VPC endpoint or VPC
endpoint service. A connection notification notifies you of specific
endpoint events. You must create an SNS topic to receive notifications.
For more information, see Create a Topic
(https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html) in the
I<Amazon Simple Notification Service Developer Guide>.

You can create a connection notification for interface endpoints only.


=head2 CreateVpcEndpointServiceConfiguration

=over

=item [AcceptanceRequired => Bool]

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [GatewayLoadBalancerArns => ArrayRef[Str|Undef]]

=item [NetworkLoadBalancerArns => ArrayRef[Str|Undef]]

=item [PrivateDnsName => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateVpcEndpointServiceConfiguration>

Returns: a L<Paws::EC2::CreateVpcEndpointServiceConfigurationResult> instance

Creates a VPC endpoint service configuration to which service consumers
(AWS accounts, IAM users, and IAM roles) can connect.

To create an endpoint service configuration, you must first create one
of the following for your service:

=over

=item *

A Network Load Balancer
(https://docs.aws.amazon.com/elasticloadbalancing/latest/network/introduction.html).
Service consumers connect to your service using an interface endpoint.

=item *

A Gateway Load Balancer
(https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/introduction.html).
Service consumers connect to your service using a Gateway Load Balancer
endpoint.

=back

For more information, see VPC Endpoint Services
(https://docs.aws.amazon.com/vpc/latest/userguide/endpoint-service.html)
in the I<Amazon Virtual Private Cloud User Guide>.

If you set the private DNS name, you must prove that you own the
private DNS domain name. For more information, see VPC Endpoint Service
Private DNS Name Verification
(https://docs.aws.amazon.com/vpc/latest/userguide/endpoint-services-dns-validation.html)
in the I<Amazon Virtual Private Cloud User Guide>.


=head2 CreateVpcPeeringConnection

=over

=item [DryRun => Bool]

=item [PeerOwnerId => Str]

=item [PeerRegion => Str]

=item [PeerVpcId => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [VpcId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateVpcPeeringConnection>

Returns: a L<Paws::EC2::CreateVpcPeeringConnectionResult> instance

Requests a VPC peering connection between two VPCs: a requester VPC
that you own and an accepter VPC with which to create the connection.
The accepter VPC can belong to another AWS account and can be in a
different Region to the requester VPC. The requester VPC and accepter
VPC cannot have overlapping CIDR blocks.

Limitations and rules apply to a VPC peering connection. For more
information, see the limitations
(https://docs.aws.amazon.com/vpc/latest/peering/vpc-peering-basics.html#vpc-peering-limitations)
section in the I<VPC Peering Guide>.

The owner of the accepter VPC must accept the peering request to
activate the peering connection. The VPC peering connection request
expires after 7 days, after which it cannot be accepted or rejected.

If you create a VPC peering connection request between VPCs with
overlapping CIDR blocks, the VPC peering connection has a status of
C<failed>.


=head2 CreateVpnConnection

=over

=item CustomerGatewayId => Str

=item Type => Str

=item [DryRun => Bool]

=item [Options => L<Paws::EC2::VpnConnectionOptionsSpecification>]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [TransitGatewayId => Str]

=item [VpnGatewayId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::CreateVpnConnection>

Returns: a L<Paws::EC2::CreateVpnConnectionResult> instance

Creates a VPN connection between an existing virtual private gateway or
transit gateway and a customer gateway. The supported connection type
is C<ipsec.1>.

The response includes information that you need to give to your network
administrator to configure your customer gateway.

We strongly recommend that you use HTTPS when calling this operation
because the response contains sensitive cryptographic information for
configuring your customer gateway device.

If you decide to shut down your VPN connection for any reason and later
create a new VPN connection, you must reconfigure your customer gateway
with the new information returned from this call.

This is an idempotent operation. If you perform the operation more than
once, Amazon EC2 doesn't return an error.

For more information, see AWS Site-to-Site VPN
(https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the
I<AWS Site-to-Site VPN User Guide>.


=head2 CreateVpnConnectionRoute

=over

=item DestinationCidrBlock => Str

=item VpnConnectionId => Str


=back

Each argument is described in detail in: L<Paws::EC2::CreateVpnConnectionRoute>

Returns: nothing

Creates a static route associated with a VPN connection between an
existing virtual private gateway and a VPN customer gateway. The static
route allows traffic to be routed from the virtual private gateway to
the VPN customer gateway.

For more information, see AWS Site-to-Site VPN
(https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the
I<AWS Site-to-Site VPN User Guide>.


=head2 CreateVpnGateway

=over

=item Type => Str

=item [AmazonSideAsn => Int]

=item [AvailabilityZone => Str]

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::CreateVpnGateway>

Returns: a L<Paws::EC2::CreateVpnGatewayResult> instance

Creates a virtual private gateway. A virtual private gateway is the
endpoint on the VPC side of your VPN connection. You can create a
virtual private gateway before creating the VPC itself.

For more information, see AWS Site-to-Site VPN
(https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the
I<AWS Site-to-Site VPN User Guide>.


=head2 DeleteCarrierGateway

=over

=item CarrierGatewayId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteCarrierGateway>

Returns: a L<Paws::EC2::DeleteCarrierGatewayResult> instance

Deletes a carrier gateway.

If you do not delete the route that contains the carrier gateway as the
Target, the route is a blackhole route. For information about how to
delete a route, see DeleteRoute
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeleteRoute.html).


=head2 DeleteClientVpnEndpoint

=over

=item ClientVpnEndpointId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteClientVpnEndpoint>

Returns: a L<Paws::EC2::DeleteClientVpnEndpointResult> instance

Deletes the specified Client VPN endpoint. You must disassociate all
target networks before you can delete a Client VPN endpoint.


=head2 DeleteClientVpnRoute

=over

=item ClientVpnEndpointId => Str

=item DestinationCidrBlock => Str

=item [DryRun => Bool]

=item [TargetVpcSubnetId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteClientVpnRoute>

Returns: a L<Paws::EC2::DeleteClientVpnRouteResult> instance

Deletes a route from a Client VPN endpoint. You can only delete routes
that you manually added using the B<CreateClientVpnRoute> action. You
cannot delete routes that were automatically added when associating a
subnet. To remove routes that have been automatically added,
disassociate the target subnet from the Client VPN endpoint.


=head2 DeleteCustomerGateway

=over

=item CustomerGatewayId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteCustomerGateway>

Returns: nothing

Deletes the specified customer gateway. You must delete the VPN
connection before you can delete the customer gateway.


=head2 DeleteDhcpOptions

=over

=item DhcpOptionsId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteDhcpOptions>

Returns: nothing

Deletes the specified set of DHCP options. You must disassociate the
set of DHCP options before you can delete it. You can disassociate the
set of DHCP options by associating either a new set of options or the
default set of options with the VPC.


=head2 DeleteEgressOnlyInternetGateway

=over

=item EgressOnlyInternetGatewayId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteEgressOnlyInternetGateway>

Returns: a L<Paws::EC2::DeleteEgressOnlyInternetGatewayResult> instance

Deletes an egress-only internet gateway.


=head2 DeleteFleets

=over

=item FleetIds => ArrayRef[Str|Undef]

=item TerminateInstances => Bool

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteFleets>

Returns: a L<Paws::EC2::DeleteFleetsResult> instance

Deletes the specified EC2 Fleet.

After you delete an EC2 Fleet, it launches no new instances.

You must specify whether a deleted EC2 Fleet should also terminate its
instances. If you choose to terminate the instances, the EC2 Fleet
enters the C<deleted_terminating> state. Otherwise, the EC2 Fleet
enters the C<deleted_running> state, and the instances continue to run
until they are interrupted or you terminate them manually.

For C<instant> fleets, EC2 Fleet must terminate the instances when the
fleet is deleted. A deleted C<instant> fleet with running instances is
not supported.

B<Restrictions>

=over

=item *

You can delete up to 25 C<instant> fleets in a single request. If you
exceed this number, no C<instant> fleets are deleted and an error is
returned. There is no restriction on the number of fleets of type
C<maintain> or C<request> that can be deleted in a single request.

=item *

Up to 1000 instances can be terminated in a single request to delete
C<instant> fleets.

=back

For more information, see Deleting an EC2 Fleet
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#delete-fleet)
in the I<Amazon EC2 User Guide>.


=head2 DeleteFlowLogs

=over

=item FlowLogIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteFlowLogs>

Returns: a L<Paws::EC2::DeleteFlowLogsResult> instance

Deletes one or more flow logs.


=head2 DeleteFpgaImage

=over

=item FpgaImageId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteFpgaImage>

Returns: a L<Paws::EC2::DeleteFpgaImageResult> instance

Deletes the specified Amazon FPGA Image (AFI).


=head2 DeleteInternetGateway

=over

=item InternetGatewayId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteInternetGateway>

Returns: nothing

Deletes the specified internet gateway. You must detach the internet
gateway from the VPC before you can delete it.


=head2 DeleteKeyPair

=over

=item [DryRun => Bool]

=item [KeyName => Str]

=item [KeyPairId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteKeyPair>

Returns: nothing

Deletes the specified key pair, by removing the public key from Amazon
EC2.


=head2 DeleteLaunchTemplate

=over

=item [DryRun => Bool]

=item [LaunchTemplateId => Str]

=item [LaunchTemplateName => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteLaunchTemplate>

Returns: a L<Paws::EC2::DeleteLaunchTemplateResult> instance

Deletes a launch template. Deleting a launch template deletes all of
its versions.


=head2 DeleteLaunchTemplateVersions

=over

=item Versions => ArrayRef[Str|Undef]

=item [DryRun => Bool]

=item [LaunchTemplateId => Str]

=item [LaunchTemplateName => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteLaunchTemplateVersions>

Returns: a L<Paws::EC2::DeleteLaunchTemplateVersionsResult> instance

Deletes one or more versions of a launch template. You cannot delete
the default version of a launch template; you must first assign a
different version as the default. If the default version is the only
version for the launch template, you must delete the entire launch
template using DeleteLaunchTemplate.


=head2 DeleteLocalGatewayRoute

=over

=item DestinationCidrBlock => Str

=item LocalGatewayRouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteLocalGatewayRoute>

Returns: a L<Paws::EC2::DeleteLocalGatewayRouteResult> instance

Deletes the specified route from the specified local gateway route
table.


=head2 DeleteLocalGatewayRouteTableVpcAssociation

=over

=item LocalGatewayRouteTableVpcAssociationId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteLocalGatewayRouteTableVpcAssociation>

Returns: a L<Paws::EC2::DeleteLocalGatewayRouteTableVpcAssociationResult> instance

Deletes the specified association between a VPC and local gateway route
table.


=head2 DeleteManagedPrefixList

=over

=item PrefixListId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteManagedPrefixList>

Returns: a L<Paws::EC2::DeleteManagedPrefixListResult> instance

Deletes the specified managed prefix list. You must first remove all
references to the prefix list in your resources.


=head2 DeleteNatGateway

=over

=item NatGatewayId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteNatGateway>

Returns: a L<Paws::EC2::DeleteNatGatewayResult> instance

Deletes the specified NAT gateway. Deleting a NAT gateway disassociates
its Elastic IP address, but does not release the address from your
account. Deleting a NAT gateway does not delete any NAT gateway routes
in your route tables.


=head2 DeleteNetworkAcl

=over

=item NetworkAclId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteNetworkAcl>

Returns: nothing

Deletes the specified network ACL. You can't delete the ACL if it's
associated with any subnets. You can't delete the default network ACL.


=head2 DeleteNetworkAclEntry

=over

=item Egress => Bool

=item NetworkAclId => Str

=item RuleNumber => Int

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteNetworkAclEntry>

Returns: nothing

Deletes the specified ingress or egress entry (rule) from the specified
network ACL.


=head2 DeleteNetworkInsightsAnalysis

=over

=item NetworkInsightsAnalysisId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteNetworkInsightsAnalysis>

Returns: a L<Paws::EC2::DeleteNetworkInsightsAnalysisResult> instance

Deletes the specified network insights analysis.


=head2 DeleteNetworkInsightsPath

=over

=item NetworkInsightsPathId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteNetworkInsightsPath>

Returns: a L<Paws::EC2::DeleteNetworkInsightsPathResult> instance

Deletes the specified path.


=head2 DeleteNetworkInterface

=over

=item NetworkInterfaceId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteNetworkInterface>

Returns: nothing

Deletes the specified network interface. You must detach the network
interface before you can delete it.


=head2 DeleteNetworkInterfacePermission

=over

=item NetworkInterfacePermissionId => Str

=item [DryRun => Bool]

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteNetworkInterfacePermission>

Returns: a L<Paws::EC2::DeleteNetworkInterfacePermissionResult> instance

Deletes a permission for a network interface. By default, you cannot
delete the permission if the account for which you're removing the
permission has attached the network interface to an instance. However,
you can force delete the permission, regardless of any attachment.


=head2 DeletePlacementGroup

=over

=item GroupName => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeletePlacementGroup>

Returns: nothing

Deletes the specified placement group. You must terminate all instances
in the placement group before you can delete the placement group. For
more information, see Placement groups
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)
in the I<Amazon EC2 User Guide>.


=head2 DeleteQueuedReservedInstances

=over

=item ReservedInstancesIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteQueuedReservedInstances>

Returns: a L<Paws::EC2::DeleteQueuedReservedInstancesResult> instance

Deletes the queued purchases for the specified Reserved Instances.


=head2 DeleteRoute

=over

=item RouteTableId => Str

=item [DestinationCidrBlock => Str]

=item [DestinationIpv6CidrBlock => Str]

=item [DestinationPrefixListId => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteRoute>

Returns: nothing

Deletes the specified route from the specified route table.


=head2 DeleteRouteTable

=over

=item RouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteRouteTable>

Returns: nothing

Deletes the specified route table. You must disassociate the route
table from any subnets before you can delete it. You can't delete the
main route table.


=head2 DeleteSecurityGroup

=over

=item [DryRun => Bool]

=item [GroupId => Str]

=item [GroupName => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteSecurityGroup>

Returns: nothing

Deletes a security group.

If you attempt to delete a security group that is associated with an
instance, or is referenced by another security group, the operation
fails with C<InvalidGroup.InUse> in EC2-Classic or
C<DependencyViolation> in EC2-VPC.


=head2 DeleteSnapshot

=over

=item SnapshotId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteSnapshot>

Returns: nothing

Deletes the specified snapshot.

When you make periodic snapshots of a volume, the snapshots are
incremental, and only the blocks on the device that have changed since
your last snapshot are saved in the new snapshot. When you delete a
snapshot, only the data not needed for any other snapshot is removed.
So regardless of which prior snapshots have been deleted, all active
snapshots will have access to all the information needed to restore the
volume.

You cannot delete a snapshot of the root device of an EBS volume used
by a registered AMI. You must first de-register the AMI before you can
delete the snapshot.

For more information, see Deleting an Amazon EBS snapshot
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-snapshot.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 DeleteSpotDatafeedSubscription

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteSpotDatafeedSubscription>

Returns: nothing

Deletes the data feed for Spot Instances.


=head2 DeleteSubnet

=over

=item SubnetId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteSubnet>

Returns: nothing

Deletes the specified subnet. You must terminate all running instances
in the subnet before you can delete the subnet.


=head2 DeleteTags

=over

=item Resources => ArrayRef[Str|Undef]

=item [DryRun => Bool]

=item [Tags => ArrayRef[L<Paws::EC2::Tag>]]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTags>

Returns: nothing

Deletes the specified set of tags from the specified set of resources.

To list the current tags, use DescribeTags. For more information about
tags, see Tagging Your Resources
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 DeleteTrafficMirrorFilter

=over

=item TrafficMirrorFilterId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTrafficMirrorFilter>

Returns: a L<Paws::EC2::DeleteTrafficMirrorFilterResult> instance

Deletes the specified Traffic Mirror filter.

You cannot delete a Traffic Mirror filter that is in use by a Traffic
Mirror session.


=head2 DeleteTrafficMirrorFilterRule

=over

=item TrafficMirrorFilterRuleId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTrafficMirrorFilterRule>

Returns: a L<Paws::EC2::DeleteTrafficMirrorFilterRuleResult> instance

Deletes the specified Traffic Mirror rule.


=head2 DeleteTrafficMirrorSession

=over

=item TrafficMirrorSessionId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTrafficMirrorSession>

Returns: a L<Paws::EC2::DeleteTrafficMirrorSessionResult> instance

Deletes the specified Traffic Mirror session.


=head2 DeleteTrafficMirrorTarget

=over

=item TrafficMirrorTargetId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTrafficMirrorTarget>

Returns: a L<Paws::EC2::DeleteTrafficMirrorTargetResult> instance

Deletes the specified Traffic Mirror target.

You cannot delete a Traffic Mirror target that is in use by a Traffic
Mirror session.


=head2 DeleteTransitGateway

=over

=item TransitGatewayId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTransitGateway>

Returns: a L<Paws::EC2::DeleteTransitGatewayResult> instance

Deletes the specified transit gateway.


=head2 DeleteTransitGatewayConnect

=over

=item TransitGatewayAttachmentId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTransitGatewayConnect>

Returns: a L<Paws::EC2::DeleteTransitGatewayConnectResult> instance

Deletes the specified Connect attachment. You must first delete any
Connect peers for the attachment.


=head2 DeleteTransitGatewayConnectPeer

=over

=item TransitGatewayConnectPeerId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTransitGatewayConnectPeer>

Returns: a L<Paws::EC2::DeleteTransitGatewayConnectPeerResult> instance

Deletes the specified Connect peer.


=head2 DeleteTransitGatewayMulticastDomain

=over

=item TransitGatewayMulticastDomainId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTransitGatewayMulticastDomain>

Returns: a L<Paws::EC2::DeleteTransitGatewayMulticastDomainResult> instance

Deletes the specified transit gateway multicast domain.


=head2 DeleteTransitGatewayPeeringAttachment

=over

=item TransitGatewayAttachmentId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTransitGatewayPeeringAttachment>

Returns: a L<Paws::EC2::DeleteTransitGatewayPeeringAttachmentResult> instance

Deletes a transit gateway peering attachment.


=head2 DeleteTransitGatewayPrefixListReference

=over

=item PrefixListId => Str

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTransitGatewayPrefixListReference>

Returns: a L<Paws::EC2::DeleteTransitGatewayPrefixListReferenceResult> instance

Deletes a reference (route) to a prefix list in a specified transit
gateway route table.


=head2 DeleteTransitGatewayRoute

=over

=item DestinationCidrBlock => Str

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTransitGatewayRoute>

Returns: a L<Paws::EC2::DeleteTransitGatewayRouteResult> instance

Deletes the specified route from the specified transit gateway route
table.


=head2 DeleteTransitGatewayRouteTable

=over

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTransitGatewayRouteTable>

Returns: a L<Paws::EC2::DeleteTransitGatewayRouteTableResult> instance

Deletes the specified transit gateway route table. You must
disassociate the route table from any transit gateway route tables
before you can delete it.


=head2 DeleteTransitGatewayVpcAttachment

=over

=item TransitGatewayAttachmentId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteTransitGatewayVpcAttachment>

Returns: a L<Paws::EC2::DeleteTransitGatewayVpcAttachmentResult> instance

Deletes the specified VPC attachment.


=head2 DeleteVolume

=over

=item VolumeId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVolume>

Returns: nothing

Deletes the specified EBS volume. The volume must be in the
C<available> state (not attached to an instance).

The volume can remain in the C<deleting> state for several minutes.

For more information, see Deleting an Amazon EBS volume
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-volume.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 DeleteVpc

=over

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVpc>

Returns: nothing

Deletes the specified VPC. You must detach or delete all gateways and
resources that are associated with the VPC before you can delete it.
For example, you must terminate all instances running in the VPC,
delete all security groups associated with the VPC (except the default
one), delete all route tables associated with the VPC (except the
default one), and so on.


=head2 DeleteVpcEndpointConnectionNotifications

=over

=item ConnectionNotificationIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVpcEndpointConnectionNotifications>

Returns: a L<Paws::EC2::DeleteVpcEndpointConnectionNotificationsResult> instance

Deletes one or more VPC endpoint connection notifications.


=head2 DeleteVpcEndpoints

=over

=item VpcEndpointIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVpcEndpoints>

Returns: a L<Paws::EC2::DeleteVpcEndpointsResult> instance

Deletes one or more specified VPC endpoints. You can delete any of the
following types of VPC endpoints.

=over

=item *

Gateway endpoint,

=item *

Gateway Load Balancer endpoint,

=item *

Interface endpoint

=back

The following rules apply when you delete a VPC endpoint:

=over

=item *

When you delete a gateway endpoint, we delete the endpoint routes in
the route tables that are associated with the endpoint.

=item *

When you delete a Gateway Load Balancer endpoint, we delete the
endpoint network interfaces.

You can only delete Gateway Load Balancer endpoints when the routes
that are associated with the endpoint are deleted.

=item *

When you delete an interface endpoint, we delete the endpoint network
interfaces.

=back



=head2 DeleteVpcEndpointServiceConfigurations

=over

=item ServiceIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVpcEndpointServiceConfigurations>

Returns: a L<Paws::EC2::DeleteVpcEndpointServiceConfigurationsResult> instance

Deletes one or more VPC endpoint service configurations in your
account. Before you delete the endpoint service configuration, you must
reject any C<Available> or C<PendingAcceptance> interface endpoint
connections that are attached to the service.


=head2 DeleteVpcPeeringConnection

=over

=item VpcPeeringConnectionId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVpcPeeringConnection>

Returns: a L<Paws::EC2::DeleteVpcPeeringConnectionResult> instance

Deletes a VPC peering connection. Either the owner of the requester VPC
or the owner of the accepter VPC can delete the VPC peering connection
if it's in the C<active> state. The owner of the requester VPC can
delete a VPC peering connection in the C<pending-acceptance> state. You
cannot delete a VPC peering connection that's in the C<failed> state.


=head2 DeleteVpnConnection

=over

=item VpnConnectionId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVpnConnection>

Returns: nothing

Deletes the specified VPN connection.

If you're deleting the VPC and its associated components, we recommend
that you detach the virtual private gateway from the VPC and delete the
VPC before deleting the VPN connection. If you believe that the tunnel
credentials for your VPN connection have been compromised, you can
delete the VPN connection and create a new one that has new keys,
without needing to delete the VPC or virtual private gateway. If you
create a new VPN connection, you must reconfigure the customer gateway
device using the new configuration information returned with the new
VPN connection ID.

For certificate-based authentication, delete all AWS Certificate
Manager (ACM) private certificates used for the AWS-side tunnel
endpoints for the VPN connection before deleting the VPN connection.


=head2 DeleteVpnConnectionRoute

=over

=item DestinationCidrBlock => Str

=item VpnConnectionId => Str


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVpnConnectionRoute>

Returns: nothing

Deletes the specified static route associated with a VPN connection
between an existing virtual private gateway and a VPN customer gateway.
The static route allows traffic to be routed from the virtual private
gateway to the VPN customer gateway.


=head2 DeleteVpnGateway

=over

=item VpnGatewayId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeleteVpnGateway>

Returns: nothing

Deletes the specified virtual private gateway. You must first detach
the virtual private gateway from the VPC. Note that you don't need to
delete the virtual private gateway if you plan to delete and recreate
the VPN connection between your VPC and your network.


=head2 DeprovisionByoipCidr

=over

=item Cidr => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeprovisionByoipCidr>

Returns: a L<Paws::EC2::DeprovisionByoipCidrResult> instance

Releases the specified address range that you provisioned for use with
your AWS resources through bring your own IP addresses (BYOIP) and
deletes the corresponding address pool.

Before you can release an address range, you must stop advertising it
using WithdrawByoipCidr and you must not have any IP addresses
allocated from its address range.


=head2 DeregisterImage

=over

=item ImageId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DeregisterImage>

Returns: nothing

Deregisters the specified AMI. After you deregister an AMI, it can't be
used to launch new instances; however, it doesn't affect any instances
that you've already launched from the AMI. You'll continue to incur
usage costs for those instances until you terminate them.

When you deregister an Amazon EBS-backed AMI, it doesn't affect the
snapshot that was created for the root volume of the instance during
the AMI creation process. When you deregister an instance store-backed
AMI, it doesn't affect the files that you uploaded to Amazon S3 when
you created the AMI.


=head2 DeregisterInstanceEventNotificationAttributes

=over

=item [DryRun => Bool]

=item [InstanceTagAttribute => L<Paws::EC2::DeregisterInstanceTagAttributeRequest>]


=back

Each argument is described in detail in: L<Paws::EC2::DeregisterInstanceEventNotificationAttributes>

Returns: a L<Paws::EC2::DeregisterInstanceEventNotificationAttributesResult> instance

Deregisters tag keys to prevent tags that have the specified tag keys
from being included in scheduled event notifications for resources in
the Region.


=head2 DeregisterTransitGatewayMulticastGroupMembers

=over

=item [DryRun => Bool]

=item [GroupIpAddress => Str]

=item [NetworkInterfaceIds => ArrayRef[Str|Undef]]

=item [TransitGatewayMulticastDomainId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DeregisterTransitGatewayMulticastGroupMembers>

Returns: a L<Paws::EC2::DeregisterTransitGatewayMulticastGroupMembersResult> instance

Deregisters the specified members (network interfaces) from the transit
gateway multicast group.


=head2 DeregisterTransitGatewayMulticastGroupSources

=over

=item [DryRun => Bool]

=item [GroupIpAddress => Str]

=item [NetworkInterfaceIds => ArrayRef[Str|Undef]]

=item [TransitGatewayMulticastDomainId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DeregisterTransitGatewayMulticastGroupSources>

Returns: a L<Paws::EC2::DeregisterTransitGatewayMulticastGroupSourcesResult> instance

Deregisters the specified sources (network interfaces) from the transit
gateway multicast group.


=head2 DescribeAccountAttributes

=over

=item [AttributeNames => ArrayRef[Str|Undef]]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeAccountAttributes>

Returns: a L<Paws::EC2::DescribeAccountAttributesResult> instance

Describes attributes of your AWS account. The following are the
supported account attributes:

=over

=item *

C<supported-platforms>: Indicates whether your account can launch
instances into EC2-Classic and EC2-VPC, or only into EC2-VPC.

=item *

C<default-vpc>: The ID of the default VPC for your account, or C<none>.

=item *

C<max-instances>: This attribute is no longer supported. The returned
value does not reflect your actual vCPU limit for running On-Demand
Instances. For more information, see On-Demand Instance Limits
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-on-demand-instances.html#ec2-on-demand-instances-limits)
in the I<Amazon Elastic Compute Cloud User Guide>.

=item *

C<vpc-max-security-groups-per-interface>: The maximum number of
security groups that you can assign to a network interface.

=item *

C<max-elastic-ips>: The maximum number of Elastic IP addresses that you
can allocate for use with EC2-Classic.

=item *

C<vpc-max-elastic-ips>: The maximum number of Elastic IP addresses that
you can allocate for use with EC2-VPC.

=back



=head2 DescribeAddresses

=over

=item [AllocationIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [PublicIps => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeAddresses>

Returns: a L<Paws::EC2::DescribeAddressesResult> instance

Describes the specified Elastic IP addresses or all of your Elastic IP
addresses.

An Elastic IP address is for use in either the EC2-Classic platform or
in a VPC. For more information, see Elastic IP Addresses
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 DescribeAddressesAttribute

=over

=item [AllocationIds => ArrayRef[Str|Undef]]

=item [Attribute => Str]

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeAddressesAttribute>

Returns: a L<Paws::EC2::DescribeAddressesAttributeResult> instance

Describes the attributes of the specified Elastic IP addresses. For
requirements, see Using reverse DNS for email applications
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html#Using_Elastic_Addressing_Reverse_DNS).


=head2 DescribeAggregateIdFormat

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeAggregateIdFormat>

Returns: a L<Paws::EC2::DescribeAggregateIdFormatResult> instance

Describes the longer ID format settings for all resource types in a
specific Region. This request is useful for performing a quick audit to
determine whether a specific Region is fully opted in for longer IDs
(17-character IDs).

This request only returns information about resource types that support
longer IDs.

The following resource types support longer IDs: C<bundle> |
C<conversion-task> | C<customer-gateway> | C<dhcp-options> |
C<elastic-ip-allocation> | C<elastic-ip-association> | C<export-task> |
C<flow-log> | C<image> | C<import-task> | C<instance> |
C<internet-gateway> | C<network-acl> | C<network-acl-association> |
C<network-interface> | C<network-interface-attachment> | C<prefix-list>
| C<reservation> | C<route-table> | C<route-table-association> |
C<security-group> | C<snapshot> | C<subnet> |
C<subnet-cidr-block-association> | C<volume> | C<vpc> |
C<vpc-cidr-block-association> | C<vpc-endpoint> |
C<vpc-peering-connection> | C<vpn-connection> | C<vpn-gateway>.


=head2 DescribeAvailabilityZones

=over

=item [AllAvailabilityZones => Bool]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [ZoneIds => ArrayRef[Str|Undef]]

=item [ZoneNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeAvailabilityZones>

Returns: a L<Paws::EC2::DescribeAvailabilityZonesResult> instance

Describes the Availability Zones, Local Zones, and Wavelength Zones
that are available to you. If there is an event impacting a zone, you
can use this request to view the state and any provided messages for
that zone.

For more information about Availability Zones, Local Zones, and
Wavelength Zones, see Regions, Zones and Outposts
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 DescribeBundleTasks

=over

=item [BundleIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeBundleTasks>

Returns: a L<Paws::EC2::DescribeBundleTasksResult> instance

Describes the specified bundle tasks or all of your bundle tasks.

Completed bundle tasks are listed for only a limited time. If your
bundle task is no longer in the list, you can still register an AMI
from it. Just use C<RegisterImage> with the Amazon S3 bucket name and
image manifest name you provided to the bundle task.


=head2 DescribeByoipCidrs

=over

=item MaxResults => Int

=item [DryRun => Bool]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeByoipCidrs>

Returns: a L<Paws::EC2::DescribeByoipCidrsResult> instance

Describes the IP address ranges that were specified in calls to
ProvisionByoipCidr.

To describe the address pools that were created when you provisioned
the address ranges, use DescribePublicIpv4Pools or DescribeIpv6Pools.


=head2 DescribeCapacityReservations

=over

=item [CapacityReservationIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeCapacityReservations>

Returns: a L<Paws::EC2::DescribeCapacityReservationsResult> instance

Describes one or more of your Capacity Reservations. The results
describe only the Capacity Reservations in the AWS Region that you're
currently using.


=head2 DescribeCarrierGateways

=over

=item [CarrierGatewayIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeCarrierGateways>

Returns: a L<Paws::EC2::DescribeCarrierGatewaysResult> instance

Describes one or more of your carrier gateways.


=head2 DescribeClassicLinkInstances

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [InstanceIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeClassicLinkInstances>

Returns: a L<Paws::EC2::DescribeClassicLinkInstancesResult> instance

Describes one or more of your linked EC2-Classic instances. This
request only returns information about EC2-Classic instances linked to
a VPC through ClassicLink. You cannot use this request to return
information about other instances.


=head2 DescribeClientVpnAuthorizationRules

=over

=item ClientVpnEndpointId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeClientVpnAuthorizationRules>

Returns: a L<Paws::EC2::DescribeClientVpnAuthorizationRulesResult> instance

Describes the authorization rules for a specified Client VPN endpoint.


=head2 DescribeClientVpnConnections

=over

=item ClientVpnEndpointId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeClientVpnConnections>

Returns: a L<Paws::EC2::DescribeClientVpnConnectionsResult> instance

Describes active client connections and connections that have been
terminated within the last 60 minutes for the specified Client VPN
endpoint.


=head2 DescribeClientVpnEndpoints

=over

=item [ClientVpnEndpointIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeClientVpnEndpoints>

Returns: a L<Paws::EC2::DescribeClientVpnEndpointsResult> instance

Describes one or more Client VPN endpoints in the account.


=head2 DescribeClientVpnRoutes

=over

=item ClientVpnEndpointId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeClientVpnRoutes>

Returns: a L<Paws::EC2::DescribeClientVpnRoutesResult> instance

Describes the routes for the specified Client VPN endpoint.


=head2 DescribeClientVpnTargetNetworks

=over

=item ClientVpnEndpointId => Str

=item [AssociationIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeClientVpnTargetNetworks>

Returns: a L<Paws::EC2::DescribeClientVpnTargetNetworksResult> instance

Describes the target networks associated with the specified Client VPN
endpoint.


=head2 DescribeCoipPools

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PoolIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeCoipPools>

Returns: a L<Paws::EC2::DescribeCoipPoolsResult> instance

Describes the specified customer-owned address pools or all of your
customer-owned address pools.


=head2 DescribeConversionTasks

=over

=item [ConversionTaskIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeConversionTasks>

Returns: a L<Paws::EC2::DescribeConversionTasksResult> instance

Describes the specified conversion tasks or all your conversion tasks.
For more information, see the VM Import/Export User Guide
(https://docs.aws.amazon.com/vm-import/latest/userguide/).

For information about the import manifest referenced by this API
action, see VM Import Manifest
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).


=head2 DescribeCustomerGateways

=over

=item [CustomerGatewayIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeCustomerGateways>

Returns: a L<Paws::EC2::DescribeCustomerGatewaysResult> instance

Describes one or more of your VPN customer gateways.

For more information, see AWS Site-to-Site VPN
(https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the
I<AWS Site-to-Site VPN User Guide>.


=head2 DescribeDhcpOptions

=over

=item [DhcpOptionsIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeDhcpOptions>

Returns: a L<Paws::EC2::DescribeDhcpOptionsResult> instance

Describes one or more of your DHCP options sets.

For more information, see DHCP Options Sets
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html)
in the I<Amazon Virtual Private Cloud User Guide>.


=head2 DescribeEgressOnlyInternetGateways

=over

=item [DryRun => Bool]

=item [EgressOnlyInternetGatewayIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeEgressOnlyInternetGateways>

Returns: a L<Paws::EC2::DescribeEgressOnlyInternetGatewaysResult> instance

Describes one or more of your egress-only internet gateways.


=head2 DescribeElasticGpus

=over

=item [DryRun => Bool]

=item [ElasticGpuIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeElasticGpus>

Returns: a L<Paws::EC2::DescribeElasticGpusResult> instance

Describes the Elastic Graphics accelerator associated with your
instances. For more information about Elastic Graphics, see Amazon
Elastic Graphics
(https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html).


=head2 DescribeExportImageTasks

=over

=item [DryRun => Bool]

=item [ExportImageTaskIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeExportImageTasks>

Returns: a L<Paws::EC2::DescribeExportImageTasksResult> instance

Describes the specified export image tasks or all of your export image
tasks.


=head2 DescribeExportTasks

=over

=item [ExportTaskIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeExportTasks>

Returns: a L<Paws::EC2::DescribeExportTasksResult> instance

Describes the specified export instance tasks or all of your export
instance tasks.


=head2 DescribeFastSnapshotRestores

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeFastSnapshotRestores>

Returns: a L<Paws::EC2::DescribeFastSnapshotRestoresResult> instance

Describes the state of fast snapshot restores for your snapshots.


=head2 DescribeFleetHistory

=over

=item FleetId => Str

=item StartTime => Str

=item [DryRun => Bool]

=item [EventType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeFleetHistory>

Returns: a L<Paws::EC2::DescribeFleetHistoryResult> instance

Describes the events for the specified EC2 Fleet during the specified
time.

EC2 Fleet events are delayed by up to 30 seconds before they can be
described. This ensures that you can query by the last evaluated time
and not miss a recorded event. EC2 Fleet events are available for 48
hours.

For more information, see Monitoring your EC2 Fleet
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet.html#monitor-ec2-fleet)
in the I<Amazon EC2 User Guide>.


=head2 DescribeFleetInstances

=over

=item FleetId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeFleetInstances>

Returns: a L<Paws::EC2::DescribeFleetInstancesResult> instance

Describes the running instances for the specified EC2 Fleet.

For more information, see Monitoring your EC2 Fleet
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet.html#monitor-ec2-fleet)
in the I<Amazon EC2 User Guide>.


=head2 DescribeFleets

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [FleetIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeFleets>

Returns: a L<Paws::EC2::DescribeFleetsResult> instance

Describes the specified EC2 Fleets or all of your EC2 Fleets.

For more information, see Monitoring your EC2 Fleet
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet.html#monitor-ec2-fleet)
in the I<Amazon EC2 User Guide>.


=head2 DescribeFlowLogs

=over

=item [DryRun => Bool]

=item [Filter => ArrayRef[L<Paws::EC2::Filter>]]

=item [FlowLogIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeFlowLogs>

Returns: a L<Paws::EC2::DescribeFlowLogsResult> instance

Describes one or more flow logs. To view the information in your flow
logs (the log streams for the network interfaces), you must use the
CloudWatch Logs console or the CloudWatch Logs API.


=head2 DescribeFpgaImageAttribute

=over

=item Attribute => Str

=item FpgaImageId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeFpgaImageAttribute>

Returns: a L<Paws::EC2::DescribeFpgaImageAttributeResult> instance

Describes the specified attribute of the specified Amazon FPGA Image
(AFI).


=head2 DescribeFpgaImages

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [FpgaImageIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Owners => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeFpgaImages>

Returns: a L<Paws::EC2::DescribeFpgaImagesResult> instance

Describes the Amazon FPGA Images (AFIs) available to you. These include
public AFIs, private AFIs that you own, and AFIs owned by other AWS
accounts for which you have load permissions.


=head2 DescribeHostReservationOfferings

=over

=item [Filter => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxDuration => Int]

=item [MaxResults => Int]

=item [MinDuration => Int]

=item [NextToken => Str]

=item [OfferingId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeHostReservationOfferings>

Returns: a L<Paws::EC2::DescribeHostReservationOfferingsResult> instance

Describes the Dedicated Host reservations that are available to
purchase.

The results describe all of the Dedicated Host reservation offerings,
including offerings that might not match the instance family and Region
of your Dedicated Hosts. When purchasing an offering, ensure that the
instance family and Region of the offering matches that of the
Dedicated Hosts with which it is to be associated. For more information
about supported instance types, see Dedicated Hosts
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html)
in the I<Amazon EC2 User Guide>.


=head2 DescribeHostReservations

=over

=item [Filter => ArrayRef[L<Paws::EC2::Filter>]]

=item [HostReservationIdSet => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeHostReservations>

Returns: a L<Paws::EC2::DescribeHostReservationsResult> instance

Describes reservations that are associated with Dedicated Hosts in your
account.


=head2 DescribeHosts

=over

=item [Filter => ArrayRef[L<Paws::EC2::Filter>]]

=item [HostIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeHosts>

Returns: a L<Paws::EC2::DescribeHostsResult> instance

Describes the specified Dedicated Hosts or all your Dedicated Hosts.

The results describe only the Dedicated Hosts in the Region you're
currently using. All listed instances consume capacity on your
Dedicated Host. Dedicated Hosts that have recently been released are
listed with the state C<released>.


=head2 DescribeIamInstanceProfileAssociations

=over

=item [AssociationIds => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeIamInstanceProfileAssociations>

Returns: a L<Paws::EC2::DescribeIamInstanceProfileAssociationsResult> instance

Describes your IAM instance profile associations.


=head2 DescribeIdentityIdFormat

=over

=item PrincipalArn => Str

=item [Resource => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeIdentityIdFormat>

Returns: a L<Paws::EC2::DescribeIdentityIdFormatResult> instance

Describes the ID format settings for resources for the specified IAM
user, IAM role, or root user. For example, you can view the resource
types that are enabled for longer IDs. This request only returns
information about resource types whose ID formats can be modified; it
does not return information about other resource types. For more
information, see Resource IDs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

The following resource types support longer IDs: C<bundle> |
C<conversion-task> | C<customer-gateway> | C<dhcp-options> |
C<elastic-ip-allocation> | C<elastic-ip-association> | C<export-task> |
C<flow-log> | C<image> | C<import-task> | C<instance> |
C<internet-gateway> | C<network-acl> | C<network-acl-association> |
C<network-interface> | C<network-interface-attachment> | C<prefix-list>
| C<reservation> | C<route-table> | C<route-table-association> |
C<security-group> | C<snapshot> | C<subnet> |
C<subnet-cidr-block-association> | C<volume> | C<vpc> |
C<vpc-cidr-block-association> | C<vpc-endpoint> |
C<vpc-peering-connection> | C<vpn-connection> | C<vpn-gateway>.

These settings apply to the principal specified in the request. They do
not apply to the principal that makes the request.


=head2 DescribeIdFormat

=over

=item [Resource => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeIdFormat>

Returns: a L<Paws::EC2::DescribeIdFormatResult> instance

Describes the ID format settings for your resources on a per-Region
basis, for example, to view which resource types are enabled for longer
IDs. This request only returns information about resource types whose
ID formats can be modified; it does not return information about other
resource types.

The following resource types support longer IDs: C<bundle> |
C<conversion-task> | C<customer-gateway> | C<dhcp-options> |
C<elastic-ip-allocation> | C<elastic-ip-association> | C<export-task> |
C<flow-log> | C<image> | C<import-task> | C<instance> |
C<internet-gateway> | C<network-acl> | C<network-acl-association> |
C<network-interface> | C<network-interface-attachment> | C<prefix-list>
| C<reservation> | C<route-table> | C<route-table-association> |
C<security-group> | C<snapshot> | C<subnet> |
C<subnet-cidr-block-association> | C<volume> | C<vpc> |
C<vpc-cidr-block-association> | C<vpc-endpoint> |
C<vpc-peering-connection> | C<vpn-connection> | C<vpn-gateway>.

These settings apply to the IAM user who makes the request; they do not
apply to the entire AWS account. By default, an IAM user defaults to
the same settings as the root user, unless they explicitly override the
settings by running the ModifyIdFormat command. Resources created with
longer IDs are visible to all IAM users, regardless of these settings
and provided that they have permission to use the relevant C<Describe>
command for the resource type.


=head2 DescribeImageAttribute

=over

=item Attribute => Str

=item ImageId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeImageAttribute>

Returns: a L<Paws::EC2::ImageAttribute> instance

Describes the specified attribute of the specified AMI. You can specify
only one attribute at a time.


=head2 DescribeImages

=over

=item [DryRun => Bool]

=item [ExecutableUsers => ArrayRef[Str|Undef]]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [ImageIds => ArrayRef[Str|Undef]]

=item [Owners => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeImages>

Returns: a L<Paws::EC2::DescribeImagesResult> instance

Describes the specified images (AMIs, AKIs, and ARIs) available to you
or all of the images available to you.

The images available to you include public images, private images that
you own, and private images owned by other AWS accounts for which you
have explicit launch permissions.

Recently deregistered images appear in the returned results for a short
interval and then return empty results. After all instances that
reference a deregistered AMI are terminated, specifying the ID of the
image results in an error indicating that the AMI ID cannot be found.


=head2 DescribeImportImageTasks

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [ImportTaskIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeImportImageTasks>

Returns: a L<Paws::EC2::DescribeImportImageTasksResult> instance

Displays details about an import virtual machine or import snapshot
tasks that are already created.


=head2 DescribeImportSnapshotTasks

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [ImportTaskIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeImportSnapshotTasks>

Returns: a L<Paws::EC2::DescribeImportSnapshotTasksResult> instance

Describes your import snapshot tasks.


=head2 DescribeInstanceAttribute

=over

=item Attribute => Str

=item InstanceId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeInstanceAttribute>

Returns: a L<Paws::EC2::InstanceAttribute> instance

Describes the specified attribute of the specified instance. You can
specify only one attribute at a time. Valid attribute values are:
C<instanceType> | C<kernel> | C<ramdisk> | C<userData> |
C<disableApiTermination> | C<instanceInitiatedShutdownBehavior> |
C<rootDeviceName> | C<blockDeviceMapping> | C<productCodes> |
C<sourceDestCheck> | C<groupSet> | C<ebsOptimized> | C<sriovNetSupport>


=head2 DescribeInstanceCreditSpecifications

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [InstanceIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeInstanceCreditSpecifications>

Returns: a L<Paws::EC2::DescribeInstanceCreditSpecificationsResult> instance

Describes the credit option for CPU usage of the specified burstable
performance instances. The credit options are C<standard> and
C<unlimited>.

If you do not specify an instance ID, Amazon EC2 returns burstable
performance instances with the C<unlimited> credit option, as well as
instances that were previously configured as T2, T3, and T3a with the
C<unlimited> credit option. For example, if you resize a T2 instance,
while it is configured as C<unlimited>, to an M4 instance, Amazon EC2
returns the M4 instance.

If you specify one or more instance IDs, Amazon EC2 returns the credit
option (C<standard> or C<unlimited>) of those instances. If you specify
an instance ID that is not valid, such as an instance that is not a
burstable performance instance, an error is returned.

Recently terminated instances might appear in the returned results.
This interval is usually less than one hour.

If an Availability Zone is experiencing a service disruption and you
specify instance IDs in the affected zone, or do not specify any
instance IDs at all, the call fails. If you specify only instance IDs
in an unaffected zone, the call works normally.

For more information, see Burstable performance instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html)
in the I<Amazon EC2 User Guide>.


=head2 DescribeInstanceEventNotificationAttributes

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeInstanceEventNotificationAttributes>

Returns: a L<Paws::EC2::DescribeInstanceEventNotificationAttributesResult> instance

Describes the tag keys that are registered to appear in scheduled event
notifications for resources in the current Region.


=head2 DescribeInstances

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [InstanceIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeInstances>

Returns: a L<Paws::EC2::DescribeInstancesResult> instance

Describes the specified instances or all instances.

If you specify instance IDs, the output includes information for only
the specified instances. If you specify filters, the output includes
information for only those instances that meet the filter criteria. If
you do not specify instance IDs or filters, the output includes
information for all instances, which can affect performance. We
recommend that you use pagination to ensure that the operation returns
quickly and successfully.

If you specify an instance ID that is not valid, an error is returned.
If you specify an instance that you do not own, it is not included in
the output.

Recently terminated instances might appear in the returned results.
This interval is usually less than one hour.

If you describe instances in the rare case where an Availability Zone
is experiencing a service disruption and you specify instance IDs that
are in the affected zone, or do not specify any instance IDs at all,
the call fails. If you describe instances and specify only instance IDs
that are in an unaffected zone, the call works normally.


=head2 DescribeInstanceStatus

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [IncludeAllInstances => Bool]

=item [InstanceIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeInstanceStatus>

Returns: a L<Paws::EC2::DescribeInstanceStatusResult> instance

Describes the status of the specified instances or all of your
instances. By default, only running instances are described, unless you
specifically indicate to return the status of all instances.

Instance status includes the following components:

=over

=item *

B<Status checks> - Amazon EC2 performs status checks on running EC2
instances to identify hardware and software issues. For more
information, see Status checks for your instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-system-instance-status-check.html)
and Troubleshooting instances with failed status checks
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstances.html)
in the I<Amazon EC2 User Guide>.

=item *

B<Scheduled events> - Amazon EC2 can schedule events (such as reboot,
stop, or terminate) for your instances related to hardware issues,
software updates, or system maintenance. For more information, see
Scheduled events for your instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-instances-status-check_sched.html)
in the I<Amazon EC2 User Guide>.

=item *

B<Instance state> - You can manage your instances from the moment you
launch them through their termination. For more information, see
Instance lifecycle
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html)
in the I<Amazon EC2 User Guide>.

=back



=head2 DescribeInstanceTypeOfferings

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [LocationType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeInstanceTypeOfferings>

Returns: a L<Paws::EC2::DescribeInstanceTypeOfferingsResult> instance

Returns a list of all instance types offered. The results can be
filtered by location (Region or Availability Zone). If no location is
specified, the instance types offered in the current Region are
returned.


=head2 DescribeInstanceTypes

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [InstanceTypes => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeInstanceTypes>

Returns: a L<Paws::EC2::DescribeInstanceTypesResult> instance

Describes the details of the instance types that are offered in a
location. The results can be filtered by the attributes of the instance
types.


=head2 DescribeInternetGateways

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [InternetGatewayIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeInternetGateways>

Returns: a L<Paws::EC2::DescribeInternetGatewaysResult> instance

Describes one or more of your internet gateways.


=head2 DescribeIpv6Pools

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PoolIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeIpv6Pools>

Returns: a L<Paws::EC2::DescribeIpv6PoolsResult> instance

Describes your IPv6 address pools.


=head2 DescribeKeyPairs

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [KeyNames => ArrayRef[Str|Undef]]

=item [KeyPairIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeKeyPairs>

Returns: a L<Paws::EC2::DescribeKeyPairsResult> instance

Describes the specified key pairs or all of your key pairs.

For more information about key pairs, see Key Pairs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 DescribeLaunchTemplates

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [LaunchTemplateIds => ArrayRef[Str|Undef]]

=item [LaunchTemplateNames => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeLaunchTemplates>

Returns: a L<Paws::EC2::DescribeLaunchTemplatesResult> instance

Describes one or more launch templates.


=head2 DescribeLaunchTemplateVersions

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [LaunchTemplateId => Str]

=item [LaunchTemplateName => Str]

=item [MaxResults => Int]

=item [MaxVersion => Str]

=item [MinVersion => Str]

=item [NextToken => Str]

=item [Versions => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeLaunchTemplateVersions>

Returns: a L<Paws::EC2::DescribeLaunchTemplateVersionsResult> instance

Describes one or more versions of a specified launch template. You can
describe all versions, individual versions, or a range of versions. You
can also describe all the latest versions or all the default versions
of all the launch templates in your account.


=head2 DescribeLocalGatewayRouteTables

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [LocalGatewayRouteTableIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeLocalGatewayRouteTables>

Returns: a L<Paws::EC2::DescribeLocalGatewayRouteTablesResult> instance

Describes one or more local gateway route tables. By default, all local
gateway route tables are described. Alternatively, you can filter the
results.


=head2 DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [LocalGatewayRouteTableVirtualInterfaceGroupAssociationIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations>

Returns: a L<Paws::EC2::DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult> instance

Describes the associations between virtual interface groups and local
gateway route tables.


=head2 DescribeLocalGatewayRouteTableVpcAssociations

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [LocalGatewayRouteTableVpcAssociationIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeLocalGatewayRouteTableVpcAssociations>

Returns: a L<Paws::EC2::DescribeLocalGatewayRouteTableVpcAssociationsResult> instance

Describes the specified associations between VPCs and local gateway
route tables.


=head2 DescribeLocalGateways

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [LocalGatewayIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeLocalGateways>

Returns: a L<Paws::EC2::DescribeLocalGatewaysResult> instance

Describes one or more local gateways. By default, all local gateways
are described. Alternatively, you can filter the results.


=head2 DescribeLocalGatewayVirtualInterfaceGroups

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [LocalGatewayVirtualInterfaceGroupIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeLocalGatewayVirtualInterfaceGroups>

Returns: a L<Paws::EC2::DescribeLocalGatewayVirtualInterfaceGroupsResult> instance

Describes the specified local gateway virtual interface groups.


=head2 DescribeLocalGatewayVirtualInterfaces

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [LocalGatewayVirtualInterfaceIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeLocalGatewayVirtualInterfaces>

Returns: a L<Paws::EC2::DescribeLocalGatewayVirtualInterfacesResult> instance

Describes the specified local gateway virtual interfaces.


=head2 DescribeManagedPrefixLists

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PrefixListIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeManagedPrefixLists>

Returns: a L<Paws::EC2::DescribeManagedPrefixListsResult> instance

Describes your managed prefix lists and any AWS-managed prefix lists.

To view the entries for your prefix list, use
GetManagedPrefixListEntries.


=head2 DescribeMovingAddresses

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PublicIps => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeMovingAddresses>

Returns: a L<Paws::EC2::DescribeMovingAddressesResult> instance

Describes your Elastic IP addresses that are being moved to the EC2-VPC
platform, or that are being restored to the EC2-Classic platform. This
request does not return information about any other Elastic IP
addresses in your account.


=head2 DescribeNatGateways

=over

=item [DryRun => Bool]

=item [Filter => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NatGatewayIds => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeNatGateways>

Returns: a L<Paws::EC2::DescribeNatGatewaysResult> instance

Describes one or more of your NAT gateways.


=head2 DescribeNetworkAcls

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NetworkAclIds => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeNetworkAcls>

Returns: a L<Paws::EC2::DescribeNetworkAclsResult> instance

Describes one or more of your network ACLs.

For more information, see Network ACLs
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_ACLs.html) in the
I<Amazon Virtual Private Cloud User Guide>.


=head2 DescribeNetworkInsightsAnalyses

=over

=item [AnalysisEndTime => Str]

=item [AnalysisStartTime => Str]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NetworkInsightsAnalysisIds => ArrayRef[Str|Undef]]

=item [NetworkInsightsPathId => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeNetworkInsightsAnalyses>

Returns: a L<Paws::EC2::DescribeNetworkInsightsAnalysesResult> instance

Describes one or more of your network insights analyses.


=head2 DescribeNetworkInsightsPaths

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NetworkInsightsPathIds => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeNetworkInsightsPaths>

Returns: a L<Paws::EC2::DescribeNetworkInsightsPathsResult> instance

Describes one or more of your paths.


=head2 DescribeNetworkInterfaceAttribute

=over

=item NetworkInterfaceId => Str

=item [Attribute => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeNetworkInterfaceAttribute>

Returns: a L<Paws::EC2::DescribeNetworkInterfaceAttributeResult> instance

Describes a network interface attribute. You can specify only one
attribute at a time.


=head2 DescribeNetworkInterfacePermissions

=over

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NetworkInterfacePermissionIds => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeNetworkInterfacePermissions>

Returns: a L<Paws::EC2::DescribeNetworkInterfacePermissionsResult> instance

Describes the permissions for your network interfaces.


=head2 DescribeNetworkInterfaces

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NetworkInterfaceIds => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeNetworkInterfaces>

Returns: a L<Paws::EC2::DescribeNetworkInterfacesResult> instance

Describes one or more of your network interfaces.


=head2 DescribePlacementGroups

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [GroupIds => ArrayRef[Str|Undef]]

=item [GroupNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribePlacementGroups>

Returns: a L<Paws::EC2::DescribePlacementGroupsResult> instance

Describes the specified placement groups or all of your placement
groups. For more information, see Placement groups
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)
in the I<Amazon EC2 User Guide>.


=head2 DescribePrefixLists

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PrefixListIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribePrefixLists>

Returns: a L<Paws::EC2::DescribePrefixListsResult> instance

Describes available AWS services in a prefix list format, which
includes the prefix list name and prefix list ID of the service and the
IP address range for the service.

We recommend that you use DescribeManagedPrefixLists instead.


=head2 DescribePrincipalIdFormat

=over

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Resources => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribePrincipalIdFormat>

Returns: a L<Paws::EC2::DescribePrincipalIdFormatResult> instance

Describes the ID format settings for the root user and all IAM roles
and IAM users that have explicitly specified a longer ID (17-character
ID) preference.

By default, all IAM roles and IAM users default to the same ID settings
as the root user, unless they explicitly override the settings. This
request is useful for identifying those IAM users and IAM roles that
have overridden the default ID settings.

The following resource types support longer IDs: C<bundle> |
C<conversion-task> | C<customer-gateway> | C<dhcp-options> |
C<elastic-ip-allocation> | C<elastic-ip-association> | C<export-task> |
C<flow-log> | C<image> | C<import-task> | C<instance> |
C<internet-gateway> | C<network-acl> | C<network-acl-association> |
C<network-interface> | C<network-interface-attachment> | C<prefix-list>
| C<reservation> | C<route-table> | C<route-table-association> |
C<security-group> | C<snapshot> | C<subnet> |
C<subnet-cidr-block-association> | C<volume> | C<vpc> |
C<vpc-cidr-block-association> | C<vpc-endpoint> |
C<vpc-peering-connection> | C<vpn-connection> | C<vpn-gateway>.


=head2 DescribePublicIpv4Pools

=over

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PoolIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribePublicIpv4Pools>

Returns: a L<Paws::EC2::DescribePublicIpv4PoolsResult> instance

Describes the specified IPv4 address pools.


=head2 DescribeRegions

=over

=item [AllRegions => Bool]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [RegionNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeRegions>

Returns: a L<Paws::EC2::DescribeRegionsResult> instance

Describes the Regions that are enabled for your account, or all
Regions.

For a list of the Regions supported by Amazon EC2, see Regions and
Endpoints
(https://docs.aws.amazon.com/general/latest/gr/rande.html#ec2_region).

For information about enabling and disabling Regions for your account,
see Managing AWS Regions
(https://docs.aws.amazon.com/general/latest/gr/rande-manage.html) in
the I<AWS General Reference>.


=head2 DescribeReplaceRootVolumeTasks

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ReplaceRootVolumeTaskIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeReplaceRootVolumeTasks>

Returns: a L<Paws::EC2::DescribeReplaceRootVolumeTasksResult> instance

Describes a root volume replacement task. For more information, see
Replace a root volume (https://docs.aws.amazon.com/) in the I<Amazon
Elastic Compute Cloud User Guide>.


=head2 DescribeReservedInstances

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [OfferingClass => Str]

=item [OfferingType => Str]

=item [ReservedInstancesIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeReservedInstances>

Returns: a L<Paws::EC2::DescribeReservedInstancesResult> instance

Describes one or more of the Reserved Instances that you purchased.

For more information about Reserved Instances, see Reserved Instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html)
in the I<Amazon EC2 User Guide>.


=head2 DescribeReservedInstancesListings

=over

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [ReservedInstancesId => Str]

=item [ReservedInstancesListingId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeReservedInstancesListings>

Returns: a L<Paws::EC2::DescribeReservedInstancesListingsResult> instance

Describes your account's Reserved Instance listings in the Reserved
Instance Marketplace.

The Reserved Instance Marketplace matches sellers who want to resell
Reserved Instance capacity that they no longer need with buyers who
want to purchase additional capacity. Reserved Instances bought and
sold through the Reserved Instance Marketplace work like any other
Reserved Instances.

As a seller, you choose to list some or all of your Reserved Instances,
and you specify the upfront price to receive for them. Your Reserved
Instances are then listed in the Reserved Instance Marketplace and are
available for purchase.

As a buyer, you specify the configuration of the Reserved Instance to
purchase, and the Marketplace matches what you're searching for with
what's available. The Marketplace first sells the lowest priced
Reserved Instances to you, and continues to sell available Reserved
Instance listings to you until your demand is met. You are charged
based on the total price of all of the listings that you purchase.

For more information, see Reserved Instance Marketplace
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
in the I<Amazon EC2 User Guide>.


=head2 DescribeReservedInstancesModifications

=over

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [NextToken => Str]

=item [ReservedInstancesModificationIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeReservedInstancesModifications>

Returns: a L<Paws::EC2::DescribeReservedInstancesModificationsResult> instance

Describes the modifications made to your Reserved Instances. If no
parameter is specified, information about all your Reserved Instances
modification requests is returned. If a modification ID is specified,
only information about the specific modification is returned.

For more information, see Modifying Reserved Instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html)
in the I<Amazon EC2 User Guide>.


=head2 DescribeReservedInstancesOfferings

=over

=item [AvailabilityZone => Str]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [IncludeMarketplace => Bool]

=item [InstanceTenancy => Str]

=item [InstanceType => Str]

=item [MaxDuration => Int]

=item [MaxInstanceCount => Int]

=item [MaxResults => Int]

=item [MinDuration => Int]

=item [NextToken => Str]

=item [OfferingClass => Str]

=item [OfferingType => Str]

=item [ProductDescription => Str]

=item [ReservedInstancesOfferingIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeReservedInstancesOfferings>

Returns: a L<Paws::EC2::DescribeReservedInstancesOfferingsResult> instance

Describes Reserved Instance offerings that are available for purchase.
With Reserved Instances, you purchase the right to launch instances for
a period of time. During that time period, you do not receive
insufficient capacity errors, and you pay a lower usage rate than the
rate charged for On-Demand instances for the actual time used.

If you have listed your own Reserved Instances for sale in the Reserved
Instance Marketplace, they will be excluded from these results. This is
to ensure that you do not purchase your own Reserved Instances.

For more information, see Reserved Instance Marketplace
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
in the I<Amazon EC2 User Guide>.


=head2 DescribeRouteTables

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RouteTableIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeRouteTables>

Returns: a L<Paws::EC2::DescribeRouteTablesResult> instance

Describes one or more of your route tables.

Each subnet in your VPC must be associated with a route table. If a
subnet is not explicitly associated with any route table, it is
implicitly associated with the main route table. This command does not
return the subnet ID for implicit associations.

For more information, see Route Tables
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
in the I<Amazon Virtual Private Cloud User Guide>.


=head2 DescribeScheduledInstanceAvailability

=over

=item FirstSlotStartTimeRange => L<Paws::EC2::SlotDateTimeRangeRequest>

=item Recurrence => L<Paws::EC2::ScheduledInstanceRecurrenceRequest>

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [MaxSlotDurationInHours => Int]

=item [MinSlotDurationInHours => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeScheduledInstanceAvailability>

Returns: a L<Paws::EC2::DescribeScheduledInstanceAvailabilityResult> instance

Finds available schedules that meet the specified criteria.

You can search for an available schedule no more than 3 months in
advance. You must meet the minimum required duration of 1,200 hours per
year. For example, the minimum daily schedule is 4 hours, the minimum
weekly schedule is 24 hours, and the minimum monthly schedule is 100
hours.

After you find a schedule that meets your needs, call
PurchaseScheduledInstances to purchase Scheduled Instances with that
schedule.


=head2 DescribeScheduledInstances

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ScheduledInstanceIds => ArrayRef[Str|Undef]]

=item [SlotStartTimeRange => L<Paws::EC2::SlotStartTimeRangeRequest>]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeScheduledInstances>

Returns: a L<Paws::EC2::DescribeScheduledInstancesResult> instance

Describes the specified Scheduled Instances or all your Scheduled
Instances.


=head2 DescribeSecurityGroupReferences

=over

=item GroupId => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSecurityGroupReferences>

Returns: a L<Paws::EC2::DescribeSecurityGroupReferencesResult> instance

[VPC only] Describes the VPCs on the other side of a VPC peering
connection that are referencing the security groups you've specified in
this request.


=head2 DescribeSecurityGroups

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [GroupIds => ArrayRef[Str|Undef]]

=item [GroupNames => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSecurityGroups>

Returns: a L<Paws::EC2::DescribeSecurityGroupsResult> instance

Describes the specified security groups or all of your security groups.

A security group is for use with instances either in the EC2-Classic
platform or in a specific VPC. For more information, see Amazon EC2
Security Groups
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html)
in the I<Amazon Elastic Compute Cloud User Guide> and Security Groups
for Your VPC
(https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html)
in the I<Amazon Virtual Private Cloud User Guide>.


=head2 DescribeSnapshotAttribute

=over

=item Attribute => Str

=item SnapshotId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSnapshotAttribute>

Returns: a L<Paws::EC2::DescribeSnapshotAttributeResult> instance

Describes the specified attribute of the specified snapshot. You can
specify only one attribute at a time.

For more information about EBS snapshots, see Amazon EBS snapshots
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 DescribeSnapshots

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OwnerIds => ArrayRef[Str|Undef]]

=item [RestorableByUserIds => ArrayRef[Str|Undef]]

=item [SnapshotIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSnapshots>

Returns: a L<Paws::EC2::DescribeSnapshotsResult> instance

Describes the specified EBS snapshots available to you or all of the
EBS snapshots available to you.

The snapshots available to you include public snapshots, private
snapshots that you own, and private snapshots owned by other AWS
accounts for which you have explicit create volume permissions.

The create volume permissions fall into the following categories:

=over

=item *

I<public>: The owner of the snapshot granted create volume permissions
for the snapshot to the C<all> group. All AWS accounts have create
volume permissions for these snapshots.

=item *

I<explicit>: The owner of the snapshot granted create volume
permissions to a specific AWS account.

=item *

I<implicit>: An AWS account has implicit create volume permissions for
all snapshots it owns.

=back

The list of snapshots returned can be filtered by specifying snapshot
IDs, snapshot owners, or AWS accounts with create volume permissions.
If no options are specified, Amazon EC2 returns all snapshots for which
you have create volume permissions.

If you specify one or more snapshot IDs, only snapshots that have the
specified IDs are returned. If you specify an invalid snapshot ID, an
error is returned. If you specify a snapshot ID for which you do not
have access, it is not included in the returned results.

If you specify one or more snapshot owners using the C<OwnerIds>
option, only snapshots from the specified owners and for which you have
access are returned. The results can include the AWS account IDs of the
specified owners, C<amazon> for snapshots owned by Amazon, or C<self>
for snapshots that you own.

If you specify a list of restorable users, only snapshots with create
snapshot permissions for those users are returned. You can specify AWS
account IDs (if you own the snapshots), C<self> for snapshots for which
you own or have explicit permissions, or C<all> for public snapshots.

If you are describing a long list of snapshots, we recommend that you
paginate the output to make the list more manageable. The C<MaxResults>
parameter sets the maximum number of results returned in a single page.
If the list of results exceeds your C<MaxResults> value, then that
number of results is returned along with a C<NextToken> value that can
be passed to a subsequent C<DescribeSnapshots> request to retrieve the
remaining results.

To get the state of fast snapshot restores for a snapshot, use
DescribeFastSnapshotRestores.

For more information about EBS snapshots, see Amazon EBS snapshots
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 DescribeSpotDatafeedSubscription

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSpotDatafeedSubscription>

Returns: a L<Paws::EC2::DescribeSpotDatafeedSubscriptionResult> instance

Describes the data feed for Spot Instances. For more information, see
Spot Instance data feed
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html)
in the I<Amazon EC2 User Guide for Linux Instances>.


=head2 DescribeSpotFleetInstances

=over

=item SpotFleetRequestId => Str

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSpotFleetInstances>

Returns: a L<Paws::EC2::DescribeSpotFleetInstancesResponse> instance

Describes the running instances for the specified Spot Fleet.


=head2 DescribeSpotFleetRequestHistory

=over

=item SpotFleetRequestId => Str

=item StartTime => Str

=item [DryRun => Bool]

=item [EventType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSpotFleetRequestHistory>

Returns: a L<Paws::EC2::DescribeSpotFleetRequestHistoryResponse> instance

Describes the events for the specified Spot Fleet request during the
specified time.

Spot Fleet events are delayed by up to 30 seconds before they can be
described. This ensures that you can query by the last evaluated time
and not miss a recorded event. Spot Fleet events are available for 48
hours.


=head2 DescribeSpotFleetRequests

=over

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SpotFleetRequestIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSpotFleetRequests>

Returns: a L<Paws::EC2::DescribeSpotFleetRequestsResponse> instance

Describes your Spot Fleet requests.

Spot Fleet requests are deleted 48 hours after they are canceled and
their instances are terminated.


=head2 DescribeSpotInstanceRequests

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SpotInstanceRequestIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSpotInstanceRequests>

Returns: a L<Paws::EC2::DescribeSpotInstanceRequestsResult> instance

Describes the specified Spot Instance requests.

You can use C<DescribeSpotInstanceRequests> to find a running Spot
Instance by examining the response. If the status of the Spot Instance
is C<fulfilled>, the instance ID appears in the response and contains
the identifier of the instance. Alternatively, you can use
DescribeInstances
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances)
with a filter to look for instances where the instance lifecycle is
C<spot>.

We recommend that you set C<MaxResults> to a value between 5 and 1000
to limit the number of results returned. This paginates the output,
which makes the list more manageable and returns the results faster. If
the list of results exceeds your C<MaxResults> value, then that number
of results is returned along with a C<NextToken> value that can be
passed to a subsequent C<DescribeSpotInstanceRequests> request to
retrieve the remaining results.

Spot Instance requests are deleted four hours after they are canceled
and their instances are terminated.


=head2 DescribeSpotPriceHistory

=over

=item [AvailabilityZone => Str]

=item [DryRun => Bool]

=item [EndTime => Str]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [InstanceTypes => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProductDescriptions => ArrayRef[Str|Undef]]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSpotPriceHistory>

Returns: a L<Paws::EC2::DescribeSpotPriceHistoryResult> instance

Describes the Spot price history. For more information, see Spot
Instance pricing history
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances-history.html)
in the I<Amazon EC2 User Guide for Linux Instances>.

When you specify a start and end time, the operation returns the prices
of the instance types within that time range. It also returns the last
price change before the start time, which is the effective price as of
the start time.


=head2 DescribeStaleSecurityGroups

=over

=item VpcId => Str

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeStaleSecurityGroups>

Returns: a L<Paws::EC2::DescribeStaleSecurityGroupsResult> instance

[VPC only] Describes the stale security group rules for security groups
in a specified VPC. Rules are stale when they reference a deleted
security group in a peer VPC, or a security group in a peer VPC for
which the VPC peering connection has been deleted.


=head2 DescribeStoreImageTasks

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [ImageIds => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeStoreImageTasks>

Returns: a L<Paws::EC2::DescribeStoreImageTasksResult> instance

Describes the progress of the AMI store tasks. You can describe the
store tasks for specified AMIs. If you don't specify the AMIs, you get
a paginated list of store tasks from the last 31 days.

For each AMI task, the response indicates if the task is C<InProgress>,
C<Completed>, or C<Failed>. For tasks C<InProgress>, the response shows
the estimated progress as a percentage.

Tasks are listed in reverse chronological order. Currently, only tasks
from the past 31 days can be viewed.

To use this API, you must have the required permissions. For more
information, see Permissions for storing and restoring AMIs using S3
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html#ami-s3-permissions)
in the I<Amazon Elastic Compute Cloud User Guide>.

For more information, see Store and restore an AMI using S3
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 DescribeSubnets

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SubnetIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeSubnets>

Returns: a L<Paws::EC2::DescribeSubnetsResult> instance

Describes one or more of your subnets.

For more information, see Your VPC and Subnets
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html) in
the I<Amazon Virtual Private Cloud User Guide>.


=head2 DescribeTags

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTags>

Returns: a L<Paws::EC2::DescribeTagsResult> instance

Describes the specified tags for your EC2 resources.

For more information about tags, see Tagging Your Resources
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 DescribeTrafficMirrorFilters

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TrafficMirrorFilterIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTrafficMirrorFilters>

Returns: a L<Paws::EC2::DescribeTrafficMirrorFiltersResult> instance

Describes one or more Traffic Mirror filters.


=head2 DescribeTrafficMirrorSessions

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TrafficMirrorSessionIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTrafficMirrorSessions>

Returns: a L<Paws::EC2::DescribeTrafficMirrorSessionsResult> instance

Describes one or more Traffic Mirror sessions. By default, all Traffic
Mirror sessions are described. Alternatively, you can filter the
results.


=head2 DescribeTrafficMirrorTargets

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TrafficMirrorTargetIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTrafficMirrorTargets>

Returns: a L<Paws::EC2::DescribeTrafficMirrorTargetsResult> instance

Information about one or more Traffic Mirror targets.


=head2 DescribeTransitGatewayAttachments

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayAttachmentIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTransitGatewayAttachments>

Returns: a L<Paws::EC2::DescribeTransitGatewayAttachmentsResult> instance

Describes one or more attachments between resources and transit
gateways. By default, all attachments are described. Alternatively, you
can filter the results by attachment ID, attachment state, resource ID,
or resource owner.


=head2 DescribeTransitGatewayConnectPeers

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayConnectPeerIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTransitGatewayConnectPeers>

Returns: a L<Paws::EC2::DescribeTransitGatewayConnectPeersResult> instance

Describes one or more Connect peers.


=head2 DescribeTransitGatewayConnects

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayAttachmentIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTransitGatewayConnects>

Returns: a L<Paws::EC2::DescribeTransitGatewayConnectsResult> instance

Describes one or more Connect attachments.


=head2 DescribeTransitGatewayMulticastDomains

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayMulticastDomainIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTransitGatewayMulticastDomains>

Returns: a L<Paws::EC2::DescribeTransitGatewayMulticastDomainsResult> instance

Describes one or more transit gateway multicast domains.


=head2 DescribeTransitGatewayPeeringAttachments

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayAttachmentIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTransitGatewayPeeringAttachments>

Returns: a L<Paws::EC2::DescribeTransitGatewayPeeringAttachmentsResult> instance

Describes your transit gateway peering attachments.


=head2 DescribeTransitGatewayRouteTables

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayRouteTableIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTransitGatewayRouteTables>

Returns: a L<Paws::EC2::DescribeTransitGatewayRouteTablesResult> instance

Describes one or more transit gateway route tables. By default, all
transit gateway route tables are described. Alternatively, you can
filter the results.


=head2 DescribeTransitGateways

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTransitGateways>

Returns: a L<Paws::EC2::DescribeTransitGatewaysResult> instance

Describes one or more transit gateways. By default, all transit
gateways are described. Alternatively, you can filter the results.


=head2 DescribeTransitGatewayVpcAttachments

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayAttachmentIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeTransitGatewayVpcAttachments>

Returns: a L<Paws::EC2::DescribeTransitGatewayVpcAttachmentsResult> instance

Describes one or more VPC attachments. By default, all VPC attachments
are described. Alternatively, you can filter the results.


=head2 DescribeVolumeAttribute

=over

=item Attribute => Str

=item VolumeId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVolumeAttribute>

Returns: a L<Paws::EC2::DescribeVolumeAttributeResult> instance

Describes the specified attribute of the specified volume. You can
specify only one attribute at a time.

For more information about EBS volumes, see Amazon EBS volumes
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 DescribeVolumes

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VolumeIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVolumes>

Returns: a L<Paws::EC2::DescribeVolumesResult> instance

Describes the specified EBS volumes or all of your EBS volumes.

If you are describing a long list of volumes, we recommend that you
paginate the output to make the list more manageable. The C<MaxResults>
parameter sets the maximum number of results returned in a single page.
If the list of results exceeds your C<MaxResults> value, then that
number of results is returned along with a C<NextToken> value that can
be passed to a subsequent C<DescribeVolumes> request to retrieve the
remaining results.

For more information about EBS volumes, see Amazon EBS volumes
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 DescribeVolumesModifications

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VolumeIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVolumesModifications>

Returns: a L<Paws::EC2::DescribeVolumesModificationsResult> instance

Describes the most recent volume modification request for the specified
EBS volumes.

If a volume has never been modified, some information in the output
will be null. If a volume has been modified more than once, the output
includes only the most recent modification request.

You can also use CloudWatch Events to check the status of a
modification to an EBS volume. For information about CloudWatch Events,
see the Amazon CloudWatch Events User Guide
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/). For more
information, see Monitoring volume modifications
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#monitoring_mods)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 DescribeVolumeStatus

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VolumeIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVolumeStatus>

Returns: a L<Paws::EC2::DescribeVolumeStatusResult> instance

Describes the status of the specified volumes. Volume status provides
the result of the checks performed on your volumes to determine events
that can impair the performance of your volumes. The performance of a
volume can be affected if an issue occurs on the volume's underlying
host. If the volume's underlying host experiences a power outage or
system issue, after the system is restored, there could be data
inconsistencies on the volume. Volume events notify you if this occurs.
Volume actions notify you if any action needs to be taken in response
to the event.

The C<DescribeVolumeStatus> operation provides the following
information about the specified volumes:

I<Status>: Reflects the current status of the volume. The possible
values are C<ok>, C<impaired> , C<warning>, or C<insufficient-data>. If
all checks pass, the overall status of the volume is C<ok>. If the
check fails, the overall status is C<impaired>. If the status is
C<insufficient-data>, then the checks might still be taking place on
your volume at the time. We recommend that you retry the request. For
more information about volume status, see Monitoring the status of your
volumes
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-status.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

I<Events>: Reflect the cause of a volume status and might require you
to take action. For example, if your volume returns an C<impaired>
status, then the volume event might be C<potential-data-inconsistency>.
This means that your volume has been affected by an issue with the
underlying host, has all I/O operations disabled, and might have
inconsistent data.

I<Actions>: Reflect the actions you might have to take in response to
an event. For example, if the status of the volume is C<impaired> and
the volume event shows C<potential-data-inconsistency>, then the action
shows C<enable-volume-io>. This means that you may want to enable the
I/O operations for the volume by calling the EnableVolumeIO action and
then check the volume for data consistency.

Volume status is based on the volume status checks, and does not
reflect the volume state. Therefore, volume status does not indicate
volumes in the C<error> state (for example, when a volume is incapable
of accepting I/O.)


=head2 DescribeVpcAttribute

=over

=item Attribute => Str

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcAttribute>

Returns: a L<Paws::EC2::DescribeVpcAttributeResult> instance

Describes the specified attribute of the specified VPC. You can specify
only one attribute at a time.


=head2 DescribeVpcClassicLink

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [VpcIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcClassicLink>

Returns: a L<Paws::EC2::DescribeVpcClassicLinkResult> instance

Describes the ClassicLink status of one or more VPCs.


=head2 DescribeVpcClassicLinkDnsSupport

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VpcIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcClassicLinkDnsSupport>

Returns: a L<Paws::EC2::DescribeVpcClassicLinkDnsSupportResult> instance

Describes the ClassicLink DNS support status of one or more VPCs. If
enabled, the DNS hostname of a linked EC2-Classic instance resolves to
its private IP address when addressed from an instance in the VPC to
which it's linked. Similarly, the DNS hostname of an instance in a VPC
resolves to its private IP address when addressed from a linked
EC2-Classic instance. For more information, see ClassicLink
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 DescribeVpcEndpointConnectionNotifications

=over

=item [ConnectionNotificationId => Str]

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcEndpointConnectionNotifications>

Returns: a L<Paws::EC2::DescribeVpcEndpointConnectionNotificationsResult> instance

Describes the connection notifications for VPC endpoints and VPC
endpoint services.


=head2 DescribeVpcEndpointConnections

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcEndpointConnections>

Returns: a L<Paws::EC2::DescribeVpcEndpointConnectionsResult> instance

Describes the VPC endpoint connections to your VPC endpoint services,
including any endpoints that are pending your acceptance.


=head2 DescribeVpcEndpoints

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VpcEndpointIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcEndpoints>

Returns: a L<Paws::EC2::DescribeVpcEndpointsResult> instance

Describes one or more of your VPC endpoints.


=head2 DescribeVpcEndpointServiceConfigurations

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServiceIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcEndpointServiceConfigurations>

Returns: a L<Paws::EC2::DescribeVpcEndpointServiceConfigurationsResult> instance

Describes the VPC endpoint service configurations in your account (your
services).


=head2 DescribeVpcEndpointServicePermissions

=over

=item ServiceId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcEndpointServicePermissions>

Returns: a L<Paws::EC2::DescribeVpcEndpointServicePermissionsResult> instance

Describes the principals (service consumers) that are permitted to
discover your VPC endpoint service.


=head2 DescribeVpcEndpointServices

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServiceNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcEndpointServices>

Returns: a L<Paws::EC2::DescribeVpcEndpointServicesResult> instance

Describes available services to which you can create a VPC endpoint.

When the service provider and the consumer have different accounts in
multiple Availability Zones, and the consumer views the VPC endpoint
service information, the response only includes the common Availability
Zones. For example, when the service provider account uses
C<us-east-1a> and C<us-east-1c> and the consumer uses C<us-east-1a> and
C<us-east-1b>, the response includes the VPC endpoint services in the
common Availability Zone, C<us-east-1a>.


=head2 DescribeVpcPeeringConnections

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VpcPeeringConnectionIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcPeeringConnections>

Returns: a L<Paws::EC2::DescribeVpcPeeringConnectionsResult> instance

Describes one or more of your VPC peering connections.


=head2 DescribeVpcs

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VpcIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpcs>

Returns: a L<Paws::EC2::DescribeVpcsResult> instance

Describes one or more of your VPCs.


=head2 DescribeVpnConnections

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [VpnConnectionIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpnConnections>

Returns: a L<Paws::EC2::DescribeVpnConnectionsResult> instance

Describes one or more of your VPN connections.

For more information, see AWS Site-to-Site VPN
(https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the
I<AWS Site-to-Site VPN User Guide>.


=head2 DescribeVpnGateways

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [VpnGatewayIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::DescribeVpnGateways>

Returns: a L<Paws::EC2::DescribeVpnGatewaysResult> instance

Describes one or more of your virtual private gateways.

For more information, see AWS Site-to-Site VPN
(https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the
I<AWS Site-to-Site VPN User Guide>.


=head2 DetachClassicLinkVpc

=over

=item InstanceId => Str

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DetachClassicLinkVpc>

Returns: a L<Paws::EC2::DetachClassicLinkVpcResult> instance

Unlinks (detaches) a linked EC2-Classic instance from a VPC. After the
instance has been unlinked, the VPC security groups are no longer
associated with it. An instance is automatically unlinked from a VPC
when it's stopped.


=head2 DetachInternetGateway

=over

=item InternetGatewayId => Str

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DetachInternetGateway>

Returns: nothing

Detaches an internet gateway from a VPC, disabling connectivity between
the internet and the VPC. The VPC must not contain any running
instances with Elastic IP addresses or public IPv4 addresses.


=head2 DetachNetworkInterface

=over

=item AttachmentId => Str

=item [DryRun => Bool]

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DetachNetworkInterface>

Returns: nothing

Detaches a network interface from an instance.


=head2 DetachVolume

=over

=item VolumeId => Str

=item [Device => Str]

=item [DryRun => Bool]

=item [Force => Bool]

=item [InstanceId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DetachVolume>

Returns: a L<Paws::EC2::VolumeAttachment> instance

Detaches an EBS volume from an instance. Make sure to unmount any file
systems on the device within your operating system before detaching the
volume. Failure to do so can result in the volume becoming stuck in the
C<busy> state while detaching. If this happens, detachment can be
delayed indefinitely until you unmount the volume, force detachment,
reboot the instance, or all three. If an EBS volume is the root device
of an instance, it can't be detached while the instance is running. To
detach the root volume, stop the instance first.

When a volume with an AWS Marketplace product code is detached from an
instance, the product code is no longer associated with the instance.

For more information, see Detaching an Amazon EBS volume
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-detaching-volume.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 DetachVpnGateway

=over

=item VpcId => Str

=item VpnGatewayId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DetachVpnGateway>

Returns: nothing

Detaches a virtual private gateway from a VPC. You do this if you're
planning to turn off the VPC and not use it anymore. You can confirm a
virtual private gateway has been completely detached from a VPC by
describing the virtual private gateway (any attachments to the virtual
private gateway are also described).

You must wait for the attachment's state to switch to C<detached>
before you can delete the VPC or attach a different VPC to the virtual
private gateway.


=head2 DisableEbsEncryptionByDefault

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisableEbsEncryptionByDefault>

Returns: a L<Paws::EC2::DisableEbsEncryptionByDefaultResult> instance

Disables EBS encryption by default for your account in the current
Region.

After you disable encryption by default, you can still create encrypted
volumes by enabling encryption when you create each volume.

Disabling encryption by default does not change the encryption status
of your existing volumes.

For more information, see Amazon EBS encryption
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 DisableFastSnapshotRestores

=over

=item AvailabilityZones => ArrayRef[Str|Undef]

=item SourceSnapshotIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisableFastSnapshotRestores>

Returns: a L<Paws::EC2::DisableFastSnapshotRestoresResult> instance

Disables fast snapshot restores for the specified snapshots in the
specified Availability Zones.


=head2 DisableSerialConsoleAccess

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisableSerialConsoleAccess>

Returns: a L<Paws::EC2::DisableSerialConsoleAccessResult> instance

Disables access to the EC2 serial console of all instances for your
account. By default, access to the EC2 serial console is disabled for
your account. For more information, see Manage account access to the
EC2 serial console
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configure-access-to-serial-console.html#serial-console-account-access)
in the I<Amazon EC2 User Guide>.


=head2 DisableTransitGatewayRouteTablePropagation

=over

=item TransitGatewayAttachmentId => Str

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisableTransitGatewayRouteTablePropagation>

Returns: a L<Paws::EC2::DisableTransitGatewayRouteTablePropagationResult> instance

Disables the specified resource attachment from propagating routes to
the specified propagation route table.


=head2 DisableVgwRoutePropagation

=over

=item GatewayId => Str

=item RouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisableVgwRoutePropagation>

Returns: nothing

Disables a virtual private gateway (VGW) from propagating routes to a
specified route table of a VPC.


=head2 DisableVpcClassicLink

=over

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisableVpcClassicLink>

Returns: a L<Paws::EC2::DisableVpcClassicLinkResult> instance

Disables ClassicLink for a VPC. You cannot disable ClassicLink for a
VPC that has EC2-Classic instances linked to it.


=head2 DisableVpcClassicLinkDnsSupport

=over

=item [VpcId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DisableVpcClassicLinkDnsSupport>

Returns: a L<Paws::EC2::DisableVpcClassicLinkDnsSupportResult> instance

Disables ClassicLink DNS support for a VPC. If disabled, DNS hostnames
resolve to public IP addresses when addressed between a linked
EC2-Classic instance and instances in the VPC to which it's linked. For
more information, see ClassicLink
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

You must specify a VPC ID in the request.


=head2 DisassociateAddress

=over

=item [AssociationId => Str]

=item [DryRun => Bool]

=item [PublicIp => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateAddress>

Returns: nothing

Disassociates an Elastic IP address from the instance or network
interface it's associated with.

An Elastic IP address is for use in either the EC2-Classic platform or
in a VPC. For more information, see Elastic IP Addresses
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

This is an idempotent operation. If you perform the operation more than
once, Amazon EC2 doesn't return an error.


=head2 DisassociateClientVpnTargetNetwork

=over

=item AssociationId => Str

=item ClientVpnEndpointId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateClientVpnTargetNetwork>

Returns: a L<Paws::EC2::DisassociateClientVpnTargetNetworkResult> instance

Disassociates a target network from the specified Client VPN endpoint.
When you disassociate the last target network from a Client VPN, the
following happens:

=over

=item *

The route that was automatically added for the VPC is deleted

=item *

All active client connections are terminated

=item *

New client connections are disallowed

=item *

The Client VPN endpoint's status changes to C<pending-associate>

=back



=head2 DisassociateEnclaveCertificateIamRole

=over

=item [CertificateArn => Str]

=item [DryRun => Bool]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateEnclaveCertificateIamRole>

Returns: a L<Paws::EC2::DisassociateEnclaveCertificateIamRoleResult> instance

Disassociates an IAM role from an AWS Certificate Manager (ACM)
certificate. Disassociating an IAM role from an ACM certificate removes
the Amazon S3 object that contains the certificate, certificate chain,
and encrypted private key from the Amazon S3 bucket. It also revokes
the IAM role's permission to use the AWS Key Management Service (KMS)
customer master key (CMK) used to encrypt the private key. This
effectively revokes the role's permission to use the certificate.


=head2 DisassociateIamInstanceProfile

=over

=item AssociationId => Str


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateIamInstanceProfile>

Returns: a L<Paws::EC2::DisassociateIamInstanceProfileResult> instance

Disassociates an IAM instance profile from a running or stopped
instance.

Use DescribeIamInstanceProfileAssociations to get the association ID.


=head2 DisassociateRouteTable

=over

=item AssociationId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateRouteTable>

Returns: nothing

Disassociates a subnet or gateway from a route table.

After you perform this action, the subnet no longer uses the routes in
the route table. Instead, it uses the routes in the VPC's main route
table. For more information about route tables, see Route Tables
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
in the I<Amazon Virtual Private Cloud User Guide>.


=head2 DisassociateSubnetCidrBlock

=over

=item AssociationId => Str


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateSubnetCidrBlock>

Returns: a L<Paws::EC2::DisassociateSubnetCidrBlockResult> instance

Disassociates a CIDR block from a subnet. Currently, you can
disassociate an IPv6 CIDR block only. You must detach or delete all
gateways and resources that are associated with the CIDR block before
you can disassociate it.


=head2 DisassociateTransitGatewayMulticastDomain

=over

=item [DryRun => Bool]

=item [SubnetIds => ArrayRef[Str|Undef]]

=item [TransitGatewayAttachmentId => Str]

=item [TransitGatewayMulticastDomainId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateTransitGatewayMulticastDomain>

Returns: a L<Paws::EC2::DisassociateTransitGatewayMulticastDomainResult> instance

Disassociates the specified subnets from the transit gateway multicast
domain.


=head2 DisassociateTransitGatewayRouteTable

=over

=item TransitGatewayAttachmentId => Str

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateTransitGatewayRouteTable>

Returns: a L<Paws::EC2::DisassociateTransitGatewayRouteTableResult> instance

Disassociates a resource attachment from a transit gateway route table.


=head2 DisassociateVpcCidrBlock

=over

=item AssociationId => Str


=back

Each argument is described in detail in: L<Paws::EC2::DisassociateVpcCidrBlock>

Returns: a L<Paws::EC2::DisassociateVpcCidrBlockResult> instance

Disassociates a CIDR block from a VPC. To disassociate the CIDR block,
you must specify its association ID. You can get the association ID by
using DescribeVpcs. You must detach or delete all gateways and
resources that are associated with the CIDR block before you can
disassociate it.

You cannot disassociate the CIDR block with which you originally
created the VPC (the primary CIDR block).


=head2 EnableEbsEncryptionByDefault

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableEbsEncryptionByDefault>

Returns: a L<Paws::EC2::EnableEbsEncryptionByDefaultResult> instance

Enables EBS encryption by default for your account in the current
Region.

After you enable encryption by default, the EBS volumes that you create
are always encrypted, either using the default CMK or the CMK that you
specified when you created each volume. For more information, see
Amazon EBS encryption
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

You can specify the default CMK for encryption by default using
ModifyEbsDefaultKmsKeyId or ResetEbsDefaultKmsKeyId.

Enabling encryption by default has no effect on the encryption status
of your existing volumes.

After you enable encryption by default, you can no longer launch
instances using instance types that do not support encryption. For more
information, see Supported instance types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances).


=head2 EnableFastSnapshotRestores

=over

=item AvailabilityZones => ArrayRef[Str|Undef]

=item SourceSnapshotIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableFastSnapshotRestores>

Returns: a L<Paws::EC2::EnableFastSnapshotRestoresResult> instance

Enables fast snapshot restores for the specified snapshots in the
specified Availability Zones.

You get the full benefit of fast snapshot restores after they enter the
C<enabled> state. To get the current state of fast snapshot restores,
use DescribeFastSnapshotRestores. To disable fast snapshot restores,
use DisableFastSnapshotRestores.

For more information, see Amazon EBS fast snapshot restore
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-fast-snapshot-restore.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 EnableSerialConsoleAccess

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableSerialConsoleAccess>

Returns: a L<Paws::EC2::EnableSerialConsoleAccessResult> instance

Enables access to the EC2 serial console of all instances for your
account. By default, access to the EC2 serial console is disabled for
your account. For more information, see Manage account access to the
EC2 serial console
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configure-access-to-serial-console.html#serial-console-account-access)
in the I<Amazon EC2 User Guide>.


=head2 EnableTransitGatewayRouteTablePropagation

=over

=item TransitGatewayAttachmentId => Str

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableTransitGatewayRouteTablePropagation>

Returns: a L<Paws::EC2::EnableTransitGatewayRouteTablePropagationResult> instance

Enables the specified attachment to propagate routes to the specified
propagation route table.


=head2 EnableVgwRoutePropagation

=over

=item GatewayId => Str

=item RouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableVgwRoutePropagation>

Returns: nothing

Enables a virtual private gateway (VGW) to propagate routes to the
specified route table of a VPC.


=head2 EnableVolumeIO

=over

=item VolumeId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableVolumeIO>

Returns: nothing

Enables I/O operations for a volume that had I/O operations disabled
because the data on the volume was potentially inconsistent.


=head2 EnableVpcClassicLink

=over

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::EnableVpcClassicLink>

Returns: a L<Paws::EC2::EnableVpcClassicLinkResult> instance

Enables a VPC for ClassicLink. You can then link EC2-Classic instances
to your ClassicLink-enabled VPC to allow communication over private IP
addresses. You cannot enable your VPC for ClassicLink if any of your
VPC route tables have existing routes for address ranges within the
C<10.0.0.0/8> IP address range, excluding local routes for VPCs in the
C<10.0.0.0/16> and C<10.1.0.0/16> IP address ranges. For more
information, see ClassicLink
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 EnableVpcClassicLinkDnsSupport

=over

=item [VpcId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::EnableVpcClassicLinkDnsSupport>

Returns: a L<Paws::EC2::EnableVpcClassicLinkDnsSupportResult> instance

Enables a VPC to support DNS hostname resolution for ClassicLink. If
enabled, the DNS hostname of a linked EC2-Classic instance resolves to
its private IP address when addressed from an instance in the VPC to
which it's linked. Similarly, the DNS hostname of an instance in a VPC
resolves to its private IP address when addressed from a linked
EC2-Classic instance. For more information, see ClassicLink
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

You must specify a VPC ID in the request.


=head2 ExportClientVpnClientCertificateRevocationList

=over

=item ClientVpnEndpointId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ExportClientVpnClientCertificateRevocationList>

Returns: a L<Paws::EC2::ExportClientVpnClientCertificateRevocationListResult> instance

Downloads the client certificate revocation list for the specified
Client VPN endpoint.


=head2 ExportClientVpnClientConfiguration

=over

=item ClientVpnEndpointId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ExportClientVpnClientConfiguration>

Returns: a L<Paws::EC2::ExportClientVpnClientConfigurationResult> instance

Downloads the contents of the Client VPN endpoint configuration file
for the specified Client VPN endpoint. The Client VPN endpoint
configuration file includes the Client VPN endpoint and certificate
information clients need to establish a connection with the Client VPN
endpoint.


=head2 ExportImage

=over

=item DiskImageFormat => Str

=item ImageId => Str

=item S3ExportLocation => L<Paws::EC2::ExportTaskS3LocationRequest>

=item [ClientToken => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [RoleName => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::ExportImage>

Returns: a L<Paws::EC2::ExportImageResult> instance

Exports an Amazon Machine Image (AMI) to a VM file. For more
information, see Exporting a VM directly from an Amazon Machine Image
(AMI)
(https://docs.aws.amazon.com/vm-import/latest/userguide/vmexport_image.html)
in the I<VM Import/Export User Guide>.


=head2 ExportTransitGatewayRoutes

=over

=item S3Bucket => Str

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]


=back

Each argument is described in detail in: L<Paws::EC2::ExportTransitGatewayRoutes>

Returns: a L<Paws::EC2::ExportTransitGatewayRoutesResult> instance

Exports routes from the specified transit gateway route table to the
specified S3 bucket. By default, all routes are exported.
Alternatively, you can filter by CIDR range.

The routes are saved to the specified bucket in a JSON file. For more
information, see Export Route Tables to Amazon S3
(https://docs.aws.amazon.com/vpc/latest/tgw/tgw-route-tables.html#tgw-export-route-tables)
in I<Transit Gateways>.


=head2 GetAssociatedEnclaveCertificateIamRoles

=over

=item [CertificateArn => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetAssociatedEnclaveCertificateIamRoles>

Returns: a L<Paws::EC2::GetAssociatedEnclaveCertificateIamRolesResult> instance

Returns the IAM roles that are associated with the specified AWS
Certificate Manager (ACM) certificate. It also returns the name of the
Amazon S3 bucket and the Amazon S3 object key where the certificate,
certificate chain, and encrypted private key bundle are stored, and the
ARN of the AWS Key Management Service (KMS) customer master key (CMK)
that's used to encrypt the private key.


=head2 GetAssociatedIpv6PoolCidrs

=over

=item PoolId => Str

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetAssociatedIpv6PoolCidrs>

Returns: a L<Paws::EC2::GetAssociatedIpv6PoolCidrsResult> instance

Gets information about the IPv6 CIDR block associations for a specified
IPv6 address pool.


=head2 GetCapacityReservationUsage

=over

=item CapacityReservationId => Str

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetCapacityReservationUsage>

Returns: a L<Paws::EC2::GetCapacityReservationUsageResult> instance

Gets usage information about a Capacity Reservation. If the Capacity
Reservation is shared, it shows usage information for the Capacity
Reservation owner and each AWS account that is currently using the
shared capacity. If the Capacity Reservation is not shared, it shows
only the Capacity Reservation owner's usage.


=head2 GetCoipPoolUsage

=over

=item PoolId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetCoipPoolUsage>

Returns: a L<Paws::EC2::GetCoipPoolUsageResult> instance

Describes the allocations from the specified customer-owned address
pool.


=head2 GetConsoleOutput

=over

=item InstanceId => Str

=item [DryRun => Bool]

=item [Latest => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetConsoleOutput>

Returns: a L<Paws::EC2::GetConsoleOutputResult> instance

Gets the console output for the specified instance. For Linux
instances, the instance console output displays the exact console
output that would normally be displayed on a physical monitor attached
to a computer. For Windows instances, the instance console output
includes the last three system event log errors.

By default, the console output returns buffered information that was
posted shortly after an instance transition state (start, stop, reboot,
or terminate). This information is available for at least one hour
after the most recent post. Only the most recent 64 KB of console
output is available.

You can optionally retrieve the latest serial console output at any
time during the instance lifecycle. This option is supported on
instance types that use the Nitro hypervisor.

For more information, see Instance console output
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-console.html#instance-console-console-output)
in the I<Amazon EC2 User Guide>.


=head2 GetConsoleScreenshot

=over

=item InstanceId => Str

=item [DryRun => Bool]

=item [WakeUp => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetConsoleScreenshot>

Returns: a L<Paws::EC2::GetConsoleScreenshotResult> instance

Retrieve a JPG-format screenshot of a running instance to help with
troubleshooting.

The returned content is Base64-encoded.


=head2 GetDefaultCreditSpecification

=over

=item InstanceFamily => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetDefaultCreditSpecification>

Returns: a L<Paws::EC2::GetDefaultCreditSpecificationResult> instance

Describes the default credit option for CPU usage of a burstable
performance instance family.

For more information, see Burstable performance instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html)
in the I<Amazon EC2 User Guide>.


=head2 GetEbsDefaultKmsKeyId

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetEbsDefaultKmsKeyId>

Returns: a L<Paws::EC2::GetEbsDefaultKmsKeyIdResult> instance

Describes the default customer master key (CMK) for EBS encryption by
default for your account in this Region. You can change the default CMK
for encryption by default using ModifyEbsDefaultKmsKeyId or
ResetEbsDefaultKmsKeyId.

For more information, see Amazon EBS encryption
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 GetEbsEncryptionByDefault

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetEbsEncryptionByDefault>

Returns: a L<Paws::EC2::GetEbsEncryptionByDefaultResult> instance

Describes whether EBS encryption by default is enabled for your account
in the current Region.

For more information, see Amazon EBS encryption
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 GetFlowLogsIntegrationTemplate

=over

=item ConfigDeliveryS3DestinationArn => Str

=item FlowLogId => Str

=item IntegrateServices => L<Paws::EC2::IntegrateServices>

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetFlowLogsIntegrationTemplate>

Returns: a L<Paws::EC2::GetFlowLogsIntegrationTemplateResult> instance

Generates a CloudFormation template that streamlines and automates the
integration of VPC flow logs with Amazon Athena. This make it easier
for you to query and gain insights from VPC flow logs data. Based on
the information that you provide, we configure resources in the
template to do the following:

=over

=item *

Create a table in Athena that maps fields to a custom log format

=item *

Create a Lambda function that updates the table with new partitions on
a daily, weekly, or monthly basis

=item *

Create a table partitioned between two timestamps in the past

=item *

Create a set of named queries in Athena that you can use to get started
quickly

=back



=head2 GetGroupsForCapacityReservation

=over

=item CapacityReservationId => Str

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetGroupsForCapacityReservation>

Returns: a L<Paws::EC2::GetGroupsForCapacityReservationResult> instance

Lists the resource groups to which a Capacity Reservation has been
added.


=head2 GetHostReservationPurchasePreview

=over

=item HostIdSet => ArrayRef[Str|Undef]

=item OfferingId => Str


=back

Each argument is described in detail in: L<Paws::EC2::GetHostReservationPurchasePreview>

Returns: a L<Paws::EC2::GetHostReservationPurchasePreviewResult> instance

Preview a reservation purchase with configurations that match those of
your Dedicated Host. You must have active Dedicated Hosts in your
account before you purchase a reservation.

This is a preview of the PurchaseHostReservation action and does not
result in the offering being purchased.


=head2 GetLaunchTemplateData

=over

=item InstanceId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetLaunchTemplateData>

Returns: a L<Paws::EC2::GetLaunchTemplateDataResult> instance

Retrieves the configuration data of the specified instance. You can use
this data to create a launch template.

This action calls on other describe actions to get instance
information. Depending on your instance configuration, you may need to
allow the following actions in your IAM policy:
DescribeSpotInstanceRequests, DescribeInstanceCreditSpecifications,
DescribeVolumes, DescribeInstanceAttribute, and DescribeElasticGpus.
Or, you can allow C<describe*> depending on your instance requirements.


=head2 GetManagedPrefixListAssociations

=over

=item PrefixListId => Str

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetManagedPrefixListAssociations>

Returns: a L<Paws::EC2::GetManagedPrefixListAssociationsResult> instance

Gets information about the resources that are associated with the
specified managed prefix list.


=head2 GetManagedPrefixListEntries

=over

=item PrefixListId => Str

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TargetVersion => Int]


=back

Each argument is described in detail in: L<Paws::EC2::GetManagedPrefixListEntries>

Returns: a L<Paws::EC2::GetManagedPrefixListEntriesResult> instance

Gets information about the entries for a specified managed prefix list.


=head2 GetPasswordData

=over

=item InstanceId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetPasswordData>

Returns: a L<Paws::EC2::GetPasswordDataResult> instance

Retrieves the encrypted administrator password for a running Windows
instance.

The Windows password is generated at boot by the C<EC2Config> service
or C<EC2Launch> scripts (Windows Server 2016 and later). This usually
only happens the first time an instance is launched. For more
information, see EC2Config
(https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/UsingConfig_WinAMI.html)
and EC2Launch
(https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2launch.html)
in the I<Amazon EC2 User Guide>.

For the C<EC2Config> service, the password is not generated for
rebundled AMIs unless C<Ec2SetPassword> is enabled before bundling.

The password is encrypted using the key pair that you specified when
you launched the instance. You must provide the corresponding key pair
file.

When you launch an instance, password generation and encryption may
take a few minutes. If you try to retrieve the password before it's
available, the output returns an empty string. We recommend that you
wait up to 15 minutes after launching an instance before trying to
retrieve the generated password.


=head2 GetReservedInstancesExchangeQuote

=over

=item ReservedInstanceIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]

=item [TargetConfigurations => ArrayRef[L<Paws::EC2::TargetConfigurationRequest>]]


=back

Each argument is described in detail in: L<Paws::EC2::GetReservedInstancesExchangeQuote>

Returns: a L<Paws::EC2::GetReservedInstancesExchangeQuoteResult> instance

Returns a quote and exchange information for exchanging one or more
specified Convertible Reserved Instances for a new Convertible Reserved
Instance. If the exchange cannot be performed, the reason is returned
in the response. Use AcceptReservedInstancesExchangeQuote to perform
the exchange.


=head2 GetSerialConsoleAccessStatus

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::GetSerialConsoleAccessStatus>

Returns: a L<Paws::EC2::GetSerialConsoleAccessStatusResult> instance

Retrieves the access status of your account to the EC2 serial console
of all instances. By default, access to the EC2 serial console is
disabled for your account. For more information, see Manage account
access to the EC2 serial console
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configure-access-to-serial-console.html#serial-console-account-access)
in the I<Amazon EC2 User Guide>.


=head2 GetTransitGatewayAttachmentPropagations

=over

=item TransitGatewayAttachmentId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetTransitGatewayAttachmentPropagations>

Returns: a L<Paws::EC2::GetTransitGatewayAttachmentPropagationsResult> instance

Lists the route tables to which the specified resource attachment
propagates routes.


=head2 GetTransitGatewayMulticastDomainAssociations

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayMulticastDomainId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetTransitGatewayMulticastDomainAssociations>

Returns: a L<Paws::EC2::GetTransitGatewayMulticastDomainAssociationsResult> instance

Gets information about the associations for the transit gateway
multicast domain.


=head2 GetTransitGatewayPrefixListReferences

=over

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetTransitGatewayPrefixListReferences>

Returns: a L<Paws::EC2::GetTransitGatewayPrefixListReferencesResult> instance

Gets information about the prefix list references in a specified
transit gateway route table.


=head2 GetTransitGatewayRouteTableAssociations

=over

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetTransitGatewayRouteTableAssociations>

Returns: a L<Paws::EC2::GetTransitGatewayRouteTableAssociationsResult> instance

Gets information about the associations for the specified transit
gateway route table.


=head2 GetTransitGatewayRouteTablePropagations

=over

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::GetTransitGatewayRouteTablePropagations>

Returns: a L<Paws::EC2::GetTransitGatewayRouteTablePropagationsResult> instance

Gets information about the route table propagations for the specified
transit gateway route table.


=head2 ImportClientVpnClientCertificateRevocationList

=over

=item CertificateRevocationList => Str

=item ClientVpnEndpointId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ImportClientVpnClientCertificateRevocationList>

Returns: a L<Paws::EC2::ImportClientVpnClientCertificateRevocationListResult> instance

Uploads a client certificate revocation list to the specified Client
VPN endpoint. Uploading a client certificate revocation list overwrites
the existing client certificate revocation list.

Uploading a client certificate revocation list resets existing client
connections.


=head2 ImportImage

=over

=item [Architecture => Str]

=item [ClientData => L<Paws::EC2::ClientData>]

=item [ClientToken => Str]

=item [Description => Str]

=item [DiskContainers => ArrayRef[L<Paws::EC2::ImageDiskContainer>]]

=item [DryRun => Bool]

=item [Encrypted => Bool]

=item [Hypervisor => Str]

=item [KmsKeyId => Str]

=item [LicenseSpecifications => ArrayRef[L<Paws::EC2::ImportImageLicenseConfigurationRequest>]]

=item [LicenseType => Str]

=item [Platform => Str]

=item [RoleName => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::ImportImage>

Returns: a L<Paws::EC2::ImportImageResult> instance

Import single or multi-volume disk images or EBS snapshots into an
Amazon Machine Image (AMI).

For more information, see Importing a VM as an image using VM
Import/Export
(https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html)
in the I<VM Import/Export User Guide>.


=head2 ImportInstance

=over

=item Platform => Str

=item [Description => Str]

=item [DiskImages => ArrayRef[L<Paws::EC2::DiskImage>]]

=item [DryRun => Bool]

=item [LaunchSpecification => L<Paws::EC2::ImportInstanceLaunchSpecification>]


=back

Each argument is described in detail in: L<Paws::EC2::ImportInstance>

Returns: a L<Paws::EC2::ImportInstanceResult> instance

Creates an import instance task using metadata from the specified disk
image.

This API action supports only single-volume VMs. To import multi-volume
VMs, use ImportImage instead.

This API action is not supported by the AWS Command Line Interface (AWS
CLI). For information about using the Amazon EC2 CLI, which is
deprecated, see Importing a VM to Amazon EC2
(https://awsdocs.s3.amazonaws.com/EC2/ec2-clt.pdf#UsingVirtualMachinesinAmazonEC2)
in the I<Amazon EC2 CLI Reference> PDF file.

For information about the import manifest referenced by this API
action, see VM Import Manifest
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).


=head2 ImportKeyPair

=over

=item KeyName => Str

=item PublicKeyMaterial => Str

=item [DryRun => Bool]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::ImportKeyPair>

Returns: a L<Paws::EC2::ImportKeyPairResult> instance

Imports the public key from an RSA key pair that you created with a
third-party tool. Compare this with CreateKeyPair, in which AWS creates
the key pair and gives the keys to you (AWS keeps a copy of the public
key). With ImportKeyPair, you create the key pair and give AWS just the
public key. The private key is never transferred between you and AWS.

For more information about key pairs, see Key Pairs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 ImportSnapshot

=over

=item [ClientData => L<Paws::EC2::ClientData>]

=item [ClientToken => Str]

=item [Description => Str]

=item [DiskContainer => L<Paws::EC2::SnapshotDiskContainer>]

=item [DryRun => Bool]

=item [Encrypted => Bool]

=item [KmsKeyId => Str]

=item [RoleName => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::ImportSnapshot>

Returns: a L<Paws::EC2::ImportSnapshotResult> instance

Imports a disk into an EBS snapshot.

For more information, see Importing a disk as a snapshot using VM
Import/Export
(https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-import-snapshot.html)
in the I<VM Import/Export User Guide>.


=head2 ImportVolume

=over

=item AvailabilityZone => Str

=item Image => L<Paws::EC2::DiskImageDetail>

=item Volume => L<Paws::EC2::VolumeDetail>

=item [Description => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ImportVolume>

Returns: a L<Paws::EC2::ImportVolumeResult> instance

Creates an import volume task using metadata from the specified disk
image.

This API action supports only single-volume VMs. To import multi-volume
VMs, use ImportImage instead. To import a disk to a snapshot, use
ImportSnapshot instead.

This API action is not supported by the AWS Command Line Interface (AWS
CLI). For information about using the Amazon EC2 CLI, which is
deprecated, see Importing Disks to Amazon EBS
(https://awsdocs.s3.amazonaws.com/EC2/ec2-clt.pdf#importing-your-volumes-into-amazon-ebs)
in the I<Amazon EC2 CLI Reference> PDF file.

For information about the import manifest referenced by this API
action, see VM Import Manifest
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).


=head2 ModifyAddressAttribute

=over

=item AllocationId => Str

=item [DomainName => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyAddressAttribute>

Returns: a L<Paws::EC2::ModifyAddressAttributeResult> instance

Modifies an attribute of the specified Elastic IP address. For
requirements, see Using reverse DNS for email applications
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html#Using_Elastic_Addressing_Reverse_DNS).


=head2 ModifyAvailabilityZoneGroup

=over

=item GroupName => Str

=item OptInStatus => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyAvailabilityZoneGroup>

Returns: a L<Paws::EC2::ModifyAvailabilityZoneGroupResult> instance

Changes the opt-in status of the Local Zone and Wavelength Zone group
for your account.

Use DescribeAvailabilityZones
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeAvailabilityZones.html)
to view the value for C<GroupName>.


=head2 ModifyCapacityReservation

=over

=item CapacityReservationId => Str

=item [Accept => Bool]

=item [DryRun => Bool]

=item [EndDate => Str]

=item [EndDateType => Str]

=item [InstanceCount => Int]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyCapacityReservation>

Returns: a L<Paws::EC2::ModifyCapacityReservationResult> instance

Modifies a Capacity Reservation's capacity and the conditions under
which it is to be released. You cannot change a Capacity Reservation's
instance type, EBS optimization, instance store settings, platform,
Availability Zone, or instance eligibility. If you need to modify any
of these attributes, we recommend that you cancel the Capacity
Reservation, and then create a new one with the required attributes.


=head2 ModifyClientVpnEndpoint

=over

=item ClientVpnEndpointId => Str

=item [ClientConnectOptions => L<Paws::EC2::ClientConnectOptions>]

=item [ConnectionLogOptions => L<Paws::EC2::ConnectionLogOptions>]

=item [Description => Str]

=item [DnsServers => L<Paws::EC2::DnsServersOptionsModifyStructure>]

=item [DryRun => Bool]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SelfServicePortal => Str]

=item [ServerCertificateArn => Str]

=item [SplitTunnel => Bool]

=item [VpcId => Str]

=item [VpnPort => Int]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyClientVpnEndpoint>

Returns: a L<Paws::EC2::ModifyClientVpnEndpointResult> instance

Modifies the specified Client VPN endpoint. Modifying the DNS server
resets existing client connections.


=head2 ModifyDefaultCreditSpecification

=over

=item CpuCredits => Str

=item InstanceFamily => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyDefaultCreditSpecification>

Returns: a L<Paws::EC2::ModifyDefaultCreditSpecificationResult> instance

Modifies the default credit option for CPU usage of burstable
performance instances. The default credit option is set at the account
level per AWS Region, and is specified per instance family. All new
burstable performance instances in the account launch using the default
credit option.

C<ModifyDefaultCreditSpecification> is an asynchronous operation, which
works at an AWS Region level and modifies the credit option for each
Availability Zone. All zones in a Region are updated within five
minutes. But if instances are launched during this operation, they
might not get the new credit option until the zone is updated. To
verify whether the update has occurred, you can call
C<GetDefaultCreditSpecification> and check
C<DefaultCreditSpecification> for updates.

For more information, see Burstable performance instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html)
in the I<Amazon EC2 User Guide>.


=head2 ModifyEbsDefaultKmsKeyId

=over

=item KmsKeyId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyEbsDefaultKmsKeyId>

Returns: a L<Paws::EC2::ModifyEbsDefaultKmsKeyIdResult> instance

Changes the default customer master key (CMK) for EBS encryption by
default for your account in this Region.

AWS creates a unique AWS managed CMK in each Region for use with
encryption by default. If you change the default CMK to a symmetric
customer managed CMK, it is used instead of the AWS managed CMK. To
reset the default CMK to the AWS managed CMK for EBS, use
ResetEbsDefaultKmsKeyId. Amazon EBS does not support asymmetric CMKs.

If you delete or disable the customer managed CMK that you specified
for use with encryption by default, your instances will fail to launch.

For more information, see Amazon EBS encryption
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 ModifyFleet

=over

=item FleetId => Str

=item [DryRun => Bool]

=item [ExcessCapacityTerminationPolicy => Str]

=item [LaunchTemplateConfigs => ArrayRef[L<Paws::EC2::FleetLaunchTemplateConfigRequest>]]

=item [TargetCapacitySpecification => L<Paws::EC2::TargetCapacitySpecificationRequest>]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyFleet>

Returns: a L<Paws::EC2::ModifyFleetResult> instance

Modifies the specified EC2 Fleet.

You can only modify an EC2 Fleet request of type C<maintain>.

While the EC2 Fleet is being modified, it is in the C<modifying> state.

To scale up your EC2 Fleet, increase its target capacity. The EC2 Fleet
launches the additional Spot Instances according to the allocation
strategy for the EC2 Fleet request. If the allocation strategy is
C<lowest-price>, the EC2 Fleet launches instances using the Spot
Instance pool with the lowest price. If the allocation strategy is
C<diversified>, the EC2 Fleet distributes the instances across the Spot
Instance pools. If the allocation strategy is C<capacity-optimized>,
EC2 Fleet launches instances from Spot Instance pools with optimal
capacity for the number of instances that are launching.

To scale down your EC2 Fleet, decrease its target capacity. First, the
EC2 Fleet cancels any open requests that exceed the new target
capacity. You can request that the EC2 Fleet terminate Spot Instances
until the size of the fleet no longer exceeds the new target capacity.
If the allocation strategy is C<lowest-price>, the EC2 Fleet terminates
the instances with the highest price per unit. If the allocation
strategy is C<capacity-optimized>, the EC2 Fleet terminates the
instances in the Spot Instance pools that have the least available Spot
Instance capacity. If the allocation strategy is C<diversified>, the
EC2 Fleet terminates instances across the Spot Instance pools.
Alternatively, you can request that the EC2 Fleet keep the fleet at its
current size, but not replace any Spot Instances that are interrupted
or that you terminate manually.

If you are finished with your EC2 Fleet for now, but will use it again
later, you can set the target capacity to 0.


=head2 ModifyFpgaImageAttribute

=over

=item FpgaImageId => Str

=item [Attribute => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [LoadPermission => L<Paws::EC2::LoadPermissionModifications>]

=item [Name => Str]

=item [OperationType => Str]

=item [ProductCodes => ArrayRef[Str|Undef]]

=item [UserGroups => ArrayRef[Str|Undef]]

=item [UserIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyFpgaImageAttribute>

Returns: a L<Paws::EC2::ModifyFpgaImageAttributeResult> instance

Modifies the specified attribute of the specified Amazon FPGA Image
(AFI).


=head2 ModifyHosts

=over

=item HostIds => ArrayRef[Str|Undef]

=item [AutoPlacement => Str]

=item [HostRecovery => Str]

=item [InstanceFamily => Str]

=item [InstanceType => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyHosts>

Returns: a L<Paws::EC2::ModifyHostsResult> instance

Modify the auto-placement setting of a Dedicated Host. When
auto-placement is enabled, any instances that you launch with a tenancy
of C<host> but without a specific host ID are placed onto any available
Dedicated Host in your account that has auto-placement enabled. When
auto-placement is disabled, you need to provide a host ID to have the
instance launch onto a specific host. If no host ID is provided, the
instance is launched onto a suitable host with auto-placement enabled.

You can also use this API action to modify a Dedicated Host to support
either multiple instance types in an instance family, or to support a
specific instance type only.


=head2 ModifyIdentityIdFormat

=over

=item PrincipalArn => Str

=item Resource => Str

=item UseLongIds => Bool


=back

Each argument is described in detail in: L<Paws::EC2::ModifyIdentityIdFormat>

Returns: nothing

Modifies the ID format of a resource for a specified IAM user, IAM
role, or the root user for an account; or all IAM users, IAM roles, and
the root user for an account. You can specify that resources should
receive longer IDs (17-character IDs) when they are created.

This request can only be used to modify longer ID settings for resource
types that are within the opt-in period. Resources currently in their
opt-in period include: C<bundle> | C<conversion-task> |
C<customer-gateway> | C<dhcp-options> | C<elastic-ip-allocation> |
C<elastic-ip-association> | C<export-task> | C<flow-log> | C<image> |
C<import-task> | C<internet-gateway> | C<network-acl> |
C<network-acl-association> | C<network-interface> |
C<network-interface-attachment> | C<prefix-list> | C<route-table> |
C<route-table-association> | C<security-group> | C<subnet> |
C<subnet-cidr-block-association> | C<vpc> |
C<vpc-cidr-block-association> | C<vpc-endpoint> |
C<vpc-peering-connection> | C<vpn-connection> | C<vpn-gateway>.

For more information, see Resource IDs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

This setting applies to the principal specified in the request; it does
not apply to the principal that makes the request.

Resources created with longer IDs are visible to all IAM roles and
users, regardless of these settings and provided that they have
permission to use the relevant C<Describe> command for the resource
type.


=head2 ModifyIdFormat

=over

=item Resource => Str

=item UseLongIds => Bool


=back

Each argument is described in detail in: L<Paws::EC2::ModifyIdFormat>

Returns: nothing

Modifies the ID format for the specified resource on a per-Region
basis. You can specify that resources should receive longer IDs
(17-character IDs) when they are created.

This request can only be used to modify longer ID settings for resource
types that are within the opt-in period. Resources currently in their
opt-in period include: C<bundle> | C<conversion-task> |
C<customer-gateway> | C<dhcp-options> | C<elastic-ip-allocation> |
C<elastic-ip-association> | C<export-task> | C<flow-log> | C<image> |
C<import-task> | C<internet-gateway> | C<network-acl> |
C<network-acl-association> | C<network-interface> |
C<network-interface-attachment> | C<prefix-list> | C<route-table> |
C<route-table-association> | C<security-group> | C<subnet> |
C<subnet-cidr-block-association> | C<vpc> |
C<vpc-cidr-block-association> | C<vpc-endpoint> |
C<vpc-peering-connection> | C<vpn-connection> | C<vpn-gateway>.

This setting applies to the IAM user who makes the request; it does not
apply to the entire AWS account. By default, an IAM user defaults to
the same settings as the root user. If you're using this action as the
root user, then these settings apply to the entire account, unless an
IAM user explicitly overrides these settings for themselves. For more
information, see Resource IDs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

Resources created with longer IDs are visible to all IAM roles and
users, regardless of these settings and provided that they have
permission to use the relevant C<Describe> command for the resource
type.


=head2 ModifyImageAttribute

=over

=item ImageId => Str

=item [Attribute => Str]

=item [Description => L<Paws::EC2::AttributeValue>]

=item [DryRun => Bool]

=item [LaunchPermission => L<Paws::EC2::LaunchPermissionModifications>]

=item [OperationType => Str]

=item [ProductCodes => ArrayRef[Str|Undef]]

=item [UserGroups => ArrayRef[Str|Undef]]

=item [UserIds => ArrayRef[Str|Undef]]

=item [Value => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyImageAttribute>

Returns: nothing

Modifies the specified attribute of the specified AMI. You can specify
only one attribute at a time. You can use the C<Attribute> parameter to
specify the attribute or one of the following parameters:
C<Description>, C<LaunchPermission>, or C<ProductCode>.

AWS Marketplace product codes cannot be modified. Images with an AWS
Marketplace product code cannot be made public.

To enable the SriovNetSupport enhanced networking attribute of an
image, enable SriovNetSupport on an instance and create an AMI from the
instance.


=head2 ModifyInstanceAttribute

=over

=item InstanceId => Str

=item [Attribute => Str]

=item [BlockDeviceMappings => ArrayRef[L<Paws::EC2::InstanceBlockDeviceMappingSpecification>]]

=item [DisableApiTermination => L<Paws::EC2::AttributeBooleanValue>]

=item [DryRun => Bool]

=item [EbsOptimized => L<Paws::EC2::AttributeBooleanValue>]

=item [EnaSupport => L<Paws::EC2::AttributeBooleanValue>]

=item [Groups => ArrayRef[Str|Undef]]

=item [InstanceInitiatedShutdownBehavior => L<Paws::EC2::AttributeValue>]

=item [InstanceType => L<Paws::EC2::AttributeValue>]

=item [Kernel => L<Paws::EC2::AttributeValue>]

=item [Ramdisk => L<Paws::EC2::AttributeValue>]

=item [SourceDestCheck => L<Paws::EC2::AttributeBooleanValue>]

=item [SriovNetSupport => L<Paws::EC2::AttributeValue>]

=item [UserData => L<Paws::EC2::BlobAttributeValue>]

=item [Value => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyInstanceAttribute>

Returns: nothing

Modifies the specified attribute of the specified instance. You can
specify only one attribute at a time.

B<Note: >Using this action to change the security groups associated
with an elastic network interface (ENI) attached to an instance in a
VPC can result in an error if the instance has more than one ENI. To
change the security groups associated with an ENI attached to an
instance that has multiple ENIs, we recommend that you use the
ModifyNetworkInterfaceAttribute action.

To modify some attributes, the instance must be stopped. For more
information, see Modifying attributes of a stopped instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_ChangingAttributesWhileInstanceStopped.html)
in the I<Amazon EC2 User Guide>.


=head2 ModifyInstanceCapacityReservationAttributes

=over

=item CapacityReservationSpecification => L<Paws::EC2::CapacityReservationSpecification>

=item InstanceId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyInstanceCapacityReservationAttributes>

Returns: a L<Paws::EC2::ModifyInstanceCapacityReservationAttributesResult> instance

Modifies the Capacity Reservation settings for a stopped instance. Use
this action to configure an instance to target a specific Capacity
Reservation, run in any C<open> Capacity Reservation with matching
attributes, or run On-Demand Instance capacity.


=head2 ModifyInstanceCreditSpecification

=over

=item InstanceCreditSpecifications => ArrayRef[L<Paws::EC2::InstanceCreditSpecificationRequest>]

=item [ClientToken => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyInstanceCreditSpecification>

Returns: a L<Paws::EC2::ModifyInstanceCreditSpecificationResult> instance

Modifies the credit option for CPU usage on a running or stopped
burstable performance instance. The credit options are C<standard> and
C<unlimited>.

For more information, see Burstable performance instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html)
in the I<Amazon EC2 User Guide>.


=head2 ModifyInstanceEventStartTime

=over

=item InstanceEventId => Str

=item InstanceId => Str

=item NotBefore => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyInstanceEventStartTime>

Returns: a L<Paws::EC2::ModifyInstanceEventStartTimeResult> instance

Modifies the start time for a scheduled Amazon EC2 instance event.


=head2 ModifyInstanceMetadataOptions

=over

=item InstanceId => Str

=item [DryRun => Bool]

=item [HttpEndpoint => Str]

=item [HttpPutResponseHopLimit => Int]

=item [HttpTokens => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyInstanceMetadataOptions>

Returns: a L<Paws::EC2::ModifyInstanceMetadataOptionsResult> instance

Modify the instance metadata parameters on a running or stopped
instance. When you modify the parameters on a stopped instance, they
are applied when the instance is started. When you modify the
parameters on a running instance, the API responds with a state of
E<ldquo>pendingE<rdquo>. After the parameter modifications are
successfully applied to the instance, the state of the modifications
changes from E<ldquo>pendingE<rdquo> to E<ldquo>appliedE<rdquo> in
subsequent describe-instances API calls. For more information, see
Instance metadata and user data
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html)
in the I<Amazon EC2 User Guide>.


=head2 ModifyInstancePlacement

=over

=item InstanceId => Str

=item [Affinity => Str]

=item [GroupName => Str]

=item [HostId => Str]

=item [HostResourceGroupArn => Str]

=item [PartitionNumber => Int]

=item [Tenancy => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyInstancePlacement>

Returns: a L<Paws::EC2::ModifyInstancePlacementResult> instance

Modifies the placement attributes for a specified instance. You can do
the following:

=over

=item *

Modify the affinity between an instance and a Dedicated Host
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html).
When affinity is set to C<host> and the instance is not associated with
a specific Dedicated Host, the next time the instance is launched, it
is automatically associated with the host on which it lands. If the
instance is restarted or rebooted, this relationship persists.

=item *

Change the Dedicated Host with which an instance is associated.

=item *

Change the instance tenancy of an instance from C<host> to
C<dedicated>, or from C<dedicated> to C<host>.

=item *

Move an instance to or from a placement group
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html).

=back

At least one attribute for affinity, host ID, tenancy, or placement
group name must be specified in the request. Affinity and tenancy can
be modified in the same request.

To modify the host ID, tenancy, placement group, or partition for an
instance, the instance must be in the C<stopped> state.


=head2 ModifyLaunchTemplate

=over

=item [ClientToken => Str]

=item [DefaultVersion => Str]

=item [DryRun => Bool]

=item [LaunchTemplateId => Str]

=item [LaunchTemplateName => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyLaunchTemplate>

Returns: a L<Paws::EC2::ModifyLaunchTemplateResult> instance

Modifies a launch template. You can specify which version of the launch
template to set as the default version. When launching an instance, the
default version applies when a launch template version is not
specified.


=head2 ModifyManagedPrefixList

=over

=item PrefixListId => Str

=item [AddEntries => ArrayRef[L<Paws::EC2::AddPrefixListEntry>]]

=item [CurrentVersion => Int]

=item [DryRun => Bool]

=item [PrefixListName => Str]

=item [RemoveEntries => ArrayRef[L<Paws::EC2::RemovePrefixListEntry>]]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyManagedPrefixList>

Returns: a L<Paws::EC2::ModifyManagedPrefixListResult> instance

Modifies the specified managed prefix list.

Adding or removing entries in a prefix list creates a new version of
the prefix list. Changing the name of the prefix list does not affect
the version.

If you specify a current version number that does not match the true
current version number, the request fails.


=head2 ModifyNetworkInterfaceAttribute

=over

=item NetworkInterfaceId => Str

=item [Attachment => L<Paws::EC2::NetworkInterfaceAttachmentChanges>]

=item [Description => L<Paws::EC2::AttributeValue>]

=item [DryRun => Bool]

=item [Groups => ArrayRef[Str|Undef]]

=item [SourceDestCheck => L<Paws::EC2::AttributeBooleanValue>]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyNetworkInterfaceAttribute>

Returns: nothing

Modifies the specified network interface attribute. You can specify
only one attribute at a time. You can use this action to attach and
detach security groups from an existing EC2 instance.


=head2 ModifyReservedInstances

=over

=item ReservedInstancesIds => ArrayRef[Str|Undef]

=item TargetConfigurations => ArrayRef[L<Paws::EC2::ReservedInstancesConfiguration>]

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyReservedInstances>

Returns: a L<Paws::EC2::ModifyReservedInstancesResult> instance

Modifies the Availability Zone, instance count, instance type, or
network platform (EC2-Classic or EC2-VPC) of your Reserved Instances.
The Reserved Instances to be modified must be identical, except for
Availability Zone, network platform, and instance type.

For more information, see Modifying Reserved Instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html)
in the I<Amazon EC2 User Guide>.


=head2 ModifySnapshotAttribute

=over

=item SnapshotId => Str

=item [Attribute => Str]

=item [CreateVolumePermission => L<Paws::EC2::CreateVolumePermissionModifications>]

=item [DryRun => Bool]

=item [GroupNames => ArrayRef[Str|Undef]]

=item [OperationType => Str]

=item [UserIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::ModifySnapshotAttribute>

Returns: nothing

Adds or removes permission settings for the specified snapshot. You may
add or remove specified AWS account IDs from a snapshot's list of
create volume permissions, but you cannot do both in a single
operation. If you need to both add and remove account IDs for a
snapshot, you must use multiple operations. You can make up to 500
modifications to a snapshot in a single operation.

Encrypted snapshots and snapshots with AWS Marketplace product codes
cannot be made public. Snapshots encrypted with your default CMK cannot
be shared with other accounts.

For more information about modifying snapshot permissions, see Sharing
snapshots
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 ModifySpotFleetRequest

=over

=item SpotFleetRequestId => Str

=item [ExcessCapacityTerminationPolicy => Str]

=item [LaunchTemplateConfigs => ArrayRef[L<Paws::EC2::LaunchTemplateConfig>]]

=item [OnDemandTargetCapacity => Int]

=item [TargetCapacity => Int]


=back

Each argument is described in detail in: L<Paws::EC2::ModifySpotFleetRequest>

Returns: a L<Paws::EC2::ModifySpotFleetRequestResponse> instance

Modifies the specified Spot Fleet request.

You can only modify a Spot Fleet request of type C<maintain>.

While the Spot Fleet request is being modified, it is in the
C<modifying> state.

To scale up your Spot Fleet, increase its target capacity. The Spot
Fleet launches the additional Spot Instances according to the
allocation strategy for the Spot Fleet request. If the allocation
strategy is C<lowestPrice>, the Spot Fleet launches instances using the
Spot Instance pool with the lowest price. If the allocation strategy is
C<diversified>, the Spot Fleet distributes the instances across the
Spot Instance pools. If the allocation strategy is
C<capacityOptimized>, Spot Fleet launches instances from Spot Instance
pools with optimal capacity for the number of instances that are
launching.

To scale down your Spot Fleet, decrease its target capacity. First, the
Spot Fleet cancels any open requests that exceed the new target
capacity. You can request that the Spot Fleet terminate Spot Instances
until the size of the fleet no longer exceeds the new target capacity.
If the allocation strategy is C<lowestPrice>, the Spot Fleet terminates
the instances with the highest price per unit. If the allocation
strategy is C<capacityOptimized>, the Spot Fleet terminates the
instances in the Spot Instance pools that have the least available Spot
Instance capacity. If the allocation strategy is C<diversified>, the
Spot Fleet terminates instances across the Spot Instance pools.
Alternatively, you can request that the Spot Fleet keep the fleet at
its current size, but not replace any Spot Instances that are
interrupted or that you terminate manually.

If you are finished with your Spot Fleet for now, but will use it again
later, you can set the target capacity to 0.


=head2 ModifySubnetAttribute

=over

=item SubnetId => Str

=item [AssignIpv6AddressOnCreation => L<Paws::EC2::AttributeBooleanValue>]

=item [CustomerOwnedIpv4Pool => Str]

=item [MapCustomerOwnedIpOnLaunch => L<Paws::EC2::AttributeBooleanValue>]

=item [MapPublicIpOnLaunch => L<Paws::EC2::AttributeBooleanValue>]


=back

Each argument is described in detail in: L<Paws::EC2::ModifySubnetAttribute>

Returns: nothing

Modifies a subnet attribute. You can only modify one attribute at a
time.


=head2 ModifyTrafficMirrorFilterNetworkServices

=over

=item TrafficMirrorFilterId => Str

=item [AddNetworkServices => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [RemoveNetworkServices => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyTrafficMirrorFilterNetworkServices>

Returns: a L<Paws::EC2::ModifyTrafficMirrorFilterNetworkServicesResult> instance

Allows or restricts mirroring network services.

By default, Amazon DNS network services are not eligible for Traffic
Mirror. Use C<AddNetworkServices> to add network services to a Traffic
Mirror filter. When a network service is added to the Traffic Mirror
filter, all traffic related to that network service will be mirrored.
When you no longer want to mirror network services, use
C<RemoveNetworkServices> to remove the network services from the
Traffic Mirror filter.

For information about filter rule properties, see Network Services
(https://docs.aws.amazon.com/vpc/latest/mirroring/traffic-mirroring-considerations.html)
in the I<Traffic Mirroring User Guide >.


=head2 ModifyTrafficMirrorFilterRule

=over

=item TrafficMirrorFilterRuleId => Str

=item [Description => Str]

=item [DestinationCidrBlock => Str]

=item [DestinationPortRange => L<Paws::EC2::TrafficMirrorPortRangeRequest>]

=item [DryRun => Bool]

=item [Protocol => Int]

=item [RemoveFields => ArrayRef[Str|Undef]]

=item [RuleAction => Str]

=item [RuleNumber => Int]

=item [SourceCidrBlock => Str]

=item [SourcePortRange => L<Paws::EC2::TrafficMirrorPortRangeRequest>]

=item [TrafficDirection => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyTrafficMirrorFilterRule>

Returns: a L<Paws::EC2::ModifyTrafficMirrorFilterRuleResult> instance

Modifies the specified Traffic Mirror rule.

C<DestinationCidrBlock> and C<SourceCidrBlock> must both be an IPv4
range or an IPv6 range.


=head2 ModifyTrafficMirrorSession

=over

=item TrafficMirrorSessionId => Str

=item [Description => Str]

=item [DryRun => Bool]

=item [PacketLength => Int]

=item [RemoveFields => ArrayRef[Str|Undef]]

=item [SessionNumber => Int]

=item [TrafficMirrorFilterId => Str]

=item [TrafficMirrorTargetId => Str]

=item [VirtualNetworkId => Int]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyTrafficMirrorSession>

Returns: a L<Paws::EC2::ModifyTrafficMirrorSessionResult> instance

Modifies a Traffic Mirror session.


=head2 ModifyTransitGateway

=over

=item TransitGatewayId => Str

=item [Description => Str]

=item [DryRun => Bool]

=item [Options => L<Paws::EC2::ModifyTransitGatewayOptions>]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyTransitGateway>

Returns: a L<Paws::EC2::ModifyTransitGatewayResult> instance

Modifies the specified transit gateway. When you modify a transit
gateway, the modified options are applied to new transit gateway
attachments only. Your existing transit gateway attachments are not
modified.


=head2 ModifyTransitGatewayPrefixListReference

=over

=item PrefixListId => Str

=item TransitGatewayRouteTableId => Str

=item [Blackhole => Bool]

=item [DryRun => Bool]

=item [TransitGatewayAttachmentId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyTransitGatewayPrefixListReference>

Returns: a L<Paws::EC2::ModifyTransitGatewayPrefixListReferenceResult> instance

Modifies a reference (route) to a prefix list in a specified transit
gateway route table.


=head2 ModifyTransitGatewayVpcAttachment

=over

=item TransitGatewayAttachmentId => Str

=item [AddSubnetIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [Options => L<Paws::EC2::ModifyTransitGatewayVpcAttachmentRequestOptions>]

=item [RemoveSubnetIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyTransitGatewayVpcAttachment>

Returns: a L<Paws::EC2::ModifyTransitGatewayVpcAttachmentResult> instance

Modifies the specified VPC attachment.


=head2 ModifyVolume

=over

=item VolumeId => Str

=item [DryRun => Bool]

=item [Iops => Int]

=item [MultiAttachEnabled => Bool]

=item [Size => Int]

=item [Throughput => Int]

=item [VolumeType => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVolume>

Returns: a L<Paws::EC2::ModifyVolumeResult> instance

You can modify several parameters of an existing EBS volume, including
volume size, volume type, and IOPS capacity. If your EBS volume is
attached to a current-generation EC2 instance type, you might be able
to apply these changes without stopping the instance or detaching the
volume from it. For more information about modifying an EBS volume
running Linux, see Modifying the size, IOPS, or type of an EBS volume
on Linux
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html).
For more information about modifying an EBS volume running Windows, see
Modifying the size, IOPS, or type of an EBS volume on Windows
(https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html).

When you complete a resize operation on your volume, you need to extend
the volume's file-system size to take advantage of the new storage
capacity. For information about extending a Linux file system, see
Extending a Linux file system
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#recognize-expanded-volume-linux).
For information about extending a Windows file system, see Extending a
Windows file system
(https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html#recognize-expanded-volume-windows).

You can use CloudWatch Events to check the status of a modification to
an EBS volume. For information about CloudWatch Events, see the Amazon
CloudWatch Events User Guide
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/). You can
also track the status of a modification using
DescribeVolumesModifications. For information about tracking status
changes using either method, see Monitoring volume modifications
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#monitoring_mods).

With previous-generation instance types, resizing an EBS volume might
require detaching and reattaching the volume or stopping and restarting
the instance. For more information, see Amazon EBS Elastic Volumes
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modify-volume.html)
(Linux) or Amazon EBS Elastic Volumes
(https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-modify-volume.html)
(Windows).

If you reach the maximum volume modification rate per volume limit, you
will need to wait at least six hours before applying further
modifications to the affected EBS volume.


=head2 ModifyVolumeAttribute

=over

=item VolumeId => Str

=item [AutoEnableIO => L<Paws::EC2::AttributeBooleanValue>]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVolumeAttribute>

Returns: nothing

Modifies a volume attribute.

By default, all I/O operations for the volume are suspended when the
data on the volume is determined to be potentially inconsistent, to
prevent undetectable, latent data corruption. The I/O access to the
volume can be resumed by first enabling I/O access and then checking
the data consistency on your volume.

You can change the default behavior to resume I/O operations. We
recommend that you change this only for boot volumes or for volumes
that are stateless or disposable.


=head2 ModifyVpcAttribute

=over

=item VpcId => Str

=item [EnableDnsHostnames => L<Paws::EC2::AttributeBooleanValue>]

=item [EnableDnsSupport => L<Paws::EC2::AttributeBooleanValue>]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpcAttribute>

Returns: nothing

Modifies the specified attribute of the specified VPC.


=head2 ModifyVpcEndpoint

=over

=item VpcEndpointId => Str

=item [AddRouteTableIds => ArrayRef[Str|Undef]]

=item [AddSecurityGroupIds => ArrayRef[Str|Undef]]

=item [AddSubnetIds => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [PolicyDocument => Str]

=item [PrivateDnsEnabled => Bool]

=item [RemoveRouteTableIds => ArrayRef[Str|Undef]]

=item [RemoveSecurityGroupIds => ArrayRef[Str|Undef]]

=item [RemoveSubnetIds => ArrayRef[Str|Undef]]

=item [ResetPolicy => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpcEndpoint>

Returns: a L<Paws::EC2::ModifyVpcEndpointResult> instance

Modifies attributes of a specified VPC endpoint. The attributes that
you can modify depend on the type of VPC endpoint (interface, gateway,
or Gateway Load Balancer). For more information, see VPC Endpoints
(https://docs.aws.amazon.com/vpc/latest/userguide/vpc-endpoints.html)
in the I<Amazon Virtual Private Cloud User Guide>.


=head2 ModifyVpcEndpointConnectionNotification

=over

=item ConnectionNotificationId => Str

=item [ConnectionEvents => ArrayRef[Str|Undef]]

=item [ConnectionNotificationArn => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpcEndpointConnectionNotification>

Returns: a L<Paws::EC2::ModifyVpcEndpointConnectionNotificationResult> instance

Modifies a connection notification for VPC endpoint or VPC endpoint
service. You can change the SNS topic for the notification, or the
events for which to be notified.


=head2 ModifyVpcEndpointServiceConfiguration

=over

=item ServiceId => Str

=item [AcceptanceRequired => Bool]

=item [AddGatewayLoadBalancerArns => ArrayRef[Str|Undef]]

=item [AddNetworkLoadBalancerArns => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [PrivateDnsName => Str]

=item [RemoveGatewayLoadBalancerArns => ArrayRef[Str|Undef]]

=item [RemoveNetworkLoadBalancerArns => ArrayRef[Str|Undef]]

=item [RemovePrivateDnsName => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpcEndpointServiceConfiguration>

Returns: a L<Paws::EC2::ModifyVpcEndpointServiceConfigurationResult> instance

Modifies the attributes of your VPC endpoint service configuration. You
can change the Network Load Balancers or Gateway Load Balancers for
your service, and you can specify whether acceptance is required for
requests to connect to your endpoint service through an interface VPC
endpoint.

If you set or modify the private DNS name, you must prove that you own
the private DNS domain name. For more information, see VPC Endpoint
Service Private DNS Name Verification
(https://docs.aws.amazon.com/vpc/latest/userguide/endpoint-services-dns-validation.html)
in the I<Amazon Virtual Private Cloud User Guide>.


=head2 ModifyVpcEndpointServicePermissions

=over

=item ServiceId => Str

=item [AddAllowedPrincipals => ArrayRef[Str|Undef]]

=item [DryRun => Bool]

=item [RemoveAllowedPrincipals => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpcEndpointServicePermissions>

Returns: a L<Paws::EC2::ModifyVpcEndpointServicePermissionsResult> instance

Modifies the permissions for your VPC endpoint service
(https://docs.aws.amazon.com/vpc/latest/userguide/endpoint-service.html).
You can add or remove permissions for service consumers (IAM users, IAM
roles, and AWS accounts) to connect to your endpoint service.

If you grant permissions to all principals, the service is public. Any
users who know the name of a public service can send a request to
attach an endpoint. If the service does not require manual approval,
attachments are automatically approved.


=head2 ModifyVpcPeeringConnectionOptions

=over

=item VpcPeeringConnectionId => Str

=item [AccepterPeeringConnectionOptions => L<Paws::EC2::PeeringConnectionOptionsRequest>]

=item [DryRun => Bool]

=item [RequesterPeeringConnectionOptions => L<Paws::EC2::PeeringConnectionOptionsRequest>]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpcPeeringConnectionOptions>

Returns: a L<Paws::EC2::ModifyVpcPeeringConnectionOptionsResult> instance

Modifies the VPC peering connection options on one side of a VPC
peering connection. You can do the following:

=over

=item *

Enable/disable communication over the peering connection between an
EC2-Classic instance that's linked to your VPC (using ClassicLink) and
instances in the peer VPC.

=item *

Enable/disable communication over the peering connection between
instances in your VPC and an EC2-Classic instance that's linked to the
peer VPC.

=item *

Enable/disable the ability to resolve public DNS hostnames to private
IP addresses when queried from instances in the peer VPC.

=back

If the peered VPCs are in the same AWS account, you can enable DNS
resolution for queries from the local VPC. This ensures that queries
from the local VPC resolve to private IP addresses in the peer VPC.
This option is not available if the peered VPCs are in different AWS
accounts or different Regions. For peered VPCs in different AWS
accounts, each AWS account owner must initiate a separate request to
modify the peering connection options. For inter-region peering
connections, you must use the Region for the requester VPC to modify
the requester VPC peering options and the Region for the accepter VPC
to modify the accepter VPC peering options. To verify which VPCs are
the accepter and the requester for a VPC peering connection, use the
DescribeVpcPeeringConnections command.


=head2 ModifyVpcTenancy

=over

=item InstanceTenancy => Str

=item VpcId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpcTenancy>

Returns: a L<Paws::EC2::ModifyVpcTenancyResult> instance

Modifies the instance tenancy attribute of the specified VPC. You can
change the instance tenancy attribute of a VPC to C<default> only. You
cannot change the instance tenancy attribute to C<dedicated>.

After you modify the tenancy of the VPC, any new instances that you
launch into the VPC have a tenancy of C<default>, unless you specify
otherwise during launch. The tenancy of any existing instances in the
VPC is not affected.

For more information, see Dedicated Instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 ModifyVpnConnection

=over

=item VpnConnectionId => Str

=item [CustomerGatewayId => Str]

=item [DryRun => Bool]

=item [TransitGatewayId => Str]

=item [VpnGatewayId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpnConnection>

Returns: a L<Paws::EC2::ModifyVpnConnectionResult> instance

Modifies the customer gateway or the target gateway of an AWS
Site-to-Site VPN connection. To modify the target gateway, the
following migration options are available:

=over

=item *

An existing virtual private gateway to a new virtual private gateway

=item *

An existing virtual private gateway to a transit gateway

=item *

An existing transit gateway to a new transit gateway

=item *

An existing transit gateway to a virtual private gateway

=back

Before you perform the migration to the new gateway, you must configure
the new gateway. Use CreateVpnGateway to create a virtual private
gateway, or CreateTransitGateway to create a transit gateway.

This step is required when you migrate from a virtual private gateway
with static routes to a transit gateway.

You must delete the static routes before you migrate to the new
gateway.

Keep a copy of the static route before you delete it. You will need to
add back these routes to the transit gateway after the VPN connection
migration is complete.

After you migrate to the new gateway, you might need to modify your VPC
route table. Use CreateRoute and DeleteRoute to make the changes
described in VPN Gateway Target Modification Required VPC Route Table
Updates
(https://docs.aws.amazon.com/vpn/latest/s2svpn/modify-vpn-target.html#step-update-routing)
in the I<AWS Site-to-Site VPN User Guide>.

When the new gateway is a transit gateway, modify the transit gateway
route table to allow traffic between the VPC and the AWS Site-to-Site
VPN connection. Use CreateTransitGatewayRoute to add the routes.

If you deleted VPN static routes, you must add the static routes to the
transit gateway route table.

After you perform this operation, the AWS VPN endpoint's IP addresses
on the AWS side and the tunnel options remain intact. Your AWS
Site-to-Site VPN connection will be temporarily unavailable for a brief
period while we provision the new endpoints.


=head2 ModifyVpnConnectionOptions

=over

=item VpnConnectionId => Str

=item [DryRun => Bool]

=item [LocalIpv4NetworkCidr => Str]

=item [LocalIpv6NetworkCidr => Str]

=item [RemoteIpv4NetworkCidr => Str]

=item [RemoteIpv6NetworkCidr => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpnConnectionOptions>

Returns: a L<Paws::EC2::ModifyVpnConnectionOptionsResult> instance

Modifies the connection options for your Site-to-Site VPN connection.

When you modify the VPN connection options, the VPN endpoint IP
addresses on the AWS side do not change, and the tunnel options do not
change. Your VPN connection will be temporarily unavailable for a brief
period while the VPN connection is updated.


=head2 ModifyVpnTunnelCertificate

=over

=item VpnConnectionId => Str

=item VpnTunnelOutsideIpAddress => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpnTunnelCertificate>

Returns: a L<Paws::EC2::ModifyVpnTunnelCertificateResult> instance

Modifies the VPN tunnel endpoint certificate.


=head2 ModifyVpnTunnelOptions

=over

=item TunnelOptions => L<Paws::EC2::ModifyVpnTunnelOptionsSpecification>

=item VpnConnectionId => Str

=item VpnTunnelOutsideIpAddress => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ModifyVpnTunnelOptions>

Returns: a L<Paws::EC2::ModifyVpnTunnelOptionsResult> instance

Modifies the options for a VPN tunnel in an AWS Site-to-Site VPN
connection. You can modify multiple options for a tunnel in a single
request, but you can only modify one tunnel at a time. For more
information, see Site-to-Site VPN Tunnel Options for Your Site-to-Site
VPN Connection
(https://docs.aws.amazon.com/vpn/latest/s2svpn/VPNTunnels.html) in the
I<AWS Site-to-Site VPN User Guide>.


=head2 MonitorInstances

=over

=item InstanceIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::MonitorInstances>

Returns: a L<Paws::EC2::MonitorInstancesResult> instance

Enables detailed monitoring for a running instance. Otherwise, basic
monitoring is enabled. For more information, see Monitoring your
instances and volumes
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html)
in the I<Amazon EC2 User Guide>.

To disable detailed monitoring, see .


=head2 MoveAddressToVpc

=over

=item PublicIp => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::MoveAddressToVpc>

Returns: a L<Paws::EC2::MoveAddressToVpcResult> instance

Moves an Elastic IP address from the EC2-Classic platform to the
EC2-VPC platform. The Elastic IP address must be allocated to your
account for more than 24 hours, and it must not be associated with an
instance. After the Elastic IP address is moved, it is no longer
available for use in the EC2-Classic platform, unless you move it back
using the RestoreAddressToClassic request. You cannot move an Elastic
IP address that was originally allocated for use in the EC2-VPC
platform to the EC2-Classic platform.


=head2 ProvisionByoipCidr

=over

=item Cidr => Str

=item [CidrAuthorizationContext => L<Paws::EC2::CidrAuthorizationContext>]

=item [Description => Str]

=item [DryRun => Bool]

=item [PoolTagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [PubliclyAdvertisable => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ProvisionByoipCidr>

Returns: a L<Paws::EC2::ProvisionByoipCidrResult> instance

Provisions an IPv4 or IPv6 address range for use with your AWS
resources through bring your own IP addresses (BYOIP) and creates a
corresponding address pool. After the address range is provisioned, it
is ready to be advertised using AdvertiseByoipCidr.

AWS verifies that you own the address range and are authorized to
advertise it. You must ensure that the address range is registered to
you and that you created an RPKI ROA to authorize Amazon ASNs 16509 and
14618 to advertise the address range. For more information, see Bring
Your Own IP Addresses (BYOIP)
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html) in
the I<Amazon Elastic Compute Cloud User Guide>.

Provisioning an address range is an asynchronous operation, so the call
returns immediately, but the address range is not ready to use until
its status changes from C<pending-provision> to C<provisioned>. To
monitor the status of an address range, use DescribeByoipCidrs. To
allocate an Elastic IP address from your IPv4 address pool, use
AllocateAddress with either the specific address from the address pool
or the ID of the address pool.


=head2 PurchaseHostReservation

=over

=item HostIdSet => ArrayRef[Str|Undef]

=item OfferingId => Str

=item [ClientToken => Str]

=item [CurrencyCode => Str]

=item [LimitPrice => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::PurchaseHostReservation>

Returns: a L<Paws::EC2::PurchaseHostReservationResult> instance

Purchase a reservation with configurations that match those of your
Dedicated Host. You must have active Dedicated Hosts in your account
before you purchase a reservation. This action results in the specified
reservation being purchased and charged to your account.


=head2 PurchaseReservedInstancesOffering

=over

=item InstanceCount => Int

=item ReservedInstancesOfferingId => Str

=item [DryRun => Bool]

=item [LimitPrice => L<Paws::EC2::ReservedInstanceLimitPrice>]

=item [PurchaseTime => Str]


=back

Each argument is described in detail in: L<Paws::EC2::PurchaseReservedInstancesOffering>

Returns: a L<Paws::EC2::PurchaseReservedInstancesOfferingResult> instance

Purchases a Reserved Instance for use with your account. With Reserved
Instances, you pay a lower hourly rate compared to On-Demand instance
pricing.

Use DescribeReservedInstancesOfferings to get a list of Reserved
Instance offerings that match your specifications. After you've
purchased a Reserved Instance, you can check for your new Reserved
Instance with DescribeReservedInstances.

To queue a purchase for a future date and time, specify a purchase
time. If you do not specify a purchase time, the default is the current
time.

For more information, see Reserved Instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html)
and Reserved Instance Marketplace
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html)
in the I<Amazon EC2 User Guide>.


=head2 PurchaseScheduledInstances

=over

=item PurchaseRequests => ArrayRef[L<Paws::EC2::PurchaseRequest>]

=item [ClientToken => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::PurchaseScheduledInstances>

Returns: a L<Paws::EC2::PurchaseScheduledInstancesResult> instance

Purchases the Scheduled Instances with the specified schedule.

Scheduled Instances enable you to purchase Amazon EC2 compute capacity
by the hour for a one-year term. Before you can purchase a Scheduled
Instance, you must call DescribeScheduledInstanceAvailability to check
for available schedules and obtain a purchase token. After you purchase
a Scheduled Instance, you must call RunScheduledInstances during each
scheduled time period.

After you purchase a Scheduled Instance, you can't cancel, modify, or
resell your purchase.


=head2 RebootInstances

=over

=item InstanceIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::RebootInstances>

Returns: nothing

Requests a reboot of the specified instances. This operation is
asynchronous; it only queues a request to reboot the specified
instances. The operation succeeds if the instances are valid and belong
to you. Requests to reboot terminated instances are ignored.

If an instance does not cleanly shut down within a few minutes, Amazon
EC2 performs a hard reboot.

For more information about troubleshooting, see Getting console output
and rebooting instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-console.html)
in the I<Amazon EC2 User Guide>.


=head2 RegisterImage

=over

=item Name => Str

=item [Architecture => Str]

=item [BillingProducts => ArrayRef[Str|Undef]]

=item [BlockDeviceMappings => ArrayRef[L<Paws::EC2::BlockDeviceMapping>]]

=item [BootMode => Str]

=item [Description => Str]

=item [DryRun => Bool]

=item [EnaSupport => Bool]

=item [ImageLocation => Str]

=item [KernelId => Str]

=item [RamdiskId => Str]

=item [RootDeviceName => Str]

=item [SriovNetSupport => Str]

=item [VirtualizationType => Str]


=back

Each argument is described in detail in: L<Paws::EC2::RegisterImage>

Returns: a L<Paws::EC2::RegisterImageResult> instance

Registers an AMI. When you're creating an AMI, this is the final step
you must complete before you can launch an instance from the AMI. For
more information about creating AMIs, see Creating your own AMIs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

For Amazon EBS-backed instances, CreateImage creates and registers the
AMI in a single request, so you don't have to register the AMI
yourself.

If needed, you can deregister an AMI at any time. Any modifications you
make to an AMI backed by an instance store volume invalidates its
registration. If you make changes to an image, deregister the previous
image and register the new image.

B<Register a snapshot of a root device volume>

You can use C<RegisterImage> to create an Amazon EBS-backed Linux AMI
from a snapshot of a root device volume. You specify the snapshot using
a block device mapping. You can't set the encryption state of the
volume using the block device mapping. If the snapshot is encrypted, or
encryption by default is enabled, the root volume of an instance
launched from the AMI is encrypted.

For more information, see Create a Linux AMI from a snapshot
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html#creating-launching-ami-from-snapshot)
and Use encryption with EBS-backed AMIs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIEncryption.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

B<AWS Marketplace product codes>

If any snapshots have AWS Marketplace product codes, they are copied to
the new AMI.

Windows and some Linux distributions, such as Red Hat Enterprise Linux
(RHEL) and SUSE Linux Enterprise Server (SLES), use the EC2 billing
product code associated with an AMI to verify the subscription status
for package updates. To create a new AMI for operating systems that
require a billing product code, instead of registering the AMI, do the
following to preserve the billing product code association:

=over

=item 1.

Launch an instance from an existing AMI with that billing product code.

=item 2.

Customize the instance.

=item 3.

Create an AMI from the instance using CreateImage.

=back

If you purchase a Reserved Instance to apply to an On-Demand Instance
that was launched from an AMI with a billing product code, make sure
that the Reserved Instance has the matching billing product code. If
you purchase a Reserved Instance without the matching billing product
code, the Reserved Instance will not be applied to the On-Demand
Instance. For information about how to obtain the platform details and
billing information of an AMI, see Obtaining billing information
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 RegisterInstanceEventNotificationAttributes

=over

=item [DryRun => Bool]

=item [InstanceTagAttribute => L<Paws::EC2::RegisterInstanceTagAttributeRequest>]


=back

Each argument is described in detail in: L<Paws::EC2::RegisterInstanceEventNotificationAttributes>

Returns: a L<Paws::EC2::RegisterInstanceEventNotificationAttributesResult> instance

Registers a set of tag keys to include in scheduled event notifications
for your resources.

To remove tags, use .


=head2 RegisterTransitGatewayMulticastGroupMembers

=over

=item [DryRun => Bool]

=item [GroupIpAddress => Str]

=item [NetworkInterfaceIds => ArrayRef[Str|Undef]]

=item [TransitGatewayMulticastDomainId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::RegisterTransitGatewayMulticastGroupMembers>

Returns: a L<Paws::EC2::RegisterTransitGatewayMulticastGroupMembersResult> instance

Registers members (network interfaces) with the transit gateway
multicast group. A member is a network interface associated with a
supported EC2 instance that receives multicast traffic. For information
about supported instances, see Multicast Consideration
(https://docs.aws.amazon.com/vpc/latest/tgw/transit-gateway-limits.html#multicast-limits)
in I<Amazon VPC Transit Gateways>.

After you add the members, use SearchTransitGatewayMulticastGroups
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SearchTransitGatewayMulticastGroups.html)
to verify that the members were added to the transit gateway multicast
group.


=head2 RegisterTransitGatewayMulticastGroupSources

=over

=item [DryRun => Bool]

=item [GroupIpAddress => Str]

=item [NetworkInterfaceIds => ArrayRef[Str|Undef]]

=item [TransitGatewayMulticastDomainId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::RegisterTransitGatewayMulticastGroupSources>

Returns: a L<Paws::EC2::RegisterTransitGatewayMulticastGroupSourcesResult> instance

Registers sources (network interfaces) with the specified transit
gateway multicast group.

A multicast source is a network interface attached to a supported
instance that sends multicast traffic. For information about supported
instances, see Multicast Considerations
(https://docs.aws.amazon.com/vpc/latest/tgw/transit-gateway-limits.html#multicast-limits)
in I<Amazon VPC Transit Gateways>.

After you add the source, use SearchTransitGatewayMulticastGroups
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SearchTransitGatewayMulticastGroups.html)
to verify that the source was added to the multicast group.


=head2 RejectTransitGatewayMulticastDomainAssociations

=over

=item [DryRun => Bool]

=item [SubnetIds => ArrayRef[Str|Undef]]

=item [TransitGatewayAttachmentId => Str]

=item [TransitGatewayMulticastDomainId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::RejectTransitGatewayMulticastDomainAssociations>

Returns: a L<Paws::EC2::RejectTransitGatewayMulticastDomainAssociationsResult> instance

Rejects a request to associate cross-account subnets with a transit
gateway multicast domain.


=head2 RejectTransitGatewayPeeringAttachment

=over

=item TransitGatewayAttachmentId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::RejectTransitGatewayPeeringAttachment>

Returns: a L<Paws::EC2::RejectTransitGatewayPeeringAttachmentResult> instance

Rejects a transit gateway peering attachment request.


=head2 RejectTransitGatewayVpcAttachment

=over

=item TransitGatewayAttachmentId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::RejectTransitGatewayVpcAttachment>

Returns: a L<Paws::EC2::RejectTransitGatewayVpcAttachmentResult> instance

Rejects a request to attach a VPC to a transit gateway.

The VPC attachment must be in the C<pendingAcceptance> state. Use
DescribeTransitGatewayVpcAttachments to view your pending VPC
attachment requests. Use AcceptTransitGatewayVpcAttachment to accept a
VPC attachment request.


=head2 RejectVpcEndpointConnections

=over

=item ServiceId => Str

=item VpcEndpointIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::RejectVpcEndpointConnections>

Returns: a L<Paws::EC2::RejectVpcEndpointConnectionsResult> instance

Rejects one or more VPC endpoint connection requests to your VPC
endpoint service.


=head2 RejectVpcPeeringConnection

=over

=item VpcPeeringConnectionId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::RejectVpcPeeringConnection>

Returns: a L<Paws::EC2::RejectVpcPeeringConnectionResult> instance

Rejects a VPC peering connection request. The VPC peering connection
must be in the C<pending-acceptance> state. Use the
DescribeVpcPeeringConnections request to view your outstanding VPC
peering connection requests. To delete an active VPC peering
connection, or to delete a VPC peering connection request that you
initiated, use DeleteVpcPeeringConnection.


=head2 ReleaseAddress

=over

=item [AllocationId => Str]

=item [DryRun => Bool]

=item [NetworkBorderGroup => Str]

=item [PublicIp => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ReleaseAddress>

Returns: nothing

Releases the specified Elastic IP address.

[EC2-Classic, default VPC] Releasing an Elastic IP address
automatically disassociates it from any instance that it's associated
with. To disassociate an Elastic IP address without releasing it, use
DisassociateAddress.

[Nondefault VPC] You must use DisassociateAddress to disassociate the
Elastic IP address before you can release it. Otherwise, Amazon EC2
returns an error (C<InvalidIPAddress.InUse>).

After releasing an Elastic IP address, it is released to the IP address
pool. Be sure to update your DNS records and any servers or devices
that communicate with the address. If you attempt to release an Elastic
IP address that you already released, you'll get an C<AuthFailure>
error if the address is already allocated to another AWS account.

[EC2-VPC] After you release an Elastic IP address for use in a VPC, you
might be able to recover it. For more information, see AllocateAddress.


=head2 ReleaseHosts

=over

=item HostIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::EC2::ReleaseHosts>

Returns: a L<Paws::EC2::ReleaseHostsResult> instance

When you no longer want to use an On-Demand Dedicated Host it can be
released. On-Demand billing is stopped and the host goes into
C<released> state. The host ID of Dedicated Hosts that have been
released can no longer be specified in another request, for example, to
modify the host. You must stop or terminate all instances on a host
before it can be released.

When Dedicated Hosts are released, it may take some time for them to
stop counting toward your limit and you may receive capacity errors
when trying to allocate new Dedicated Hosts. Wait a few minutes and
then try again.

Released hosts still appear in a DescribeHosts response.


=head2 ReplaceIamInstanceProfileAssociation

=over

=item AssociationId => Str

=item IamInstanceProfile => L<Paws::EC2::IamInstanceProfileSpecification>


=back

Each argument is described in detail in: L<Paws::EC2::ReplaceIamInstanceProfileAssociation>

Returns: a L<Paws::EC2::ReplaceIamInstanceProfileAssociationResult> instance

Replaces an IAM instance profile for the specified running instance.
You can use this action to change the IAM instance profile that's
associated with an instance without having to disassociate the existing
IAM instance profile first.

Use DescribeIamInstanceProfileAssociations to get the association ID.


=head2 ReplaceNetworkAclAssociation

=over

=item AssociationId => Str

=item NetworkAclId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ReplaceNetworkAclAssociation>

Returns: a L<Paws::EC2::ReplaceNetworkAclAssociationResult> instance

Changes which network ACL a subnet is associated with. By default when
you create a subnet, it's automatically associated with the default
network ACL. For more information, see Network ACLs
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_ACLs.html) in the
I<Amazon Virtual Private Cloud User Guide>.

This is an idempotent operation.


=head2 ReplaceNetworkAclEntry

=over

=item Egress => Bool

=item NetworkAclId => Str

=item Protocol => Str

=item RuleAction => Str

=item RuleNumber => Int

=item [CidrBlock => Str]

=item [DryRun => Bool]

=item [IcmpTypeCode => L<Paws::EC2::IcmpTypeCode>]

=item [Ipv6CidrBlock => Str]

=item [PortRange => L<Paws::EC2::PortRange>]


=back

Each argument is described in detail in: L<Paws::EC2::ReplaceNetworkAclEntry>

Returns: nothing

Replaces an entry (rule) in a network ACL. For more information, see
Network ACLs
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_ACLs.html) in the
I<Amazon Virtual Private Cloud User Guide>.


=head2 ReplaceRoute

=over

=item RouteTableId => Str

=item [CarrierGatewayId => Str]

=item [DestinationCidrBlock => Str]

=item [DestinationIpv6CidrBlock => Str]

=item [DestinationPrefixListId => Str]

=item [DryRun => Bool]

=item [EgressOnlyInternetGatewayId => Str]

=item [GatewayId => Str]

=item [InstanceId => Str]

=item [LocalGatewayId => Str]

=item [LocalTarget => Bool]

=item [NatGatewayId => Str]

=item [NetworkInterfaceId => Str]

=item [TransitGatewayId => Str]

=item [VpcEndpointId => Str]

=item [VpcPeeringConnectionId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ReplaceRoute>

Returns: nothing

Replaces an existing route within a route table in a VPC. You must
provide only one of the following: internet gateway, virtual private
gateway, NAT instance, NAT gateway, VPC peering connection, network
interface, egress-only internet gateway, or transit gateway.

For more information, see Route Tables
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
in the I<Amazon Virtual Private Cloud User Guide>.


=head2 ReplaceRouteTableAssociation

=over

=item AssociationId => Str

=item RouteTableId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ReplaceRouteTableAssociation>

Returns: a L<Paws::EC2::ReplaceRouteTableAssociationResult> instance

Changes the route table associated with a given subnet, internet
gateway, or virtual private gateway in a VPC. After the operation
completes, the subnet or gateway uses the routes in the new route
table. For more information about route tables, see Route Tables
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
in the I<Amazon Virtual Private Cloud User Guide>.

You can also use this operation to change which table is the main route
table in the VPC. Specify the main route table's association ID and the
route table ID of the new main route table.


=head2 ReplaceTransitGatewayRoute

=over

=item DestinationCidrBlock => Str

=item TransitGatewayRouteTableId => Str

=item [Blackhole => Bool]

=item [DryRun => Bool]

=item [TransitGatewayAttachmentId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ReplaceTransitGatewayRoute>

Returns: a L<Paws::EC2::ReplaceTransitGatewayRouteResult> instance

Replaces the specified route in the specified transit gateway route
table.


=head2 ReportInstanceStatus

=over

=item Instances => ArrayRef[Str|Undef]

=item ReasonCodes => ArrayRef[Str|Undef]

=item Status => Str

=item [Description => Str]

=item [DryRun => Bool]

=item [EndTime => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ReportInstanceStatus>

Returns: nothing

Submits feedback about the status of an instance. The instance must be
in the C<running> state. If your experience with the instance differs
from the instance status returned by DescribeInstanceStatus, use
ReportInstanceStatus to report your experience with the instance.
Amazon EC2 collects this information to improve the accuracy of status
checks.

Use of this action does not change the value returned by
DescribeInstanceStatus.


=head2 RequestSpotFleet

=over

=item SpotFleetRequestConfig => L<Paws::EC2::SpotFleetRequestConfigData>

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::RequestSpotFleet>

Returns: a L<Paws::EC2::RequestSpotFleetResponse> instance

Creates a Spot Fleet request.

The Spot Fleet request specifies the total target capacity and the
On-Demand target capacity. Amazon EC2 calculates the difference between
the total capacity and On-Demand capacity, and launches the difference
as Spot capacity.

You can submit a single request that includes multiple launch
specifications that vary by instance type, AMI, Availability Zone, or
subnet.

By default, the Spot Fleet requests Spot Instances in the Spot Instance
pool where the price per unit is the lowest. Each launch specification
can include its own instance weighting that reflects the value of the
instance type to your application workload.

Alternatively, you can specify that the Spot Fleet distribute the
target capacity across the Spot pools included in its launch
specifications. By ensuring that the Spot Instances in your Spot Fleet
are in different Spot pools, you can improve the availability of your
fleet.

You can specify tags for the Spot Fleet request and instances launched
by the fleet. You cannot tag other resource types in a Spot Fleet
request because only the C<spot-fleet-request> and C<instance> resource
types are supported.

For more information, see Spot Fleet requests
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-requests.html)
in the I<Amazon EC2 User Guide for Linux Instances>.


=head2 RequestSpotInstances

=over

=item [AvailabilityZoneGroup => Str]

=item [BlockDurationMinutes => Int]

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [InstanceCount => Int]

=item [InstanceInterruptionBehavior => Str]

=item [LaunchGroup => Str]

=item [LaunchSpecification => L<Paws::EC2::RequestSpotLaunchSpecification>]

=item [SpotPrice => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [Type => Str]

=item [ValidFrom => Str]

=item [ValidUntil => Str]


=back

Each argument is described in detail in: L<Paws::EC2::RequestSpotInstances>

Returns: a L<Paws::EC2::RequestSpotInstancesResult> instance

Creates a Spot Instance request.

For more information, see Spot Instance requests
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html)
in the I<Amazon EC2 User Guide for Linux Instances>.


=head2 ResetAddressAttribute

=over

=item AllocationId => Str

=item Attribute => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ResetAddressAttribute>

Returns: a L<Paws::EC2::ResetAddressAttributeResult> instance

Resets the attribute of the specified IP address. For requirements, see
Using reverse DNS for email applications
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html#Using_Elastic_Addressing_Reverse_DNS).


=head2 ResetEbsDefaultKmsKeyId

=over

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ResetEbsDefaultKmsKeyId>

Returns: a L<Paws::EC2::ResetEbsDefaultKmsKeyIdResult> instance

Resets the default customer master key (CMK) for EBS encryption for
your account in this Region to the AWS managed CMK for EBS.

After resetting the default CMK to the AWS managed CMK, you can
continue to encrypt by a customer managed CMK by specifying it when you
create the volume. For more information, see Amazon EBS encryption
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 ResetFpgaImageAttribute

=over

=item FpgaImageId => Str

=item [Attribute => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ResetFpgaImageAttribute>

Returns: a L<Paws::EC2::ResetFpgaImageAttributeResult> instance

Resets the specified attribute of the specified Amazon FPGA Image (AFI)
to its default value. You can only reset the load permission attribute.


=head2 ResetImageAttribute

=over

=item Attribute => Str

=item ImageId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ResetImageAttribute>

Returns: nothing

Resets an attribute of an AMI to its default value.

The productCodes attribute can't be reset.


=head2 ResetInstanceAttribute

=over

=item Attribute => Str

=item InstanceId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ResetInstanceAttribute>

Returns: nothing

Resets an attribute of an instance to its default value. To reset the
C<kernel> or C<ramdisk>, the instance must be in a stopped state. To
reset the C<sourceDestCheck>, the instance can be either running or
stopped.

The C<sourceDestCheck> attribute controls whether source/destination
checking is enabled. The default value is C<true>, which means checking
is enabled. This value must be C<false> for a NAT instance to perform
NAT. For more information, see NAT Instances
(https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html)
in the I<Amazon VPC User Guide>.


=head2 ResetNetworkInterfaceAttribute

=over

=item NetworkInterfaceId => Str

=item [DryRun => Bool]

=item [SourceDestCheck => Str]


=back

Each argument is described in detail in: L<Paws::EC2::ResetNetworkInterfaceAttribute>

Returns: nothing

Resets a network interface attribute. You can specify only one
attribute at a time.


=head2 ResetSnapshotAttribute

=over

=item Attribute => Str

=item SnapshotId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::ResetSnapshotAttribute>

Returns: nothing

Resets permission settings for the specified snapshot.

For more information about modifying snapshot permissions, see Sharing
snapshots
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 RestoreAddressToClassic

=over

=item PublicIp => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::RestoreAddressToClassic>

Returns: a L<Paws::EC2::RestoreAddressToClassicResult> instance

Restores an Elastic IP address that was previously moved to the EC2-VPC
platform back to the EC2-Classic platform. You cannot move an Elastic
IP address that was originally allocated for use in EC2-VPC. The
Elastic IP address must not be associated with an instance or network
interface.


=head2 RestoreManagedPrefixListVersion

=over

=item CurrentVersion => Int

=item PrefixListId => Str

=item PreviousVersion => Int

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::RestoreManagedPrefixListVersion>

Returns: a L<Paws::EC2::RestoreManagedPrefixListVersionResult> instance

Restores the entries from a previous version of a managed prefix list
to a new version of the prefix list.


=head2 RevokeClientVpnIngress

=over

=item ClientVpnEndpointId => Str

=item TargetNetworkCidr => Str

=item [AccessGroupId => Str]

=item [DryRun => Bool]

=item [RevokeAllGroups => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::RevokeClientVpnIngress>

Returns: a L<Paws::EC2::RevokeClientVpnIngressResult> instance

Removes an ingress authorization rule from a Client VPN endpoint.


=head2 RevokeSecurityGroupEgress

=over

=item GroupId => Str

=item [CidrIp => Str]

=item [DryRun => Bool]

=item [FromPort => Int]

=item [IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>]]

=item [IpProtocol => Str]

=item [SourceSecurityGroupName => Str]

=item [SourceSecurityGroupOwnerId => Str]

=item [ToPort => Int]


=back

Each argument is described in detail in: L<Paws::EC2::RevokeSecurityGroupEgress>

Returns: a L<Paws::EC2::RevokeSecurityGroupEgressResult> instance

[VPC only] Removes the specified egress rules from a security group for
EC2-VPC. This action does not apply to security groups for use in
EC2-Classic. To remove a rule, the values that you specify (for
example, ports) must match the existing rule's values exactly.

[Default VPC] If the values you specify do not match the existing
rule's values, no error is returned, and the output describes the
security group rules that were not revoked.

AWS recommends that you use DescribeSecurityGroups to verify that the
rule has been removed.

Each rule consists of the protocol and the IPv4 or IPv6 CIDR range or
source security group. For the TCP and UDP protocols, you must also
specify the destination port or range of ports. For the ICMP protocol,
you must also specify the ICMP type and code. If the security group
rule has a description, you do not have to specify the description to
revoke the rule.

Rule changes are propagated to instances within the security group as
quickly as possible. However, a small delay might occur.


=head2 RevokeSecurityGroupIngress

=over

=item [CidrIp => Str]

=item [DryRun => Bool]

=item [FromPort => Int]

=item [GroupId => Str]

=item [GroupName => Str]

=item [IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>]]

=item [IpProtocol => Str]

=item [SourceSecurityGroupName => Str]

=item [SourceSecurityGroupOwnerId => Str]

=item [ToPort => Int]


=back

Each argument is described in detail in: L<Paws::EC2::RevokeSecurityGroupIngress>

Returns: a L<Paws::EC2::RevokeSecurityGroupIngressResult> instance

Removes the specified ingress rules from a security group. To remove a
rule, the values that you specify (for example, ports) must match the
existing rule's values exactly.

[EC2-Classic , default VPC] If the values you specify do not match the
existing rule's values, no error is returned, and the output describes
the security group rules that were not revoked.

AWS recommends that you use DescribeSecurityGroups to verify that the
rule has been removed.

Each rule consists of the protocol and the CIDR range or source
security group. For the TCP and UDP protocols, you must also specify
the destination port or range of ports. For the ICMP protocol, you must
also specify the ICMP type and code. If the security group rule has a
description, you do not have to specify the description to revoke the
rule.

Rule changes are propagated to instances within the security group as
quickly as possible. However, a small delay might occur.


=head2 RunInstances

=over

=item MaxCount => Int

=item MinCount => Int

=item [AdditionalInfo => Str]

=item [BlockDeviceMappings => ArrayRef[L<Paws::EC2::BlockDeviceMapping>]]

=item [CapacityReservationSpecification => L<Paws::EC2::CapacityReservationSpecification>]

=item [ClientToken => Str]

=item [CpuOptions => L<Paws::EC2::CpuOptionsRequest>]

=item [CreditSpecification => L<Paws::EC2::CreditSpecificationRequest>]

=item [DisableApiTermination => Bool]

=item [DryRun => Bool]

=item [EbsOptimized => Bool]

=item [ElasticGpuSpecification => ArrayRef[L<Paws::EC2::ElasticGpuSpecification>]]

=item [ElasticInferenceAccelerators => ArrayRef[L<Paws::EC2::ElasticInferenceAccelerator>]]

=item [EnclaveOptions => L<Paws::EC2::EnclaveOptionsRequest>]

=item [HibernationOptions => L<Paws::EC2::HibernationOptionsRequest>]

=item [IamInstanceProfile => L<Paws::EC2::IamInstanceProfileSpecification>]

=item [ImageId => Str]

=item [InstanceInitiatedShutdownBehavior => Str]

=item [InstanceMarketOptions => L<Paws::EC2::InstanceMarketOptionsRequest>]

=item [InstanceType => Str]

=item [Ipv6AddressCount => Int]

=item [Ipv6Addresses => ArrayRef[L<Paws::EC2::InstanceIpv6Address>]]

=item [KernelId => Str]

=item [KeyName => Str]

=item [LaunchTemplate => L<Paws::EC2::LaunchTemplateSpecification>]

=item [LicenseSpecifications => ArrayRef[L<Paws::EC2::LicenseConfigurationRequest>]]

=item [MetadataOptions => L<Paws::EC2::InstanceMetadataOptionsRequest>]

=item [Monitoring => L<Paws::EC2::RunInstancesMonitoringEnabled>]

=item [NetworkInterfaces => ArrayRef[L<Paws::EC2::InstanceNetworkInterfaceSpecification>]]

=item [Placement => L<Paws::EC2::Placement>]

=item [PrivateIpAddress => Str]

=item [RamdiskId => Str]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SecurityGroups => ArrayRef[Str|Undef]]

=item [SubnetId => Str]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]

=item [UserData => Str]


=back

Each argument is described in detail in: L<Paws::EC2::RunInstances>

Returns: a L<Paws::EC2::Reservation> instance

Launches the specified number of instances using an AMI for which you
have permissions.

You can specify a number of options, or leave the default options. The
following rules apply:

=over

=item *

[EC2-VPC] If you don't specify a subnet ID, we choose a default subnet
from your default VPC for you. If you don't have a default VPC, you
must specify a subnet ID in the request.

=item *

[EC2-Classic] If don't specify an Availability Zone, we choose one for
you.

=item *

Some instance types must be launched into a VPC. If you do not have a
default VPC, or if you do not specify a subnet ID, the request fails.
For more information, see Instance types available only in a VPC
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html#vpc-only-instance-types).

=item *

[EC2-VPC] All instances have a network interface with a primary private
IPv4 address. If you don't specify this address, we choose one from the
IPv4 range of your subnet.

=item *

Not all instance types support IPv6 addresses. For more information,
see Instance types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html).

=item *

If you don't specify a security group ID, we use the default security
group. For more information, see Security groups
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html).

=item *

If any of the AMIs have a product code attached for which the user has
not subscribed, the request fails.

=back

You can create a launch template
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html),
which is a resource that contains the parameters to launch an instance.
When you launch an instance using RunInstances, you can specify the
launch template instead of specifying the launch parameters.

To ensure faster instance launches, break up large requests into
smaller batches. For example, create five separate launch requests for
100 instances each instead of one launch request for 500 instances.

An instance is ready for you to use when it's in the C<running> state.
You can check the state of your instance using DescribeInstances. You
can tag instances and EBS volumes during launch, after launch, or both.
For more information, see CreateTags and Tagging your Amazon EC2
resources
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html).

Linux instances have access to the public key of the key pair at boot.
You can use this key to provide secure access to the instance. Amazon
EC2 public images use this feature to provide secure access without
passwords. For more information, see Key pairs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html).

For troubleshooting, see What to do if an instance immediately
terminates
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_InstanceStraightToTerminated.html),
and Troubleshooting connecting to your instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesConnecting.html).


=head2 RunScheduledInstances

=over

=item LaunchSpecification => L<Paws::EC2::ScheduledInstancesLaunchSpecification>

=item ScheduledInstanceId => Str

=item [ClientToken => Str]

=item [DryRun => Bool]

=item [InstanceCount => Int]


=back

Each argument is described in detail in: L<Paws::EC2::RunScheduledInstances>

Returns: a L<Paws::EC2::RunScheduledInstancesResult> instance

Launches the specified Scheduled Instances.

Before you can launch a Scheduled Instance, you must purchase it and
obtain an identifier using PurchaseScheduledInstances.

You must launch a Scheduled Instance during its scheduled time period.
You can't stop or reboot a Scheduled Instance, but you can terminate it
as needed. If you terminate a Scheduled Instance before the current
scheduled time period ends, you can launch it again after a few
minutes. For more information, see Scheduled Instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-scheduled-instances.html)
in the I<Amazon EC2 User Guide>.


=head2 SearchLocalGatewayRoutes

=over

=item Filters => ArrayRef[L<Paws::EC2::Filter>]

=item LocalGatewayRouteTableId => Str

=item [DryRun => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EC2::SearchLocalGatewayRoutes>

Returns: a L<Paws::EC2::SearchLocalGatewayRoutesResult> instance

Searches for routes in the specified local gateway route table.


=head2 SearchTransitGatewayMulticastGroups

=over

=item [DryRun => Bool]

=item [Filters => ArrayRef[L<Paws::EC2::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TransitGatewayMulticastDomainId => Str]


=back

Each argument is described in detail in: L<Paws::EC2::SearchTransitGatewayMulticastGroups>

Returns: a L<Paws::EC2::SearchTransitGatewayMulticastGroupsResult> instance

Searches one or more transit gateway multicast groups and returns the
group membership information.


=head2 SearchTransitGatewayRoutes

=over

=item Filters => ArrayRef[L<Paws::EC2::Filter>]

=item TransitGatewayRouteTableId => Str

=item [DryRun => Bool]

=item [MaxResults => Int]


=back

Each argument is described in detail in: L<Paws::EC2::SearchTransitGatewayRoutes>

Returns: a L<Paws::EC2::SearchTransitGatewayRoutesResult> instance

Searches for routes in the specified transit gateway route table.


=head2 SendDiagnosticInterrupt

=over

=item InstanceId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::SendDiagnosticInterrupt>

Returns: nothing

Sends a diagnostic interrupt to the specified Amazon EC2 instance to
trigger a I<kernel panic> (on Linux instances), or a I<blue
screen>/I<stop error> (on Windows instances). For instances based on
Intel and AMD processors, the interrupt is received as a I<non-maskable
interrupt> (NMI).

In general, the operating system crashes and reboots when a kernel
panic or stop error is triggered. The operating system can also be
configured to perform diagnostic tasks, such as generating a memory
dump file, loading a secondary kernel, or obtaining a call trace.

Before sending a diagnostic interrupt to your instance, ensure that its
operating system is configured to perform the required diagnostic
tasks.

For more information about configuring your operating system to
generate a crash dump when a kernel panic or stop error occurs, see
Send a diagnostic interrupt
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/diagnostic-interrupt.html)
(Linux instances) or Send a Diagnostic Interrupt
(https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/diagnostic-interrupt.html)
(Windows instances).


=head2 StartInstances

=over

=item InstanceIds => ArrayRef[Str|Undef]

=item [AdditionalInfo => Str]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::StartInstances>

Returns: a L<Paws::EC2::StartInstancesResult> instance

Starts an Amazon EBS-backed instance that you've previously stopped.

Instances that use Amazon EBS volumes as their root devices can be
quickly stopped and started. When an instance is stopped, the compute
resources are released and you are not billed for instance usage.
However, your root partition Amazon EBS volume remains and continues to
persist your data, and you are charged for Amazon EBS volume usage. You
can restart your instance at any time. Every time you start your
Windows instance, Amazon EC2 charges you for a full instance hour. If
you stop and restart your Windows instance, a new instance hour begins
and Amazon EC2 charges you for another full instance hour even if you
are still within the same 60-minute period when it was stopped. Every
time you start your Linux instance, Amazon EC2 charges a one-minute
minimum for instance usage, and thereafter charges per second for
instance usage.

Before stopping an instance, make sure it is in a state from which it
can be restarted. Stopping an instance does not preserve data stored in
RAM.

Performing this operation on an instance that uses an instance store as
its root device returns an error.

For more information, see Stopping instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html)
in the I<Amazon EC2 User Guide>.


=head2 StartNetworkInsightsAnalysis

=over

=item ClientToken => Str

=item NetworkInsightsPathId => Str

=item [DryRun => Bool]

=item [FilterInArns => ArrayRef[Str|Undef]]

=item [TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]]


=back

Each argument is described in detail in: L<Paws::EC2::StartNetworkInsightsAnalysis>

Returns: a L<Paws::EC2::StartNetworkInsightsAnalysisResult> instance

Starts analyzing the specified path. If the path is reachable, the
operation returns the shortest feasible path.


=head2 StartVpcEndpointServicePrivateDnsVerification

=over

=item ServiceId => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::StartVpcEndpointServicePrivateDnsVerification>

Returns: a L<Paws::EC2::StartVpcEndpointServicePrivateDnsVerificationResult> instance

Initiates the verification process to prove that the service provider
owns the private DNS name domain for the endpoint service.

The service provider must successfully perform the verification before
the consumer can use the name to access the service.

Before the service provider runs this command, they must add a record
to the DNS server. For more information, see Adding a TXT Record to
Your Domain's DNS Server
(https://docs.aws.amazon.com/vpc/latest/userguide/endpoint-services-dns-validation.html#add-dns-txt-record)
in the I<Amazon VPC User Guide>.


=head2 StopInstances

=over

=item InstanceIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]

=item [Force => Bool]

=item [Hibernate => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::StopInstances>

Returns: a L<Paws::EC2::StopInstancesResult> instance

Stops an Amazon EBS-backed instance.

You can use the Stop action to hibernate an instance if the instance is
enabled for hibernation
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html#enabling-hibernation)
and it meets the hibernation prerequisites
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html#hibernating-prerequisites).
For more information, see Hibernate your instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in
the I<Amazon EC2 User Guide>.

We don't charge usage for a stopped instance, or data transfer fees;
however, your root partition Amazon EBS volume remains and continues to
persist your data, and you are charged for Amazon EBS volume usage.
Every time you start your Windows instance, Amazon EC2 charges you for
a full instance hour. If you stop and restart your Windows instance, a
new instance hour begins and Amazon EC2 charges you for another full
instance hour even if you are still within the same 60-minute period
when it was stopped. Every time you start your Linux instance, Amazon
EC2 charges a one-minute minimum for instance usage, and thereafter
charges per second for instance usage.

You can't stop or hibernate instance store-backed instances. You can't
use the Stop action to hibernate Spot Instances, but you can specify
that Amazon EC2 should hibernate Spot Instances when they are
interrupted. For more information, see Hibernating interrupted Spot
Instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-interruptions.html#hibernate-spot-instances)
in the I<Amazon EC2 User Guide>.

When you stop or hibernate an instance, we shut it down. You can
restart your instance at any time. Before stopping or hibernating an
instance, make sure it is in a state from which it can be restarted.
Stopping an instance does not preserve data stored in RAM, but
hibernating an instance does preserve data stored in RAM. If an
instance cannot hibernate successfully, a normal shutdown occurs.

Stopping and hibernating an instance is different to rebooting or
terminating it. For example, when you stop or hibernate an instance,
the root device and any other devices attached to the instance persist.
When you terminate an instance, the root device and any other devices
attached during the instance launch are automatically deleted. For more
information about the differences between rebooting, stopping,
hibernating, and terminating instances, see Instance lifecycle
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html)
in the I<Amazon EC2 User Guide>.

When you stop an instance, we attempt to shut it down forcibly after a
short while. If your instance appears stuck in the stopping state after
a period of time, there may be an issue with the underlying host
computer. For more information, see Troubleshooting stopping your
instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesStopping.html)
in the I<Amazon EC2 User Guide>.


=head2 TerminateClientVpnConnections

=over

=item ClientVpnEndpointId => Str

=item [ConnectionId => Str]

=item [DryRun => Bool]

=item [Username => Str]


=back

Each argument is described in detail in: L<Paws::EC2::TerminateClientVpnConnections>

Returns: a L<Paws::EC2::TerminateClientVpnConnectionsResult> instance

Terminates active Client VPN endpoint connections. This action can be
used to terminate a specific client connection, or up to five
connections established by a specific user.


=head2 TerminateInstances

=over

=item InstanceIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::TerminateInstances>

Returns: a L<Paws::EC2::TerminateInstancesResult> instance

Shuts down the specified instances. This operation is idempotent; if
you terminate an instance more than once, each call succeeds.

If you specify multiple instances and the request fails (for example,
because of a single incorrect instance ID), none of the instances are
terminated.

Terminated instances remain visible after termination (for
approximately one hour).

By default, Amazon EC2 deletes all EBS volumes that were attached when
the instance launched. Volumes attached after instance launch continue
running.

You can stop, start, and terminate EBS-backed instances. You can only
terminate instance store-backed instances. What happens to an instance
differs if you stop it or terminate it. For example, when you stop an
instance, the root device and any other devices attached to the
instance persist. When you terminate an instance, any attached EBS
volumes with the C<DeleteOnTermination> block device mapping parameter
set to C<true> are automatically deleted. For more information about
the differences between stopping and terminating instances, see
Instance lifecycle
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html)
in the I<Amazon EC2 User Guide>.

For more information about troubleshooting, see Troubleshooting
terminating your instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesShuttingDown.html)
in the I<Amazon EC2 User Guide>.


=head2 UnassignIpv6Addresses

=over

=item Ipv6Addresses => ArrayRef[Str|Undef]

=item NetworkInterfaceId => Str


=back

Each argument is described in detail in: L<Paws::EC2::UnassignIpv6Addresses>

Returns: a L<Paws::EC2::UnassignIpv6AddressesResult> instance

Unassigns one or more IPv6 addresses from a network interface.


=head2 UnassignPrivateIpAddresses

=over

=item NetworkInterfaceId => Str

=item PrivateIpAddresses => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::EC2::UnassignPrivateIpAddresses>

Returns: nothing

Unassigns one or more secondary private IP addresses from a network
interface.


=head2 UnmonitorInstances

=over

=item InstanceIds => ArrayRef[Str|Undef]

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::UnmonitorInstances>

Returns: a L<Paws::EC2::UnmonitorInstancesResult> instance

Disables detailed monitoring for a running instance. For more
information, see Monitoring your instances and volumes
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html)
in the I<Amazon EC2 User Guide>.


=head2 UpdateSecurityGroupRuleDescriptionsEgress

=over

=item IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>]

=item [DryRun => Bool]

=item [GroupId => Str]

=item [GroupName => Str]


=back

Each argument is described in detail in: L<Paws::EC2::UpdateSecurityGroupRuleDescriptionsEgress>

Returns: a L<Paws::EC2::UpdateSecurityGroupRuleDescriptionsEgressResult> instance

[VPC only] Updates the description of an egress (outbound) security
group rule. You can replace an existing description, or add a
description to a rule that did not have one previously.

You specify the description as part of the IP permissions structure.
You can remove a description for a security group rule by omitting the
description parameter in the request.


=head2 UpdateSecurityGroupRuleDescriptionsIngress

=over

=item IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>]

=item [DryRun => Bool]

=item [GroupId => Str]

=item [GroupName => Str]


=back

Each argument is described in detail in: L<Paws::EC2::UpdateSecurityGroupRuleDescriptionsIngress>

Returns: a L<Paws::EC2::UpdateSecurityGroupRuleDescriptionsIngressResult> instance

Updates the description of an ingress (inbound) security group rule.
You can replace an existing description, or add a description to a rule
that did not have one previously.

You specify the description as part of the IP permissions structure.
You can remove a description for a security group rule by omitting the
description parameter in the request.


=head2 WithdrawByoipCidr

=over

=item Cidr => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::EC2::WithdrawByoipCidr>

Returns: a L<Paws::EC2::WithdrawByoipCidrResult> instance

Stops advertising an address range that is provisioned as an address
pool.

You can perform this operation at most once every 10 seconds, even if
you specify different address ranges each time.

It can take a few minutes before traffic to the specified addresses
stops routing to AWS because of BGP propagation delays.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllAddressesAttribute(sub { },[AllocationIds => ArrayRef[Str|Undef], Attribute => Str, DryRun => Bool, MaxResults => Int, NextToken => Str])

=head2 DescribeAllAddressesAttribute([AllocationIds => ArrayRef[Str|Undef], Attribute => Str, DryRun => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Addresses, passing the object as the first parameter, and the string 'Addresses' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeAddressesAttributeResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllByoipCidrs(sub { },MaxResults => Int, [DryRun => Bool, NextToken => Str])

=head2 DescribeAllByoipCidrs(MaxResults => Int, [DryRun => Bool, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ByoipCidrs, passing the object as the first parameter, and the string 'ByoipCidrs' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeByoipCidrsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllCapacityReservations(sub { },[CapacityReservationIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllCapacityReservations([CapacityReservationIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CapacityReservations, passing the object as the first parameter, and the string 'CapacityReservations' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeCapacityReservationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllCarrierGateways(sub { },[CarrierGatewayIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllCarrierGateways([CarrierGatewayIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CarrierGateways, passing the object as the first parameter, and the string 'CarrierGateways' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeCarrierGatewaysResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClassicLinkInstances(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllClassicLinkInstances([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Instances, passing the object as the first parameter, and the string 'Instances' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeClassicLinkInstancesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClientVpnAuthorizationRules(sub { },ClientVpnEndpointId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllClientVpnAuthorizationRules(ClientVpnEndpointId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AuthorizationRules, passing the object as the first parameter, and the string 'AuthorizationRules' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeClientVpnAuthorizationRulesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClientVpnConnections(sub { },ClientVpnEndpointId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllClientVpnConnections(ClientVpnEndpointId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Connections, passing the object as the first parameter, and the string 'Connections' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeClientVpnConnectionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClientVpnEndpoints(sub { },[ClientVpnEndpointIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllClientVpnEndpoints([ClientVpnEndpointIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ClientVpnEndpoints, passing the object as the first parameter, and the string 'ClientVpnEndpoints' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeClientVpnEndpointsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClientVpnRoutes(sub { },ClientVpnEndpointId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllClientVpnRoutes(ClientVpnEndpointId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Routes, passing the object as the first parameter, and the string 'Routes' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeClientVpnRoutesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClientVpnTargetNetworks(sub { },ClientVpnEndpointId => Str, [AssociationIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllClientVpnTargetNetworks(ClientVpnEndpointId => Str, [AssociationIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ClientVpnTargetNetworks, passing the object as the first parameter, and the string 'ClientVpnTargetNetworks' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeClientVpnTargetNetworksResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllCoipPools(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PoolIds => ArrayRef[Str|Undef]])

=head2 DescribeAllCoipPools([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PoolIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CoipPools, passing the object as the first parameter, and the string 'CoipPools' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeCoipPoolsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDhcpOptions(sub { },[DhcpOptionsIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllDhcpOptions([DhcpOptionsIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DhcpOptions, passing the object as the first parameter, and the string 'DhcpOptions' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeDhcpOptionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEgressOnlyInternetGateways(sub { },[DryRun => Bool, EgressOnlyInternetGatewayIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllEgressOnlyInternetGateways([DryRun => Bool, EgressOnlyInternetGatewayIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EgressOnlyInternetGateways, passing the object as the first parameter, and the string 'EgressOnlyInternetGateways' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeEgressOnlyInternetGatewaysResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllExportImageTasks(sub { },[DryRun => Bool, ExportImageTaskIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllExportImageTasks([DryRun => Bool, ExportImageTaskIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ExportImageTasks, passing the object as the first parameter, and the string 'ExportImageTasks' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeExportImageTasksResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllFastSnapshotRestores(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllFastSnapshotRestores([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FastSnapshotRestores, passing the object as the first parameter, and the string 'FastSnapshotRestores' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeFastSnapshotRestoresResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllFleets(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], FleetIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllFleets([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], FleetIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Fleets, passing the object as the first parameter, and the string 'Fleets' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeFleetsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllFlowLogs(sub { },[DryRun => Bool, Filter => ArrayRef[L<Paws::EC2::Filter>], FlowLogIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllFlowLogs([DryRun => Bool, Filter => ArrayRef[L<Paws::EC2::Filter>], FlowLogIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FlowLogs, passing the object as the first parameter, and the string 'FlowLogs' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeFlowLogsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllFpgaImages(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], FpgaImageIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, Owners => ArrayRef[Str|Undef]])

=head2 DescribeAllFpgaImages([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], FpgaImageIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, Owners => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FpgaImages, passing the object as the first parameter, and the string 'FpgaImages' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeFpgaImagesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllHostReservationOfferings(sub { },[Filter => ArrayRef[L<Paws::EC2::Filter>], MaxDuration => Int, MaxResults => Int, MinDuration => Int, NextToken => Str, OfferingId => Str])

=head2 DescribeAllHostReservationOfferings([Filter => ArrayRef[L<Paws::EC2::Filter>], MaxDuration => Int, MaxResults => Int, MinDuration => Int, NextToken => Str, OfferingId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OfferingSet, passing the object as the first parameter, and the string 'OfferingSet' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeHostReservationOfferingsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllHostReservations(sub { },[Filter => ArrayRef[L<Paws::EC2::Filter>], HostReservationIdSet => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllHostReservations([Filter => ArrayRef[L<Paws::EC2::Filter>], HostReservationIdSet => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HostReservationSet, passing the object as the first parameter, and the string 'HostReservationSet' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeHostReservationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllHosts(sub { },[Filter => ArrayRef[L<Paws::EC2::Filter>], HostIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllHosts([Filter => ArrayRef[L<Paws::EC2::Filter>], HostIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Hosts, passing the object as the first parameter, and the string 'Hosts' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeHostsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllIamInstanceProfileAssociations(sub { },[AssociationIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllIamInstanceProfileAssociations([AssociationIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IamInstanceProfileAssociations, passing the object as the first parameter, and the string 'IamInstanceProfileAssociations' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeIamInstanceProfileAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllImportImageTasks(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], ImportTaskIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllImportImageTasks([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], ImportTaskIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ImportImageTasks, passing the object as the first parameter, and the string 'ImportImageTasks' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeImportImageTasksResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllImportSnapshotTasks(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], ImportTaskIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllImportSnapshotTasks([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], ImportTaskIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ImportSnapshotTasks, passing the object as the first parameter, and the string 'ImportSnapshotTasks' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeImportSnapshotTasksResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllInstanceCreditSpecifications(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllInstanceCreditSpecifications([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstanceCreditSpecifications, passing the object as the first parameter, and the string 'InstanceCreditSpecifications' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeInstanceCreditSpecificationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllInstances(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllInstances([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Reservations, passing the object as the first parameter, and the string 'Reservations' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeInstancesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllInstanceStatus(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IncludeAllInstances => Bool, InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllInstanceStatus([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IncludeAllInstances => Bool, InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstanceStatuses, passing the object as the first parameter, and the string 'InstanceStatuses' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeInstanceStatusResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllInstanceTypeOfferings(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocationType => Str, MaxResults => Int, NextToken => Str])

=head2 DescribeAllInstanceTypeOfferings([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocationType => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstanceTypeOfferings, passing the object as the first parameter, and the string 'InstanceTypeOfferings' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeInstanceTypeOfferingsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllInstanceTypes(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllInstanceTypes([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstanceTypes, passing the object as the first parameter, and the string 'InstanceTypes' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeInstanceTypesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllInternetGateways(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InternetGatewayIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllInternetGateways([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InternetGatewayIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InternetGateways, passing the object as the first parameter, and the string 'InternetGateways' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeInternetGatewaysResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllIpv6Pools(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PoolIds => ArrayRef[Str|Undef]])

=head2 DescribeAllIpv6Pools([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PoolIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Ipv6Pools, passing the object as the first parameter, and the string 'Ipv6Pools' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeIpv6PoolsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLaunchTemplates(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LaunchTemplateIds => ArrayRef[Str|Undef], LaunchTemplateNames => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllLaunchTemplates([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LaunchTemplateIds => ArrayRef[Str|Undef], LaunchTemplateNames => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LaunchTemplates, passing the object as the first parameter, and the string 'LaunchTemplates' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeLaunchTemplatesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLaunchTemplateVersions(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LaunchTemplateId => Str, LaunchTemplateName => Str, MaxResults => Int, MaxVersion => Str, MinVersion => Str, NextToken => Str, Versions => ArrayRef[Str|Undef]])

=head2 DescribeAllLaunchTemplateVersions([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LaunchTemplateId => Str, LaunchTemplateName => Str, MaxResults => Int, MaxVersion => Str, MinVersion => Str, NextToken => Str, Versions => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LaunchTemplateVersions, passing the object as the first parameter, and the string 'LaunchTemplateVersions' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeLaunchTemplateVersionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLocalGatewayRouteTables(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayRouteTableIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllLocalGatewayRouteTables([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayRouteTableIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LocalGatewayRouteTables, passing the object as the first parameter, and the string 'LocalGatewayRouteTables' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeLocalGatewayRouteTablesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLocalGatewayRouteTableVirtualInterfaceGroupAssociations(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayRouteTableVirtualInterfaceGroupAssociationIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllLocalGatewayRouteTableVirtualInterfaceGroupAssociations([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayRouteTableVirtualInterfaceGroupAssociationIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LocalGatewayRouteTableVirtualInterfaceGroupAssociations, passing the object as the first parameter, and the string 'LocalGatewayRouteTableVirtualInterfaceGroupAssociations' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLocalGatewayRouteTableVpcAssociations(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayRouteTableVpcAssociationIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllLocalGatewayRouteTableVpcAssociations([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayRouteTableVpcAssociationIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LocalGatewayRouteTableVpcAssociations, passing the object as the first parameter, and the string 'LocalGatewayRouteTableVpcAssociations' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeLocalGatewayRouteTableVpcAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLocalGateways(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllLocalGateways([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LocalGateways, passing the object as the first parameter, and the string 'LocalGateways' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeLocalGatewaysResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLocalGatewayVirtualInterfaceGroups(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayVirtualInterfaceGroupIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllLocalGatewayVirtualInterfaceGroups([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayVirtualInterfaceGroupIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LocalGatewayVirtualInterfaceGroups, passing the object as the first parameter, and the string 'LocalGatewayVirtualInterfaceGroups' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeLocalGatewayVirtualInterfaceGroupsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLocalGatewayVirtualInterfaces(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayVirtualInterfaceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllLocalGatewayVirtualInterfaces([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayVirtualInterfaceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LocalGatewayVirtualInterfaces, passing the object as the first parameter, and the string 'LocalGatewayVirtualInterfaces' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeLocalGatewayVirtualInterfacesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllManagedPrefixLists(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PrefixListIds => ArrayRef[Str|Undef]])

=head2 DescribeAllManagedPrefixLists([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PrefixListIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PrefixLists, passing the object as the first parameter, and the string 'PrefixLists' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeManagedPrefixListsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllMovingAddresses(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PublicIps => ArrayRef[Str|Undef]])

=head2 DescribeAllMovingAddresses([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PublicIps => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MovingAddressStatuses, passing the object as the first parameter, and the string 'MovingAddressStatuses' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeMovingAddressesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllNatGateways(sub { },[DryRun => Bool, Filter => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NatGatewayIds => ArrayRef[Str|Undef], NextToken => Str])

=head2 DescribeAllNatGateways([DryRun => Bool, Filter => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NatGatewayIds => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NatGateways, passing the object as the first parameter, and the string 'NatGateways' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeNatGatewaysResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllNetworkAcls(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkAclIds => ArrayRef[Str|Undef], NextToken => Str])

=head2 DescribeAllNetworkAcls([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkAclIds => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NetworkAcls, passing the object as the first parameter, and the string 'NetworkAcls' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeNetworkAclsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllNetworkInsightsAnalyses(sub { },[AnalysisEndTime => Str, AnalysisStartTime => Str, DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkInsightsAnalysisIds => ArrayRef[Str|Undef], NetworkInsightsPathId => Str, NextToken => Str])

=head2 DescribeAllNetworkInsightsAnalyses([AnalysisEndTime => Str, AnalysisStartTime => Str, DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkInsightsAnalysisIds => ArrayRef[Str|Undef], NetworkInsightsPathId => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NetworkInsightsAnalyses, passing the object as the first parameter, and the string 'NetworkInsightsAnalyses' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeNetworkInsightsAnalysesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllNetworkInsightsPaths(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkInsightsPathIds => ArrayRef[Str|Undef], NextToken => Str])

=head2 DescribeAllNetworkInsightsPaths([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkInsightsPathIds => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NetworkInsightsPaths, passing the object as the first parameter, and the string 'NetworkInsightsPaths' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeNetworkInsightsPathsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllNetworkInterfacePermissions(sub { },[Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkInterfacePermissionIds => ArrayRef[Str|Undef], NextToken => Str])

=head2 DescribeAllNetworkInterfacePermissions([Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkInterfacePermissionIds => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NetworkInterfacePermissions, passing the object as the first parameter, and the string 'NetworkInterfacePermissions' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeNetworkInterfacePermissionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllNetworkInterfaces(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkInterfaceIds => ArrayRef[Str|Undef], NextToken => Str])

=head2 DescribeAllNetworkInterfaces([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkInterfaceIds => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NetworkInterfaces, passing the object as the first parameter, and the string 'NetworkInterfaces' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeNetworkInterfacesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllPrefixLists(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PrefixListIds => ArrayRef[Str|Undef]])

=head2 DescribeAllPrefixLists([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PrefixListIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PrefixLists, passing the object as the first parameter, and the string 'PrefixLists' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribePrefixListsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllPrincipalIdFormat(sub { },[DryRun => Bool, MaxResults => Int, NextToken => Str, Resources => ArrayRef[Str|Undef]])

=head2 DescribeAllPrincipalIdFormat([DryRun => Bool, MaxResults => Int, NextToken => Str, Resources => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Principals, passing the object as the first parameter, and the string 'Principals' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribePrincipalIdFormatResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllPublicIpv4Pools(sub { },[Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PoolIds => ArrayRef[Str|Undef]])

=head2 DescribeAllPublicIpv4Pools([Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PoolIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PublicIpv4Pools, passing the object as the first parameter, and the string 'PublicIpv4Pools' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribePublicIpv4PoolsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReplaceRootVolumeTasks(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, ReplaceRootVolumeTaskIds => ArrayRef[Str|Undef]])

=head2 DescribeAllReplaceRootVolumeTasks([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, ReplaceRootVolumeTaskIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReplaceRootVolumeTasks, passing the object as the first parameter, and the string 'ReplaceRootVolumeTasks' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeReplaceRootVolumeTasksResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReservedInstancesModifications(sub { },[Filters => ArrayRef[L<Paws::EC2::Filter>], NextToken => Str, ReservedInstancesModificationIds => ArrayRef[Str|Undef]])

=head2 DescribeAllReservedInstancesModifications([Filters => ArrayRef[L<Paws::EC2::Filter>], NextToken => Str, ReservedInstancesModificationIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReservedInstancesModifications, passing the object as the first parameter, and the string 'ReservedInstancesModifications' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeReservedInstancesModificationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReservedInstancesOfferings(sub { },[AvailabilityZone => Str, DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IncludeMarketplace => Bool, InstanceTenancy => Str, InstanceType => Str, MaxDuration => Int, MaxInstanceCount => Int, MaxResults => Int, MinDuration => Int, NextToken => Str, OfferingClass => Str, OfferingType => Str, ProductDescription => Str, ReservedInstancesOfferingIds => ArrayRef[Str|Undef]])

=head2 DescribeAllReservedInstancesOfferings([AvailabilityZone => Str, DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IncludeMarketplace => Bool, InstanceTenancy => Str, InstanceType => Str, MaxDuration => Int, MaxInstanceCount => Int, MaxResults => Int, MinDuration => Int, NextToken => Str, OfferingClass => Str, OfferingType => Str, ProductDescription => Str, ReservedInstancesOfferingIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReservedInstancesOfferings, passing the object as the first parameter, and the string 'ReservedInstancesOfferings' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeReservedInstancesOfferingsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllRouteTables(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, RouteTableIds => ArrayRef[Str|Undef]])

=head2 DescribeAllRouteTables([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, RouteTableIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RouteTables, passing the object as the first parameter, and the string 'RouteTables' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeRouteTablesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllScheduledInstanceAvailability(sub { },FirstSlotStartTimeRange => L<Paws::EC2::SlotDateTimeRangeRequest>, Recurrence => L<Paws::EC2::ScheduledInstanceRecurrenceRequest>, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, MaxSlotDurationInHours => Int, MinSlotDurationInHours => Int, NextToken => Str])

=head2 DescribeAllScheduledInstanceAvailability(FirstSlotStartTimeRange => L<Paws::EC2::SlotDateTimeRangeRequest>, Recurrence => L<Paws::EC2::ScheduledInstanceRecurrenceRequest>, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, MaxSlotDurationInHours => Int, MinSlotDurationInHours => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ScheduledInstanceAvailabilitySet, passing the object as the first parameter, and the string 'ScheduledInstanceAvailabilitySet' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeScheduledInstanceAvailabilityResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllScheduledInstances(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, ScheduledInstanceIds => ArrayRef[Str|Undef], SlotStartTimeRange => L<Paws::EC2::SlotStartTimeRangeRequest>])

=head2 DescribeAllScheduledInstances([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, ScheduledInstanceIds => ArrayRef[Str|Undef], SlotStartTimeRange => L<Paws::EC2::SlotStartTimeRangeRequest>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ScheduledInstanceSet, passing the object as the first parameter, and the string 'ScheduledInstanceSet' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeScheduledInstancesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSecurityGroups(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], GroupIds => ArrayRef[Str|Undef], GroupNames => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllSecurityGroups([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], GroupIds => ArrayRef[Str|Undef], GroupNames => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SecurityGroups, passing the object as the first parameter, and the string 'SecurityGroups' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeSecurityGroupsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSnapshots(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, OwnerIds => ArrayRef[Str|Undef], RestorableByUserIds => ArrayRef[Str|Undef], SnapshotIds => ArrayRef[Str|Undef]])

=head2 DescribeAllSnapshots([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, OwnerIds => ArrayRef[Str|Undef], RestorableByUserIds => ArrayRef[Str|Undef], SnapshotIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Snapshots, passing the object as the first parameter, and the string 'Snapshots' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeSnapshotsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSpotFleetInstances(sub { },SpotFleetRequestId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])

=head2 DescribeAllSpotFleetInstances(SpotFleetRequestId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ActiveInstances, passing the object as the first parameter, and the string 'ActiveInstances' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeSpotFleetInstancesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSpotFleetRequests(sub { },[DryRun => Bool, MaxResults => Int, NextToken => Str, SpotFleetRequestIds => ArrayRef[Str|Undef]])

=head2 DescribeAllSpotFleetRequests([DryRun => Bool, MaxResults => Int, NextToken => Str, SpotFleetRequestIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SpotFleetRequestConfigs, passing the object as the first parameter, and the string 'SpotFleetRequestConfigs' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeSpotFleetRequestsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSpotInstanceRequests(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, SpotInstanceRequestIds => ArrayRef[Str|Undef]])

=head2 DescribeAllSpotInstanceRequests([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, SpotInstanceRequestIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SpotInstanceRequests, passing the object as the first parameter, and the string 'SpotInstanceRequests' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeSpotInstanceRequestsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSpotPriceHistory(sub { },[AvailabilityZone => Str, DryRun => Bool, EndTime => Str, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, ProductDescriptions => ArrayRef[Str|Undef], StartTime => Str])

=head2 DescribeAllSpotPriceHistory([AvailabilityZone => Str, DryRun => Bool, EndTime => Str, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, ProductDescriptions => ArrayRef[Str|Undef], StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SpotPriceHistory, passing the object as the first parameter, and the string 'SpotPriceHistory' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeSpotPriceHistoryResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllStaleSecurityGroups(sub { },VpcId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])

=head2 DescribeAllStaleSecurityGroups(VpcId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - StaleSecurityGroupSet, passing the object as the first parameter, and the string 'StaleSecurityGroupSet' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeStaleSecurityGroupsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllStoreImageTasks(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], ImageIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllStoreImageTasks([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], ImageIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - StoreImageTaskResults, passing the object as the first parameter, and the string 'StoreImageTaskResults' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeStoreImageTasksResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSubnets(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, SubnetIds => ArrayRef[Str|Undef]])

=head2 DescribeAllSubnets([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, SubnetIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Subnets, passing the object as the first parameter, and the string 'Subnets' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeSubnetsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTags(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllTags([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTagsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTrafficMirrorFilters(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TrafficMirrorFilterIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTrafficMirrorFilters([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TrafficMirrorFilterIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TrafficMirrorFilters, passing the object as the first parameter, and the string 'TrafficMirrorFilters' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTrafficMirrorFiltersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTrafficMirrorSessions(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TrafficMirrorSessionIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTrafficMirrorSessions([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TrafficMirrorSessionIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TrafficMirrorSessions, passing the object as the first parameter, and the string 'TrafficMirrorSessions' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTrafficMirrorSessionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTrafficMirrorTargets(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TrafficMirrorTargetIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTrafficMirrorTargets([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TrafficMirrorTargetIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TrafficMirrorTargets, passing the object as the first parameter, and the string 'TrafficMirrorTargets' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTrafficMirrorTargetsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTransitGatewayAttachments(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayAttachmentIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTransitGatewayAttachments([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayAttachmentIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayAttachments, passing the object as the first parameter, and the string 'TransitGatewayAttachments' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTransitGatewayAttachmentsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTransitGatewayConnectPeers(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayConnectPeerIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTransitGatewayConnectPeers([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayConnectPeerIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayConnectPeers, passing the object as the first parameter, and the string 'TransitGatewayConnectPeers' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTransitGatewayConnectPeersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTransitGatewayConnects(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayAttachmentIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTransitGatewayConnects([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayAttachmentIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayConnects, passing the object as the first parameter, and the string 'TransitGatewayConnects' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTransitGatewayConnectsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTransitGatewayMulticastDomains(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayMulticastDomainIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTransitGatewayMulticastDomains([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayMulticastDomainIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayMulticastDomains, passing the object as the first parameter, and the string 'TransitGatewayMulticastDomains' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTransitGatewayMulticastDomainsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTransitGatewayPeeringAttachments(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayAttachmentIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTransitGatewayPeeringAttachments([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayAttachmentIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayPeeringAttachments, passing the object as the first parameter, and the string 'TransitGatewayPeeringAttachments' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTransitGatewayPeeringAttachmentsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTransitGatewayRouteTables(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayRouteTableIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTransitGatewayRouteTables([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayRouteTableIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayRouteTables, passing the object as the first parameter, and the string 'TransitGatewayRouteTables' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTransitGatewayRouteTablesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTransitGateways(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTransitGateways([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGateways, passing the object as the first parameter, and the string 'TransitGateways' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTransitGatewaysResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTransitGatewayVpcAttachments(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayAttachmentIds => ArrayRef[Str|Undef]])

=head2 DescribeAllTransitGatewayVpcAttachments([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayAttachmentIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayVpcAttachments, passing the object as the first parameter, and the string 'TransitGatewayVpcAttachments' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTransitGatewayVpcAttachmentsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVolumes(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VolumeIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVolumes([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VolumeIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Volumes, passing the object as the first parameter, and the string 'Volumes' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVolumesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVolumesModifications(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VolumeIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVolumesModifications([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VolumeIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VolumesModifications, passing the object as the first parameter, and the string 'VolumesModifications' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVolumesModificationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVolumeStatus(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VolumeIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVolumeStatus([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VolumeIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VolumeStatuses, passing the object as the first parameter, and the string 'VolumeStatuses' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVolumeStatusResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVpcClassicLinkDnsSupport(sub { },[MaxResults => Int, NextToken => Str, VpcIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVpcClassicLinkDnsSupport([MaxResults => Int, NextToken => Str, VpcIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Vpcs, passing the object as the first parameter, and the string 'Vpcs' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVpcClassicLinkDnsSupportResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVpcEndpointConnectionNotifications(sub { },[ConnectionNotificationId => Str, DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllVpcEndpointConnectionNotifications([ConnectionNotificationId => Str, DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConnectionNotificationSet, passing the object as the first parameter, and the string 'ConnectionNotificationSet' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVpcEndpointConnectionNotificationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVpcEndpointConnections(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllVpcEndpointConnections([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VpcEndpointConnections, passing the object as the first parameter, and the string 'VpcEndpointConnections' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVpcEndpointConnectionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVpcEndpoints(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VpcEndpointIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVpcEndpoints([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VpcEndpointIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VpcEndpoints, passing the object as the first parameter, and the string 'VpcEndpoints' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVpcEndpointsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVpcEndpointServiceConfigurations(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, ServiceIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVpcEndpointServiceConfigurations([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, ServiceIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ServiceConfigurations, passing the object as the first parameter, and the string 'ServiceConfigurations' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVpcEndpointServiceConfigurationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVpcEndpointServicePermissions(sub { },ServiceId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllVpcEndpointServicePermissions(ServiceId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AllowedPrincipals, passing the object as the first parameter, and the string 'AllowedPrincipals' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVpcEndpointServicePermissionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVpcEndpointServices(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, ServiceNames => ArrayRef[Str|Undef]])

=head2 DescribeAllVpcEndpointServices([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, ServiceNames => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ServiceDetails, passing the object as the first parameter, and the string 'ServiceDetails' as the second parameter 

 - ServiceNames, passing the object as the first parameter, and the string 'ServiceNames' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVpcEndpointServicesResult> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVpcPeeringConnections(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VpcPeeringConnectionIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVpcPeeringConnections([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VpcPeeringConnectionIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VpcPeeringConnections, passing the object as the first parameter, and the string 'VpcPeeringConnections' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVpcPeeringConnectionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVpcs(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VpcIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVpcs([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VpcIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Vpcs, passing the object as the first parameter, and the string 'Vpcs' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVpcsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllAssociatedIpv6PoolCidrs(sub { },PoolId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])

=head2 GetAllAssociatedIpv6PoolCidrs(PoolId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Ipv6CidrAssociations, passing the object as the first parameter, and the string 'Ipv6CidrAssociations' as the second parameter 

If not, it will return a a L<Paws::EC2::GetAssociatedIpv6PoolCidrsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllGroupsForCapacityReservation(sub { },CapacityReservationId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])

=head2 GetAllGroupsForCapacityReservation(CapacityReservationId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CapacityReservationGroups, passing the object as the first parameter, and the string 'CapacityReservationGroups' as the second parameter 

If not, it will return a a L<Paws::EC2::GetGroupsForCapacityReservationResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllManagedPrefixListAssociations(sub { },PrefixListId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])

=head2 GetAllManagedPrefixListAssociations(PrefixListId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PrefixListAssociations, passing the object as the first parameter, and the string 'PrefixListAssociations' as the second parameter 

If not, it will return a a L<Paws::EC2::GetManagedPrefixListAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllManagedPrefixListEntries(sub { },PrefixListId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str, TargetVersion => Int])

=head2 GetAllManagedPrefixListEntries(PrefixListId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str, TargetVersion => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Entries, passing the object as the first parameter, and the string 'Entries' as the second parameter 

If not, it will return a a L<Paws::EC2::GetManagedPrefixListEntriesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTransitGatewayAttachmentPropagations(sub { },TransitGatewayAttachmentId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 GetAllTransitGatewayAttachmentPropagations(TransitGatewayAttachmentId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayAttachmentPropagations, passing the object as the first parameter, and the string 'TransitGatewayAttachmentPropagations' as the second parameter 

If not, it will return a a L<Paws::EC2::GetTransitGatewayAttachmentPropagationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTransitGatewayMulticastDomainAssociations(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayMulticastDomainId => Str])

=head2 GetAllTransitGatewayMulticastDomainAssociations([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayMulticastDomainId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MulticastDomainAssociations, passing the object as the first parameter, and the string 'MulticastDomainAssociations' as the second parameter 

If not, it will return a a L<Paws::EC2::GetTransitGatewayMulticastDomainAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTransitGatewayPrefixListReferences(sub { },TransitGatewayRouteTableId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 GetAllTransitGatewayPrefixListReferences(TransitGatewayRouteTableId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayPrefixListReferences, passing the object as the first parameter, and the string 'TransitGatewayPrefixListReferences' as the second parameter 

If not, it will return a a L<Paws::EC2::GetTransitGatewayPrefixListReferencesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTransitGatewayRouteTableAssociations(sub { },TransitGatewayRouteTableId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 GetAllTransitGatewayRouteTableAssociations(TransitGatewayRouteTableId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Associations, passing the object as the first parameter, and the string 'Associations' as the second parameter 

If not, it will return a a L<Paws::EC2::GetTransitGatewayRouteTableAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTransitGatewayRouteTablePropagations(sub { },TransitGatewayRouteTableId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 GetAllTransitGatewayRouteTablePropagations(TransitGatewayRouteTableId => Str, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransitGatewayRouteTablePropagations, passing the object as the first parameter, and the string 'TransitGatewayRouteTablePropagations' as the second parameter 

If not, it will return a a L<Paws::EC2::GetTransitGatewayRouteTablePropagationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllLocalGatewayRoutes(sub { },Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayRouteTableId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])

=head2 SearchAllLocalGatewayRoutes(Filters => ArrayRef[L<Paws::EC2::Filter>], LocalGatewayRouteTableId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Routes, passing the object as the first parameter, and the string 'Routes' as the second parameter 

If not, it will return a a L<Paws::EC2::SearchLocalGatewayRoutesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllTransitGatewayMulticastGroups(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayMulticastDomainId => Str])

=head2 SearchAllTransitGatewayMulticastGroups([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, TransitGatewayMulticastDomainId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MulticastGroups, passing the object as the first parameter, and the string 'MulticastGroups' as the second parameter 

If not, it will return a a L<Paws::EC2::SearchTransitGatewayMulticastGroupsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

