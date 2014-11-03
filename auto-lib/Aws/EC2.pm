
use AWS::API;


package Aws::EC2 {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'ec2');
  has version => (is => 'ro', isa => 'Str', default => '2014-05-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '1');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub AcceptVpcPeeringConnection {
    my $self = shift;
    return $self->do_call('Aws::EC2::AcceptVpcPeeringConnection', @_);
  }
  sub AllocateAddress {
    my $self = shift;
    return $self->do_call('Aws::EC2::AllocateAddress', @_);
  }
  sub AssignPrivateIpAddresses {
    my $self = shift;
    return $self->do_call('Aws::EC2::AssignPrivateIpAddresses', @_);
  }
  sub AssociateAddress {
    my $self = shift;
    return $self->do_call('Aws::EC2::AssociateAddress', @_);
  }
  sub AssociateDhcpOptions {
    my $self = shift;
    return $self->do_call('Aws::EC2::AssociateDhcpOptions', @_);
  }
  sub AssociateRouteTable {
    my $self = shift;
    return $self->do_call('Aws::EC2::AssociateRouteTable', @_);
  }
  sub AttachInternetGateway {
    my $self = shift;
    return $self->do_call('Aws::EC2::AttachInternetGateway', @_);
  }
  sub AttachNetworkInterface {
    my $self = shift;
    return $self->do_call('Aws::EC2::AttachNetworkInterface', @_);
  }
  sub AttachVolume {
    my $self = shift;
    return $self->do_call('Aws::EC2::AttachVolume', @_);
  }
  sub AttachVpnGateway {
    my $self = shift;
    return $self->do_call('Aws::EC2::AttachVpnGateway', @_);
  }
  sub AuthorizeSecurityGroupEgress {
    my $self = shift;
    return $self->do_call('Aws::EC2::AuthorizeSecurityGroupEgress', @_);
  }
  sub AuthorizeSecurityGroupIngress {
    my $self = shift;
    return $self->do_call('Aws::EC2::AuthorizeSecurityGroupIngress', @_);
  }
  sub BundleInstance {
    my $self = shift;
    return $self->do_call('Aws::EC2::BundleInstance', @_);
  }
  sub CancelBundleTask {
    my $self = shift;
    return $self->do_call('Aws::EC2::CancelBundleTask', @_);
  }
  sub CancelConversionTask {
    my $self = shift;
    return $self->do_call('Aws::EC2::CancelConversionTask', @_);
  }
  sub CancelExportTask {
    my $self = shift;
    return $self->do_call('Aws::EC2::CancelExportTask', @_);
  }
  sub CancelReservedInstancesListing {
    my $self = shift;
    return $self->do_call('Aws::EC2::CancelReservedInstancesListing', @_);
  }
  sub CancelSpotInstanceRequests {
    my $self = shift;
    return $self->do_call('Aws::EC2::CancelSpotInstanceRequests', @_);
  }
  sub ConfirmProductInstance {
    my $self = shift;
    return $self->do_call('Aws::EC2::ConfirmProductInstance', @_);
  }
  sub CopyImage {
    my $self = shift;
    return $self->do_call('Aws::EC2::CopyImage', @_);
  }
  sub CopySnapshot {
    my $self = shift;
    return $self->do_call('Aws::EC2::CopySnapshot', @_);
  }
  sub CreateCustomerGateway {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateCustomerGateway', @_);
  }
  sub CreateDhcpOptions {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateDhcpOptions', @_);
  }
  sub CreateImage {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateImage', @_);
  }
  sub CreateInstanceExportTask {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateInstanceExportTask', @_);
  }
  sub CreateInternetGateway {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateInternetGateway', @_);
  }
  sub CreateKeyPair {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateKeyPair', @_);
  }
  sub CreateNetworkAcl {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateNetworkAcl', @_);
  }
  sub CreateNetworkAclEntry {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateNetworkAclEntry', @_);
  }
  sub CreateNetworkInterface {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateNetworkInterface', @_);
  }
  sub CreatePlacementGroup {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreatePlacementGroup', @_);
  }
  sub CreateReservedInstancesListing {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateReservedInstancesListing', @_);
  }
  sub CreateRoute {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateRoute', @_);
  }
  sub CreateRouteTable {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateRouteTable', @_);
  }
  sub CreateSecurityGroup {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateSecurityGroup', @_);
  }
  sub CreateSnapshot {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateSnapshot', @_);
  }
  sub CreateSpotDatafeedSubscription {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateSpotDatafeedSubscription', @_);
  }
  sub CreateSubnet {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateSubnet', @_);
  }
  sub CreateTags {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateTags', @_);
  }
  sub CreateVolume {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateVolume', @_);
  }
  sub CreateVpc {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateVpc', @_);
  }
  sub CreateVpcPeeringConnection {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateVpcPeeringConnection', @_);
  }
  sub CreateVpnConnection {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateVpnConnection', @_);
  }
  sub CreateVpnConnectionRoute {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateVpnConnectionRoute', @_);
  }
  sub CreateVpnGateway {
    my $self = shift;
    return $self->do_call('Aws::EC2::CreateVpnGateway', @_);
  }
  sub DeleteCustomerGateway {
    my $self = shift;
    return $self->do_call('Aws::EC2::DeleteCustomerGateway', @_);
  }
  sub DeleteDhcpOptions {
    my $self = shift;
    return $self->do_call('Aws::EC2::DeleteDhcpOptions', @_);
  }
  sub DeleteInternetGateway {
    my $self = shift;
    return $self->do_call('Aws::EC2::DeleteInternetGateway', @_);
  }
  sub DeleteKeyPair {
    my $self = shift;
    return $self->do_call('Aws::EC2::DeleteKeyPair', @_);
  }
  sub DeleteNetworkAcl {
    my $self = shift;
    return $self->do_call('Aws::EC2::DeleteNetworkAcl', @_);
  }
  sub DeleteNetworkAclEntry {
    my $self = shift;
    return $self->do_call('Aws::EC2::DeleteNetworkAclEntry', @_);
  }
  sub DeleteNetworkInterface {
    my $self = shift;
    return $self->do_call('Aws::EC2::DeleteNetworkInterface', @_);
  }
  sub DeletePlacementGroup {
    my $self = shift;
    return $self->do_call('Aws::EC2::DeletePlacementGroup', @_);
  }
  sub DeleteRoute {
    my $self = shift;
    return $self->do_call('Aws::EC2::DeleteRoute', @_);
  }
  sub DeleteRouteTable {
    my $self = shift;
    return $self->do_call('Aws::EC2::DeleteRouteTable', @_);
  }
  sub DeleteSecurityGroup {
    my $self = shift;
    return $self->do_call('Aws::EC2::DeleteSecurityGroup', @_);
  }
  sub DeleteSnapshot {
    my $self = shift;
    return $self->do_call('Aws::EC2::DeleteSnapshot', @_);
  }
  sub DeleteSpotDatafeedSubscription {
    my $self = shift;
    return $self->do_call('Aws::EC2::DeleteSpotDatafeedSubscription', @_);
  }
  sub DeleteSubnet {
    my $self = shift;
    return $self->do_call('Aws::EC2::DeleteSubnet', @_);
  }
  sub DeleteTags {
    my $self = shift;
    return $self->do_call('Aws::EC2::DeleteTags', @_);
  }
  sub DeleteVolume {
    my $self = shift;
    return $self->do_call('Aws::EC2::DeleteVolume', @_);
  }
  sub DeleteVpc {
    my $self = shift;
    return $self->do_call('Aws::EC2::DeleteVpc', @_);
  }
  sub DeleteVpcPeeringConnection {
    my $self = shift;
    return $self->do_call('Aws::EC2::DeleteVpcPeeringConnection', @_);
  }
  sub DeleteVpnConnection {
    my $self = shift;
    return $self->do_call('Aws::EC2::DeleteVpnConnection', @_);
  }
  sub DeleteVpnConnectionRoute {
    my $self = shift;
    return $self->do_call('Aws::EC2::DeleteVpnConnectionRoute', @_);
  }
  sub DeleteVpnGateway {
    my $self = shift;
    return $self->do_call('Aws::EC2::DeleteVpnGateway', @_);
  }
  sub DeregisterImage {
    my $self = shift;
    return $self->do_call('Aws::EC2::DeregisterImage', @_);
  }
  sub DescribeAccountAttributes {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeAccountAttributes', @_);
  }
  sub DescribeAddresses {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeAddresses', @_);
  }
  sub DescribeAvailabilityZones {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeAvailabilityZones', @_);
  }
  sub DescribeBundleTasks {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeBundleTasks', @_);
  }
  sub DescribeConversionTasks {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeConversionTasks', @_);
  }
  sub DescribeCustomerGateways {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeCustomerGateways', @_);
  }
  sub DescribeDhcpOptions {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeDhcpOptions', @_);
  }
  sub DescribeExportTasks {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeExportTasks', @_);
  }
  sub DescribeImageAttribute {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeImageAttribute', @_);
  }
  sub DescribeImages {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeImages', @_);
  }
  sub DescribeInstanceAttribute {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeInstanceAttribute', @_);
  }
  sub DescribeInstances {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeInstances', @_);
  }
  sub DescribeInstanceStatus {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeInstanceStatus', @_);
  }
  sub DescribeInternetGateways {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeInternetGateways', @_);
  }
  sub DescribeKeyPairs {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeKeyPairs', @_);
  }
  sub DescribeNetworkAcls {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeNetworkAcls', @_);
  }
  sub DescribeNetworkInterfaceAttribute {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeNetworkInterfaceAttribute', @_);
  }
  sub DescribeNetworkInterfaces {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeNetworkInterfaces', @_);
  }
  sub DescribePlacementGroups {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribePlacementGroups', @_);
  }
  sub DescribeRegions {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeRegions', @_);
  }
  sub DescribeReservedInstances {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeReservedInstances', @_);
  }
  sub DescribeReservedInstancesListings {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeReservedInstancesListings', @_);
  }
  sub DescribeReservedInstancesModifications {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeReservedInstancesModifications', @_);
  }
  sub DescribeReservedInstancesOfferings {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeReservedInstancesOfferings', @_);
  }
  sub DescribeRouteTables {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeRouteTables', @_);
  }
  sub DescribeSecurityGroups {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeSecurityGroups', @_);
  }
  sub DescribeSnapshotAttribute {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeSnapshotAttribute', @_);
  }
  sub DescribeSnapshots {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeSnapshots', @_);
  }
  sub DescribeSpotDatafeedSubscription {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeSpotDatafeedSubscription', @_);
  }
  sub DescribeSpotInstanceRequests {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeSpotInstanceRequests', @_);
  }
  sub DescribeSpotPriceHistory {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeSpotPriceHistory', @_);
  }
  sub DescribeSubnets {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeSubnets', @_);
  }
  sub DescribeTags {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeTags', @_);
  }
  sub DescribeVolumeAttribute {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeVolumeAttribute', @_);
  }
  sub DescribeVolumes {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeVolumes', @_);
  }
  sub DescribeVolumeStatus {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeVolumeStatus', @_);
  }
  sub DescribeVpcAttribute {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeVpcAttribute', @_);
  }
  sub DescribeVpcPeeringConnections {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeVpcPeeringConnections', @_);
  }
  sub DescribeVpcs {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeVpcs', @_);
  }
  sub DescribeVpnConnections {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeVpnConnections', @_);
  }
  sub DescribeVpnGateways {
    my $self = shift;
    return $self->do_call('Aws::EC2::DescribeVpnGateways', @_);
  }
  sub DetachInternetGateway {
    my $self = shift;
    return $self->do_call('Aws::EC2::DetachInternetGateway', @_);
  }
  sub DetachNetworkInterface {
    my $self = shift;
    return $self->do_call('Aws::EC2::DetachNetworkInterface', @_);
  }
  sub DetachVolume {
    my $self = shift;
    return $self->do_call('Aws::EC2::DetachVolume', @_);
  }
  sub DetachVpnGateway {
    my $self = shift;
    return $self->do_call('Aws::EC2::DetachVpnGateway', @_);
  }
  sub DisableVgwRoutePropagation {
    my $self = shift;
    return $self->do_call('Aws::EC2::DisableVgwRoutePropagation', @_);
  }
  sub DisassociateAddress {
    my $self = shift;
    return $self->do_call('Aws::EC2::DisassociateAddress', @_);
  }
  sub DisassociateRouteTable {
    my $self = shift;
    return $self->do_call('Aws::EC2::DisassociateRouteTable', @_);
  }
  sub EnableVgwRoutePropagation {
    my $self = shift;
    return $self->do_call('Aws::EC2::EnableVgwRoutePropagation', @_);
  }
  sub EnableVolumeIO {
    my $self = shift;
    return $self->do_call('Aws::EC2::EnableVolumeIO', @_);
  }
  sub GetConsoleOutput {
    my $self = shift;
    return $self->do_call('Aws::EC2::GetConsoleOutput', @_);
  }
  sub GetPasswordData {
    my $self = shift;
    return $self->do_call('Aws::EC2::GetPasswordData', @_);
  }
  sub ImportInstance {
    my $self = shift;
    return $self->do_call('Aws::EC2::ImportInstance', @_);
  }
  sub ImportKeyPair {
    my $self = shift;
    return $self->do_call('Aws::EC2::ImportKeyPair', @_);
  }
  sub ImportVolume {
    my $self = shift;
    return $self->do_call('Aws::EC2::ImportVolume', @_);
  }
  sub ModifyImageAttribute {
    my $self = shift;
    return $self->do_call('Aws::EC2::ModifyImageAttribute', @_);
  }
  sub ModifyInstanceAttribute {
    my $self = shift;
    return $self->do_call('Aws::EC2::ModifyInstanceAttribute', @_);
  }
  sub ModifyNetworkInterfaceAttribute {
    my $self = shift;
    return $self->do_call('Aws::EC2::ModifyNetworkInterfaceAttribute', @_);
  }
  sub ModifyReservedInstances {
    my $self = shift;
    return $self->do_call('Aws::EC2::ModifyReservedInstances', @_);
  }
  sub ModifySnapshotAttribute {
    my $self = shift;
    return $self->do_call('Aws::EC2::ModifySnapshotAttribute', @_);
  }
  sub ModifyVolumeAttribute {
    my $self = shift;
    return $self->do_call('Aws::EC2::ModifyVolumeAttribute', @_);
  }
  sub ModifyVpcAttribute {
    my $self = shift;
    return $self->do_call('Aws::EC2::ModifyVpcAttribute', @_);
  }
  sub MonitorInstances {
    my $self = shift;
    return $self->do_call('Aws::EC2::MonitorInstances', @_);
  }
  sub PurchaseReservedInstancesOffering {
    my $self = shift;
    return $self->do_call('Aws::EC2::PurchaseReservedInstancesOffering', @_);
  }
  sub RebootInstances {
    my $self = shift;
    return $self->do_call('Aws::EC2::RebootInstances', @_);
  }
  sub RegisterImage {
    my $self = shift;
    return $self->do_call('Aws::EC2::RegisterImage', @_);
  }
  sub RejectVpcPeeringConnection {
    my $self = shift;
    return $self->do_call('Aws::EC2::RejectVpcPeeringConnection', @_);
  }
  sub ReleaseAddress {
    my $self = shift;
    return $self->do_call('Aws::EC2::ReleaseAddress', @_);
  }
  sub ReplaceNetworkAclAssociation {
    my $self = shift;
    return $self->do_call('Aws::EC2::ReplaceNetworkAclAssociation', @_);
  }
  sub ReplaceNetworkAclEntry {
    my $self = shift;
    return $self->do_call('Aws::EC2::ReplaceNetworkAclEntry', @_);
  }
  sub ReplaceRoute {
    my $self = shift;
    return $self->do_call('Aws::EC2::ReplaceRoute', @_);
  }
  sub ReplaceRouteTableAssociation {
    my $self = shift;
    return $self->do_call('Aws::EC2::ReplaceRouteTableAssociation', @_);
  }
  sub ReportInstanceStatus {
    my $self = shift;
    return $self->do_call('Aws::EC2::ReportInstanceStatus', @_);
  }
  sub RequestSpotInstances {
    my $self = shift;
    return $self->do_call('Aws::EC2::RequestSpotInstances', @_);
  }
  sub ResetImageAttribute {
    my $self = shift;
    return $self->do_call('Aws::EC2::ResetImageAttribute', @_);
  }
  sub ResetInstanceAttribute {
    my $self = shift;
    return $self->do_call('Aws::EC2::ResetInstanceAttribute', @_);
  }
  sub ResetNetworkInterfaceAttribute {
    my $self = shift;
    return $self->do_call('Aws::EC2::ResetNetworkInterfaceAttribute', @_);
  }
  sub ResetSnapshotAttribute {
    my $self = shift;
    return $self->do_call('Aws::EC2::ResetSnapshotAttribute', @_);
  }
  sub RevokeSecurityGroupEgress {
    my $self = shift;
    return $self->do_call('Aws::EC2::RevokeSecurityGroupEgress', @_);
  }
  sub RevokeSecurityGroupIngress {
    my $self = shift;
    return $self->do_call('Aws::EC2::RevokeSecurityGroupIngress', @_);
  }
  sub RunInstances {
    my $self = shift;
    return $self->do_call('Aws::EC2::RunInstances', @_);
  }
  sub StartInstances {
    my $self = shift;
    return $self->do_call('Aws::EC2::StartInstances', @_);
  }
  sub StopInstances {
    my $self = shift;
    return $self->do_call('Aws::EC2::StopInstances', @_);
  }
  sub TerminateInstances {
    my $self = shift;
    return $self->do_call('Aws::EC2::TerminateInstances', @_);
  }
  sub UnassignPrivateIpAddresses {
    my $self = shift;
    return $self->do_call('Aws::EC2::UnassignPrivateIpAddresses', @_);
  }
  sub UnmonitorInstances {
    my $self = shift;
    return $self->do_call('Aws::EC2::UnmonitorInstances', @_);
  }
}
1;
