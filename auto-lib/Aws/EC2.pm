
use AWS::API;


package Aws::EC2::AcceptVpcPeeringConnectionResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has VpcPeeringConnection => (is => 'ro', isa => 'Aws::EC2::VpcPeeringConnection', traits => ['Unwrapped'], xmlname => 'vpcPeeringConnection');

}
package Aws::EC2::AllocateAddressResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has AllocationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'allocationId');
  has Domain => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'domain');
  has PublicIp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'publicIp');

}
package Aws::EC2::AssociateAddressResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'associationId');

}
package Aws::EC2::AssociateRouteTableResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'associationId');

}
package Aws::EC2::AttachNetworkInterfaceResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachmentId');

}
package Aws::EC2::AttachVolumeResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has AttachTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachTime');
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
  has Device => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'device');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');

}
package Aws::EC2::AttachVpnGatewayResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has VpcAttachment => (is => 'ro', isa => 'Aws::EC2::VpcAttachment', traits => ['Unwrapped'], xmlname => 'attachment');

}
package Aws::EC2::BundleInstanceResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has BundleTask => (is => 'ro', isa => 'Aws::EC2::BundleTask', traits => ['Unwrapped'], xmlname => 'bundleInstanceTask');

}
package Aws::EC2::CancelBundleTaskResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has BundleTask => (is => 'ro', isa => 'Aws::EC2::BundleTask', traits => ['Unwrapped'], xmlname => 'bundleInstanceTask');

}
package Aws::EC2::CancelReservedInstancesListingResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ReservedInstancesListings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ReservedInstancesListing]', traits => ['Unwrapped'], xmlname => 'reservedInstancesListingsSet');

}
package Aws::EC2::CancelSpotInstanceRequestsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has CancelledSpotInstanceRequests => (is => 'ro', isa => 'ArrayRef[Aws::EC2::CancelledSpotInstanceRequest]', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestSet');

}
package Aws::EC2::ConfirmProductInstanceResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');

}
package Aws::EC2::CopyImageResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');

}
package Aws::EC2::CopySnapshotResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'snapshotId');

}
package Aws::EC2::CreateCustomerGatewayResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has CustomerGateway => (is => 'ro', isa => 'Aws::EC2::CustomerGateway', traits => ['Unwrapped'], xmlname => 'customerGateway');

}
package Aws::EC2::CreateDhcpOptionsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has DhcpOptions => (is => 'ro', isa => 'Aws::EC2::DhcpOptions', traits => ['Unwrapped'], xmlname => 'dhcpOptions');

}
package Aws::EC2::CreateImageResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');

}
package Aws::EC2::CreateInstanceExportTaskResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ExportTask => (is => 'ro', isa => 'Aws::EC2::ExportTask', traits => ['Unwrapped'], xmlname => 'exportTask');

}
package Aws::EC2::CreateInternetGatewayResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has InternetGateway => (is => 'ro', isa => 'Aws::EC2::InternetGateway', traits => ['Unwrapped'], xmlname => 'internetGateway');

}
package Aws::EC2::CreateKeyPairResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has KeyFingerprint => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyFingerprint');
  has KeyMaterial => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyMaterial');
  has KeyName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyName');

}
package Aws::EC2::CreateNetworkAclResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has NetworkAcl => (is => 'ro', isa => 'Aws::EC2::NetworkAcl', traits => ['Unwrapped'], xmlname => 'networkAcl');

}
package Aws::EC2::CreateNetworkInterfaceResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has NetworkInterface => (is => 'ro', isa => 'Aws::EC2::NetworkInterface', traits => ['Unwrapped'], xmlname => 'networkInterface');

}
package Aws::EC2::CreateReservedInstancesListingResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ReservedInstancesListings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ReservedInstancesListing]', traits => ['Unwrapped'], xmlname => 'reservedInstancesListingsSet');

}
package Aws::EC2::CreateRouteTableResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has RouteTable => (is => 'ro', isa => 'Aws::EC2::RouteTable', traits => ['Unwrapped'], xmlname => 'routeTable');

}
package Aws::EC2::CreateSecurityGroupResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has GroupId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupId');

}
package Aws::EC2::CreateSnapshotResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has Encrypted => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'encrypted');
  has OwnerAlias => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerAlias');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has Progress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'progress');
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'snapshotId');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'startTime');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
  has VolumeSize => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'volumeSize');

}
package Aws::EC2::CreateSpotDatafeedSubscriptionResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has SpotDatafeedSubscription => (is => 'ro', isa => 'Aws::EC2::SpotDatafeedSubscription', traits => ['Unwrapped'], xmlname => 'spotDatafeedSubscription');

}
package Aws::EC2::CreateSubnetResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Subnet => (is => 'ro', isa => 'Aws::EC2::Subnet', traits => ['Unwrapped'], xmlname => 'subnet');

}
package Aws::EC2::CreateVolumeResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Attachments => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VolumeAttachment]', traits => ['Unwrapped'], xmlname => 'attachmentSet');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'createTime');
  has Encrypted => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'encrypted');
  has Iops => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'iops');
  has Size => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'size');
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'snapshotId');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
  has VolumeType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeType');

}
package Aws::EC2::CreateVpcResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Vpc => (is => 'ro', isa => 'Aws::EC2::Vpc', traits => ['Unwrapped'], xmlname => 'vpc');

}
package Aws::EC2::CreateVpcPeeringConnectionResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has VpcPeeringConnection => (is => 'ro', isa => 'Aws::EC2::VpcPeeringConnection', traits => ['Unwrapped'], xmlname => 'vpcPeeringConnection');

}
package Aws::EC2::CreateVpnConnectionResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has VpnConnection => (is => 'ro', isa => 'Aws::EC2::VpnConnection', traits => ['Unwrapped'], xmlname => 'vpnConnection');

}
package Aws::EC2::CreateVpnGatewayResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has VpnGateway => (is => 'ro', isa => 'Aws::EC2::VpnGateway', traits => ['Unwrapped'], xmlname => 'vpnGateway');

}
package Aws::EC2::DeleteVpcPeeringConnectionResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Return => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'return');

}
package Aws::EC2::DescribeAccountAttributesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has AccountAttributes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::AccountAttribute]', traits => ['Unwrapped'], xmlname => 'accountAttributeSet');

}
package Aws::EC2::DescribeAddressesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Addresses => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Address]', traits => ['Unwrapped'], xmlname => 'addressesSet');

}
package Aws::EC2::DescribeAvailabilityZonesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Aws::EC2::AvailabilityZone]', traits => ['Unwrapped'], xmlname => 'availabilityZoneInfo');

}
package Aws::EC2::DescribeBundleTasksResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has BundleTasks => (is => 'ro', isa => 'ArrayRef[Aws::EC2::BundleTask]', traits => ['Unwrapped'], xmlname => 'bundleInstanceTasksSet');

}
package Aws::EC2::DescribeConversionTasksResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ConversionTasks => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ConversionTask]', traits => ['Unwrapped'], xmlname => 'conversionTasks');

}
package Aws::EC2::DescribeCustomerGatewaysResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has CustomerGateways => (is => 'ro', isa => 'ArrayRef[Aws::EC2::CustomerGateway]', traits => ['Unwrapped'], xmlname => 'customerGatewaySet');

}
package Aws::EC2::DescribeDhcpOptionsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has DhcpOptions => (is => 'ro', isa => 'ArrayRef[Aws::EC2::DhcpOptions]', traits => ['Unwrapped'], xmlname => 'dhcpOptionsSet');

}
package Aws::EC2::DescribeExportTasksResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ExportTasks => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ExportTask]', traits => ['Unwrapped'], xmlname => 'exportTaskSet');

}
package Aws::EC2::DescribeImageAttributeResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::BlockDeviceMapping]', traits => ['Unwrapped'], xmlname => 'blockDeviceMapping');
  has Description => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'description');
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');
  has KernelId => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'kernel');
  has LaunchPermissions => (is => 'ro', isa => 'ArrayRef[Aws::EC2::LaunchPermission]', traits => ['Unwrapped'], xmlname => 'launchPermission');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has RamdiskId => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'ramdisk');
  has SriovNetSupport => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'sriovNetSupport');

}
package Aws::EC2::DescribeImagesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Images => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Image]', traits => ['Unwrapped'], xmlname => 'imagesSet');

}
package Aws::EC2::DescribeInstanceAttributeResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceBlockDeviceMapping]', traits => ['Unwrapped'], xmlname => 'blockDeviceMapping');
  has DisableApiTermination => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'disableApiTermination');
  has EbsOptimized => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'ebsOptimized');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'instanceInitiatedShutdownBehavior');
  has InstanceType => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'instanceType');
  has KernelId => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'kernel');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has RamdiskId => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'ramdisk');
  has RootDeviceName => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'rootDeviceName');
  has SourceDestCheck => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'sourceDestCheck');
  has SriovNetSupport => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'sriovNetSupport');
  has UserData => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'userData');

}
package Aws::EC2::DescribeInstanceStatusResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has InstanceStatuses => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceStatus]', traits => ['Unwrapped'], xmlname => 'instanceStatusSet');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');

}
package Aws::EC2::DescribeInstancesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');
  has Reservations => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Reservation]', traits => ['Unwrapped'], xmlname => 'reservationSet');

}
package Aws::EC2::DescribeInternetGatewaysResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has InternetGateways => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InternetGateway]', traits => ['Unwrapped'], xmlname => 'internetGatewaySet');

}
package Aws::EC2::DescribeKeyPairsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has KeyPairs => (is => 'ro', isa => 'ArrayRef[Aws::EC2::KeyPairInfo]', traits => ['Unwrapped'], xmlname => 'keySet');

}
package Aws::EC2::DescribeNetworkAclsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has NetworkAcls => (is => 'ro', isa => 'ArrayRef[Aws::EC2::NetworkAcl]', traits => ['Unwrapped'], xmlname => 'networkAclSet');

}
package Aws::EC2::DescribeNetworkInterfaceAttributeResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Attachment => (is => 'ro', isa => 'Aws::EC2::NetworkInterfaceAttachment', traits => ['Unwrapped'], xmlname => 'attachment');
  has Description => (is => 'ro', isa => 'Aws::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'description');
  has Groups => (is => 'ro', isa => 'ArrayRef[Aws::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceId');
  has SourceDestCheck => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'sourceDestCheck');

}
package Aws::EC2::DescribeNetworkInterfacesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Aws::EC2::NetworkInterface]', traits => ['Unwrapped'], xmlname => 'networkInterfaceSet');

}
package Aws::EC2::DescribePlacementGroupsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has PlacementGroups => (is => 'ro', isa => 'ArrayRef[Aws::EC2::PlacementGroup]', traits => ['Unwrapped'], xmlname => 'placementGroupSet');

}
package Aws::EC2::DescribeRegionsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Regions => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Region]', traits => ['Unwrapped'], xmlname => 'regionInfo');

}
package Aws::EC2::DescribeReservedInstancesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ReservedInstances => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ReservedInstances]', traits => ['Unwrapped'], xmlname => 'reservedInstancesSet');

}
package Aws::EC2::DescribeReservedInstancesListingsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ReservedInstancesListings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ReservedInstancesListing]', traits => ['Unwrapped'], xmlname => 'reservedInstancesListingsSet');

}
package Aws::EC2::DescribeReservedInstancesModificationsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');
  has ReservedInstancesModifications => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ReservedInstancesModification]', traits => ['Unwrapped'], xmlname => 'reservedInstancesModificationsSet');

}
package Aws::EC2::DescribeReservedInstancesOfferingsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');
  has ReservedInstancesOfferings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ReservedInstancesOffering]', traits => ['Unwrapped'], xmlname => 'reservedInstancesOfferingsSet');

}
package Aws::EC2::DescribeRouteTablesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has RouteTables => (is => 'ro', isa => 'ArrayRef[Aws::EC2::RouteTable]', traits => ['Unwrapped'], xmlname => 'routeTableSet');

}
package Aws::EC2::DescribeSecurityGroupsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::EC2::SecurityGroup]', traits => ['Unwrapped'], xmlname => 'securityGroupInfo');

}
package Aws::EC2::DescribeSnapshotAttributeResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has CreateVolumePermissions => (is => 'ro', isa => 'ArrayRef[Aws::EC2::CreateVolumePermission]', traits => ['Unwrapped'], xmlname => 'createVolumePermission');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'snapshotId');

}
package Aws::EC2::DescribeSnapshotsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Snapshots => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Snapshot]', traits => ['Unwrapped'], xmlname => 'snapshotSet');

}
package Aws::EC2::DescribeSpotDatafeedSubscriptionResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has SpotDatafeedSubscription => (is => 'ro', isa => 'Aws::EC2::SpotDatafeedSubscription', traits => ['Unwrapped'], xmlname => 'spotDatafeedSubscription');

}
package Aws::EC2::DescribeSpotInstanceRequestsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has SpotInstanceRequests => (is => 'ro', isa => 'ArrayRef[Aws::EC2::SpotInstanceRequest]', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestSet');

}
package Aws::EC2::DescribeSpotPriceHistoryResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');
  has SpotPriceHistory => (is => 'ro', isa => 'ArrayRef[Aws::EC2::SpotPrice]', traits => ['Unwrapped'], xmlname => 'spotPriceHistorySet');

}
package Aws::EC2::DescribeSubnetsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Subnets => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Subnet]', traits => ['Unwrapped'], xmlname => 'subnetSet');

}
package Aws::EC2::DescribeTagsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::TagDescription]', traits => ['Unwrapped'], xmlname => 'tagSet');

}
package Aws::EC2::DescribeVolumeAttributeResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has AutoEnableIO => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'autoEnableIO');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');

}
package Aws::EC2::DescribeVolumeStatusResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');
  has VolumeStatuses => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VolumeStatusItem]', traits => ['Unwrapped'], xmlname => 'volumeStatusSet');

}
package Aws::EC2::DescribeVolumesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Volumes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Volume]', traits => ['Unwrapped'], xmlname => 'volumeSet');

}
package Aws::EC2::DescribeVpcAttributeResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has EnableDnsHostnames => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'enableDnsHostnames');
  has EnableDnsSupport => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'enableDnsSupport');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');

}
package Aws::EC2::DescribeVpcPeeringConnectionsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has VpcPeeringConnections => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VpcPeeringConnection]', traits => ['Unwrapped'], xmlname => 'vpcPeeringConnectionSet');

}
package Aws::EC2::DescribeVpcsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Vpcs => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Vpc]', traits => ['Unwrapped'], xmlname => 'vpcSet');

}
package Aws::EC2::DescribeVpnConnectionsResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has VpnConnections => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VpnConnection]', traits => ['Unwrapped'], xmlname => 'vpnConnectionSet');

}
package Aws::EC2::DescribeVpnGatewaysResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has VpnGateways => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VpnGateway]', traits => ['Unwrapped'], xmlname => 'vpnGatewaySet');

}
package Aws::EC2::DetachVolumeResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has AttachTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachTime');
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
  has Device => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'device');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');

}
package Aws::EC2::GetConsoleOutputResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has Output => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'output');
  has Timestamp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'timestamp');

}
package Aws::EC2::GetPasswordDataResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has PasswordData => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'passwordData');
  has Timestamp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'timestamp');

}
package Aws::EC2::ImportInstanceResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ConversionTask => (is => 'ro', isa => 'Aws::EC2::ConversionTask', traits => ['Unwrapped'], xmlname => 'conversionTask');

}
package Aws::EC2::ImportKeyPairResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has KeyFingerprint => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyFingerprint');
  has KeyName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyName');

}
package Aws::EC2::ImportVolumeResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ConversionTask => (is => 'ro', isa => 'Aws::EC2::ConversionTask', traits => ['Unwrapped'], xmlname => 'conversionTask');

}
package Aws::EC2::ModifyReservedInstancesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ReservedInstancesModificationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesModificationId');

}
package Aws::EC2::MonitorInstancesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has InstanceMonitorings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceMonitoring]', traits => ['Unwrapped'], xmlname => 'instancesSet');

}
package Aws::EC2::PurchaseReservedInstancesOfferingResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesId');

}
package Aws::EC2::RegisterImageResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');

}
package Aws::EC2::RejectVpcPeeringConnectionResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Return => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'return');

}
package Aws::EC2::ReplaceNetworkAclAssociationResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has NewAssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'newAssociationId');

}
package Aws::EC2::ReplaceRouteTableAssociationResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has NewAssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'newAssociationId');

}
package Aws::EC2::RequestSpotInstancesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has SpotInstanceRequests => (is => 'ro', isa => 'ArrayRef[Aws::EC2::SpotInstanceRequest]', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestSet');

}
package Aws::EC2::RunInstancesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has Groups => (is => 'ro', isa => 'ArrayRef[Aws::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Instance]', traits => ['Unwrapped'], xmlname => 'instancesSet');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has RequesterId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'requesterId');
  has ReservationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservationId');

}
package Aws::EC2::StartInstancesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has StartingInstances => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceStateChange]', traits => ['Unwrapped'], xmlname => 'instancesSet');

}
package Aws::EC2::StopInstancesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has StoppingInstances => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceStateChange]', traits => ['Unwrapped'], xmlname => 'instancesSet');

}
package Aws::EC2::TerminateInstancesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has TerminatingInstances => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceStateChange]', traits => ['Unwrapped'], xmlname => 'instancesSet');

}
package Aws::EC2::UnmonitorInstancesResult {
  use Moose;
  with 'AWS::API::UnwrappedParser';
  has InstanceMonitorings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceMonitoring]', traits => ['Unwrapped'], xmlname => 'instancesSet');

}

package Aws::EC2 {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'ec2');
  has version => (is => 'ro', isa => 'Str', default => '2014-05-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V2Signature');
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
