
use Paws::API;


package Paws::EC2 {
  use Moose;
  sub service { 'ec2' }
  sub version { '2014-10-01' }
  sub flattened_arrays { 1 }

  with 'Paws::API::Caller', 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::EC2Caller', 'Paws::Net::XMLResponse';

  
  sub AcceptVpcPeeringConnection {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::AcceptVpcPeeringConnection', @_);
  }
  sub AllocateAddress {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::AllocateAddress', @_);
  }
  sub AssignPrivateIpAddresses {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::AssignPrivateIpAddresses', @_);
  }
  sub AssociateAddress {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::AssociateAddress', @_);
  }
  sub AssociateDhcpOptions {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::AssociateDhcpOptions', @_);
  }
  sub AssociateRouteTable {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::AssociateRouteTable', @_);
  }
  sub AttachClassicLinkVpc {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::AttachClassicLinkVpc', @_);
  }
  sub AttachInternetGateway {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::AttachInternetGateway', @_);
  }
  sub AttachNetworkInterface {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::AttachNetworkInterface', @_);
  }
  sub AttachVolume {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::AttachVolume', @_);
  }
  sub AttachVpnGateway {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::AttachVpnGateway', @_);
  }
  sub AuthorizeSecurityGroupEgress {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::AuthorizeSecurityGroupEgress', @_);
  }
  sub AuthorizeSecurityGroupIngress {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::AuthorizeSecurityGroupIngress', @_);
  }
  sub BundleInstance {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::BundleInstance', @_);
  }
  sub CancelBundleTask {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CancelBundleTask', @_);
  }
  sub CancelConversionTask {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CancelConversionTask', @_);
  }
  sub CancelExportTask {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CancelExportTask', @_);
  }
  sub CancelReservedInstancesListing {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CancelReservedInstancesListing', @_);
  }
  sub CancelSpotInstanceRequests {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CancelSpotInstanceRequests', @_);
  }
  sub ConfirmProductInstance {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::ConfirmProductInstance', @_);
  }
  sub CopyImage {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CopyImage', @_);
  }
  sub CopySnapshot {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CopySnapshot', @_);
  }
  sub CreateCustomerGateway {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateCustomerGateway', @_);
  }
  sub CreateDhcpOptions {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateDhcpOptions', @_);
  }
  sub CreateImage {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateImage', @_);
  }
  sub CreateInstanceExportTask {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateInstanceExportTask', @_);
  }
  sub CreateInternetGateway {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateInternetGateway', @_);
  }
  sub CreateKeyPair {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateKeyPair', @_);
  }
  sub CreateNetworkAcl {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateNetworkAcl', @_);
  }
  sub CreateNetworkAclEntry {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateNetworkAclEntry', @_);
  }
  sub CreateNetworkInterface {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateNetworkInterface', @_);
  }
  sub CreatePlacementGroup {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreatePlacementGroup', @_);
  }
  sub CreateReservedInstancesListing {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateReservedInstancesListing', @_);
  }
  sub CreateRoute {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateRoute', @_);
  }
  sub CreateRouteTable {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateRouteTable', @_);
  }
  sub CreateSecurityGroup {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateSecurityGroup', @_);
  }
  sub CreateSnapshot {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateSnapshot', @_);
  }
  sub CreateSpotDatafeedSubscription {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateSpotDatafeedSubscription', @_);
  }
  sub CreateSubnet {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateSubnet', @_);
  }
  sub CreateTags {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateTags', @_);
  }
  sub CreateVolume {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateVolume', @_);
  }
  sub CreateVpc {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateVpc', @_);
  }
  sub CreateVpcPeeringConnection {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateVpcPeeringConnection', @_);
  }
  sub CreateVpnConnection {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateVpnConnection', @_);
  }
  sub CreateVpnConnectionRoute {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateVpnConnectionRoute', @_);
  }
  sub CreateVpnGateway {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::CreateVpnGateway', @_);
  }
  sub DeleteCustomerGateway {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DeleteCustomerGateway', @_);
  }
  sub DeleteDhcpOptions {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DeleteDhcpOptions', @_);
  }
  sub DeleteInternetGateway {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DeleteInternetGateway', @_);
  }
  sub DeleteKeyPair {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DeleteKeyPair', @_);
  }
  sub DeleteNetworkAcl {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DeleteNetworkAcl', @_);
  }
  sub DeleteNetworkAclEntry {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DeleteNetworkAclEntry', @_);
  }
  sub DeleteNetworkInterface {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DeleteNetworkInterface', @_);
  }
  sub DeletePlacementGroup {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DeletePlacementGroup', @_);
  }
  sub DeleteRoute {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DeleteRoute', @_);
  }
  sub DeleteRouteTable {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DeleteRouteTable', @_);
  }
  sub DeleteSecurityGroup {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DeleteSecurityGroup', @_);
  }
  sub DeleteSnapshot {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DeleteSnapshot', @_);
  }
  sub DeleteSpotDatafeedSubscription {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DeleteSpotDatafeedSubscription', @_);
  }
  sub DeleteSubnet {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DeleteSubnet', @_);
  }
  sub DeleteTags {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DeleteTags', @_);
  }
  sub DeleteVolume {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DeleteVolume', @_);
  }
  sub DeleteVpc {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DeleteVpc', @_);
  }
  sub DeleteVpcPeeringConnection {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DeleteVpcPeeringConnection', @_);
  }
  sub DeleteVpnConnection {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DeleteVpnConnection', @_);
  }
  sub DeleteVpnConnectionRoute {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DeleteVpnConnectionRoute', @_);
  }
  sub DeleteVpnGateway {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DeleteVpnGateway', @_);
  }
  sub DeregisterImage {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DeregisterImage', @_);
  }
  sub DescribeAccountAttributes {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeAccountAttributes', @_);
  }
  sub DescribeAddresses {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeAddresses', @_);
  }
  sub DescribeAvailabilityZones {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeAvailabilityZones', @_);
  }
  sub DescribeBundleTasks {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeBundleTasks', @_);
  }
  sub DescribeClassicLinkInstances {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeClassicLinkInstances', @_);
  }
  sub DescribeConversionTasks {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeConversionTasks', @_);
  }
  sub DescribeCustomerGateways {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeCustomerGateways', @_);
  }
  sub DescribeDhcpOptions {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeDhcpOptions', @_);
  }
  sub DescribeExportTasks {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeExportTasks', @_);
  }
  sub DescribeImageAttribute {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeImageAttribute', @_);
  }
  sub DescribeImages {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeImages', @_);
  }
  sub DescribeInstanceAttribute {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeInstanceAttribute', @_);
  }
  sub DescribeInstances {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeInstances', @_);
  }
  sub DescribeInstanceStatus {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeInstanceStatus', @_);
  }
  sub DescribeInternetGateways {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeInternetGateways', @_);
  }
  sub DescribeKeyPairs {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeKeyPairs', @_);
  }
  sub DescribeNetworkAcls {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeNetworkAcls', @_);
  }
  sub DescribeNetworkInterfaceAttribute {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeNetworkInterfaceAttribute', @_);
  }
  sub DescribeNetworkInterfaces {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeNetworkInterfaces', @_);
  }
  sub DescribePlacementGroups {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribePlacementGroups', @_);
  }
  sub DescribeRegions {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeRegions', @_);
  }
  sub DescribeReservedInstances {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeReservedInstances', @_);
  }
  sub DescribeReservedInstancesListings {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeReservedInstancesListings', @_);
  }
  sub DescribeReservedInstancesModifications {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeReservedInstancesModifications', @_);
  }
  sub DescribeReservedInstancesOfferings {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeReservedInstancesOfferings', @_);
  }
  sub DescribeRouteTables {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeRouteTables', @_);
  }
  sub DescribeSecurityGroups {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeSecurityGroups', @_);
  }
  sub DescribeSnapshotAttribute {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeSnapshotAttribute', @_);
  }
  sub DescribeSnapshots {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeSnapshots', @_);
  }
  sub DescribeSpotDatafeedSubscription {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeSpotDatafeedSubscription', @_);
  }
  sub DescribeSpotInstanceRequests {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeSpotInstanceRequests', @_);
  }
  sub DescribeSpotPriceHistory {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeSpotPriceHistory', @_);
  }
  sub DescribeSubnets {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeSubnets', @_);
  }
  sub DescribeTags {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeTags', @_);
  }
  sub DescribeVolumeAttribute {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeVolumeAttribute', @_);
  }
  sub DescribeVolumes {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeVolumes', @_);
  }
  sub DescribeVolumeStatus {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeVolumeStatus', @_);
  }
  sub DescribeVpcAttribute {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeVpcAttribute', @_);
  }
  sub DescribeVpcClassicLink {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeVpcClassicLink', @_);
  }
  sub DescribeVpcPeeringConnections {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeVpcPeeringConnections', @_);
  }
  sub DescribeVpcs {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeVpcs', @_);
  }
  sub DescribeVpnConnections {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeVpnConnections', @_);
  }
  sub DescribeVpnGateways {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DescribeVpnGateways', @_);
  }
  sub DetachClassicLinkVpc {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DetachClassicLinkVpc', @_);
  }
  sub DetachInternetGateway {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DetachInternetGateway', @_);
  }
  sub DetachNetworkInterface {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DetachNetworkInterface', @_);
  }
  sub DetachVolume {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DetachVolume', @_);
  }
  sub DetachVpnGateway {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DetachVpnGateway', @_);
  }
  sub DisableVgwRoutePropagation {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DisableVgwRoutePropagation', @_);
  }
  sub DisableVpcClassicLink {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DisableVpcClassicLink', @_);
  }
  sub DisassociateAddress {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DisassociateAddress', @_);
  }
  sub DisassociateRouteTable {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::DisassociateRouteTable', @_);
  }
  sub EnableVgwRoutePropagation {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::EnableVgwRoutePropagation', @_);
  }
  sub EnableVolumeIO {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::EnableVolumeIO', @_);
  }
  sub EnableVpcClassicLink {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::EnableVpcClassicLink', @_);
  }
  sub GetConsoleOutput {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::GetConsoleOutput', @_);
  }
  sub GetPasswordData {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::GetPasswordData', @_);
  }
  sub ImportInstance {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::ImportInstance', @_);
  }
  sub ImportKeyPair {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::ImportKeyPair', @_);
  }
  sub ImportVolume {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::ImportVolume', @_);
  }
  sub ModifyImageAttribute {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::ModifyImageAttribute', @_);
  }
  sub ModifyInstanceAttribute {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::ModifyInstanceAttribute', @_);
  }
  sub ModifyNetworkInterfaceAttribute {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::ModifyNetworkInterfaceAttribute', @_);
  }
  sub ModifyReservedInstances {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::ModifyReservedInstances', @_);
  }
  sub ModifySnapshotAttribute {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::ModifySnapshotAttribute', @_);
  }
  sub ModifySubnetAttribute {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::ModifySubnetAttribute', @_);
  }
  sub ModifyVolumeAttribute {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::ModifyVolumeAttribute', @_);
  }
  sub ModifyVpcAttribute {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::ModifyVpcAttribute', @_);
  }
  sub MonitorInstances {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::MonitorInstances', @_);
  }
  sub PurchaseReservedInstancesOffering {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::PurchaseReservedInstancesOffering', @_);
  }
  sub RebootInstances {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::RebootInstances', @_);
  }
  sub RegisterImage {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::RegisterImage', @_);
  }
  sub RejectVpcPeeringConnection {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::RejectVpcPeeringConnection', @_);
  }
  sub ReleaseAddress {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::ReleaseAddress', @_);
  }
  sub ReplaceNetworkAclAssociation {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::ReplaceNetworkAclAssociation', @_);
  }
  sub ReplaceNetworkAclEntry {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::ReplaceNetworkAclEntry', @_);
  }
  sub ReplaceRoute {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::ReplaceRoute', @_);
  }
  sub ReplaceRouteTableAssociation {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::ReplaceRouteTableAssociation', @_);
  }
  sub ReportInstanceStatus {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::ReportInstanceStatus', @_);
  }
  sub RequestSpotInstances {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::RequestSpotInstances', @_);
  }
  sub ResetImageAttribute {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::ResetImageAttribute', @_);
  }
  sub ResetInstanceAttribute {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::ResetInstanceAttribute', @_);
  }
  sub ResetNetworkInterfaceAttribute {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::ResetNetworkInterfaceAttribute', @_);
  }
  sub ResetSnapshotAttribute {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::ResetSnapshotAttribute', @_);
  }
  sub RevokeSecurityGroupEgress {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::RevokeSecurityGroupEgress', @_);
  }
  sub RevokeSecurityGroupIngress {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::RevokeSecurityGroupIngress', @_);
  }
  sub RunInstances {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::RunInstances', @_);
  }
  sub StartInstances {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::StartInstances', @_);
  }
  sub StopInstances {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::StopInstances', @_);
  }
  sub TerminateInstances {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::TerminateInstances', @_);
  }
  sub UnassignPrivateIpAddresses {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::UnassignPrivateIpAddresses', @_);
  }
  sub UnmonitorInstances {
    my $self = shift;
    return $self->caller->do_call('Paws::EC2::UnmonitorInstances', @_);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2 - Perl Interface to AWS Amazon Elastic Compute Cloud

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



Amazon Elastic Compute Cloud

Amazon Elastic Compute Cloud (Amazon EC2) provides resizable computing
capacity in the Amazon Web Services (AWS) cloud. Using Amazon EC2
eliminates your need to invest in hardware up front, so you can develop
and deploy applications faster.










=head1 METHODS

=head2 AcceptVpcPeeringConnection()

  Arguments described in: L<Paws::EC2::AcceptVpcPeeringConnection>

  Returns: L<Paws::EC2::AcceptVpcPeeringConnectionResult>

  

Accept a VPC peering connection request. To accept a request, the VPC
peering connection must be in the C<pending-acceptance> state, and you
must be the owner of the peer VPC. Use the
C<DescribeVpcPeeringConnections> request to view your outstanding VPC
peering connection requests.











=head2 AllocateAddress()

  Arguments described in: L<Paws::EC2::AllocateAddress>

  Returns: L<Paws::EC2::AllocateAddressResult>

  

Acquires an Elastic IP address.

An Elastic IP address is for use either in the EC2-Classic platform or
in a VPC. For more information, see Elastic IP Addresses in the
I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 AssignPrivateIpAddresses()

  Arguments described in: L<Paws::EC2::AssignPrivateIpAddresses>

  Returns: nothing

  

Assigns one or more secondary private IP addresses to the specified
network interface. You can specify one or more specific secondary IP
addresses, or you can specify the number of secondary IP addresses to
be automatically assigned within the subnet's CIDR block range. The
number of secondary IP addresses that you can assign to an instance
varies by instance type. For information about instance types, see
Instance Types in the I<Amazon Elastic Compute Cloud User Guide for
Linux>. For more information about Elastic IP addresses, see Elastic IP
Addresses in the I<Amazon Elastic Compute Cloud User Guide for Linux>.

AssignPrivateIpAddresses is available only in EC2-VPC.











=head2 AssociateAddress()

  Arguments described in: L<Paws::EC2::AssociateAddress>

  Returns: L<Paws::EC2::AssociateAddressResult>

  

Associates an Elastic IP address with an instance or a network
interface.

An Elastic IP address is for use in either the EC2-Classic platform or
in a VPC. For more information, see Elastic IP Addresses in the
I<Amazon Elastic Compute Cloud User Guide for Linux>.

[EC2-Classic, VPC in an EC2-VPC-only account] If the Elastic IP address
is already associated with a different instance, it is disassociated
from that instance and associated with the specified instance.

[VPC in an EC2-Classic account] If you don't specify a private IP
address, the Elastic IP address is associated with the primary IP
address. If the Elastic IP address is already associated with a
different instance or a network interface, you get an error unless you
allow reassociation.

This is an idempotent operation. If you perform the operation more than
once, Amazon EC2 doesn't return an error.











=head2 AssociateDhcpOptions()

  Arguments described in: L<Paws::EC2::AssociateDhcpOptions>

  Returns: nothing

  

Associates a set of DHCP options (that you've previously created) with
the specified VPC, or associates no DHCP options with the VPC.

After you associate the options with the VPC, any existing instances
and all new instances that you launch in that VPC use the options. You
don't need to restart or relaunch the instances. They automatically
pick up the changes within a few hours, depending on how frequently the
instance renews its DHCP lease. You can explicitly renew the lease
using the operating system on the instance.

For more information, see DHCP Options Sets in the I<Amazon Virtual
Private Cloud User Guide>.











=head2 AssociateRouteTable()

  Arguments described in: L<Paws::EC2::AssociateRouteTable>

  Returns: L<Paws::EC2::AssociateRouteTableResult>

  

Associates a subnet with a route table. The subnet and route table must
be in the same VPC. This association causes traffic originating from
the subnet to be routed according to the routes in the route table. The
action returns an association ID, which you need in order to
disassociate the route table from the subnet later. A route table can
be associated with multiple subnets.

For more information about route tables, see Route Tables in the
I<Amazon Virtual Private Cloud User Guide>.











=head2 AttachClassicLinkVpc()

  Arguments described in: L<Paws::EC2::AttachClassicLinkVpc>

  Returns: L<Paws::EC2::AttachClassicLinkVpcResult>

  

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











=head2 AttachInternetGateway()

  Arguments described in: L<Paws::EC2::AttachInternetGateway>

  Returns: nothing

  

Attaches an Internet gateway to a VPC, enabling connectivity between
the Internet and the VPC. For more information about your VPC and
Internet gateway, see the Amazon Virtual Private Cloud User Guide.











=head2 AttachNetworkInterface()

  Arguments described in: L<Paws::EC2::AttachNetworkInterface>

  Returns: L<Paws::EC2::AttachNetworkInterfaceResult>

  

Attaches a network interface to an instance.











=head2 AttachVolume()

  Arguments described in: L<Paws::EC2::AttachVolume>

  Returns: L<Paws::EC2::VolumeAttachment>

  

Attaches an Amazon EBS volume to a running or stopped instance and
exposes it to the instance with the specified device name.

Encrypted Amazon EBS volumes may only be attached to instances that
support Amazon EBS encryption. For more information, see Amazon EBS
Encryption in the I<Amazon Elastic Compute Cloud User Guide for Linux>.

For a list of supported device names, see Attaching an Amazon EBS
Volume to an Instance. Any device names that aren't reserved for
instance store volumes can be used for Amazon EBS volumes. For more
information, see Amazon EC2 Instance Store in the I<Amazon Elastic
Compute Cloud User Guide for Linux>.

If a volume has an AWS Marketplace product code:

=over

=item * The volume can be attached only to a stopped instance.

=item * AWS Marketplace product codes are copied from the volume to the
instance.

=item * You must be subscribed to the product.

=item * The instance type and operating system of the instance must
support the product. For example, you can't detach a volume from a
Windows instance and attach it to a Linux instance.

=back

For an overview of the AWS Marketplace, see Introducing AWS
Marketplace.

For more information about Amazon EBS volumes, see Attaching Amazon EBS
Volumes in the I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 AttachVpnGateway()

  Arguments described in: L<Paws::EC2::AttachVpnGateway>

  Returns: L<Paws::EC2::AttachVpnGatewayResult>

  

Attaches a virtual private gateway to a VPC. For more information, see
Adding a Hardware Virtual Private Gateway to Your VPC in the I<Amazon
Virtual Private Cloud User Guide>.











=head2 AuthorizeSecurityGroupEgress()

  Arguments described in: L<Paws::EC2::AuthorizeSecurityGroupEgress>

  Returns: nothing

  

Adds one or more egress rules to a security group for use with a VPC.
Specifically, this action permits instances to send traffic to one or
more destination CIDR IP address ranges, or to one or more destination
security groups for the same VPC.

You can have up to 50 rules per security group (covering both ingress
and egress rules).

A security group is for use with instances either in the EC2-Classic
platform or in a specific VPC. This action doesn't apply to security
groups for use in EC2-Classic. For more information, see Security
Groups for Your VPC in the I<Amazon Virtual Private Cloud User Guide>.

Each rule consists of the protocol (for example, TCP), plus either a
CIDR range or a source group. For the TCP and UDP protocols, you must
also specify the destination port or port range. For the ICMP protocol,
you must also specify the ICMP type and code. You can use -1 for the
type or code to mean all types or all codes.

Rule changes are propagated to affected instances as quickly as
possible. However, a small delay might occur.











=head2 AuthorizeSecurityGroupIngress()

  Arguments described in: L<Paws::EC2::AuthorizeSecurityGroupIngress>

  Returns: nothing

  

Adds one or more ingress rules to a security group.

EC2-Classic: You can have up to 100 rules per group.

EC2-VPC: You can have up to 50 rules per group (covering both ingress
and egress rules).

Rule changes are propagated to instances within the security group as
quickly as possible. However, a small delay might occur.

[EC2-Classic] This action gives one or more CIDR IP address ranges
permission to access a security group in your account, or gives one or
more security groups (called the I<source groups>) permission to access
a security group for your account. A source group can be for your own
AWS account, or another.

[EC2-VPC] This action gives one or more CIDR IP address ranges
permission to access a security group in your VPC, or gives one or more
other security groups (called the I<source groups>) permission to
access a security group for your VPC. The security groups must all be
for the same VPC.











=head2 BundleInstance()

  Arguments described in: L<Paws::EC2::BundleInstance>

  Returns: L<Paws::EC2::BundleInstanceResult>

  

Bundles an Amazon instance store-backed Windows instance.

During bundling, only the root device volume (C:\) is bundled. Data on
other instance store volumes is not preserved.

This action is not applicable for Linux/Unix instances or Windows
instances that are backed by Amazon EBS.

For more information, see Creating an Instance Store-Backed Windows
AMI.











=head2 CancelBundleTask()

  Arguments described in: L<Paws::EC2::CancelBundleTask>

  Returns: L<Paws::EC2::CancelBundleTaskResult>

  

Cancels a bundling operation for an instance store-backed Windows
instance.











=head2 CancelConversionTask()

  Arguments described in: L<Paws::EC2::CancelConversionTask>

  Returns: nothing

  

Cancels an active conversion task. The task can be the import of an
instance or volume. The action removes all artifacts of the conversion,
including a partially uploaded volume or instance. If the conversion is
complete or is in the process of transferring the final disk image, the
command fails and returns an exception.

For more information, see Using the Command Line Tools to Import Your
Virtual Machine to Amazon EC2 in the I<Amazon Elastic Compute Cloud
User Guide for Linux>.











=head2 CancelExportTask()

  Arguments described in: L<Paws::EC2::CancelExportTask>

  Returns: nothing

  

Cancels an active export task. The request removes all artifacts of the
export, including any partially-created Amazon S3 objects. If the
export task is complete or is in the process of transferring the final
disk image, the command fails and returns an error.











=head2 CancelReservedInstancesListing()

  Arguments described in: L<Paws::EC2::CancelReservedInstancesListing>

  Returns: L<Paws::EC2::CancelReservedInstancesListingResult>

  

Cancels the specified Reserved Instance listing in the Reserved
Instance Marketplace.

For more information, see Reserved Instance Marketplace in the I<Amazon
Elastic Compute Cloud User Guide for Linux>.











=head2 CancelSpotInstanceRequests()

  Arguments described in: L<Paws::EC2::CancelSpotInstanceRequests>

  Returns: L<Paws::EC2::CancelSpotInstanceRequestsResult>

  

Cancels one or more Spot Instance requests. Spot Instances are
instances that Amazon EC2 starts on your behalf when the bid price that
you specify exceeds the current Spot Price. Amazon EC2 periodically
sets the Spot Price based on available Spot Instance capacity and
current Spot Instance requests. For more information, see Spot Instance
Requests in the I<Amazon Elastic Compute Cloud User Guide for Linux>.

Canceling a Spot Instance request does not terminate running Spot
Instances associated with the request.











=head2 ConfirmProductInstance()

  Arguments described in: L<Paws::EC2::ConfirmProductInstance>

  Returns: L<Paws::EC2::ConfirmProductInstanceResult>

  

Determines whether a product code is associated with an instance. This
action can only be used by the owner of the product code. It is useful
when a product code owner needs to verify whether another user's
instance is eligible for support.











=head2 CopyImage()

  Arguments described in: L<Paws::EC2::CopyImage>

  Returns: L<Paws::EC2::CopyImageResult>

  

Initiates the copy of an AMI from the specified source region to the
current region. You specify the destination region by using its
endpoint when making the request. AMIs that use encrypted Amazon EBS
snapshots cannot be copied with this method.

For more information, see Copying AMIs in the I<Amazon Elastic Compute
Cloud User Guide for Linux>.











=head2 CopySnapshot()

  Arguments described in: L<Paws::EC2::CopySnapshot>

  Returns: L<Paws::EC2::CopySnapshotResult>

  

Copies a point-in-time snapshot of an Amazon EBS volume and stores it
in Amazon S3. You can copy the snapshot within the same region or from
one region to another. You can use the snapshot to create Amazon EBS
volumes or Amazon Machine Images (AMIs). The snapshot is copied to the
regional endpoint that you send the HTTP request to.

Copies of encrypted Amazon EBS snapshots remain encrypted. Copies of
unencrypted snapshots remain unencrypted.

Copying snapshots that were encrypted with non-default AWS Key
Management Service (KMS) master keys is not supported at this time.

For more information, see Copying an Amazon EBS Snapshot in the
I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 CreateCustomerGateway()

  Arguments described in: L<Paws::EC2::CreateCustomerGateway>

  Returns: L<Paws::EC2::CreateCustomerGatewayResult>

  

Provides information to AWS about your VPN customer gateway device. The
customer gateway is the appliance at your end of the VPN connection.
(The device on the AWS side of the VPN connection is the virtual
private gateway.) You must provide the Internet-routable IP address of
the customer gateway's external interface. The IP address must be
static and can't be behind a device performing network address
translation (NAT).

For devices that use Border Gateway Protocol (BGP), you can also
provide the device's BGP Autonomous System Number (ASN). You can use an
existing ASN assigned to your network. If you don't have an ASN
already, you can use a private ASN (in the 64512 - 65534 range).

Amazon EC2 supports all 2-byte ASN numbers in the range of 1 - 65534,
with the exception of 7224, which is reserved in the C<us-east-1>
region, and 9059, which is reserved in the C<eu-west-1> region.

For more information about VPN customer gateways, see Adding a Hardware
Virtual Private Gateway to Your VPC in the I<Amazon Virtual Private
Cloud User Guide>.











=head2 CreateDhcpOptions()

  Arguments described in: L<Paws::EC2::CreateDhcpOptions>

  Returns: L<Paws::EC2::CreateDhcpOptionsResult>

  

Creates a set of DHCP options for your VPC. After creating the set, you
must associate it with the VPC, causing all existing and new instances
that you launch in the VPC to use this set of DHCP options. The
following are the individual DHCP options you can specify. For more
information about the options, see RFC 2132.

=over

=item * C<domain-name-servers> - The IP addresses of up to four domain
name servers, or C<AmazonProvidedDNS>. The default DHCP option set
specifies C<AmazonProvidedDNS>. If specifying more than one domain name
server, specify the IP addresses in a single parameter, separated by
commas.

=item * C<domain-name> - If you're using AmazonProvidedDNS in
C<us-east-1>, specify C<ec2.internal>. If you're using
AmazonProvidedDNS in another region, specify C<region.compute.internal>
(for example, C<ap-northeast-1.compute.internal>). Otherwise, specify a
domain name (for example, C<MyCompany.com>). B<Important>: Some Linux
operating systems accept multiple domain names separated by spaces.
However, Windows and other Linux operating systems treat the value as a
single domain, which results in unexpected behavior. If your DHCP
options set is associated with a VPC that has instances with multiple
operating systems, specify only one domain name.

=item * C<ntp-servers> - The IP addresses of up to four Network Time
Protocol (NTP) servers.

=item * C<netbios-name-servers> - The IP addresses of up to four
NetBIOS name servers.

=item * C<netbios-node-type> - The NetBIOS node type (1, 2, 4, or 8).
We recommend that you specify 2 (broadcast and multicast are not
currently supported). For more information about these node types, see
RFC 2132.

=back

Your VPC automatically starts out with a set of DHCP options that
includes only a DNS server that we provide (AmazonProvidedDNS). If you
create a set of options, and if your VPC has an Internet gateway, make
sure to set the C<domain-name-servers> option either to
C<AmazonProvidedDNS> or to a domain name server of your choice. For
more information about DHCP options, see DHCP Options Sets in the
I<Amazon Virtual Private Cloud User Guide>.











=head2 CreateImage()

  Arguments described in: L<Paws::EC2::CreateImage>

  Returns: L<Paws::EC2::CreateImageResult>

  

Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance
that is either running or stopped.

If you customized your instance with instance store volumes or EBS
volumes in addition to the root device volume, the new AMI contains
block device mapping information for those volumes. When you launch an
instance from this new AMI, the instance automatically launches with
those additional volumes.

For more information, see Creating Amazon EBS-Backed Linux AMIs in the
I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 CreateInstanceExportTask()

  Arguments described in: L<Paws::EC2::CreateInstanceExportTask>

  Returns: L<Paws::EC2::CreateInstanceExportTaskResult>

  

Exports a running or stopped instance to an Amazon S3 bucket.

For information about the supported operating systems, image formats,
and known limitations for the types of instances you can export, see
Exporting EC2 Instances in the I<Amazon Elastic Compute Cloud User
Guide for Linux>.











=head2 CreateInternetGateway()

  Arguments described in: L<Paws::EC2::CreateInternetGateway>

  Returns: L<Paws::EC2::CreateInternetGatewayResult>

  

Creates an Internet gateway for use with a VPC. After creating the
Internet gateway, you attach it to a VPC using AttachInternetGateway.

For more information about your VPC and Internet gateway, see the
Amazon Virtual Private Cloud User Guide.











=head2 CreateKeyPair()

  Arguments described in: L<Paws::EC2::CreateKeyPair>

  Returns: L<Paws::EC2::KeyPair>

  

Creates a 2048-bit RSA key pair with the specified name. Amazon EC2
stores the public key and displays the private key for you to save to a
file. The private key is returned as an unencrypted PEM encoded PKCS
private key. If a key with the specified name already exists, Amazon
EC2 returns an error.

You can have up to five thousand key pairs per region.

The key pair returned to you is available only in the region in which
you create it. To create a key pair that is available in all regions,
use ImportKeyPair.

For more information about key pairs, see Key Pairs in the I<Amazon
Elastic Compute Cloud User Guide for Linux>.











=head2 CreateNetworkAcl()

  Arguments described in: L<Paws::EC2::CreateNetworkAcl>

  Returns: L<Paws::EC2::CreateNetworkAclResult>

  

Creates a network ACL in a VPC. Network ACLs provide an optional layer
of security (in addition to security groups) for the instances in your
VPC.

For more information about network ACLs, see Network ACLs in the
I<Amazon Virtual Private Cloud User Guide>.











=head2 CreateNetworkAclEntry()

  Arguments described in: L<Paws::EC2::CreateNetworkAclEntry>

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

For more information about network ACLs, see Network ACLs in the
I<Amazon Virtual Private Cloud User Guide>.











=head2 CreateNetworkInterface()

  Arguments described in: L<Paws::EC2::CreateNetworkInterface>

  Returns: L<Paws::EC2::CreateNetworkInterfaceResult>

  

Creates a network interface in the specified subnet.

For more information about network interfaces, see Elastic Network
Interfaces in the I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 CreatePlacementGroup()

  Arguments described in: L<Paws::EC2::CreatePlacementGroup>

  Returns: nothing

  

Creates a placement group that you launch cluster instances into. You
must give the group a name that's unique within the scope of your
account.

For more information about placement groups and cluster instances, see
Cluster Instances in the I<Amazon Elastic Compute Cloud User Guide for
Linux>.











=head2 CreateReservedInstancesListing()

  Arguments described in: L<Paws::EC2::CreateReservedInstancesListing>

  Returns: L<Paws::EC2::CreateReservedInstancesListingResult>

  

Creates a listing for Amazon EC2 Reserved Instances to be sold in the
Reserved Instance Marketplace. You can submit one Reserved Instance
listing at a time. To get a list of your Reserved Instances, you can
use the DescribeReservedInstances operation.

The Reserved Instance Marketplace matches sellers who want to resell
Reserved Instance capacity that they no longer need with buyers who
want to purchase additional capacity. Reserved Instances bought and
sold through the Reserved Instance Marketplace work like any other
Reserved Instances.

To sell your Reserved Instances, you must first register as a Seller in
the Reserved Instance Marketplace. After completing the registration
process, you can create a Reserved Instance Marketplace listing of some
or all of your Reserved Instances, and specify the upfront price to
receive for them. Your Reserved Instance listings then become available
for purchase. To view the details of your Reserved Instance listing,
you can use the DescribeReservedInstancesListings operation.

For more information, see Reserved Instance Marketplace in the I<Amazon
Elastic Compute Cloud User Guide for Linux>.











=head2 CreateRoute()

  Arguments described in: L<Paws::EC2::CreateRoute>

  Returns: nothing

  

Creates a route in a route table within a VPC.

You must specify one of the following targets: Internet gateway or
virtual private gateway, NAT instance, VPC peering connection, or
network interface.

When determining how to route traffic, we use the route with the most
specific match. For example, let's say the traffic is destined for
C<192.0.2.3>, and the route table includes the following two routes:

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

For more information about route tables, see Route Tables in the
I<Amazon Virtual Private Cloud User Guide>.











=head2 CreateRouteTable()

  Arguments described in: L<Paws::EC2::CreateRouteTable>

  Returns: L<Paws::EC2::CreateRouteTableResult>

  

Creates a route table for the specified VPC. After you create a route
table, you can add routes and associate the table with a subnet.

For more information about route tables, see Route Tables in the
I<Amazon Virtual Private Cloud User Guide>.











=head2 CreateSecurityGroup()

  Arguments described in: L<Paws::EC2::CreateSecurityGroup>

  Returns: L<Paws::EC2::CreateSecurityGroupResult>

  

Creates a security group.

A security group is for use with instances either in the EC2-Classic
platform or in a specific VPC. For more information, see Amazon EC2
Security Groups in the I<Amazon Elastic Compute Cloud User Guide for
Linux> and Security Groups for Your VPC in the I<Amazon Virtual Private
Cloud User Guide>.

EC2-Classic: You can have up to 500 security groups.

EC2-VPC: You can create up to 100 security groups per VPC.

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











=head2 CreateSnapshot()

  Arguments described in: L<Paws::EC2::CreateSnapshot>

  Returns: L<Paws::EC2::Snapshot>

  

Creates a snapshot of an Amazon EBS volume and stores it in Amazon S3.
You can use snapshots for backups, to make copies of Amazon EBS
volumes, and to save data before shutting down an instance.

When a snapshot is created, any AWS Marketplace product codes that are
associated with the source volume are propagated to the snapshot.

You can take a snapshot of an attached volume that is in use. However,
snapshots only capture data that has been written to your Amazon EBS
volume at the time the snapshot command is issued; this may exclude any
data that has been cached by any applications or the operating system.
If you can pause any file systems on the volume long enough to take a
snapshot, your snapshot should be complete. However, if you cannot
pause all file writes to the volume, you should unmount the volume from
within the instance, issue the snapshot command, and then remount the
volume to ensure a consistent and complete snapshot. You may remount
and use your volume while the snapshot status is C<pending>.

To create a snapshot for Amazon EBS volumes that serve as root devices,
you should stop the instance before taking the snapshot.

Snapshots that are taken from encrypted volumes are automatically
encrypted. Volumes that are created from encrypted snapshots are also
automatically encrypted. Your encrypted volumes and any associated
snapshots always remain protected.

For more information, see Amazon Elastic Block Store and Amazon EBS
Encryption in the I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 CreateSpotDatafeedSubscription()

  Arguments described in: L<Paws::EC2::CreateSpotDatafeedSubscription>

  Returns: L<Paws::EC2::CreateSpotDatafeedSubscriptionResult>

  

Creates a data feed for Spot Instances, enabling you to view Spot
Instance usage logs. You can create one data feed per AWS account. For
more information, see Spot Instance Data Feed in the I<Amazon Elastic
Compute Cloud User Guide for Linux>.











=head2 CreateSubnet()

  Arguments described in: L<Paws::EC2::CreateSubnet>

  Returns: L<Paws::EC2::CreateSubnetResult>

  

Creates a subnet in an existing VPC.

When you create each subnet, you provide the VPC ID and the CIDR block
you want for the subnet. After you create a subnet, you can't change
its CIDR block. The subnet's CIDR block can be the same as the VPC's
CIDR block (assuming you want only a single subnet in the VPC), or a
subset of the VPC's CIDR block. If you create more than one subnet in a
VPC, the subnets' CIDR blocks must not overlap. The smallest subnet
(and VPC) you can create uses a /28 netmask (16 IP addresses), and the
largest uses a /16 netmask (65,536 IP addresses).

AWS reserves both the first four and the last IP address in each
subnet's CIDR block. They're not available for use.

If you add more than one subnet to a VPC, they're set up in a star
topology with a logical router in the middle.

If you launch an instance in a VPC using an Amazon EBS-backed AMI, the
IP address doesn't change if you stop and restart the instance (unlike
a similar instance launched outside a VPC, which gets a new IP address
when restarted). It's therefore possible to have a subnet with no
running instances (they're all stopped), but no remaining IP addresses
available.

For more information about subnets, see Your VPC and Subnets in the
I<Amazon Virtual Private Cloud User Guide>.











=head2 CreateTags()

  Arguments described in: L<Paws::EC2::CreateTags>

  Returns: nothing

  

Adds or overwrites one or more tags for the specified Amazon EC2
resource or resources. Each resource can have a maximum of 10 tags.
Each tag consists of a key and optional value. Tag keys must be unique
per resource.

For more information about tags, see Tagging Your Resources in the
I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 CreateVolume()

  Arguments described in: L<Paws::EC2::CreateVolume>

  Returns: L<Paws::EC2::Volume>

  

Creates an Amazon EBS volume that can be attached to an instance in the
same Availability Zone. The volume is created in the regional endpoint
that you send the HTTP request to. For more information see Regions and
Endpoints.

You can create a new empty volume or restore a volume from an Amazon
EBS snapshot. Any AWS Marketplace product codes from the snapshot are
propagated to the volume.

You can create encrypted volumes with the C<Encrypted> parameter.
Encrypted volumes may only be attached to instances that support Amazon
EBS encryption. Volumes that are created from encrypted snapshots are
also automatically encrypted. For more information, see Amazon EBS
Encryption in the I<Amazon Elastic Compute Cloud User Guide for Linux>.

For more information, see Creating or Restoring an Amazon EBS Volume in
the I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 CreateVpc()

  Arguments described in: L<Paws::EC2::CreateVpc>

  Returns: L<Paws::EC2::CreateVpcResult>

  

Creates a VPC with the specified CIDR block.

The smallest VPC you can create uses a /28 netmask (16 IP addresses),
and the largest uses a /16 netmask (65,536 IP addresses). To help you
decide how big to make your VPC, see Your VPC and Subnets in the
I<Amazon Virtual Private Cloud User Guide>.

By default, each instance you launch in the VPC has the default DHCP
options, which includes only a default DNS server that we provide
(AmazonProvidedDNS). For more information about DHCP options, see DHCP
Options Sets in the I<Amazon Virtual Private Cloud User Guide>.











=head2 CreateVpcPeeringConnection()

  Arguments described in: L<Paws::EC2::CreateVpcPeeringConnection>

  Returns: L<Paws::EC2::CreateVpcPeeringConnectionResult>

  

Requests a VPC peering connection between two VPCs: a requester VPC
that you own and a peer VPC with which to create the connection. The
peer VPC can belong to another AWS account. The requester VPC and peer
VPC cannot have overlapping CIDR blocks.

The owner of the peer VPC must accept the peering request to activate
the peering connection. The VPC peering connection request expires
after 7 days, after which it cannot be accepted or rejected.

A C<CreateVpcPeeringConnection> request between VPCs with overlapping
CIDR blocks results in the VPC peering connection having a status of
C<failed>.











=head2 CreateVpnConnection()

  Arguments described in: L<Paws::EC2::CreateVpnConnection>

  Returns: L<Paws::EC2::CreateVpnConnectionResult>

  

Creates a VPN connection between an existing virtual private gateway
and a VPN customer gateway. The only supported connection type is
C<ipsec.1>.

The response includes information that you need to give to your network
administrator to configure your customer gateway.

We strongly recommend that you use HTTPS when calling this operation
because the response contains sensitive cryptographic information for
configuring your customer gateway.

If you decide to shut down your VPN connection for any reason and later
create a new VPN connection, you must reconfigure your customer gateway
with the new information returned from this call.

For more information about VPN connections, see Adding a Hardware
Virtual Private Gateway to Your VPC in the I<Amazon Virtual Private
Cloud User Guide>.











=head2 CreateVpnConnectionRoute()

  Arguments described in: L<Paws::EC2::CreateVpnConnectionRoute>

  Returns: nothing

  

Creates a static route associated with a VPN connection between an
existing virtual private gateway and a VPN customer gateway. The static
route allows traffic to be routed from the virtual private gateway to
the VPN customer gateway.

For more information about VPN connections, see Adding a Hardware
Virtual Private Gateway to Your VPC in the I<Amazon Virtual Private
Cloud User Guide>.











=head2 CreateVpnGateway()

  Arguments described in: L<Paws::EC2::CreateVpnGateway>

  Returns: L<Paws::EC2::CreateVpnGatewayResult>

  

Creates a virtual private gateway. A virtual private gateway is the
endpoint on the VPC side of your VPN connection. You can create a
virtual private gateway before creating the VPC itself.

For more information about virtual private gateways, see Adding a
Hardware Virtual Private Gateway to Your VPC in the I<Amazon Virtual
Private Cloud User Guide>.











=head2 DeleteCustomerGateway()

  Arguments described in: L<Paws::EC2::DeleteCustomerGateway>

  Returns: nothing

  

Deletes the specified customer gateway. You must delete the VPN
connection before you can delete the customer gateway.











=head2 DeleteDhcpOptions()

  Arguments described in: L<Paws::EC2::DeleteDhcpOptions>

  Returns: nothing

  

Deletes the specified set of DHCP options. You must disassociate the
set of DHCP options before you can delete it. You can disassociate the
set of DHCP options by associating either a new set of options or the
default set of options with the VPC.











=head2 DeleteInternetGateway()

  Arguments described in: L<Paws::EC2::DeleteInternetGateway>

  Returns: nothing

  

Deletes the specified Internet gateway. You must detach the Internet
gateway from the VPC before you can delete it.











=head2 DeleteKeyPair()

  Arguments described in: L<Paws::EC2::DeleteKeyPair>

  Returns: nothing

  

Deletes the specified key pair, by removing the public key from Amazon
EC2.











=head2 DeleteNetworkAcl()

  Arguments described in: L<Paws::EC2::DeleteNetworkAcl>

  Returns: nothing

  

Deletes the specified network ACL. You can't delete the ACL if it's
associated with any subnets. You can't delete the default network ACL.











=head2 DeleteNetworkAclEntry()

  Arguments described in: L<Paws::EC2::DeleteNetworkAclEntry>

  Returns: nothing

  

Deletes the specified ingress or egress entry (rule) from the specified
network ACL.











=head2 DeleteNetworkInterface()

  Arguments described in: L<Paws::EC2::DeleteNetworkInterface>

  Returns: nothing

  

Deletes the specified network interface. You must detach the network
interface before you can delete it.











=head2 DeletePlacementGroup()

  Arguments described in: L<Paws::EC2::DeletePlacementGroup>

  Returns: nothing

  

Deletes the specified placement group. You must terminate all instances
in the placement group before you can delete the placement group. For
more information about placement groups and cluster instances, see
Cluster Instances in the I<Amazon Elastic Compute Cloud User Guide for
Linux>.











=head2 DeleteRoute()

  Arguments described in: L<Paws::EC2::DeleteRoute>

  Returns: nothing

  

Deletes the specified route from the specified route table.











=head2 DeleteRouteTable()

  Arguments described in: L<Paws::EC2::DeleteRouteTable>

  Returns: nothing

  

Deletes the specified route table. You must disassociate the route
table from any subnets before you can delete it. You can't delete the
main route table.











=head2 DeleteSecurityGroup()

  Arguments described in: L<Paws::EC2::DeleteSecurityGroup>

  Returns: nothing

  

Deletes a security group.

If you attempt to delete a security group that is associated with an
instance, or is referenced by another security group, the operation
fails with C<InvalidGroup.InUse> in EC2-Classic or
C<DependencyViolation> in EC2-VPC.











=head2 DeleteSnapshot()

  Arguments described in: L<Paws::EC2::DeleteSnapshot>

  Returns: nothing

  

Deletes the specified snapshot.

When you make periodic snapshots of a volume, the snapshots are
incremental, and only the blocks on the device that have changed since
your last snapshot are saved in the new snapshot. When you delete a
snapshot, only the data not needed for any other snapshot is removed.
So regardless of which prior snapshots have been deleted, all active
snapshots will have access to all the information needed to restore the
volume.

You cannot delete a snapshot of the root device of an Amazon EBS volume
used by a registered AMI. You must first de-register the AMI before you
can delete the snapshot.

For more information, see Deleting an Amazon EBS Snapshot in the
I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 DeleteSpotDatafeedSubscription()

  Arguments described in: L<Paws::EC2::DeleteSpotDatafeedSubscription>

  Returns: nothing

  

Deletes the data feed for Spot Instances. For more information, see
Spot Instance Data Feed in the I<Amazon Elastic Compute Cloud User
Guide for Linux>.











=head2 DeleteSubnet()

  Arguments described in: L<Paws::EC2::DeleteSubnet>

  Returns: nothing

  

Deletes the specified subnet. You must terminate all running instances
in the subnet before you can delete the subnet.











=head2 DeleteTags()

  Arguments described in: L<Paws::EC2::DeleteTags>

  Returns: nothing

  

Deletes the specified set of tags from the specified set of resources.
This call is designed to follow a C<DescribeTags> request.

For more information about tags, see Tagging Your Resources in the
I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 DeleteVolume()

  Arguments described in: L<Paws::EC2::DeleteVolume>

  Returns: nothing

  

Deletes the specified Amazon EBS volume. The volume must be in the
C<available> state (not attached to an instance).

The volume may remain in the C<deleting> state for several minutes.

For more information, see Deleting an Amazon EBS Volume in the I<Amazon
Elastic Compute Cloud User Guide for Linux>.











=head2 DeleteVpc()

  Arguments described in: L<Paws::EC2::DeleteVpc>

  Returns: nothing

  

Deletes the specified VPC. You must detach or delete all gateways and
resources that are associated with the VPC before you can delete it.
For example, you must terminate all instances running in the VPC,
delete all security groups associated with the VPC (except the default
one), delete all route tables associated with the VPC (except the
default one), and so on.











=head2 DeleteVpcPeeringConnection()

  Arguments described in: L<Paws::EC2::DeleteVpcPeeringConnection>

  Returns: L<Paws::EC2::DeleteVpcPeeringConnectionResult>

  

Deletes a VPC peering connection. Either the owner of the requester VPC
or the owner of the peer VPC can delete the VPC peering connection if
it's in the C<active> state. The owner of the requester VPC can delete
a VPC peering connection in the C<pending-acceptance> state.











=head2 DeleteVpnConnection()

  Arguments described in: L<Paws::EC2::DeleteVpnConnection>

  Returns: nothing

  

Deletes the specified VPN connection.

If you're deleting the VPC and its associated components, we recommend
that you detach the virtual private gateway from the VPC and delete the
VPC before deleting the VPN connection. If you believe that the tunnel
credentials for your VPN connection have been compromised, you can
delete the VPN connection and create a new one that has new keys,
without needing to delete the VPC or virtual private gateway. If you
create a new VPN connection, you must reconfigure the customer gateway
using the new configuration information returned with the new VPN
connection ID.











=head2 DeleteVpnConnectionRoute()

  Arguments described in: L<Paws::EC2::DeleteVpnConnectionRoute>

  Returns: nothing

  

Deletes the specified static route associated with a VPN connection
between an existing virtual private gateway and a VPN customer gateway.
The static route allows traffic to be routed from the virtual private
gateway to the VPN customer gateway.











=head2 DeleteVpnGateway()

  Arguments described in: L<Paws::EC2::DeleteVpnGateway>

  Returns: nothing

  

Deletes the specified virtual private gateway. We recommend that before
you delete a virtual private gateway, you detach it from the VPC and
delete the VPN connection. Note that you don't need to delete the
virtual private gateway if you plan to delete and recreate the VPN
connection between your VPC and your network.











=head2 DeregisterImage()

  Arguments described in: L<Paws::EC2::DeregisterImage>

  Returns: nothing

  

Deregisters the specified AMI. After you deregister an AMI, it can't be
used to launch new instances.

This command does not delete the AMI.











=head2 DescribeAccountAttributes()

  Arguments described in: L<Paws::EC2::DescribeAccountAttributes>

  Returns: L<Paws::EC2::DescribeAccountAttributesResult>

  

Describes attributes of your AWS account. The following are the
supported account attributes:

=over

=item *

C<supported-platforms>: Indicates whether your account can launch
instances into EC2-Classic and EC2-VPC, or only into EC2-VPC.

=item *

C<default-vpc>: The ID of the default VPC for your account, or C<none>.

=item *

C<max-instances>: The maximum number of On-Demand instances that you
can run.

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











=head2 DescribeAddresses()

  Arguments described in: L<Paws::EC2::DescribeAddresses>

  Returns: L<Paws::EC2::DescribeAddressesResult>

  

Describes one or more of your Elastic IP addresses.

An Elastic IP address is for use in either the EC2-Classic platform or
in a VPC. For more information, see Elastic IP Addresses in the
I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 DescribeAvailabilityZones()

  Arguments described in: L<Paws::EC2::DescribeAvailabilityZones>

  Returns: L<Paws::EC2::DescribeAvailabilityZonesResult>

  

Describes one or more of the Availability Zones that are available to
you. The results include zones only for the region you're currently
using. If there is an event impacting an Availability Zone, you can use
this request to view the state and any provided message for that
Availability Zone.

For more information, see Regions and Availability Zones in the
I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 DescribeBundleTasks()

  Arguments described in: L<Paws::EC2::DescribeBundleTasks>

  Returns: L<Paws::EC2::DescribeBundleTasksResult>

  

Describes one or more of your bundling tasks.

Completed bundle tasks are listed for only a limited time. If your
bundle task is no longer in the list, you can still register an AMI
from it. Just use C<RegisterImage> with the Amazon S3 bucket name and
image manifest name you provided to the bundle task.











=head2 DescribeClassicLinkInstances()

  Arguments described in: L<Paws::EC2::DescribeClassicLinkInstances>

  Returns: L<Paws::EC2::DescribeClassicLinkInstancesResult>

  

Describes one or more of your linked EC2-Classic instances. This
request only returns information about EC2-Classic instances linked to
a VPC through ClassicLink; you cannot use this request to return
information about other instances.











=head2 DescribeConversionTasks()

  Arguments described in: L<Paws::EC2::DescribeConversionTasks>

  Returns: L<Paws::EC2::DescribeConversionTasksResult>

  

Describes one or more of your conversion tasks. For more information,
see Using the Command Line Tools to Import Your Virtual Machine to
Amazon EC2 in the I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 DescribeCustomerGateways()

  Arguments described in: L<Paws::EC2::DescribeCustomerGateways>

  Returns: L<Paws::EC2::DescribeCustomerGatewaysResult>

  

Describes one or more of your VPN customer gateways.

For more information about VPN customer gateways, see Adding a Hardware
Virtual Private Gateway to Your VPC in the I<Amazon Virtual Private
Cloud User Guide>.











=head2 DescribeDhcpOptions()

  Arguments described in: L<Paws::EC2::DescribeDhcpOptions>

  Returns: L<Paws::EC2::DescribeDhcpOptionsResult>

  

Describes one or more of your DHCP options sets.

For more information about DHCP options sets, see DHCP Options Sets in
the I<Amazon Virtual Private Cloud User Guide>.











=head2 DescribeExportTasks()

  Arguments described in: L<Paws::EC2::DescribeExportTasks>

  Returns: L<Paws::EC2::DescribeExportTasksResult>

  

Describes one or more of your export tasks.











=head2 DescribeImageAttribute()

  Arguments described in: L<Paws::EC2::DescribeImageAttribute>

  Returns: L<Paws::EC2::ImageAttribute>

  

Describes the specified attribute of the specified AMI. You can specify
only one attribute at a time.











=head2 DescribeImages()

  Arguments described in: L<Paws::EC2::DescribeImages>

  Returns: L<Paws::EC2::DescribeImagesResult>

  

Describes one or more of the images (AMIs, AKIs, and ARIs) available to
you. Images available to you include public images, private images that
you own, and private images owned by other AWS accounts but for which
you have explicit launch permissions.

Deregistered images are included in the returned results for an
unspecified interval after deregistration.











=head2 DescribeInstanceAttribute()

  Arguments described in: L<Paws::EC2::DescribeInstanceAttribute>

  Returns: L<Paws::EC2::InstanceAttribute>

  

Describes the specified attribute of the specified instance. You can
specify only one attribute at a time. Valid attribute values are:
C<instanceType> | C<kernel> | C<ramdisk> | C<userData> |
C<disableApiTermination> | C<instanceInitiatedShutdownBehavior> |
C<rootDeviceName> | C<blockDeviceMapping> | C<productCodes> |
C<sourceDestCheck> | C<groupSet> | C<ebsOptimized> | C<sriovNetSupport>











=head2 DescribeInstances()

  Arguments described in: L<Paws::EC2::DescribeInstances>

  Returns: L<Paws::EC2::DescribeInstancesResult>

  

Describes one or more of your instances.

If you specify one or more instance IDs, Amazon EC2 returns information
for those instances. If you do not specify instance IDs, Amazon EC2
returns information for all relevant instances. If you specify an
instance ID that is not valid, an error is returned. If you specify an
instance that you do not own, it is not included in the returned
results.

Recently terminated instances might appear in the returned results.
This interval is usually less than one hour.











=head2 DescribeInstanceStatus()

  Arguments described in: L<Paws::EC2::DescribeInstanceStatus>

  Returns: L<Paws::EC2::DescribeInstanceStatusResult>

  

Describes the status of one or more instances, including any scheduled
events.

Instance status has two main components:

=over

=item *

System Status reports impaired functionality that stems from issues
related to the systems that support an instance, such as such as
hardware failures and network connectivity problems. This call reports
such problems as impaired reachability.

=item *

Instance Status reports impaired functionality that arises from
problems internal to the instance. This call reports such problems as
impaired reachability.

=back

Instance status provides information about four types of scheduled
events for an instance that may require your attention:

=over

=item *

Scheduled Reboot: When Amazon EC2 determines that an instance must be
rebooted, the instances status returns one of two event codes:
C<system-reboot> or C<instance-reboot>. System reboot commonly occurs
if certain maintenance or upgrade operations require a reboot of the
underlying host that supports an instance. Instance reboot commonly
occurs if the instance must be rebooted, rather than the underlying
host. Rebooting events include a scheduled start and end time.

=item *

System Maintenance: When Amazon EC2 determines that an instance
requires maintenance that requires power or network impact, the
instance status is the event code C<system-maintenance>. System
maintenance is either power maintenance or network maintenance. For
power maintenance, your instance will be unavailable for a brief period
of time and then rebooted. For network maintenance, your instance will
experience a brief loss of network connectivity. System maintenance
events include a scheduled start and end time. You will also be
notified by email if one of your instances is set for system
maintenance. The email message indicates when your instance is
scheduled for maintenance.

=item *

Scheduled Retirement: When Amazon EC2 determines that an instance must
be shut down, the instance status is the event code
C<instance-retirement>. Retirement commonly occurs when the underlying
host is degraded and must be replaced. Retirement events include a
scheduled start and end time. You will also be notified by email if one
of your instances is set to retiring. The email message indicates when
your instance will be permanently retired.

=item *

Scheduled Stop: When Amazon EC2 determines that an instance must be
shut down, the instances status returns an event code called
C<instance-stop>. Stop events include a scheduled start and end time.
You will also be notified by email if one of your instances is set to
stop. The email message indicates when your instance will be stopped.

=back

When your instance is retired, it will either be terminated (if its
root device type is the instance-store) or stopped (if its root device
type is an EBS volume). Instances stopped due to retirement will not be
restarted, but you can do so manually. You can also avoid retirement of
EBS-backed instances by manually restarting your instance when its
event code is C<instance-retirement>. This ensures that your instance
is started on a different underlying host.

For more information about failed status checks, see Troubleshooting
Instances with Failed Status Checks in the I<Amazon Elastic Compute
Cloud User Guide for Linux>. For more information about working with
scheduled events, see Working with an Instance That Has a Scheduled
Event in the I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 DescribeInternetGateways()

  Arguments described in: L<Paws::EC2::DescribeInternetGateways>

  Returns: L<Paws::EC2::DescribeInternetGatewaysResult>

  

Describes one or more of your Internet gateways.











=head2 DescribeKeyPairs()

  Arguments described in: L<Paws::EC2::DescribeKeyPairs>

  Returns: L<Paws::EC2::DescribeKeyPairsResult>

  

Describes one or more of your key pairs.

For more information about key pairs, see Key Pairs in the I<Amazon
Elastic Compute Cloud User Guide for Linux>.











=head2 DescribeNetworkAcls()

  Arguments described in: L<Paws::EC2::DescribeNetworkAcls>

  Returns: L<Paws::EC2::DescribeNetworkAclsResult>

  

Describes one or more of your network ACLs.

For more information about network ACLs, see Network ACLs in the
I<Amazon Virtual Private Cloud User Guide>.











=head2 DescribeNetworkInterfaceAttribute()

  Arguments described in: L<Paws::EC2::DescribeNetworkInterfaceAttribute>

  Returns: L<Paws::EC2::DescribeNetworkInterfaceAttributeResult>

  

Describes a network interface attribute. You can specify only one
attribute at a time.











=head2 DescribeNetworkInterfaces()

  Arguments described in: L<Paws::EC2::DescribeNetworkInterfaces>

  Returns: L<Paws::EC2::DescribeNetworkInterfacesResult>

  

Describes one or more of your network interfaces.











=head2 DescribePlacementGroups()

  Arguments described in: L<Paws::EC2::DescribePlacementGroups>

  Returns: L<Paws::EC2::DescribePlacementGroupsResult>

  

Describes one or more of your placement groups. For more information
about placement groups and cluster instances, see Cluster Instances in
the I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 DescribeRegions()

  Arguments described in: L<Paws::EC2::DescribeRegions>

  Returns: L<Paws::EC2::DescribeRegionsResult>

  

Describes one or more regions that are currently available to you.

For a list of the regions supported by Amazon EC2, see Regions and
Endpoints.











=head2 DescribeReservedInstances()

  Arguments described in: L<Paws::EC2::DescribeReservedInstances>

  Returns: L<Paws::EC2::DescribeReservedInstancesResult>

  

Describes one or more of the Reserved Instances that you purchased.

For more information about Reserved Instances, see Reserved Instances
in the I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 DescribeReservedInstancesListings()

  Arguments described in: L<Paws::EC2::DescribeReservedInstancesListings>

  Returns: L<Paws::EC2::DescribeReservedInstancesListingsResult>

  

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

For more information, see Reserved Instance Marketplace in the I<Amazon
Elastic Compute Cloud User Guide for Linux>.











=head2 DescribeReservedInstancesModifications()

  Arguments described in: L<Paws::EC2::DescribeReservedInstancesModifications>

  Returns: L<Paws::EC2::DescribeReservedInstancesModificationsResult>

  

Describes the modifications made to your Reserved Instances. If no
parameter is specified, information about all your Reserved Instances
modification requests is returned. If a modification ID is specified,
only information about the specific modification is returned.

For more information, see Modifying Reserved Instances in the Amazon
Elastic Compute Cloud User Guide for Linux.











=head2 DescribeReservedInstancesOfferings()

  Arguments described in: L<Paws::EC2::DescribeReservedInstancesOfferings>

  Returns: L<Paws::EC2::DescribeReservedInstancesOfferingsResult>

  

Describes Reserved Instance offerings that are available for purchase.
With Reserved Instances, you purchase the right to launch instances for
a period of time. During that time period, you do not receive
insufficient capacity errors, and you pay a lower usage rate than the
rate charged for On-Demand instances for the actual time used.

For more information, see Reserved Instance Marketplace in the I<Amazon
Elastic Compute Cloud User Guide for Linux>.











=head2 DescribeRouteTables()

  Arguments described in: L<Paws::EC2::DescribeRouteTables>

  Returns: L<Paws::EC2::DescribeRouteTablesResult>

  

Describes one or more of your route tables.

For more information about route tables, see Route Tables in the
I<Amazon Virtual Private Cloud User Guide>.











=head2 DescribeSecurityGroups()

  Arguments described in: L<Paws::EC2::DescribeSecurityGroups>

  Returns: L<Paws::EC2::DescribeSecurityGroupsResult>

  

Describes one or more of your security groups.

A security group is for use with instances either in the EC2-Classic
platform or in a specific VPC. For more information, see Amazon EC2
Security Groups in the I<Amazon Elastic Compute Cloud User Guide for
Linux> and Security Groups for Your VPC in the I<Amazon Virtual Private
Cloud User Guide>.











=head2 DescribeSnapshotAttribute()

  Arguments described in: L<Paws::EC2::DescribeSnapshotAttribute>

  Returns: L<Paws::EC2::DescribeSnapshotAttributeResult>

  

Describes the specified attribute of the specified snapshot. You can
specify only one attribute at a time.

For more information about Amazon EBS snapshots, see Amazon EBS
Snapshots in the I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 DescribeSnapshots()

  Arguments described in: L<Paws::EC2::DescribeSnapshots>

  Returns: L<Paws::EC2::DescribeSnapshotsResult>

  

Describes one or more of the Amazon EBS snapshots available to you.
Available snapshots include public snapshots available for any AWS
account to launch, private snapshots that you own, and private
snapshots owned by another AWS account but for which you've been given
explicit create volume permissions.

The create volume permissions fall into the following categories:

=over

=item * I<public>: The owner of the snapshot granted create volume
permissions for the snapshot to the C<all> group. All AWS accounts have
create volume permissions for these snapshots.

=item * I<explicit>: The owner of the snapshot granted create volume
permissions to a specific AWS account.

=item * I<implicit>: An AWS account has implicit create volume
permissions for all snapshots it owns.

=back

The list of snapshots returned can be modified by specifying snapshot
IDs, snapshot owners, or AWS accounts with create volume permissions.
If no options are specified, Amazon EC2 returns all snapshots for which
you have create volume permissions.

If you specify one or more snapshot IDs, only snapshots that have the
specified IDs are returned. If you specify an invalid snapshot ID, an
error is returned. If you specify a snapshot ID for which you do not
have access, it is not included in the returned results.

If you specify one or more snapshot owners, only snapshots from the
specified owners and for which you have access are returned. The
results can include the AWS account IDs of the specified owners,
C<amazon> for snapshots owned by Amazon, or C<self> for snapshots that
you own.

If you specify a list of restorable users, only snapshots with create
snapshot permissions for those users are returned. You can specify AWS
account IDs (if you own the snapshots), C<self> for snapshots for which
you own or have explicit permissions, or C<all> for public snapshots.

For more information about Amazon EBS snapshots, see Amazon EBS
Snapshots in the I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 DescribeSpotDatafeedSubscription()

  Arguments described in: L<Paws::EC2::DescribeSpotDatafeedSubscription>

  Returns: L<Paws::EC2::DescribeSpotDatafeedSubscriptionResult>

  

Describes the data feed for Spot Instances. For more information, see
Spot Instance Data Feed in the I<Amazon Elastic Compute Cloud User
Guide for Linux>.











=head2 DescribeSpotInstanceRequests()

  Arguments described in: L<Paws::EC2::DescribeSpotInstanceRequests>

  Returns: L<Paws::EC2::DescribeSpotInstanceRequestsResult>

  

Describes the Spot Instance requests that belong to your account. Spot
Instances are instances that Amazon EC2 launches when the bid price
that you specify exceeds the current Spot Price. Amazon EC2
periodically sets the Spot Price based on available Spot Instance
capacity and current Spot Instance requests. For more information, see
Spot Instance Requests in the I<Amazon Elastic Compute Cloud User Guide
for Linux>.

You can use C<DescribeSpotInstanceRequests> to find a running Spot
Instance by examining the response. If the status of the Spot Instance
is C<fulfilled>, the instance ID appears in the response and contains
the identifier of the instance. Alternatively, you can use
DescribeInstances with a filter to look for instances where the
instance lifecycle is C<spot>.











=head2 DescribeSpotPriceHistory()

  Arguments described in: L<Paws::EC2::DescribeSpotPriceHistory>

  Returns: L<Paws::EC2::DescribeSpotPriceHistoryResult>

  

Describes the Spot Price history. Spot Instances are instances that
Amazon EC2 starts on your behalf when the maximum price that you
specify exceeds the current Spot Price. Amazon EC2 periodically sets
the Spot Price based on available Spot Instance capacity and current
Spot Instance requests. For more information, see Spot Instance Pricing
History in the I<Amazon Elastic Compute Cloud User Guide for Linux>.

When you specify an Availability Zone, this operation describes the
price history for the specified Availability Zone with the most recent
set of prices listed first. If you don't specify an Availability Zone,
you get the prices across all Availability Zones, starting with the
most recent set. However, if you're using an API version earlier than
2011-05-15, you get the lowest price across the region for the
specified time period. The prices returned are listed in chronological
order, from the oldest to the most recent.

When you specify the start and end time options, this operation returns
two pieces of data: the prices of the instance types within the time
range that you specified and the time when the price changed. The price
is valid within the time period that you specified; the response merely
indicates the last time that the price changed.











=head2 DescribeSubnets()

  Arguments described in: L<Paws::EC2::DescribeSubnets>

  Returns: L<Paws::EC2::DescribeSubnetsResult>

  

Describes one or more of your subnets.

For more information about subnets, see Your VPC and Subnets in the
I<Amazon Virtual Private Cloud User Guide>.











=head2 DescribeTags()

  Arguments described in: L<Paws::EC2::DescribeTags>

  Returns: L<Paws::EC2::DescribeTagsResult>

  

Describes one or more of the tags for your EC2 resources.

For more information about tags, see Tagging Your Resources in the
I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 DescribeVolumeAttribute()

  Arguments described in: L<Paws::EC2::DescribeVolumeAttribute>

  Returns: L<Paws::EC2::DescribeVolumeAttributeResult>

  

Describes the specified attribute of the specified volume. You can
specify only one attribute at a time.

For more information about Amazon EBS volumes, see Amazon EBS Volumes
in the I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 DescribeVolumes()

  Arguments described in: L<Paws::EC2::DescribeVolumes>

  Returns: L<Paws::EC2::DescribeVolumesResult>

  

Describes the specified Amazon EBS volumes.

If you are describing a long list of volumes, you can paginate the
output to make the list more manageable. The C<MaxResults> parameter
sets the maximum number of results returned in a single page. If the
list of results exceeds your C<MaxResults> value, then that number of
results is returned along with a C<NextToken> value that can be passed
to a subsequent C<DescribeVolumes> request to retrieve the remaining
results.

For more information about Amazon EBS volumes, see Amazon EBS Volumes
in the I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 DescribeVolumeStatus()

  Arguments described in: L<Paws::EC2::DescribeVolumeStatus>

  Returns: L<Paws::EC2::DescribeVolumeStatusResult>

  

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
C<insufficient-data>, then the checks may still be taking place on your
volume at the time. We recommend that you retry the request. For more
information on volume status, see Monitoring the Status of Your
Volumes.

I<Events>: Reflect the cause of a volume status and may require you to
take action. For example, if your volume returns an C<impaired> status,
then the volume event might be C<potential-data-inconsistency>. This
means that your volume has been affected by an issue with the
underlying host, has all I/O operations disabled, and may have
inconsistent data.

I<Actions>: Reflect the actions you may have to take in response to an
event. For example, if the status of the volume is C<impaired> and the
volume event shows C<potential-data-inconsistency>, then the action
shows C<enable-volume-io>. This means that you may want to enable the
I/O operations for the volume by calling the EnableVolumeIO action and
then check the volume for data consistency.

Volume status is based on the volume status checks, and does not
reflect the volume state. Therefore, volume status does not indicate
volumes in the C<error> state (for example, when a volume is incapable
of accepting I/O.)











=head2 DescribeVpcAttribute()

  Arguments described in: L<Paws::EC2::DescribeVpcAttribute>

  Returns: L<Paws::EC2::DescribeVpcAttributeResult>

  

Describes the specified attribute of the specified VPC. You can specify
only one attribute at a time.











=head2 DescribeVpcClassicLink()

  Arguments described in: L<Paws::EC2::DescribeVpcClassicLink>

  Returns: L<Paws::EC2::DescribeVpcClassicLinkResult>

  

Describes the ClassicLink status of one or more VPCs.











=head2 DescribeVpcPeeringConnections()

  Arguments described in: L<Paws::EC2::DescribeVpcPeeringConnections>

  Returns: L<Paws::EC2::DescribeVpcPeeringConnectionsResult>

  

Describes one or more of your VPC peering connections.











=head2 DescribeVpcs()

  Arguments described in: L<Paws::EC2::DescribeVpcs>

  Returns: L<Paws::EC2::DescribeVpcsResult>

  

Describes one or more of your VPCs.











=head2 DescribeVpnConnections()

  Arguments described in: L<Paws::EC2::DescribeVpnConnections>

  Returns: L<Paws::EC2::DescribeVpnConnectionsResult>

  

Describes one or more of your VPN connections.

For more information about VPN connections, see Adding a Hardware
Virtual Private Gateway to Your VPC in the I<Amazon Virtual Private
Cloud User Guide>.











=head2 DescribeVpnGateways()

  Arguments described in: L<Paws::EC2::DescribeVpnGateways>

  Returns: L<Paws::EC2::DescribeVpnGatewaysResult>

  

Describes one or more of your virtual private gateways.

For more information about virtual private gateways, see Adding an
IPsec Hardware VPN to Your VPC in the I<Amazon Virtual Private Cloud
User Guide>.











=head2 DetachClassicLinkVpc()

  Arguments described in: L<Paws::EC2::DetachClassicLinkVpc>

  Returns: L<Paws::EC2::DetachClassicLinkVpcResult>

  

Unlinks (detaches) a linked EC2-Classic instance from a VPC. After the
instance has been unlinked, the VPC security groups are no longer
associated with it. An instance is automatically unlinked from a VPC
when it's stopped.











=head2 DetachInternetGateway()

  Arguments described in: L<Paws::EC2::DetachInternetGateway>

  Returns: nothing

  

Detaches an Internet gateway from a VPC, disabling connectivity between
the Internet and the VPC. The VPC must not contain any running
instances with Elastic IP addresses.











=head2 DetachNetworkInterface()

  Arguments described in: L<Paws::EC2::DetachNetworkInterface>

  Returns: nothing

  

Detaches a network interface from an instance.











=head2 DetachVolume()

  Arguments described in: L<Paws::EC2::DetachVolume>

  Returns: L<Paws::EC2::VolumeAttachment>

  

Detaches an Amazon EBS volume from an instance. Make sure to unmount
any file systems on the device within your operating system before
detaching the volume. Failure to do so results in the volume being
stuck in a busy state while detaching.

If an Amazon EBS volume is the root device of an instance, it can't be
detached while the instance is running. To detach the root volume, stop
the instance first.

When a volume with an AWS Marketplace product code is detached from an
instance, the product code is no longer associated with the instance.

For more information, see Detaching an Amazon EBS Volume in the
I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 DetachVpnGateway()

  Arguments described in: L<Paws::EC2::DetachVpnGateway>

  Returns: nothing

  

Detaches a virtual private gateway from a VPC. You do this if you're
planning to turn off the VPC and not use it anymore. You can confirm a
virtual private gateway has been completely detached from a VPC by
describing the virtual private gateway (any attachments to the virtual
private gateway are also described).

You must wait for the attachment's state to switch to C<detached>
before you can delete the VPC or attach a different VPC to the virtual
private gateway.











=head2 DisableVgwRoutePropagation()

  Arguments described in: L<Paws::EC2::DisableVgwRoutePropagation>

  Returns: nothing

  

Disables a virtual private gateway (VGW) from propagating routes to a
specified route table of a VPC.











=head2 DisableVpcClassicLink()

  Arguments described in: L<Paws::EC2::DisableVpcClassicLink>

  Returns: L<Paws::EC2::DisableVpcClassicLinkResult>

  

Disables ClassicLink for a VPC. You cannot disable ClassicLink for a
VPC that has EC2-Classic instances linked to it.











=head2 DisassociateAddress()

  Arguments described in: L<Paws::EC2::DisassociateAddress>

  Returns: nothing

  

Disassociates an Elastic IP address from the instance or network
interface it's associated with.

An Elastic IP address is for use in either the EC2-Classic platform or
in a VPC. For more information, see Elastic IP Addresses in the
I<Amazon Elastic Compute Cloud User Guide for Linux>.

This is an idempotent operation. If you perform the operation more than
once, Amazon EC2 doesn't return an error.











=head2 DisassociateRouteTable()

  Arguments described in: L<Paws::EC2::DisassociateRouteTable>

  Returns: nothing

  

Disassociates a subnet from a route table.

After you perform this action, the subnet no longer uses the routes in
the route table. Instead, it uses the routes in the VPC's main route
table. For more information about route tables, see Route Tables in the
I<Amazon Virtual Private Cloud User Guide>.











=head2 EnableVgwRoutePropagation()

  Arguments described in: L<Paws::EC2::EnableVgwRoutePropagation>

  Returns: nothing

  

Enables a virtual private gateway (VGW) to propagate routes to the
specified route table of a VPC.











=head2 EnableVolumeIO()

  Arguments described in: L<Paws::EC2::EnableVolumeIO>

  Returns: nothing

  

Enables I/O operations for a volume that had I/O operations disabled
because the data on the volume was potentially inconsistent.











=head2 EnableVpcClassicLink()

  Arguments described in: L<Paws::EC2::EnableVpcClassicLink>

  Returns: L<Paws::EC2::EnableVpcClassicLinkResult>

  

Enables a VPC for ClassicLink. You can then link EC2-Classic instances
to your ClassicLink-enabled VPC to allow communication over private IP
addresses. You cannot enable your VPC for ClassicLink if any of your
VPC's route tables have existing routes for address ranges within the
C<10.0.0.0/8> IP address range, excluding local routes for VPCs in the
C<10.0.0.0/16> and C<10.1.0.0/16> IP address ranges. For more
information, see ClassicLink in the Amazon Elastic Compute Cloud User
Guide for Linux.











=head2 GetConsoleOutput()

  Arguments described in: L<Paws::EC2::GetConsoleOutput>

  Returns: L<Paws::EC2::GetConsoleOutputResult>

  

Gets the console output for the specified instance.

Instances do not have a physical monitor through which you can view
their console output. They also lack physical controls that allow you
to power up, reboot, or shut them down. To allow these actions, we
provide them through the Amazon EC2 API and command line interface.

Instance console output is buffered and posted shortly after instance
boot, reboot, and termination. Amazon EC2 preserves the most recent 64
KB output which is available for at least one hour after the most
recent post.

For Linux/Unix instances, the instance console output displays the
exact console output that would normally be displayed on a physical
monitor attached to a machine. This output is buffered because the
instance produces it and then posts it to a store where the instance's
owner can retrieve it.

For Windows instances, the instance console output displays the last
three system event log errors.











=head2 GetPasswordData()

  Arguments described in: L<Paws::EC2::GetPasswordData>

  Returns: L<Paws::EC2::GetPasswordDataResult>

  

Retrieves the encrypted administrator password for an instance running
Windows.

The Windows password is generated at boot if the C<EC2Config> service
plugin, C<Ec2SetPassword>, is enabled. This usually only happens the
first time an AMI is launched, and then C<Ec2SetPassword> is
automatically disabled. The password is not generated for rebundled
AMIs unless C<Ec2SetPassword> is enabled before bundling.

The password is encrypted using the key pair that you specified when
you launched the instance. You must provide the corresponding key pair
file.

Password generation and encryption takes a few moments. We recommend
that you wait up to 15 minutes after launching an instance before
trying to retrieve the generated password.











=head2 ImportInstance()

  Arguments described in: L<Paws::EC2::ImportInstance>

  Returns: L<Paws::EC2::ImportInstanceResult>

  

Creates an import instance task using metadata from the specified disk
image. After importing the image, you then upload it using the
ec2-import-volume command in the EC2 command line tools. For more
information, see Using the Command Line Tools to Import Your Virtual
Machine to Amazon EC2 in the Amazon Elastic Compute Cloud User Guide
for Linux.











=head2 ImportKeyPair()

  Arguments described in: L<Paws::EC2::ImportKeyPair>

  Returns: L<Paws::EC2::ImportKeyPairResult>

  

Imports the public key from an RSA key pair that you created with a
third-party tool. Compare this with CreateKeyPair, in which AWS creates
the key pair and gives the keys to you (AWS keeps a copy of the public
key). With ImportKeyPair, you create the key pair and give AWS just the
public key. The private key is never transferred between you and AWS.

For more information about key pairs, see Key Pairs in the I<Amazon
Elastic Compute Cloud User Guide for Linux>.











=head2 ImportVolume()

  Arguments described in: L<Paws::EC2::ImportVolume>

  Returns: L<Paws::EC2::ImportVolumeResult>

  

Creates an import volume task using metadata from the specified disk
image. After importing the image, you then upload it using the
ec2-import-volume command in the Amazon EC2 command-line interface
(CLI) tools. For more information, see Using the Command Line Tools to
Import Your Virtual Machine to Amazon EC2 in the I<Amazon Elastic
Compute Cloud User Guide for Linux>.











=head2 ModifyImageAttribute()

  Arguments described in: L<Paws::EC2::ModifyImageAttribute>

  Returns: nothing

  

Modifies the specified attribute of the specified AMI. You can specify
only one attribute at a time.

AWS Marketplace product codes cannot be modified. Images with an AWS
Marketplace product code cannot be made public.











=head2 ModifyInstanceAttribute()

  Arguments described in: L<Paws::EC2::ModifyInstanceAttribute>

  Returns: nothing

  

Modifies the specified attribute of the specified instance. You can
specify only one attribute at a time.

To modify some attributes, the instance must be stopped. For more
information, see Modifying Attributes of a Stopped Instance in the
I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 ModifyNetworkInterfaceAttribute()

  Arguments described in: L<Paws::EC2::ModifyNetworkInterfaceAttribute>

  Returns: nothing

  

Modifies the specified network interface attribute. You can specify
only one attribute at a time.











=head2 ModifyReservedInstances()

  Arguments described in: L<Paws::EC2::ModifyReservedInstances>

  Returns: L<Paws::EC2::ModifyReservedInstancesResult>

  

Modifies the Availability Zone, instance count, instance type, or
network platform (EC2-Classic or EC2-VPC) of your Reserved Instances.
The Reserved Instances to be modified must be identical, except for
Availability Zone, network platform, and instance type.

For more information, see Modifying Reserved Instances in the Amazon
Elastic Compute Cloud User Guide for Linux.











=head2 ModifySnapshotAttribute()

  Arguments described in: L<Paws::EC2::ModifySnapshotAttribute>

  Returns: nothing

  

Adds or removes permission settings for the specified snapshot. You may
add or remove specified AWS account IDs from a snapshot's list of
create volume permissions, but you cannot do both in a single API call.
If you need to both add and remove account IDs for a snapshot, you must
use multiple API calls.

For more information on modifying snapshot permissions, see Sharing
Snapshots in the I<Amazon Elastic Compute Cloud User Guide for Linux>.

Snapshots with AWS Marketplace product codes cannot be made public.











=head2 ModifySubnetAttribute()

  Arguments described in: L<Paws::EC2::ModifySubnetAttribute>

  Returns: nothing

  

Modifies a subnet attribute.











=head2 ModifyVolumeAttribute()

  Arguments described in: L<Paws::EC2::ModifyVolumeAttribute>

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











=head2 ModifyVpcAttribute()

  Arguments described in: L<Paws::EC2::ModifyVpcAttribute>

  Returns: nothing

  

Modifies the specified attribute of the specified VPC.











=head2 MonitorInstances()

  Arguments described in: L<Paws::EC2::MonitorInstances>

  Returns: L<Paws::EC2::MonitorInstancesResult>

  

Enables monitoring for a running instance. For more information about
monitoring instances, see Monitoring Your Instances and Volumes in the
I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 PurchaseReservedInstancesOffering()

  Arguments described in: L<Paws::EC2::PurchaseReservedInstancesOffering>

  Returns: L<Paws::EC2::PurchaseReservedInstancesOfferingResult>

  

Purchases a Reserved Instance for use with your account. With Amazon
EC2 Reserved Instances, you obtain a capacity reservation for a certain
instance configuration over a specified period of time. You pay a lower
usage rate than with On-Demand instances for the time that you actually
use the capacity reservation.

Use DescribeReservedInstancesOfferings to get a list of Reserved
Instance offerings that match your specifications. After you've
purchased a Reserved Instance, you can check for your new Reserved
Instance with DescribeReservedInstances.

For more information, see Reserved Instances and Reserved Instance
Marketplace in the I<Amazon Elastic Compute Cloud User Guide for
Linux>.











=head2 RebootInstances()

  Arguments described in: L<Paws::EC2::RebootInstances>

  Returns: nothing

  

Requests a reboot of one or more instances. This operation is
asynchronous; it only queues a request to reboot the specified
instances. The operation succeeds if the instances are valid and belong
to you. Requests to reboot terminated instances are ignored.

If a Linux/Unix instance does not cleanly shut down within four
minutes, Amazon EC2 performs a hard reboot.

For more information about troubleshooting, see Getting Console Output
and Rebooting Instances in the I<Amazon Elastic Compute Cloud User
Guide for Linux>.











=head2 RegisterImage()

  Arguments described in: L<Paws::EC2::RegisterImage>

  Returns: L<Paws::EC2::RegisterImageResult>

  

Registers an AMI. When you're creating an AMI, this is the final step
you must complete before you can launch an instance from the AMI. For
more information about creating AMIs, see Creating Your Own AMIs in the
I<Amazon Elastic Compute Cloud User Guide for Linux>.

For Amazon EBS-backed instances, CreateImage creates and registers the
AMI in a single request, so you don't have to register the AMI
yourself.

You can also use C<RegisterImage> to create an Amazon EBS-backed AMI
from a snapshot of a root device volume. For more information, see
Launching an Instance from a Snapshot in the I<Amazon Elastic Compute
Cloud User Guide for Linux>.

If needed, you can deregister an AMI at any time. Any modifications you
make to an AMI backed by an instance store volume invalidates its
registration. If you make changes to an image, deregister the previous
image and register the new image.

You can't register an image where a secondary (non-root) snapshot has
AWS Marketplace product codes.











=head2 RejectVpcPeeringConnection()

  Arguments described in: L<Paws::EC2::RejectVpcPeeringConnection>

  Returns: L<Paws::EC2::RejectVpcPeeringConnectionResult>

  

Rejects a VPC peering connection request. The VPC peering connection
must be in the C<pending-acceptance> state. Use the
DescribeVpcPeeringConnections request to view your outstanding VPC
peering connection requests. To delete an active VPC peering
connection, or to delete a VPC peering connection request that you
initiated, use DeleteVpcPeeringConnection.











=head2 ReleaseAddress()

  Arguments described in: L<Paws::EC2::ReleaseAddress>

  Returns: nothing

  

Releases the specified Elastic IP address.

After releasing an Elastic IP address, it is released to the IP address
pool and might be unavailable to you. Be sure to update your DNS
records and any servers or devices that communicate with the address.
If you attempt to release an Elastic IP address that you already
released, you'll get an C<AuthFailure> error if the address is already
allocated to another AWS account.

[EC2-Classic, default VPC] Releasing an Elastic IP address
automatically disassociates it from any instance that it's associated
with. To disassociate an Elastic IP address without releasing it, use
DisassociateAddress.

[Nondefault VPC] You must use DisassociateAddress to disassociate the
Elastic IP address before you try to release it. Otherwise, Amazon EC2
returns an error (C<InvalidIPAddress.InUse>).











=head2 ReplaceNetworkAclAssociation()

  Arguments described in: L<Paws::EC2::ReplaceNetworkAclAssociation>

  Returns: L<Paws::EC2::ReplaceNetworkAclAssociationResult>

  

Changes which network ACL a subnet is associated with. By default when
you create a subnet, it's automatically associated with the default
network ACL. For more information about network ACLs, see Network ACLs
in the I<Amazon Virtual Private Cloud User Guide>.











=head2 ReplaceNetworkAclEntry()

  Arguments described in: L<Paws::EC2::ReplaceNetworkAclEntry>

  Returns: nothing

  

Replaces an entry (rule) in a network ACL. For more information about
network ACLs, see Network ACLs in the I<Amazon Virtual Private Cloud
User Guide>.











=head2 ReplaceRoute()

  Arguments described in: L<Paws::EC2::ReplaceRoute>

  Returns: nothing

  

Replaces an existing route within a route table in a VPC. You must
provide only one of the following: Internet gateway or virtual private
gateway, NAT instance, VPC peering connection, or network interface.

For more information about route tables, see Route Tables in the
I<Amazon Virtual Private Cloud User Guide>.











=head2 ReplaceRouteTableAssociation()

  Arguments described in: L<Paws::EC2::ReplaceRouteTableAssociation>

  Returns: L<Paws::EC2::ReplaceRouteTableAssociationResult>

  

Changes the route table associated with a given subnet in a VPC. After
the operation completes, the subnet uses the routes in the new route
table it's associated with. For more information about route tables,
see Route Tables in the I<Amazon Virtual Private Cloud User Guide>.

You can also use ReplaceRouteTableAssociation to change which table is
the main route table in the VPC. You just specify the main route
table's association ID and the route table to be the new main route
table.











=head2 ReportInstanceStatus()

  Arguments described in: L<Paws::EC2::ReportInstanceStatus>

  Returns: nothing

  

Submits feedback about the status of an instance. The instance must be
in the C<running> state. If your experience with the instance differs
from the instance status returned by DescribeInstanceStatus, use
ReportInstanceStatus to report your experience with the instance.
Amazon EC2 collects this information to improve the accuracy of status
checks.

Use of this action does not change the value returned by
DescribeInstanceStatus.











=head2 RequestSpotInstances()

  Arguments described in: L<Paws::EC2::RequestSpotInstances>

  Returns: L<Paws::EC2::RequestSpotInstancesResult>

  

Creates a Spot Instance request. Spot Instances are instances that
Amazon EC2 starts on your behalf when the maximum price that you
specify exceeds the current Spot Price. Amazon EC2 periodically sets
the Spot Price based on available Spot Instance capacity and current
Spot Instance requests. For more information, see Spot Instance
Requests in the I<Amazon Elastic Compute Cloud User Guide for Linux>.

Users must be subscribed to the required product to run an instance
with AWS Marketplace product codes.











=head2 ResetImageAttribute()

  Arguments described in: L<Paws::EC2::ResetImageAttribute>

  Returns: nothing

  

Resets an attribute of an AMI to its default value.

The productCodes attribute can't be reset.











=head2 ResetInstanceAttribute()

  Arguments described in: L<Paws::EC2::ResetInstanceAttribute>

  Returns: nothing

  

Resets an attribute of an instance to its default value. To reset the
C<kernel> or C<ramdisk>, the instance must be in a stopped state. To
reset the C<SourceDestCheck>, the instance can be either running or
stopped.

The C<SourceDestCheck> attribute controls whether source/destination
checking is enabled. The default value is C<true>, which means checking
is enabled. This value must be C<false> for a NAT instance to perform
NAT. For more information, see NAT Instances in the I<Amazon Virtual
Private Cloud User Guide>.











=head2 ResetNetworkInterfaceAttribute()

  Arguments described in: L<Paws::EC2::ResetNetworkInterfaceAttribute>

  Returns: nothing

  

Resets a network interface attribute. You can specify only one
attribute at a time.











=head2 ResetSnapshotAttribute()

  Arguments described in: L<Paws::EC2::ResetSnapshotAttribute>

  Returns: nothing

  

Resets permission settings for the specified snapshot.

For more information on modifying snapshot permissions, see Sharing
Snapshots in the I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 RevokeSecurityGroupEgress()

  Arguments described in: L<Paws::EC2::RevokeSecurityGroupEgress>

  Returns: nothing

  

Removes one or more egress rules from a security group for EC2-VPC. The
values that you specify in the revoke request (for example, ports) must
match the existing rule's values for the rule to be revoked.

Each rule consists of the protocol and the CIDR range or source
security group. For the TCP and UDP protocols, you must also specify
the destination port or range of ports. For the ICMP protocol, you must
also specify the ICMP type and code.

Rule changes are propagated to instances within the security group as
quickly as possible. However, a small delay might occur.











=head2 RevokeSecurityGroupIngress()

  Arguments described in: L<Paws::EC2::RevokeSecurityGroupIngress>

  Returns: nothing

  

Removes one or more ingress rules from a security group. The values
that you specify in the revoke request (for example, ports) must match
the existing rule's values for the rule to be removed.

Each rule consists of the protocol and the CIDR range or source
security group. For the TCP and UDP protocols, you must also specify
the destination port or range of ports. For the ICMP protocol, you must
also specify the ICMP type and code.

Rule changes are propagated to instances within the security group as
quickly as possible. However, a small delay might occur.











=head2 RunInstances()

  Arguments described in: L<Paws::EC2::RunInstances>

  Returns: L<Paws::EC2::Reservation>

  

Launches the specified number of instances using an AMI for which you
have permissions.

When you launch an instance, it enters the C<pending> state. After the
instance is ready for you, it enters the C<running> state. To check the
state of your instance, call DescribeInstances.

If you don't specify a security group when launching an instance,
Amazon EC2 uses the default security group. For more information, see
Security Groups in the I<Amazon Elastic Compute Cloud User Guide for
Linux>.

Linux instances have access to the public key of the key pair at boot.
You can use this key to provide secure access to the instance. Amazon
EC2 public images use this feature to provide secure access without
passwords. For more information, see Key Pairs in the I<Amazon Elastic
Compute Cloud User Guide for Linux>.

You can provide optional user data when launching an instance. For more
information, see Instance Metadata in the I<Amazon Elastic Compute
Cloud User Guide for Linux>.

If any of the AMIs have a product code attached for which the user has
not subscribed, C<RunInstances> fails.

T2 instance types can only be launched into a VPC. If you do not have a
default VPC, or if you do not specify a subnet ID in the request,
C<RunInstances> fails.

For more information about troubleshooting, see What To Do If An
Instance Immediately Terminates, and Troubleshooting Connecting to Your
Instance in the I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head2 StartInstances()

  Arguments described in: L<Paws::EC2::StartInstances>

  Returns: L<Paws::EC2::StartInstancesResult>

  

Starts an Amazon EBS-backed AMI that you've previously stopped.

Instances that use Amazon EBS volumes as their root devices can be
quickly stopped and started. When an instance is stopped, the compute
resources are released and you are not billed for hourly instance
usage. However, your root partition Amazon EBS volume remains,
continues to persist your data, and you are charged for Amazon EBS
volume usage. You can restart your instance at any time. Each time you
transition an instance from stopped to started, Amazon EC2 charges a
full instance hour, even if transitions happen multiple times within a
single hour.

Before stopping an instance, make sure it is in a state from which it
can be restarted. Stopping an instance does not preserve data stored in
RAM.

Performing this operation on an instance that uses an instance store as
its root device returns an error.

For more information, see Stopping Instances in the I<Amazon Elastic
Compute Cloud User Guide for Linux>.











=head2 StopInstances()

  Arguments described in: L<Paws::EC2::StopInstances>

  Returns: L<Paws::EC2::StopInstancesResult>

  

Stops an Amazon EBS-backed instance. Each time you transition an
instance from stopped to started, Amazon EC2 charges a full instance
hour, even if transitions happen multiple times within a single hour.

You can't start or stop Spot Instances.

Instances that use Amazon EBS volumes as their root devices can be
quickly stopped and started. When an instance is stopped, the compute
resources are released and you are not billed for hourly instance
usage. However, your root partition Amazon EBS volume remains,
continues to persist your data, and you are charged for Amazon EBS
volume usage. You can restart your instance at any time.

Before stopping an instance, make sure it is in a state from which it
can be restarted. Stopping an instance does not preserve data stored in
RAM.

Performing this operation on an instance that uses an instance store as
its root device returns an error.

You can stop, start, and terminate EBS-backed instances. You can only
terminate instance store-backed instances. What happens to an instance
differs if you stop it or terminate it. For example, when you stop an
instance, the root device and any other devices attached to the
instance persist. When you terminate an instance, the root device and
any other devices attached during the instance launch are automatically
deleted. For more information about the differences between stopping
and terminating instances, see Instance Lifecycle in the I<Amazon
Elastic Compute Cloud User Guide for Linux>.

For more information about troubleshooting, see Troubleshooting
Stopping Your Instance in the I<Amazon Elastic Compute Cloud User Guide
for Linux>.











=head2 TerminateInstances()

  Arguments described in: L<Paws::EC2::TerminateInstances>

  Returns: L<Paws::EC2::TerminateInstancesResult>

  

Shuts down one or more instances. This operation is idempotent; if you
terminate an instance more than once, each call succeeds.

Terminated instances remain visible after termination (for
approximately one hour).

By default, Amazon EC2 deletes all Amazon EBS volumes that were
attached when the instance launched. Volumes attached after instance
launch continue running.

You can stop, start, and terminate EBS-backed instances. You can only
terminate instance store-backed instances. What happens to an instance
differs if you stop it or terminate it. For example, when you stop an
instance, the root device and any other devices attached to the
instance persist. When you terminate an instance, the root device and
any other devices attached during the instance launch are automatically
deleted. For more information about the differences between stopping
and terminating instances, see Instance Lifecycle in the I<Amazon
Elastic Compute Cloud User Guide for Linux>.

For more information about troubleshooting, see Troubleshooting
Terminating Your Instance in the I<Amazon Elastic Compute Cloud User
Guide for Linux>.











=head2 UnassignPrivateIpAddresses()

  Arguments described in: L<Paws::EC2::UnassignPrivateIpAddresses>

  Returns: nothing

  

Unassigns one or more secondary private IP addresses from a network
interface.











=head2 UnmonitorInstances()

  Arguments described in: L<Paws::EC2::UnmonitorInstances>

  Returns: L<Paws::EC2::UnmonitorInstancesResult>

  

Disables monitoring for a running instance. For more information about
monitoring instances, see Monitoring Your Instances and Volumes in the
I<Amazon Elastic Compute Cloud User Guide for Linux>.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

