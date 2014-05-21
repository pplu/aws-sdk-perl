
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::EC2::ArchitectureValues', ['i386','x86_64',];
enum 'Aws::EC2::AttachmentStatus', ['attaching','attached','detaching','detached',];
enum 'Aws::EC2::AvailabilityZoneState', ['available',];
enum 'Aws::EC2::BundleTaskState', ['pending','waiting-for-shutdown','bundling','storing','cancelling','complete','failed',];
enum 'Aws::EC2::CancelSpotInstanceRequestState', ['active','open','closed','cancelled','completed',];
enum 'Aws::EC2::ContainerFormat', ['ova',];
enum 'Aws::EC2::ConversionTaskState', ['active','cancelling','cancelled','completed',];
enum 'Aws::EC2::CurrencyCodeValues', ['USD',];
enum 'Aws::EC2::DatafeedSubscriptionState', ['Active','Inactive',];
enum 'Aws::EC2::DeviceType', ['ebs','instance-store',];
enum 'Aws::EC2::DiskImageFormat', ['VMDK','RAW','VHD',];
enum 'Aws::EC2::DomainType', ['vpc','standard',];
enum 'Aws::EC2::EventCode', ['instance-reboot','system-reboot','system-maintenance','instance-retirement','instance-stop',];
enum 'Aws::EC2::ExportEnvironment', ['citrix','vmware','microsoft',];
enum 'Aws::EC2::ExportTaskState', ['active','cancelling','cancelled','completed',];
enum 'Aws::EC2::GatewayType', ['ipsec.1',];
enum 'Aws::EC2::HypervisorType', ['ovm','xen',];
enum 'Aws::EC2::ImageState', ['available','deregistered',];
enum 'Aws::EC2::ImageTypeValues', ['machine','kernel','ramdisk',];
enum 'Aws::EC2::InstanceLifecycleType', ['spot',];
enum 'Aws::EC2::InstanceStateName', ['pending','running','shutting-down','terminated','stopping','stopped',];
enum 'Aws::EC2::InstanceType', ['t1.micro','m1.small','m1.medium','m1.large','m1.xlarge','m3.medium','m3.large','m3.xlarge','m3.2xlarge','m2.xlarge','m2.2xlarge','m2.4xlarge','cr1.8xlarge','i2.xlarge','i2.2xlarge','i2.4xlarge','i2.8xlarge','hi1.4xlarge','hs1.8xlarge','c1.medium','c1.xlarge','c3.large','c3.xlarge','c3.2xlarge','c3.4xlarge','c3.8xlarge','cc1.4xlarge','cc2.8xlarge','g2.2xlarge','cg1.4xlarge',];
enum 'Aws::EC2::ListingState', ['available','sold','cancelled','pending',];
enum 'Aws::EC2::ListingStatus', ['active','pending','cancelled','closed',];
enum 'Aws::EC2::MonitoringState', ['disabled','enabled','pending',];
enum 'Aws::EC2::NetworkInterfaceStatus', ['available','attaching','in-use','detaching',];
enum 'Aws::EC2::OfferingTypeValues', ['Heavy Utilization','Medium Utilization','Light Utilization',];
enum 'Aws::EC2::PermissionGroup', ['all',];
enum 'Aws::EC2::PlacementGroupState', ['pending','available','deleting','deleted',];
enum 'Aws::EC2::PlacementStrategy', ['cluster',];
enum 'Aws::EC2::PlatformValues', ['windows',];
enum 'Aws::EC2::ProductCodeValues', ['devpay','marketplace',];
enum 'Aws::EC2::RecurringChargeFrequency', ['Hourly',];
enum 'Aws::EC2::ReservedInstanceState', ['payment-pending','active','payment-failed','retired',];
enum 'Aws::EC2::ResourceType', ['customer-gateway','dhcp-options','image','instance','internet-gateway','network-acl','network-interface','reserved-instances','route-table','snapshot','spot-instances-request','subnet','security-group','volume','vpc','vpn-connection','vpn-gateway',];
enum 'Aws::EC2::RIProductDescription', ['Linux/UNIX','Linux/UNIX (Amazon VPC)','Windows','Windows (Amazon VPC)',];
enum 'Aws::EC2::RouteOrigin', ['CreateRouteTable','CreateRoute','EnableVgwRoutePropagation',];
enum 'Aws::EC2::RouteState', ['active','blackhole',];
enum 'Aws::EC2::RuleAction', ['allow','deny',];
enum 'Aws::EC2::ShutdownBehavior', ['stop','terminate',];
enum 'Aws::EC2::SnapshotState', ['pending','completed','error',];
enum 'Aws::EC2::SpotInstanceState', ['open','active','closed','cancelled','failed',];
enum 'Aws::EC2::SpotInstanceType', ['one-time','persistent',];
enum 'Aws::EC2::SpotProductDescription', ['Linux/UNIX','Linux/UNIX (Amazon VPC)','Windows','Windows (Amazon VPC)','SUSE Linux','SUSE Linux (Amazon VPC)',];
enum 'Aws::EC2::StatusName', ['reachability',];
enum 'Aws::EC2::StatusType', ['passed','failed','insufficient-data',];
enum 'Aws::EC2::SubnetState', ['pending','available',];
enum 'Aws::EC2::SummaryStatus', ['ok','impaired','insufficient-data','not-applicable',];
enum 'Aws::EC2::TelemetryStatus', ['UP','DOWN',];
enum 'Aws::EC2::Tenancy', ['default','dedicated',];
enum 'Aws::EC2::VirtualizationType', ['hvm','paravirtual',];
enum 'Aws::EC2::VolumeAttachmentState', ['attaching','attached','detaching','detached',];
enum 'Aws::EC2::VolumeState', ['creating','available','in-use','deleting','deleted','error',];
enum 'Aws::EC2::VolumeStatusInfoStatus', ['ok','impaired','insufficient-data',];
enum 'Aws::EC2::VolumeStatusName', ['io-enabled','io-performance',];
enum 'Aws::EC2::VolumeType', ['standard','io1',];
enum 'Aws::EC2::VpcState', ['pending','available',];
enum 'Aws::EC2::VpnState', ['pending','available','deleting','deleted',];
enum 'Aws::EC2::VpnStaticRouteSource', ['Static',];


package Aws::EC2::AccountAttribute {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AttributeName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attributeName');
  has AttributeValues => (is => 'ro', isa => 'ArrayRef[Aws::EC2::AccountAttributeValue]', traits => ['Unwrapped'], xmlname => 'attributeValueSet');
}

package Aws::EC2::AccountAttributeValue {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AttributeValue => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attributeValue');
}

package Aws::EC2::Address {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AllocationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'allocationId');
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'associationId');
  has Domain => (is => 'ro', isa => 'Aws::EC2::DomainType', traits => ['Unwrapped'], xmlname => 'domain');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceId');
  has NetworkInterfaceOwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceOwnerId');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
  has PublicIp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'publicIp');
}

package Aws::EC2::AttributeBooleanValue {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Value => (is => 'ro', isa => 'Str');
}

package Aws::EC2::AttributeValue {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Value => (is => 'ro', isa => 'Str');
}

package Aws::EC2::AvailabilityZone {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Messages => (is => 'ro', isa => 'ArrayRef[Aws::EC2::AvailabilityZoneMessage]', traits => ['Unwrapped'], xmlname => 'messageSet');
  has RegionName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'regionName');
  has State => (is => 'ro', isa => 'Aws::EC2::AvailabilityZoneState', traits => ['Unwrapped'], xmlname => 'zoneState');
  has ZoneName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'zoneName');
}

package Aws::EC2::AvailabilityZoneMessage {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message');
}

package Aws::EC2::BlockDeviceMapping {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has DeviceName => (is => 'ro', isa => 'Str');
  has Ebs => (is => 'ro', isa => 'Aws::EC2::EbsBlockDevice');
  has NoDevice => (is => 'ro', isa => 'Str');
  has VirtualName => (is => 'ro', isa => 'Str');
}

package Aws::EC2::BundleTask {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has BundleId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'bundleId');
  has BundleTaskError => (is => 'ro', isa => 'Aws::EC2::BundleTaskError', traits => ['Unwrapped'], xmlname => 'error');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has Progress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'progress');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'startTime');
  has State => (is => 'ro', isa => 'Aws::EC2::BundleTaskState', traits => ['Unwrapped'], xmlname => 'state');
  has Storage => (is => 'ro', isa => 'Aws::EC2::Storage', traits => ['Unwrapped'], xmlname => 'storage');
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'updateTime');
}

package Aws::EC2::BundleTaskError {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Code => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'code');
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message');
}

package Aws::EC2::CancelledSpotInstanceRequest {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has SpotInstanceRequestId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestId');
  has State => (is => 'ro', isa => 'Aws::EC2::CancelSpotInstanceRequestState', traits => ['Unwrapped'], xmlname => 'state');
}

package Aws::EC2::ConversionTask {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has ConversionTaskId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'conversionTaskId', required => 1);
  has ExpirationTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'expirationTime');
  has ImportInstance => (is => 'ro', isa => 'Aws::EC2::ImportInstanceTaskDetails', traits => ['Unwrapped'], xmlname => 'importInstance');
  has ImportVolume => (is => 'ro', isa => 'Aws::EC2::ImportVolumeTaskDetails', traits => ['Unwrapped'], xmlname => 'importVolume');
  has State => (is => 'ro', isa => 'Aws::EC2::ConversionTaskState', traits => ['Unwrapped'], xmlname => 'state', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'statusMessage');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
}

package Aws::EC2::CreateVolumePermission {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Group => (is => 'ro', isa => 'Aws::EC2::PermissionGroup');
  has UserId => (is => 'ro', isa => 'Str');
}

package Aws::EC2::CreateVolumePermissionModifications {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Add => (is => 'ro', isa => 'ArrayRef[Aws::EC2::CreateVolumePermission]');
  has Remove => (is => 'ro', isa => 'ArrayRef[Aws::EC2::CreateVolumePermission]');
}

package Aws::EC2::CustomerGateway {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has BgpAsn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'bgpAsn');
  has CustomerGatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'customerGatewayId');
  has IpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ipAddress');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has Type => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'type');
}

package Aws::EC2::DhcpConfiguration {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Key => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'key');
  has Values => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'valueSet');
}

package Aws::EC2::DhcpOptions {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has DhcpConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::EC2::DhcpConfiguration]', traits => ['Unwrapped'], xmlname => 'dhcpConfigurationSet');
  has DhcpOptionsId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'dhcpOptionsId');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
}

package Aws::EC2::DiskImage {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Description => (is => 'ro', isa => 'Str');
  has Image => (is => 'ro', isa => 'Aws::EC2::DiskImageDetail');
  has Volume => (is => 'ro', isa => 'Aws::EC2::VolumeDetail');
}

package Aws::EC2::DiskImageDescription {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Checksum => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'checksum');
  has Format => (is => 'ro', isa => 'Aws::EC2::DiskImageFormat', traits => ['Unwrapped'], xmlname => 'format', required => 1);
  has ImportManifestUrl => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'importManifestUrl', required => 1);
  has Size => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'size', required => 1);
}

package Aws::EC2::DiskImageDetail {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Bytes => (is => 'ro', isa => 'Num', required => 1);
  has Format => (is => 'ro', isa => 'Aws::EC2::DiskImageFormat', required => 1);
  has ImportManifestUrl => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::EC2::DiskImageVolumeDescription {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Id => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'id', required => 1);
  has Size => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'size');
}

package Aws::EC2::EbsBlockDevice {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has DeleteOnTermination => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has SnapshotId => (is => 'ro', isa => 'Str');
  has VolumeSize => (is => 'ro', isa => 'Int');
  has VolumeType => (is => 'ro', isa => 'Aws::EC2::VolumeType');
}

package Aws::EC2::EbsInstanceBlockDevice {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AttachTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachTime');
  has DeleteOnTermination => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
  has Status => (is => 'ro', isa => 'Aws::EC2::AttachmentStatus', traits => ['Unwrapped'], xmlname => 'status');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
}

package Aws::EC2::EbsInstanceBlockDeviceSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has DeleteOnTermination => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str');
}

package Aws::EC2::ExportTask {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has ExportTaskId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'exportTaskId');
  has ExportToS3Task => (is => 'ro', isa => 'Aws::EC2::ExportToS3Task', traits => ['Unwrapped'], xmlname => 'exportToS3');
  has InstanceExportDetails => (is => 'ro', isa => 'Aws::EC2::InstanceExportDetails', traits => ['Unwrapped'], xmlname => 'instanceExport');
  has State => (is => 'ro', isa => 'Aws::EC2::ExportTaskState', traits => ['Unwrapped'], xmlname => 'state');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'statusMessage');
}

package Aws::EC2::ExportToS3Task {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has ContainerFormat => (is => 'ro', isa => 'Aws::EC2::ContainerFormat', traits => ['Unwrapped'], xmlname => 'containerFormat');
  has DiskImageFormat => (is => 'ro', isa => 'Aws::EC2::DiskImageFormat', traits => ['Unwrapped'], xmlname => 'diskImageFormat');
  has S3Bucket => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 's3Bucket');
  has S3Key => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 's3Key');
}

package Aws::EC2::ExportToS3TaskSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has ContainerFormat => (is => 'ro', isa => 'Aws::EC2::ContainerFormat');
  has DiskImageFormat => (is => 'ro', isa => 'Aws::EC2::DiskImageFormat');
  has S3Bucket => (is => 'ro', isa => 'Str');
  has S3Prefix => (is => 'ro', isa => 'Str');
}

package Aws::EC2::Filter {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Name => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str]');
}

package Aws::EC2::GroupIdentifier {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has GroupId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupId');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupName');
}

package Aws::EC2::IamInstanceProfile {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Arn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'arn');
  has Id => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'id');
}

package Aws::EC2::IamInstanceProfileSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Arn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
}

package Aws::EC2::IcmpTypeCode {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Code => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'code');
  has Type => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'type');
}

package Aws::EC2::Image {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Architecture => (is => 'ro', isa => 'Aws::EC2::ArchitectureValues', traits => ['Unwrapped'], xmlname => 'architecture');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::BlockDeviceMapping]', traits => ['Unwrapped'], xmlname => 'blockDeviceMapping');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has Hypervisor => (is => 'ro', isa => 'Aws::EC2::HypervisorType', traits => ['Unwrapped'], xmlname => 'hypervisor');
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');
  has ImageLocation => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageLocation');
  has ImageOwnerAlias => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageOwnerAlias');
  has ImageType => (is => 'ro', isa => 'Aws::EC2::ImageTypeValues', traits => ['Unwrapped'], xmlname => 'imageType');
  has KernelId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'kernelId');
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'name');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageOwnerId');
  has Platform => (is => 'ro', isa => 'Aws::EC2::PlatformValues', traits => ['Unwrapped'], xmlname => 'platform');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has Public => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'isPublic');
  has RamdiskId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ramdiskId');
  has RootDeviceName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'rootDeviceName');
  has RootDeviceType => (is => 'ro', isa => 'Aws::EC2::DeviceType', traits => ['Unwrapped'], xmlname => 'rootDeviceType');
  has SriovNetSupport => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'sriovNetSupport');
  has State => (is => 'ro', isa => 'Aws::EC2::ImageState', traits => ['Unwrapped'], xmlname => 'imageState');
  has StateReason => (is => 'ro', isa => 'Aws::EC2::StateReason', traits => ['Unwrapped'], xmlname => 'stateReason');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VirtualizationType => (is => 'ro', isa => 'Aws::EC2::VirtualizationType', traits => ['Unwrapped'], xmlname => 'virtualizationType');
}

package Aws::EC2::ImportInstanceLaunchSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AdditionalInfo => (is => 'ro', isa => 'Str');
  has Architecture => (is => 'ro', isa => 'Aws::EC2::ArchitectureValues');
  has GroupNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Aws::EC2::ShutdownBehavior');
  has InstanceType => (is => 'ro', isa => 'Aws::EC2::InstanceType');
  has Monitoring => (is => 'ro', isa => 'Str');
  has Placement => (is => 'ro', isa => 'Aws::EC2::Placement');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');
  has UserData => (is => 'ro', isa => 'Str');
}

package Aws::EC2::ImportInstanceTaskDetails {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has Platform => (is => 'ro', isa => 'Aws::EC2::PlatformValues', traits => ['Unwrapped'], xmlname => 'platform');
  has Volumes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ImportInstanceVolumeDetailItem]', traits => ['Unwrapped'], xmlname => 'volumes', required => 1);
}

package Aws::EC2::ImportInstanceVolumeDetailItem {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone', required => 1);
  has BytesConverted => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'bytesConverted', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has Image => (is => 'ro', isa => 'Aws::EC2::DiskImageDescription', traits => ['Unwrapped'], xmlname => 'image', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'statusMessage');
  has Volume => (is => 'ro', isa => 'Aws::EC2::DiskImageVolumeDescription', traits => ['Unwrapped'], xmlname => 'volume', required => 1);
}

package Aws::EC2::ImportVolumeTaskDetails {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone', required => 1);
  has BytesConverted => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'bytesConverted', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has Image => (is => 'ro', isa => 'Aws::EC2::DiskImageDescription', traits => ['Unwrapped'], xmlname => 'image', required => 1);
  has Volume => (is => 'ro', isa => 'Aws::EC2::DiskImageVolumeDescription', traits => ['Unwrapped'], xmlname => 'volume', required => 1);
}

package Aws::EC2::Instance {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AmiLaunchIndex => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'amiLaunchIndex');
  has Architecture => (is => 'ro', isa => 'Aws::EC2::ArchitectureValues', traits => ['Unwrapped'], xmlname => 'architecture');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceBlockDeviceMapping]', traits => ['Unwrapped'], xmlname => 'blockDeviceMapping');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'clientToken');
  has EbsOptimized => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ebsOptimized');
  has Hypervisor => (is => 'ro', isa => 'Aws::EC2::HypervisorType', traits => ['Unwrapped'], xmlname => 'hypervisor');
  has IamInstanceProfile => (is => 'ro', isa => 'Aws::EC2::IamInstanceProfile', traits => ['Unwrapped'], xmlname => 'iamInstanceProfile');
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has InstanceLifecycle => (is => 'ro', isa => 'Aws::EC2::InstanceLifecycleType', traits => ['Unwrapped'], xmlname => 'instanceLifecycle');
  has InstanceType => (is => 'ro', isa => 'Aws::EC2::InstanceType', traits => ['Unwrapped'], xmlname => 'instanceType');
  has KernelId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'kernelId');
  has KeyName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyName');
  has LaunchTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'launchTime');
  has Monitoring => (is => 'ro', isa => 'Aws::EC2::Monitoring', traits => ['Unwrapped'], xmlname => 'monitoring');
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceNetworkInterface]', traits => ['Unwrapped'], xmlname => 'networkInterfaceSet');
  has Placement => (is => 'ro', isa => 'Aws::EC2::Placement', traits => ['Unwrapped'], xmlname => 'placement');
  has Platform => (is => 'ro', isa => 'Aws::EC2::PlatformValues', traits => ['Unwrapped'], xmlname => 'platform');
  has PrivateDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateDnsName');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has PublicDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'dnsName');
  has PublicIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ipAddress');
  has RamdiskId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ramdiskId');
  has RootDeviceName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'rootDeviceName');
  has RootDeviceType => (is => 'ro', isa => 'Aws::EC2::DeviceType', traits => ['Unwrapped'], xmlname => 'rootDeviceType');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has SourceDestCheck => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'sourceDestCheck');
  has SpotInstanceRequestId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestId');
  has SriovNetSupport => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'sriovNetSupport');
  has State => (is => 'ro', isa => 'Aws::EC2::InstanceState', traits => ['Unwrapped'], xmlname => 'instanceState');
  has StateReason => (is => 'ro', isa => 'Aws::EC2::StateReason', traits => ['Unwrapped'], xmlname => 'stateReason');
  has StateTransitionReason => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reason');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VirtualizationType => (is => 'ro', isa => 'Aws::EC2::VirtualizationType', traits => ['Unwrapped'], xmlname => 'virtualizationType');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

package Aws::EC2::InstanceBlockDeviceMapping {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has DeviceName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'deviceName');
  has Ebs => (is => 'ro', isa => 'Aws::EC2::EbsInstanceBlockDevice', traits => ['Unwrapped'], xmlname => 'ebs');
}

package Aws::EC2::InstanceBlockDeviceMappingSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has DeviceName => (is => 'ro', isa => 'Str');
  has Ebs => (is => 'ro', isa => 'Aws::EC2::EbsInstanceBlockDeviceSpecification');
  has NoDevice => (is => 'ro', isa => 'Str');
  has VirtualName => (is => 'ro', isa => 'Str');
}

package Aws::EC2::InstanceCount {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has InstanceCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'instanceCount');
  has State => (is => 'ro', isa => 'Aws::EC2::ListingState', traits => ['Unwrapped'], xmlname => 'state');
}

package Aws::EC2::InstanceExportDetails {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has TargetEnvironment => (is => 'ro', isa => 'Aws::EC2::ExportEnvironment', traits => ['Unwrapped'], xmlname => 'targetEnvironment');
}

package Aws::EC2::InstanceMonitoring {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has Monitoring => (is => 'ro', isa => 'Aws::EC2::Monitoring', traits => ['Unwrapped'], xmlname => 'monitoring');
}

package Aws::EC2::InstanceNetworkInterface {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Association => (is => 'ro', isa => 'Aws::EC2::InstanceNetworkInterfaceAssociation', traits => ['Unwrapped'], xmlname => 'association');
  has Attachment => (is => 'ro', isa => 'Aws::EC2::InstanceNetworkInterfaceAttachment', traits => ['Unwrapped'], xmlname => 'attachment');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has Groups => (is => 'ro', isa => 'ArrayRef[Aws::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceId');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has PrivateDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateDnsName');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstancePrivateIpAddress]', traits => ['Unwrapped'], xmlname => 'privateIpAddressesSet');
  has SourceDestCheck => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'sourceDestCheck');
  has Status => (is => 'ro', isa => 'Aws::EC2::NetworkInterfaceStatus', traits => ['Unwrapped'], xmlname => 'status');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

package Aws::EC2::InstanceNetworkInterfaceAssociation {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has IpOwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ipOwnerId');
  has PublicDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'publicDnsName');
  has PublicIp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'publicIp');
}

package Aws::EC2::InstanceNetworkInterfaceAttachment {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AttachTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachTime');
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachmentId');
  has DeleteOnTermination => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
  has DeviceIndex => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'deviceIndex');
  has Status => (is => 'ro', isa => 'Aws::EC2::AttachmentStatus', traits => ['Unwrapped'], xmlname => 'status');
}

package Aws::EC2::InstanceNetworkInterfaceSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Str');
  has DeleteOnTermination => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DeviceIndex => (is => 'ro', isa => 'Int');
  has Groups => (is => 'ro', isa => 'ArrayRef[Str]');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Aws::EC2::PrivateIpAddressSpecification]');
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int');
  has SubnetId => (is => 'ro', isa => 'Str');
}

package Aws::EC2::InstancePrivateIpAddress {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Association => (is => 'ro', isa => 'Aws::EC2::InstanceNetworkInterfaceAssociation', traits => ['Unwrapped'], xmlname => 'association');
  has Primary => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'primary');
  has PrivateDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateDnsName');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
}

package Aws::EC2::InstanceState {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Code => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'code');
  has Name => (is => 'ro', isa => 'Aws::EC2::InstanceStateName', traits => ['Unwrapped'], xmlname => 'name');
}

package Aws::EC2::InstanceStateChange {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has CurrentState => (is => 'ro', isa => 'Aws::EC2::InstanceState', traits => ['Unwrapped'], xmlname => 'currentState');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has PreviousState => (is => 'ro', isa => 'Aws::EC2::InstanceState', traits => ['Unwrapped'], xmlname => 'previousState');
}

package Aws::EC2::InstanceStatus {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceStatusEvent]', traits => ['Unwrapped'], xmlname => 'eventsSet');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has InstanceState => (is => 'ro', isa => 'Aws::EC2::InstanceState', traits => ['Unwrapped'], xmlname => 'instanceState');
  has InstanceStatus => (is => 'ro', isa => 'Aws::EC2::InstanceStatusSummary', traits => ['Unwrapped'], xmlname => 'instanceStatus');
  has SystemStatus => (is => 'ro', isa => 'Aws::EC2::InstanceStatusSummary', traits => ['Unwrapped'], xmlname => 'systemStatus');
}

package Aws::EC2::InstanceStatusDetails {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has ImpairedSince => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'impairedSince');
  has Name => (is => 'ro', isa => 'Aws::EC2::StatusName', traits => ['Unwrapped'], xmlname => 'name');
  has Status => (is => 'ro', isa => 'Aws::EC2::StatusType', traits => ['Unwrapped'], xmlname => 'status');
}

package Aws::EC2::InstanceStatusEvent {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Code => (is => 'ro', isa => 'Aws::EC2::EventCode', traits => ['Unwrapped'], xmlname => 'code');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has NotAfter => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'notAfter');
  has NotBefore => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'notBefore');
}

package Aws::EC2::InstanceStatusSummary {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Details => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceStatusDetails]', traits => ['Unwrapped'], xmlname => 'details');
  has Status => (is => 'ro', isa => 'Aws::EC2::SummaryStatus', traits => ['Unwrapped'], xmlname => 'status');
}

package Aws::EC2::InternetGateway {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Attachments => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InternetGatewayAttachment]', traits => ['Unwrapped'], xmlname => 'attachmentSet');
  has InternetGatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'internetGatewayId');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
}

package Aws::EC2::InternetGatewayAttachment {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has State => (is => 'ro', isa => 'Aws::EC2::AttachmentStatus', traits => ['Unwrapped'], xmlname => 'state');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

package Aws::EC2::IpPermission {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has FromPort => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'fromPort');
  has IpProtocol => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ipProtocol');
  has IpRanges => (is => 'ro', isa => 'ArrayRef[Aws::EC2::IpRange]', traits => ['Unwrapped'], xmlname => 'ipRanges');
  has ToPort => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'toPort');
  has UserIdGroupPairs => (is => 'ro', isa => 'ArrayRef[Aws::EC2::UserIdGroupPair]', traits => ['Unwrapped'], xmlname => 'groups');
}

package Aws::EC2::IpRange {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has CidrIp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'cidrIp');
}

package Aws::EC2::KeyPairInfo {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has KeyFingerprint => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyFingerprint');
  has KeyName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyName');
}

package Aws::EC2::LaunchPermission {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Group => (is => 'ro', isa => 'Aws::EC2::PermissionGroup');
  has UserId => (is => 'ro', isa => 'Str');
}

package Aws::EC2::LaunchPermissionModifications {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Add => (is => 'ro', isa => 'ArrayRef[Aws::EC2::LaunchPermission]');
  has Remove => (is => 'ro', isa => 'ArrayRef[Aws::EC2::LaunchPermission]');
}

package Aws::EC2::LaunchSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AddressingType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'addressingType');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::BlockDeviceMapping]', traits => ['Unwrapped'], xmlname => 'blockDeviceMapping');
  has EbsOptimized => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ebsOptimized');
  has IamInstanceProfile => (is => 'ro', isa => 'Aws::EC2::IamInstanceProfileSpecification', traits => ['Unwrapped'], xmlname => 'iamInstanceProfile');
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');
  has InstanceType => (is => 'ro', isa => 'Aws::EC2::InstanceType', traits => ['Unwrapped'], xmlname => 'instanceType');
  has KernelId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'kernelId');
  has KeyName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyName');
  has MonitoringEnabled => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'monitoringEnabled');
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceNetworkInterfaceSpecification]', traits => ['Unwrapped'], xmlname => 'networkInterfaceSet');
  has Placement => (is => 'ro', isa => 'Aws::EC2::SpotPlacement', traits => ['Unwrapped'], xmlname => 'placement');
  has RamdiskId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ramdiskId');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
  has UserData => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'userData');
}

package Aws::EC2::Monitoring {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has State => (is => 'ro', isa => 'Aws::EC2::MonitoringState', traits => ['Unwrapped'], xmlname => 'state');
}

package Aws::EC2::NetworkAcl {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Associations => (is => 'ro', isa => 'ArrayRef[Aws::EC2::NetworkAclAssociation]', traits => ['Unwrapped'], xmlname => 'associationSet');
  has Entries => (is => 'ro', isa => 'ArrayRef[Aws::EC2::NetworkAclEntry]', traits => ['Unwrapped'], xmlname => 'entrySet');
  has IsDefault => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'default');
  has NetworkAclId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkAclId');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

package Aws::EC2::NetworkAclAssociation {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has NetworkAclAssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkAclAssociationId');
  has NetworkAclId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkAclId');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
}

package Aws::EC2::NetworkAclEntry {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has CidrBlock => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'cidrBlock');
  has Egress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'egress');
  has IcmpTypeCode => (is => 'ro', isa => 'Aws::EC2::IcmpTypeCode', traits => ['Unwrapped'], xmlname => 'icmpTypeCode');
  has PortRange => (is => 'ro', isa => 'Aws::EC2::PortRange', traits => ['Unwrapped'], xmlname => 'portRange');
  has Protocol => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'protocol');
  has RuleAction => (is => 'ro', isa => 'Aws::EC2::RuleAction', traits => ['Unwrapped'], xmlname => 'ruleAction');
  has RuleNumber => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'ruleNumber');
}

package Aws::EC2::NetworkInterface {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Association => (is => 'ro', isa => 'Aws::EC2::NetworkInterfaceAssociation', traits => ['Unwrapped'], xmlname => 'association');
  has Attachment => (is => 'ro', isa => 'Aws::EC2::NetworkInterfaceAttachment', traits => ['Unwrapped'], xmlname => 'attachment');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has Groups => (is => 'ro', isa => 'ArrayRef[Aws::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has MacAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'macAddress');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceId');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has PrivateDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateDnsName');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Aws::EC2::NetworkInterfacePrivateIpAddress]', traits => ['Unwrapped'], xmlname => 'privateIpAddressesSet');
  has RequesterId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'requesterId');
  has RequesterManaged => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'requesterManaged');
  has SourceDestCheck => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'sourceDestCheck');
  has Status => (is => 'ro', isa => 'Aws::EC2::NetworkInterfaceStatus', traits => ['Unwrapped'], xmlname => 'status');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
  has TagSet => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

package Aws::EC2::NetworkInterfaceAssociation {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AllocationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'allocationId');
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'associationId');
  has IpOwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ipOwnerId');
  has PublicIp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'publicIp');
}

package Aws::EC2::NetworkInterfaceAttachment {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AttachTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachTime');
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachmentId');
  has DeleteOnTermination => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
  has DeviceIndex => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'deviceIndex');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has InstanceOwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceOwnerId');
  has Status => (is => 'ro', isa => 'Aws::EC2::AttachmentStatus', traits => ['Unwrapped'], xmlname => 'status');
}

package Aws::EC2::NetworkInterfaceAttachmentChanges {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AttachmentId => (is => 'ro', isa => 'Str');
  has DeleteOnTermination => (is => 'ro', isa => 'Str');
}

package Aws::EC2::NetworkInterfacePrivateIpAddress {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Association => (is => 'ro', isa => 'Aws::EC2::NetworkInterfaceAssociation', traits => ['Unwrapped'], xmlname => 'association');
  has Primary => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'primary');
  has PrivateDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateDnsName');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
}

package Aws::EC2::Placement {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupName');
  has Tenancy => (is => 'ro', isa => 'Aws::EC2::Tenancy', traits => ['Unwrapped'], xmlname => 'tenancy');
}

package Aws::EC2::PlacementGroup {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupName');
  has State => (is => 'ro', isa => 'Aws::EC2::PlacementGroupState', traits => ['Unwrapped'], xmlname => 'state');
  has Strategy => (is => 'ro', isa => 'Aws::EC2::PlacementStrategy', traits => ['Unwrapped'], xmlname => 'strategy');
}

package Aws::EC2::PortRange {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has From => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'from');
  has To => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'to');
}

package Aws::EC2::PriceSchedule {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Active => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'active');
  has CurrencyCode => (is => 'ro', isa => 'Aws::EC2::CurrencyCodeValues', traits => ['Unwrapped'], xmlname => 'currencyCode');
  has Price => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'price');
  has Term => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'term');
}

package Aws::EC2::PriceScheduleSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has CurrencyCode => (is => 'ro', isa => 'Aws::EC2::CurrencyCodeValues');
  has Price => (is => 'ro', isa => 'Num');
  has Term => (is => 'ro', isa => 'Num');
}

package Aws::EC2::PricingDetail {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Count => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'count');
  has Price => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'price');
}

package Aws::EC2::PrivateIpAddressSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Primary => (is => 'ro', isa => 'Str');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::EC2::ProductCode {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has ProductCodeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'productCode');
  has ProductCodeType => (is => 'ro', isa => 'Aws::EC2::ProductCodeValues', traits => ['Unwrapped'], xmlname => 'type');
}

package Aws::EC2::PropagatingVgw {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has GatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'gatewayId');
}

package Aws::EC2::RecurringCharge {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Amount => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'amount');
  has Frequency => (is => 'ro', isa => 'Aws::EC2::RecurringChargeFrequency', traits => ['Unwrapped'], xmlname => 'frequency');
}

package Aws::EC2::Region {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Endpoint => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'regionEndpoint');
  has RegionName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'regionName');
}

package Aws::EC2::Reservation {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Groups => (is => 'ro', isa => 'ArrayRef[Aws::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Instance]', traits => ['Unwrapped'], xmlname => 'instancesSet');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has RequesterId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'requesterId');
  has ReservationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservationId');
}

package Aws::EC2::ReservedInstanceLimitPrice {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Amount => (is => 'ro', isa => 'Num');
  has CurrencyCode => (is => 'ro', isa => 'Aws::EC2::CurrencyCodeValues');
}

package Aws::EC2::ReservedInstances {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has CurrencyCode => (is => 'ro', isa => 'Aws::EC2::CurrencyCodeValues', traits => ['Unwrapped'], xmlname => 'currencyCode');
  has Duration => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'duration');
  has End => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'end');
  has FixedPrice => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'fixedPrice');
  has InstanceCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'instanceCount');
  has InstanceTenancy => (is => 'ro', isa => 'Aws::EC2::Tenancy', traits => ['Unwrapped'], xmlname => 'instanceTenancy');
  has InstanceType => (is => 'ro', isa => 'Aws::EC2::InstanceType', traits => ['Unwrapped'], xmlname => 'instanceType');
  has OfferingType => (is => 'ro', isa => 'Aws::EC2::OfferingTypeValues', traits => ['Unwrapped'], xmlname => 'offeringType');
  has ProductDescription => (is => 'ro', isa => 'Aws::EC2::RIProductDescription', traits => ['Unwrapped'], xmlname => 'productDescription');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[Aws::EC2::RecurringCharge]', traits => ['Unwrapped'], xmlname => 'recurringCharges');
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesId');
  has Start => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'start');
  has State => (is => 'ro', isa => 'Aws::EC2::ReservedInstanceState', traits => ['Unwrapped'], xmlname => 'state');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has UsagePrice => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'usagePrice');
}

package Aws::EC2::ReservedInstancesConfiguration {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has InstanceCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'instanceCount');
  has InstanceType => (is => 'ro', isa => 'Aws::EC2::InstanceType', traits => ['Unwrapped'], xmlname => 'instanceType');
  has Platform => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'platform');
}

package Aws::EC2::ReservedInstancesId {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesId');
}

package Aws::EC2::ReservedInstancesListing {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'clientToken');
  has CreateDate => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'createDate');
  has InstanceCounts => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceCount]', traits => ['Unwrapped'], xmlname => 'instanceCounts');
  has PriceSchedules => (is => 'ro', isa => 'ArrayRef[Aws::EC2::PriceSchedule]', traits => ['Unwrapped'], xmlname => 'priceSchedules');
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesId');
  has ReservedInstancesListingId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesListingId');
  has Status => (is => 'ro', isa => 'Aws::EC2::ListingStatus', traits => ['Unwrapped'], xmlname => 'status');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'statusMessage');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has UpdateDate => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'updateDate');
}

package Aws::EC2::ReservedInstancesModification {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'clientToken');
  has CreateDate => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'createDate');
  has EffectiveDate => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'effectiveDate');
  has ModificationResults => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ReservedInstancesModificationResult]', traits => ['Unwrapped'], xmlname => 'modificationResultSet');
  has ReservedInstancesIds => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ReservedInstancesId]', traits => ['Unwrapped'], xmlname => 'reservedInstancesSet');
  has ReservedInstancesModificationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesModificationId');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'statusMessage');
  has UpdateDate => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'updateDate');
}

package Aws::EC2::ReservedInstancesModificationResult {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesId');
  has TargetConfiguration => (is => 'ro', isa => 'Aws::EC2::ReservedInstancesConfiguration', traits => ['Unwrapped'], xmlname => 'targetConfiguration');
}

package Aws::EC2::ReservedInstancesOffering {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has CurrencyCode => (is => 'ro', isa => 'Aws::EC2::CurrencyCodeValues', traits => ['Unwrapped'], xmlname => 'currencyCode');
  has Duration => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'duration');
  has FixedPrice => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'fixedPrice');
  has InstanceTenancy => (is => 'ro', isa => 'Aws::EC2::Tenancy', traits => ['Unwrapped'], xmlname => 'instanceTenancy');
  has InstanceType => (is => 'ro', isa => 'Aws::EC2::InstanceType', traits => ['Unwrapped'], xmlname => 'instanceType');
  has Marketplace => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'marketplace');
  has OfferingType => (is => 'ro', isa => 'Aws::EC2::OfferingTypeValues', traits => ['Unwrapped'], xmlname => 'offeringType');
  has PricingDetails => (is => 'ro', isa => 'ArrayRef[Aws::EC2::PricingDetail]', traits => ['Unwrapped'], xmlname => 'pricingDetailsSet');
  has ProductDescription => (is => 'ro', isa => 'Aws::EC2::RIProductDescription', traits => ['Unwrapped'], xmlname => 'productDescription');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[Aws::EC2::RecurringCharge]', traits => ['Unwrapped'], xmlname => 'recurringCharges');
  has ReservedInstancesOfferingId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesOfferingId');
  has UsagePrice => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'usagePrice');
}

package Aws::EC2::Route {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'destinationCidrBlock');
  has GatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'gatewayId');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has InstanceOwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceOwnerId');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceId');
  has Origin => (is => 'ro', isa => 'Aws::EC2::RouteOrigin', traits => ['Unwrapped'], xmlname => 'origin');
  has State => (is => 'ro', isa => 'Aws::EC2::RouteState', traits => ['Unwrapped'], xmlname => 'state');
}

package Aws::EC2::RouteTable {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Associations => (is => 'ro', isa => 'ArrayRef[Aws::EC2::RouteTableAssociation]', traits => ['Unwrapped'], xmlname => 'associationSet');
  has PropagatingVgws => (is => 'ro', isa => 'ArrayRef[Aws::EC2::PropagatingVgw]', traits => ['Unwrapped'], xmlname => 'propagatingVgwSet');
  has RouteTableId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'routeTableId');
  has Routes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Route]', traits => ['Unwrapped'], xmlname => 'routeSet');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

package Aws::EC2::RouteTableAssociation {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Main => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'main');
  has RouteTableAssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'routeTableAssociationId');
  has RouteTableId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'routeTableId');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
}

package Aws::EC2::RunInstancesMonitoringEnabled {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Enabled => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::EC2::S3Storage {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AWSAccessKeyId => (is => 'ro', isa => 'Str');
  has Bucket => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'bucket');
  has Prefix => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'prefix');
  has UploadPolicy => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'uploadPolicy');
  has UploadPolicySignature => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'uploadPolicySignature');
}

package Aws::EC2::SecurityGroup {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupDescription');
  has GroupId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupId');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupName');
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[Aws::EC2::IpPermission]', traits => ['Unwrapped'], xmlname => 'ipPermissions');
  has IpPermissionsEgress => (is => 'ro', isa => 'ArrayRef[Aws::EC2::IpPermission]', traits => ['Unwrapped'], xmlname => 'ipPermissionsEgress');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

package Aws::EC2::Snapshot {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has OwnerAlias => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerAlias');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has Progress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'progress');
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'snapshotId');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'startTime');
  has State => (is => 'ro', isa => 'Aws::EC2::SnapshotState', traits => ['Unwrapped'], xmlname => 'status');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
  has VolumeSize => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'volumeSize');
}

package Aws::EC2::SpotDatafeedSubscription {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Bucket => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'bucket');
  has Fault => (is => 'ro', isa => 'Aws::EC2::SpotInstanceStateFault', traits => ['Unwrapped'], xmlname => 'fault');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has Prefix => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'prefix');
  has State => (is => 'ro', isa => 'Aws::EC2::DatafeedSubscriptionState', traits => ['Unwrapped'], xmlname => 'state');
}

package Aws::EC2::SpotInstanceMonitoring {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Enabled => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::EC2::SpotInstanceRequest {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AvailabilityZoneGroup => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZoneGroup');
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'createTime');
  has Fault => (is => 'ro', isa => 'Aws::EC2::SpotInstanceStateFault', traits => ['Unwrapped'], xmlname => 'fault');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has LaunchGroup => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'launchGroup');
  has LaunchSpecification => (is => 'ro', isa => 'Aws::EC2::LaunchSpecification', traits => ['Unwrapped'], xmlname => 'launchSpecification');
  has LaunchedAvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'launchedAvailabilityZone');
  has ProductDescription => (is => 'ro', isa => 'Aws::EC2::SpotProductDescription', traits => ['Unwrapped'], xmlname => 'productDescription');
  has SpotInstanceRequestId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestId');
  has SpotPrice => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'spotPrice');
  has State => (is => 'ro', isa => 'Aws::EC2::SpotInstanceState', traits => ['Unwrapped'], xmlname => 'state');
  has Status => (is => 'ro', isa => 'Aws::EC2::SpotInstanceStatus', traits => ['Unwrapped'], xmlname => 'status');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has Type => (is => 'ro', isa => 'Aws::EC2::SpotInstanceType', traits => ['Unwrapped'], xmlname => 'type');
  has ValidFrom => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'validFrom');
  has ValidUntil => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'validUntil');
}

package Aws::EC2::SpotInstanceStateFault {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Code => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'code');
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message');
}

package Aws::EC2::SpotInstanceStatus {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Code => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'code');
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message');
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'updateTime');
}

package Aws::EC2::SpotLaunchSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AddressingType => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::BlockDeviceMapping]');
  has EbsOptimized => (is => 'ro', isa => 'Str');
  has IamInstanceProfile => (is => 'ro', isa => 'Aws::EC2::IamInstanceProfileSpecification');
  has ImageId => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Aws::EC2::InstanceType');
  has KernelId => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str');
  has Monitoring => (is => 'ro', isa => 'Aws::EC2::SpotInstanceMonitoring');
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceNetworkInterfaceSpecification]');
  has Placement => (is => 'ro', isa => 'Aws::EC2::SpotPlacement');
  has RamdiskId => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has SubnetId => (is => 'ro', isa => 'Str');
  has UserData => (is => 'ro', isa => 'Str');
}

package Aws::EC2::SpotPlacement {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
}

package Aws::EC2::SpotPrice {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has InstanceType => (is => 'ro', isa => 'Aws::EC2::InstanceType', traits => ['Unwrapped'], xmlname => 'instanceType');
  has ProductDescription => (is => 'ro', isa => 'Aws::EC2::SpotProductDescription', traits => ['Unwrapped'], xmlname => 'productDescription');
  has SpotPrice => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'spotPrice');
  has Timestamp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'timestamp');
}

package Aws::EC2::StateReason {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Code => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'code');
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message');
}

package Aws::EC2::Storage {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has S3 => (is => 'ro', isa => 'Aws::EC2::S3Storage');
}

package Aws::EC2::Subnet {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has AvailableIpAddressCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'availableIpAddressCount');
  has CidrBlock => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'cidrBlock');
  has DefaultForAz => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'defaultForAz');
  has MapPublicIpOnLaunch => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'mapPublicIpOnLaunch');
  has State => (is => 'ro', isa => 'Aws::EC2::SubnetState', traits => ['Unwrapped'], xmlname => 'state');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

package Aws::EC2::Tag {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Key => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'key');
  has Value => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'value');
}

package Aws::EC2::TagDescription {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Key => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'key');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'resourceId');
  has ResourceType => (is => 'ro', isa => 'Aws::EC2::ResourceType', traits => ['Unwrapped'], xmlname => 'resourceType');
  has Value => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'value');
}

package Aws::EC2::UserIdGroupPair {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has GroupId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupId');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupName');
  has UserId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'userId');
}

package Aws::EC2::VgwTelemetry {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AcceptedRouteCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'acceptedRouteCount');
  has LastStatusChange => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'lastStatusChange');
  has OutsideIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'outsideIpAddress');
  has Status => (is => 'ro', isa => 'Aws::EC2::TelemetryStatus', traits => ['Unwrapped'], xmlname => 'status');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'statusMessage');
}

package Aws::EC2::Volume {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Attachments => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VolumeAttachment]', traits => ['Unwrapped'], xmlname => 'attachmentSet');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'createTime');
  has Iops => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'iops');
  has Size => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'size');
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'snapshotId');
  has State => (is => 'ro', isa => 'Aws::EC2::VolumeState', traits => ['Unwrapped'], xmlname => 'status');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
  has VolumeType => (is => 'ro', isa => 'Aws::EC2::VolumeType', traits => ['Unwrapped'], xmlname => 'volumeType');
}

package Aws::EC2::VolumeAttachment {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AttachTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachTime');
  has DeleteOnTermination => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
  has Device => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'device');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has State => (is => 'ro', isa => 'Aws::EC2::VolumeAttachmentState', traits => ['Unwrapped'], xmlname => 'status');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
}

package Aws::EC2::VolumeDetail {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Size => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::EC2::VolumeStatusAction {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Code => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'code');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has EventId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'eventId');
  has EventType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'eventType');
}

package Aws::EC2::VolumeStatusDetails {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Name => (is => 'ro', isa => 'Aws::EC2::VolumeStatusName', traits => ['Unwrapped'], xmlname => 'name');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
}

package Aws::EC2::VolumeStatusEvent {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has EventId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'eventId');
  has EventType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'eventType');
  has NotAfter => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'notAfter');
  has NotBefore => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'notBefore');
}

package Aws::EC2::VolumeStatusInfo {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Details => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VolumeStatusDetails]', traits => ['Unwrapped'], xmlname => 'details');
  has Status => (is => 'ro', isa => 'Aws::EC2::VolumeStatusInfoStatus', traits => ['Unwrapped'], xmlname => 'status');
}

package Aws::EC2::VolumeStatusItem {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has Actions => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VolumeStatusAction]', traits => ['Unwrapped'], xmlname => 'actionsSet');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VolumeStatusEvent]', traits => ['Unwrapped'], xmlname => 'eventsSet');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
  has VolumeStatus => (is => 'ro', isa => 'Aws::EC2::VolumeStatusInfo', traits => ['Unwrapped'], xmlname => 'volumeStatus');
}

package Aws::EC2::Vpc {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has CidrBlock => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'cidrBlock');
  has DhcpOptionsId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'dhcpOptionsId');
  has InstanceTenancy => (is => 'ro', isa => 'Aws::EC2::Tenancy', traits => ['Unwrapped'], xmlname => 'instanceTenancy');
  has IsDefault => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'isDefault');
  has State => (is => 'ro', isa => 'Aws::EC2::VpcState', traits => ['Unwrapped'], xmlname => 'state');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

package Aws::EC2::VpcAttachment {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has State => (is => 'ro', isa => 'Aws::EC2::AttachmentStatus', traits => ['Unwrapped'], xmlname => 'state');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

package Aws::EC2::VpnConnection {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has CustomerGatewayConfiguration => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'customerGatewayConfiguration');
  has CustomerGatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'customerGatewayId');
  has Options => (is => 'ro', isa => 'Aws::EC2::VpnConnectionOptions', traits => ['Unwrapped'], xmlname => 'options');
  has Routes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VpnStaticRoute]', traits => ['Unwrapped'], xmlname => 'routes');
  has State => (is => 'ro', isa => 'Aws::EC2::VpnState', traits => ['Unwrapped'], xmlname => 'state');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has Type => (is => 'ro', isa => 'Aws::EC2::GatewayType', traits => ['Unwrapped'], xmlname => 'type');
  has VgwTelemetry => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VgwTelemetry]', traits => ['Unwrapped'], xmlname => 'vgwTelemetry');
  has VpnConnectionId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpnConnectionId');
  has VpnGatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpnGatewayId');
}

package Aws::EC2::VpnConnectionOptions {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has StaticRoutesOnly => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'staticRoutesOnly');
}

package Aws::EC2::VpnConnectionOptionsSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has StaticRoutesOnly => (is => 'ro', isa => 'Str');
}

package Aws::EC2::VpnGateway {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has State => (is => 'ro', isa => 'Aws::EC2::VpnState', traits => ['Unwrapped'], xmlname => 'state');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has Type => (is => 'ro', isa => 'Aws::EC2::GatewayType', traits => ['Unwrapped'], xmlname => 'type');
  has VpcAttachments => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VpcAttachment]', traits => ['Unwrapped'], xmlname => 'attachments');
  has VpnGatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpnGatewayId');
}

package Aws::EC2::VpnStaticRoute {
  use Moose;
  with ('AWS::API::UnwrappedParser', 'AWS::API::ToParams');
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'destinationCidrBlock');
  has Source => (is => 'ro', isa => 'Aws::EC2::VpnStaticRouteSource', traits => ['Unwrapped'], xmlname => 'source');
  has State => (is => 'ro', isa => 'Aws::EC2::VpnState', traits => ['Unwrapped'], xmlname => 'state');
}



package Aws::EC2::AllocateAddress {
  use Moose;
  has Domain => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AllocateAddress');
  has _returns => (isa => 'Aws::EC2::AllocateAddressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AllocateAddressResult');  
}
package Aws::EC2::AssignPrivateIpAddresses {
  use Moose;
  has AllowReassignment => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'PrivateIpAddress' );
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AssignPrivateIpAddresses');
  has _returns => (isa => 'Aws::EC2::AssignPrivateIpAddressesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AssignPrivateIpAddressesResult');  
}
package Aws::EC2::AssociateAddress {
  use Moose;
  has AllocationId => (is => 'ro', isa => 'Str');
  has AllowReassociation => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has PublicIp => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateAddress');
  has _returns => (isa => 'Aws::EC2::AssociateAddressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AssociateAddressResult');  
}
package Aws::EC2::AssociateDhcpOptions {
  use Moose;
  has DhcpOptionsId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateDhcpOptions');
  has _returns => (isa => 'Aws::EC2::AssociateDhcpOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AssociateDhcpOptionsResult');  
}
package Aws::EC2::AssociateRouteTable {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);
  has SubnetId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateRouteTable');
  has _returns => (isa => 'Aws::EC2::AssociateRouteTableResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AssociateRouteTableResult');  
}
package Aws::EC2::AttachInternetGateway {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has InternetGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AttachInternetGateway');
  has _returns => (isa => 'Aws::EC2::AttachInternetGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AttachInternetGatewayResult');  
}
package Aws::EC2::AttachNetworkInterface {
  use Moose;
  has DeviceIndex => (is => 'ro', isa => 'Int', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AttachNetworkInterface');
  has _returns => (isa => 'Aws::EC2::AttachNetworkInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AttachNetworkInterfaceResult');  
}
package Aws::EC2::AttachVolume {
  use Moose;
  has Device => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AttachVolume');
  has _returns => (isa => 'Aws::EC2::AttachVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AttachVolumeResult');  
}
package Aws::EC2::AttachVpnGateway {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);
  has VpnGatewayId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AttachVpnGateway');
  has _returns => (isa => 'Aws::EC2::AttachVpnGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AttachVpnGatewayResult');  
}
package Aws::EC2::AuthorizeSecurityGroupEgress {
  use Moose;
  has CidrIp => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has FromPort => (is => 'ro', isa => 'Int');
  has GroupId => (is => 'ro', isa => 'Str', required => 1);
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[Aws::EC2::IpPermission]');
  has IpProtocol => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupName => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupOwnerId => (is => 'ro', isa => 'Str');
  has ToPort => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeSecurityGroupEgress');
  has _returns => (isa => 'Aws::EC2::AuthorizeSecurityGroupEgressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AuthorizeSecurityGroupEgressResult');  
}
package Aws::EC2::AuthorizeSecurityGroupIngress {
  use Moose;
  has CidrIp => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has FromPort => (is => 'ro', isa => 'Int');
  has GroupId => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[Aws::EC2::IpPermission]');
  has IpProtocol => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupName => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupOwnerId => (is => 'ro', isa => 'Str');
  has ToPort => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeSecurityGroupIngress');
  has _returns => (isa => 'Aws::EC2::AuthorizeSecurityGroupIngressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AuthorizeSecurityGroupIngressResult');  
}
package Aws::EC2::BundleInstance {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has Storage => (is => 'ro', isa => 'Aws::EC2::Storage', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'BundleInstance');
  has _returns => (isa => 'Aws::EC2::BundleInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'BundleInstanceResult');  
}
package Aws::EC2::CancelBundleTask {
  use Moose;
  has BundleId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CancelBundleTask');
  has _returns => (isa => 'Aws::EC2::CancelBundleTaskResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CancelBundleTaskResult');  
}
package Aws::EC2::CancelConversionTask {
  use Moose;
  has ConversionTaskId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has ReasonMessage => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CancelConversionTask');
  has _returns => (isa => 'Aws::EC2::CancelConversionTaskResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CancelConversionTaskResult');  
}
package Aws::EC2::CancelExportTask {
  use Moose;
  has ExportTaskId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CancelExportTask');
  has _returns => (isa => 'Aws::EC2::CancelExportTaskResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CancelExportTaskResult');  
}
package Aws::EC2::CancelReservedInstancesListing {
  use Moose;
  has ReservedInstancesListingId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CancelReservedInstancesListing');
  has _returns => (isa => 'Aws::EC2::CancelReservedInstancesListingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CancelReservedInstancesListingResult');  
}
package Aws::EC2::CancelSpotInstanceRequests {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has SpotInstanceRequestIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SpotInstanceRequestId' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CancelSpotInstanceRequests');
  has _returns => (isa => 'Aws::EC2::CancelSpotInstanceRequestsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CancelSpotInstanceRequestsResult');  
}
package Aws::EC2::ConfirmProductInstance {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ProductCode => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmProductInstance');
  has _returns => (isa => 'Aws::EC2::ConfirmProductInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ConfirmProductInstanceResult');  
}
package Aws::EC2::CopyImage {
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SourceImageId => (is => 'ro', isa => 'Str', required => 1);
  has SourceRegion => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CopyImage');
  has _returns => (isa => 'Aws::EC2::CopyImageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CopyImageResult');  
}
package Aws::EC2::CopySnapshot {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has SourceRegion => (is => 'ro', isa => 'Str', required => 1);
  has SourceSnapshotId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CopySnapshot');
  has _returns => (isa => 'Aws::EC2::CopySnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CopySnapshotResult');  
}
package Aws::EC2::CreateCustomerGateway {
  use Moose;
  has BgpAsn => (is => 'ro', isa => 'Int', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has PublicIp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'IpAddress' , required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCustomerGateway');
  has _returns => (isa => 'Aws::EC2::CreateCustomerGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCustomerGatewayResult');  
}
package Aws::EC2::CreateDhcpOptions {
  use Moose;
  has DhcpConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::EC2::DhcpConfiguration]', traits => ['NameInRequest'], request_name => 'DhcpConfiguration' , required => 1);
  has DryRun => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDhcpOptions');
  has _returns => (isa => 'Aws::EC2::CreateDhcpOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDhcpOptionsResult');  
}
package Aws::EC2::CreateImage {
  use Moose;
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::BlockDeviceMapping]', traits => ['NameInRequest'], request_name => 'BlockDeviceMapping' );
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NoReboot => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateImage');
  has _returns => (isa => 'Aws::EC2::CreateImageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateImageResult');  
}
package Aws::EC2::CreateInstanceExportTask {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has ExportToS3Task => (is => 'ro', isa => 'Aws::EC2::ExportToS3TaskSpecification', traits => ['NameInRequest'], request_name => 'ExportToS3' );
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has TargetEnvironment => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstanceExportTask');
  has _returns => (isa => 'Aws::EC2::CreateInstanceExportTaskResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateInstanceExportTaskResult');  
}
package Aws::EC2::CreateInternetGateway {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInternetGateway');
  has _returns => (isa => 'Aws::EC2::CreateInternetGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateInternetGatewayResult');  
}
package Aws::EC2::CreateKeyPair {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKeyPair');
  has _returns => (isa => 'Aws::EC2::CreateKeyPairResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateKeyPairResult');  
}
package Aws::EC2::CreateNetworkAcl {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNetworkAcl');
  has _returns => (isa => 'Aws::EC2::CreateNetworkAclResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateNetworkAclResult');  
}
package Aws::EC2::CreateNetworkAclEntry {
  use Moose;
  has CidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has Egress => (is => 'ro', isa => 'Str', required => 1);
  has IcmpTypeCode => (is => 'ro', isa => 'Aws::EC2::IcmpTypeCode', traits => ['NameInRequest'], request_name => 'Icmp' );
  has NetworkAclId => (is => 'ro', isa => 'Str', required => 1);
  has PortRange => (is => 'ro', isa => 'Aws::EC2::PortRange');
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has RuleAction => (is => 'ro', isa => 'Str', required => 1);
  has RuleNumber => (is => 'ro', isa => 'Int', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNetworkAclEntry');
  has _returns => (isa => 'Aws::EC2::CreateNetworkAclEntryResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateNetworkAclEntryResult');  
}
package Aws::EC2::CreateNetworkInterface {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has Groups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Aws::EC2::PrivateIpAddressSpecification]');
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int');
  has SubnetId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNetworkInterface');
  has _returns => (isa => 'Aws::EC2::CreateNetworkInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateNetworkInterfaceResult');  
}
package Aws::EC2::CreatePlacementGroup {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Strategy => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlacementGroup');
  has _returns => (isa => 'Aws::EC2::CreatePlacementGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePlacementGroupResult');  
}
package Aws::EC2::CreateReservedInstancesListing {
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has PriceSchedules => (is => 'ro', isa => 'ArrayRef[Aws::EC2::PriceScheduleSpecification]', required => 1);
  has ReservedInstancesId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReservedInstancesListing');
  has _returns => (isa => 'Aws::EC2::CreateReservedInstancesListingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateReservedInstancesListingResult');  
}
package Aws::EC2::CreateRoute {
  use Moose;
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has GatewayId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRoute');
  has _returns => (isa => 'Aws::EC2::CreateRouteResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateRouteResult');  
}
package Aws::EC2::CreateRouteTable {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRouteTable');
  has _returns => (isa => 'Aws::EC2::CreateRouteTableResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateRouteTableResult');  
}
package Aws::EC2::CreateSecurityGroup {
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'GroupDescription' , required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has VpcId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSecurityGroup');
  has _returns => (isa => 'Aws::EC2::CreateSecurityGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSecurityGroupResult');  
}
package Aws::EC2::CreateSnapshot {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSnapshot');
  has _returns => (isa => 'Aws::EC2::CreateSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSnapshotResult');  
}
package Aws::EC2::CreateSpotDatafeedSubscription {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has Prefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSpotDatafeedSubscription');
  has _returns => (isa => 'Aws::EC2::CreateSpotDatafeedSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSpotDatafeedSubscriptionResult');  
}
package Aws::EC2::CreateSubnet {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSubnet');
  has _returns => (isa => 'Aws::EC2::CreateSubnetResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSubnetResult');  
}
package Aws::EC2::CreateTags {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ResourceId' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['NameInRequest'], request_name => 'Tag' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTags');
  has _returns => (isa => 'Aws::EC2::CreateTagsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateTagsResult');  
}
package Aws::EC2::CreateVolume {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has Size => (is => 'ro', isa => 'Int');
  has SnapshotId => (is => 'ro', isa => 'Str');
  has VolumeType => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVolume');
  has _returns => (isa => 'Aws::EC2::CreateVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateVolumeResult');  
}
package Aws::EC2::CreateVpc {
  use Moose;
  has CidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceTenancy => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpc');
  has _returns => (isa => 'Aws::EC2::CreateVpcResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateVpcResult');  
}
package Aws::EC2::CreateVpnConnection {
  use Moose;
  has CustomerGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'Aws::EC2::VpnConnectionOptionsSpecification');
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has VpnGatewayId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpnConnection');
  has _returns => (isa => 'Aws::EC2::CreateVpnConnectionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateVpnConnectionResult');  
}
package Aws::EC2::CreateVpnConnectionRoute {
  use Moose;
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has VpnConnectionId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpnConnectionRoute');
  has _returns => (isa => 'Aws::EC2::CreateVpnConnectionRouteResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateVpnConnectionRouteResult');  
}
package Aws::EC2::CreateVpnGateway {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpnGateway');
  has _returns => (isa => 'Aws::EC2::CreateVpnGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateVpnGatewayResult');  
}
package Aws::EC2::DeleteCustomerGateway {
  use Moose;
  has CustomerGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCustomerGateway');
  has _returns => (isa => 'Aws::EC2::DeleteCustomerGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteCustomerGatewayResult');  
}
package Aws::EC2::DeleteDhcpOptions {
  use Moose;
  has DhcpOptionsId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDhcpOptions');
  has _returns => (isa => 'Aws::EC2::DeleteDhcpOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDhcpOptionsResult');  
}
package Aws::EC2::DeleteInternetGateway {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has InternetGatewayId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInternetGateway');
  has _returns => (isa => 'Aws::EC2::DeleteInternetGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteInternetGatewayResult');  
}
package Aws::EC2::DeleteKeyPair {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteKeyPair');
  has _returns => (isa => 'Aws::EC2::DeleteKeyPairResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteKeyPairResult');  
}
package Aws::EC2::DeleteNetworkAcl {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has NetworkAclId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNetworkAcl');
  has _returns => (isa => 'Aws::EC2::DeleteNetworkAclResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteNetworkAclResult');  
}
package Aws::EC2::DeleteNetworkAclEntry {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Egress => (is => 'ro', isa => 'Str', required => 1);
  has NetworkAclId => (is => 'ro', isa => 'Str', required => 1);
  has RuleNumber => (is => 'ro', isa => 'Int', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNetworkAclEntry');
  has _returns => (isa => 'Aws::EC2::DeleteNetworkAclEntryResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteNetworkAclEntryResult');  
}
package Aws::EC2::DeleteNetworkInterface {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNetworkInterface');
  has _returns => (isa => 'Aws::EC2::DeleteNetworkInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteNetworkInterfaceResult');  
}
package Aws::EC2::DeletePlacementGroup {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePlacementGroup');
  has _returns => (isa => 'Aws::EC2::DeletePlacementGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeletePlacementGroupResult');  
}
package Aws::EC2::DeleteRoute {
  use Moose;
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRoute');
  has _returns => (isa => 'Aws::EC2::DeleteRouteResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteRouteResult');  
}
package Aws::EC2::DeleteRouteTable {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRouteTable');
  has _returns => (isa => 'Aws::EC2::DeleteRouteTableResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteRouteTableResult');  
}
package Aws::EC2::DeleteSecurityGroup {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has GroupId => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSecurityGroup');
  has _returns => (isa => 'Aws::EC2::DeleteSecurityGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSecurityGroupResult');  
}
package Aws::EC2::DeleteSnapshot {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSnapshot');
  has _returns => (isa => 'Aws::EC2::DeleteSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSnapshotResult');  
}
package Aws::EC2::DeleteSpotDatafeedSubscription {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSpotDatafeedSubscription');
  has _returns => (isa => 'Aws::EC2::DeleteSpotDatafeedSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSpotDatafeedSubscriptionResult');  
}
package Aws::EC2::DeleteSubnet {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSubnet');
  has _returns => (isa => 'Aws::EC2::DeleteSubnetResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSubnetResult');  
}
package Aws::EC2::DeleteTags {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ResourceId' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['NameInRequest'], request_name => 'Tag' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTags');
  has _returns => (isa => 'Aws::EC2::DeleteTagsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteTagsResult');  
}
package Aws::EC2::DeleteVolume {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVolume');
  has _returns => (isa => 'Aws::EC2::DeleteVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteVolumeResult');  
}
package Aws::EC2::DeleteVpc {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVpc');
  has _returns => (isa => 'Aws::EC2::DeleteVpcResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteVpcResult');  
}
package Aws::EC2::DeleteVpnConnection {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has VpnConnectionId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVpnConnection');
  has _returns => (isa => 'Aws::EC2::DeleteVpnConnectionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteVpnConnectionResult');  
}
package Aws::EC2::DeleteVpnConnectionRoute {
  use Moose;
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has VpnConnectionId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVpnConnectionRoute');
  has _returns => (isa => 'Aws::EC2::DeleteVpnConnectionRouteResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteVpnConnectionRouteResult');  
}
package Aws::EC2::DeleteVpnGateway {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has VpnGatewayId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVpnGateway');
  has _returns => (isa => 'Aws::EC2::DeleteVpnGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteVpnGatewayResult');  
}
package Aws::EC2::DeregisterImage {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterImage');
  has _returns => (isa => 'Aws::EC2::DeregisterImageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeregisterImageResult');  
}
package Aws::EC2::DescribeAccountAttributes {
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'AttributeName' );
  has DryRun => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccountAttributes');
  has _returns => (isa => 'Aws::EC2::DescribeAccountAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAccountAttributesResult');  
}
package Aws::EC2::DescribeAddresses {
  use Moose;
  has AllocationIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'AllocationId' );
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has PublicIps => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'PublicIp' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAddresses');
  has _returns => (isa => 'Aws::EC2::DescribeAddressesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAddressesResult');  
}
package Aws::EC2::DescribeAvailabilityZones {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has ZoneNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ZoneName' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAvailabilityZones');
  has _returns => (isa => 'Aws::EC2::DescribeAvailabilityZonesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAvailabilityZonesResult');  
}
package Aws::EC2::DescribeBundleTasks {
  use Moose;
  has BundleIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'BundleId' );
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBundleTasks');
  has _returns => (isa => 'Aws::EC2::DescribeBundleTasksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeBundleTasksResult');  
}
package Aws::EC2::DescribeConversionTasks {
  use Moose;
  has ConversionTaskIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ConversionTaskId' );
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConversionTasks');
  has _returns => (isa => 'Aws::EC2::DescribeConversionTasksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeConversionTasksResult');  
}
package Aws::EC2::DescribeCustomerGateways {
  use Moose;
  has CustomerGatewayIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'CustomerGatewayId' );
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCustomerGateways');
  has _returns => (isa => 'Aws::EC2::DescribeCustomerGatewaysResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCustomerGatewaysResult');  
}
package Aws::EC2::DescribeDhcpOptions {
  use Moose;
  has DhcpOptionsIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'DhcpOptionsId' );
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDhcpOptions');
  has _returns => (isa => 'Aws::EC2::DescribeDhcpOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDhcpOptionsResult');  
}
package Aws::EC2::DescribeExportTasks {
  use Moose;
  has ExportTaskIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ExportTaskId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeExportTasks');
  has _returns => (isa => 'Aws::EC2::DescribeExportTasksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeExportTasksResult');  
}
package Aws::EC2::DescribeImageAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeImageAttribute');
  has _returns => (isa => 'Aws::EC2::DescribeImageAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeImageAttributeResult');  
}
package Aws::EC2::DescribeImages {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has ExecutableUsers => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ExecutableBy' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has ImageIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ImageId' );
  has Owners => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'Owner' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeImages');
  has _returns => (isa => 'Aws::EC2::DescribeImagesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeImagesResult');  
}
package Aws::EC2::DescribeInstanceAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceAttribute');
  has _returns => (isa => 'Aws::EC2::DescribeInstanceAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInstanceAttributeResult');  
}
package Aws::EC2::DescribeInstanceStatus {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has IncludeAllInstances => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceId' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceStatus');
  has _returns => (isa => 'Aws::EC2::DescribeInstanceStatusResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInstanceStatusResult');  
}
package Aws::EC2::DescribeInstances {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceId' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstances');
  has _returns => (isa => 'Aws::EC2::DescribeInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInstancesResult');  
}
package Aws::EC2::DescribeInternetGateways {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has InternetGatewayIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InternetGatewayId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInternetGateways');
  has _returns => (isa => 'Aws::EC2::DescribeInternetGatewaysResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInternetGatewaysResult');  
}
package Aws::EC2::DescribeKeyPairs {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has KeyNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'KeyName' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeKeyPairs');
  has _returns => (isa => 'Aws::EC2::DescribeKeyPairsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeKeyPairsResult');  
}
package Aws::EC2::DescribeNetworkAcls {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has NetworkAclIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'NetworkAclId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNetworkAcls');
  has _returns => (isa => 'Aws::EC2::DescribeNetworkAclsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeNetworkAclsResult');  
}
package Aws::EC2::DescribeNetworkInterfaceAttribute {
  use Moose;
  has Attachment => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has Groups => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'GroupSet' );
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has SourceDestCheck => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNetworkInterfaceAttribute');
  has _returns => (isa => 'Aws::EC2::DescribeNetworkInterfaceAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeNetworkInterfaceAttributeResult');  
}
package Aws::EC2::DescribeNetworkInterfaces {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has NetworkInterfaceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'NetworkInterfaceId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNetworkInterfaces');
  has _returns => (isa => 'Aws::EC2::DescribeNetworkInterfacesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeNetworkInterfacesResult');  
}
package Aws::EC2::DescribePlacementGroups {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has GroupNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'GroupName' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePlacementGroups');
  has _returns => (isa => 'Aws::EC2::DescribePlacementGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribePlacementGroupsResult');  
}
package Aws::EC2::DescribeRegions {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has RegionNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'RegionName' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRegions');
  has _returns => (isa => 'Aws::EC2::DescribeRegionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeRegionsResult');  
}
package Aws::EC2::DescribeReservedInstances {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has OfferingType => (is => 'ro', isa => 'Str');
  has ReservedInstancesIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ReservedInstancesId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstances');
  has _returns => (isa => 'Aws::EC2::DescribeReservedInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesResult');  
}
package Aws::EC2::DescribeReservedInstancesListings {
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]');
  has ReservedInstancesId => (is => 'ro', isa => 'Str');
  has ReservedInstancesListingId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesListings');
  has _returns => (isa => 'Aws::EC2::DescribeReservedInstancesListingsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesListingsResult');  
}
package Aws::EC2::DescribeReservedInstancesModifications {
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has NextToken => (is => 'ro', isa => 'Str');
  has ReservedInstancesModificationIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ReservedInstancesModificationId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesModifications');
  has _returns => (isa => 'Aws::EC2::DescribeReservedInstancesModificationsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesModificationsResult');  
}
package Aws::EC2::DescribeReservedInstancesOfferings {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has IncludeMarketplace => (is => 'ro', isa => 'Str');
  has InstanceTenancy => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has MaxDuration => (is => 'ro', isa => 'Num');
  has MaxInstanceCount => (is => 'ro', isa => 'Int');
  has MaxResults => (is => 'ro', isa => 'Int');
  has MinDuration => (is => 'ro', isa => 'Num');
  has NextToken => (is => 'ro', isa => 'Str');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has ReservedInstancesOfferingIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ReservedInstancesOfferingId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesOfferings');
  has _returns => (isa => 'Aws::EC2::DescribeReservedInstancesOfferingsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesOfferingsResult');  
}
package Aws::EC2::DescribeRouteTables {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has RouteTableIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'RouteTableId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRouteTables');
  has _returns => (isa => 'Aws::EC2::DescribeRouteTablesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeRouteTablesResult');  
}
package Aws::EC2::DescribeSecurityGroups {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has GroupIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'GroupId' );
  has GroupNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'GroupName' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSecurityGroups');
  has _returns => (isa => 'Aws::EC2::DescribeSecurityGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSecurityGroupsResult');  
}
package Aws::EC2::DescribeSnapshotAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSnapshotAttribute');
  has _returns => (isa => 'Aws::EC2::DescribeSnapshotAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSnapshotAttributeResult');  
}
package Aws::EC2::DescribeSnapshots {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has OwnerIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'Owner' );
  has RestorableByUserIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'RestorableBy' );
  has SnapshotIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SnapshotId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSnapshots');
  has _returns => (isa => 'Aws::EC2::DescribeSnapshotsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSnapshotsResult');  
}
package Aws::EC2::DescribeSpotDatafeedSubscription {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSpotDatafeedSubscription');
  has _returns => (isa => 'Aws::EC2::DescribeSpotDatafeedSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSpotDatafeedSubscriptionResult');  
}
package Aws::EC2::DescribeSpotInstanceRequests {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has SpotInstanceRequestIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SpotInstanceRequestId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSpotInstanceRequests');
  has _returns => (isa => 'Aws::EC2::DescribeSpotInstanceRequestsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSpotInstanceRequestsResult');  
}
package Aws::EC2::DescribeSpotPriceHistory {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has InstanceTypes => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceType' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ProductDescriptions => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ProductDescription' );
  has StartTime => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSpotPriceHistory');
  has _returns => (isa => 'Aws::EC2::DescribeSpotPriceHistoryResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSpotPriceHistoryResult');  
}
package Aws::EC2::DescribeSubnets {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SubnetId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSubnets');
  has _returns => (isa => 'Aws::EC2::DescribeSubnetsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSubnetsResult');  
}
package Aws::EC2::DescribeTags {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTags');
  has _returns => (isa => 'Aws::EC2::DescribeTagsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTagsResult');  
}
package Aws::EC2::DescribeVolumeAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVolumeAttribute');
  has _returns => (isa => 'Aws::EC2::DescribeVolumeAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVolumeAttributeResult');  
}
package Aws::EC2::DescribeVolumeStatus {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has VolumeIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'VolumeId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVolumeStatus');
  has _returns => (isa => 'Aws::EC2::DescribeVolumeStatusResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVolumeStatusResult');  
}
package Aws::EC2::DescribeVolumes {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has VolumeIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'VolumeId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVolumes');
  has _returns => (isa => 'Aws::EC2::DescribeVolumesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVolumesResult');  
}
package Aws::EC2::DescribeVpcAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpcAttribute');
  has _returns => (isa => 'Aws::EC2::DescribeVpcAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVpcAttributeResult');  
}
package Aws::EC2::DescribeVpcs {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has VpcIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'VpcId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpcs');
  has _returns => (isa => 'Aws::EC2::DescribeVpcsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVpcsResult');  
}
package Aws::EC2::DescribeVpnConnections {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has VpnConnectionIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'VpnConnectionId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpnConnections');
  has _returns => (isa => 'Aws::EC2::DescribeVpnConnectionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVpnConnectionsResult');  
}
package Aws::EC2::DescribeVpnGateways {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has VpnGatewayIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'VpnGatewayId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpnGateways');
  has _returns => (isa => 'Aws::EC2::DescribeVpnGatewaysResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVpnGatewaysResult');  
}
package Aws::EC2::DetachInternetGateway {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has InternetGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DetachInternetGateway');
  has _returns => (isa => 'Aws::EC2::DetachInternetGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DetachInternetGatewayResult');  
}
package Aws::EC2::DetachNetworkInterface {
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has Force => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DetachNetworkInterface');
  has _returns => (isa => 'Aws::EC2::DetachNetworkInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DetachNetworkInterfaceResult');  
}
package Aws::EC2::DetachVolume {
  use Moose;
  has Device => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has Force => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DetachVolume');
  has _returns => (isa => 'Aws::EC2::DetachVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DetachVolumeResult');  
}
package Aws::EC2::DetachVpnGateway {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);
  has VpnGatewayId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DetachVpnGateway');
  has _returns => (isa => 'Aws::EC2::DetachVpnGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DetachVpnGatewayResult');  
}
package Aws::EC2::DisableVgwRoutePropagation {
  use Moose;
  has GatewayId => (is => 'ro', isa => 'Str', required => 1);
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisableVgwRoutePropagation');
  has _returns => (isa => 'Aws::EC2::DisableVgwRoutePropagationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisableVgwRoutePropagationResult');  
}
package Aws::EC2::DisassociateAddress {
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has PublicIp => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateAddress');
  has _returns => (isa => 'Aws::EC2::DisassociateAddressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisassociateAddressResult');  
}
package Aws::EC2::DisassociateRouteTable {
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateRouteTable');
  has _returns => (isa => 'Aws::EC2::DisassociateRouteTableResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisassociateRouteTableResult');  
}
package Aws::EC2::EnableVgwRoutePropagation {
  use Moose;
  has GatewayId => (is => 'ro', isa => 'Str', required => 1);
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'EnableVgwRoutePropagation');
  has _returns => (isa => 'Aws::EC2::EnableVgwRoutePropagationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EnableVgwRoutePropagationResult');  
}
package Aws::EC2::EnableVolumeIO {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'EnableVolumeIO');
  has _returns => (isa => 'Aws::EC2::EnableVolumeIOResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EnableVolumeIOResult');  
}
package Aws::EC2::GetConsoleOutput {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetConsoleOutput');
  has _returns => (isa => 'Aws::EC2::GetConsoleOutputResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetConsoleOutputResult');  
}
package Aws::EC2::GetPasswordData {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetPasswordData');
  has _returns => (isa => 'Aws::EC2::GetPasswordDataResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetPasswordDataResult');  
}
package Aws::EC2::ImportInstance {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DiskImages => (is => 'ro', isa => 'ArrayRef[Aws::EC2::DiskImage]', traits => ['NameInRequest'], request_name => 'DiskImage' );
  has DryRun => (is => 'ro', isa => 'Str');
  has LaunchSpecification => (is => 'ro', isa => 'Aws::EC2::ImportInstanceLaunchSpecification');
  has Platform => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ImportInstance');
  has _returns => (isa => 'Aws::EC2::ImportInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ImportInstanceResult');  
}
package Aws::EC2::ImportKeyPair {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str', required => 1);
  has PublicKeyMaterial => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ImportKeyPair');
  has _returns => (isa => 'Aws::EC2::ImportKeyPairResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ImportKeyPairResult');  
}
package Aws::EC2::ImportVolume {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has Image => (is => 'ro', isa => 'Aws::EC2::DiskImageDetail');
  has Volume => (is => 'ro', isa => 'Aws::EC2::VolumeDetail');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ImportVolume');
  has _returns => (isa => 'Aws::EC2::ImportVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ImportVolumeResult');  
}
package Aws::EC2::ModifyImageAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Aws::EC2::AttributeValue');
  has DryRun => (is => 'ro', isa => 'Str');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);
  has LaunchPermission => (is => 'ro', isa => 'Aws::EC2::LaunchPermissionModifications');
  has OperationType => (is => 'ro', isa => 'Str');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ProductCode' );
  has UserGroups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'UserGroup' );
  has UserIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'UserId' );
  has Value => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyImageAttribute');
  has _returns => (isa => 'Aws::EC2::ModifyImageAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyImageAttributeResult');  
}
package Aws::EC2::ModifyInstanceAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceBlockDeviceMappingSpecification]', traits => ['NameInRequest'], request_name => 'BlockDeviceMapping' );
  has DisableApiTermination => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue');
  has DryRun => (is => 'ro', isa => 'Str');
  has EbsOptimized => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue');
  has Groups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'GroupId' );
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Aws::EC2::AttributeValue');
  has InstanceType => (is => 'ro', isa => 'Aws::EC2::AttributeValue');
  has Kernel => (is => 'ro', isa => 'Aws::EC2::AttributeValue');
  has Ramdisk => (is => 'ro', isa => 'Aws::EC2::AttributeValue');
  has SourceDestCheck => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue');
  has SriovNetSupport => (is => 'ro', isa => 'Aws::EC2::AttributeValue');
  has UserData => (is => 'ro', isa => 'Aws::EC2::AttributeValue');
  has Value => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstanceAttribute');
  has _returns => (isa => 'Aws::EC2::ModifyInstanceAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyInstanceAttributeResult');  
}
package Aws::EC2::ModifyNetworkInterfaceAttribute {
  use Moose;
  has Attachment => (is => 'ro', isa => 'Aws::EC2::NetworkInterfaceAttachmentChanges');
  has Description => (is => 'ro', isa => 'Aws::EC2::AttributeValue');
  has DryRun => (is => 'ro', isa => 'Str');
  has Groups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has SourceDestCheck => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyNetworkInterfaceAttribute');
  has _returns => (isa => 'Aws::EC2::ModifyNetworkInterfaceAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyNetworkInterfaceAttributeResult');  
}
package Aws::EC2::ModifyReservedInstances {
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has ReservedInstancesIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ReservedInstancesId' , required => 1);
  has TargetConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ReservedInstancesConfiguration]', traits => ['NameInRequest'], request_name => 'ReservedInstancesConfigurationSetItemType' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyReservedInstances');
  has _returns => (isa => 'Aws::EC2::ModifyReservedInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyReservedInstancesResult');  
}
package Aws::EC2::ModifySnapshotAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str');
  has CreateVolumePermission => (is => 'ro', isa => 'Aws::EC2::CreateVolumePermissionModifications');
  has DryRun => (is => 'ro', isa => 'Str');
  has GroupNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'UserGroup' );
  has OperationType => (is => 'ro', isa => 'Str');
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);
  has UserIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'UserId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifySnapshotAttribute');
  has _returns => (isa => 'Aws::EC2::ModifySnapshotAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifySnapshotAttributeResult');  
}
package Aws::EC2::ModifyVolumeAttribute {
  use Moose;
  has AutoEnableIO => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVolumeAttribute');
  has _returns => (isa => 'Aws::EC2::ModifyVolumeAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyVolumeAttributeResult');  
}
package Aws::EC2::ModifyVpcAttribute {
  use Moose;
  has EnableDnsHostnames => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue');
  has EnableDnsSupport => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVpcAttribute');
  has _returns => (isa => 'Aws::EC2::ModifyVpcAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyVpcAttributeResult');  
}
package Aws::EC2::MonitorInstances {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceId' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'MonitorInstances');
  has _returns => (isa => 'Aws::EC2::MonitorInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'MonitorInstancesResult');  
}
package Aws::EC2::PurchaseReservedInstancesOffering {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has LimitPrice => (is => 'ro', isa => 'Aws::EC2::ReservedInstanceLimitPrice');
  has ReservedInstancesOfferingId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseReservedInstancesOffering');
  has _returns => (isa => 'Aws::EC2::PurchaseReservedInstancesOfferingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PurchaseReservedInstancesOfferingResult');  
}
package Aws::EC2::RebootInstances {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceId' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RebootInstances');
  has _returns => (isa => 'Aws::EC2::RebootInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RebootInstancesResult');  
}
package Aws::EC2::RegisterImage {
  use Moose;
  has Architecture => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::BlockDeviceMapping]', traits => ['NameInRequest'], request_name => 'BlockDeviceMapping' );
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has ImageLocation => (is => 'ro', isa => 'Str');
  has KernelId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RamdiskId => (is => 'ro', isa => 'Str');
  has RootDeviceName => (is => 'ro', isa => 'Str');
  has SriovNetSupport => (is => 'ro', isa => 'Str');
  has VirtualizationType => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterImage');
  has _returns => (isa => 'Aws::EC2::RegisterImageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterImageResult');  
}
package Aws::EC2::ReleaseAddress {
  use Moose;
  has AllocationId => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has PublicIp => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ReleaseAddress');
  has _returns => (isa => 'Aws::EC2::ReleaseAddressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ReleaseAddressResult');  
}
package Aws::EC2::ReplaceNetworkAclAssociation {
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has NetworkAclId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceNetworkAclAssociation');
  has _returns => (isa => 'Aws::EC2::ReplaceNetworkAclAssociationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ReplaceNetworkAclAssociationResult');  
}
package Aws::EC2::ReplaceNetworkAclEntry {
  use Moose;
  has CidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has Egress => (is => 'ro', isa => 'Str', required => 1);
  has IcmpTypeCode => (is => 'ro', isa => 'Aws::EC2::IcmpTypeCode', traits => ['NameInRequest'], request_name => 'Icmp' );
  has NetworkAclId => (is => 'ro', isa => 'Str', required => 1);
  has PortRange => (is => 'ro', isa => 'Aws::EC2::PortRange');
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has RuleAction => (is => 'ro', isa => 'Str', required => 1);
  has RuleNumber => (is => 'ro', isa => 'Int', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceNetworkAclEntry');
  has _returns => (isa => 'Aws::EC2::ReplaceNetworkAclEntryResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ReplaceNetworkAclEntryResult');  
}
package Aws::EC2::ReplaceRoute {
  use Moose;
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has GatewayId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceRoute');
  has _returns => (isa => 'Aws::EC2::ReplaceRouteResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ReplaceRouteResult');  
}
package Aws::EC2::ReplaceRouteTableAssociation {
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceRouteTableAssociation');
  has _returns => (isa => 'Aws::EC2::ReplaceRouteTableAssociationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ReplaceRouteTableAssociationResult');  
}
package Aws::EC2::ReportInstanceStatus {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has Instances => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceId' );
  has ReasonCodes => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ReasonCode' );
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ReportInstanceStatus');
  has _returns => (isa => 'Aws::EC2::ReportInstanceStatusResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ReportInstanceStatusResult');  
}
package Aws::EC2::RequestSpotInstances {
  use Moose;
  has AvailabilityZoneGroup => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has LaunchGroup => (is => 'ro', isa => 'Str');
  has LaunchSpecification => (is => 'ro', isa => 'Aws::EC2::SpotLaunchSpecification');
  has SpotPrice => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str');
  has ValidFrom => (is => 'ro', isa => 'Str');
  has ValidUntil => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RequestSpotInstances');
  has _returns => (isa => 'Aws::EC2::RequestSpotInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RequestSpotInstancesResult');  
}
package Aws::EC2::ResetImageAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResetImageAttribute');
  has _returns => (isa => 'Aws::EC2::ResetImageAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResetImageAttributeResult');  
}
package Aws::EC2::ResetInstanceAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResetInstanceAttribute');
  has _returns => (isa => 'Aws::EC2::ResetInstanceAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResetInstanceAttributeResult');  
}
package Aws::EC2::ResetNetworkInterfaceAttribute {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has SourceDestCheck => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResetNetworkInterfaceAttribute');
  has _returns => (isa => 'Aws::EC2::ResetNetworkInterfaceAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResetNetworkInterfaceAttributeResult');  
}
package Aws::EC2::ResetSnapshotAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResetSnapshotAttribute');
  has _returns => (isa => 'Aws::EC2::ResetSnapshotAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResetSnapshotAttributeResult');  
}
package Aws::EC2::RevokeSecurityGroupEgress {
  use Moose;
  has CidrIp => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has FromPort => (is => 'ro', isa => 'Int');
  has GroupId => (is => 'ro', isa => 'Str', required => 1);
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[Aws::EC2::IpPermission]');
  has IpProtocol => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupName => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupOwnerId => (is => 'ro', isa => 'Str');
  has ToPort => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeSecurityGroupEgress');
  has _returns => (isa => 'Aws::EC2::RevokeSecurityGroupEgressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RevokeSecurityGroupEgressResult');  
}
package Aws::EC2::RevokeSecurityGroupIngress {
  use Moose;
  has CidrIp => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has FromPort => (is => 'ro', isa => 'Int');
  has GroupId => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[Aws::EC2::IpPermission]');
  has IpProtocol => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupName => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupOwnerId => (is => 'ro', isa => 'Str');
  has ToPort => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeSecurityGroupIngress');
  has _returns => (isa => 'Aws::EC2::RevokeSecurityGroupIngressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RevokeSecurityGroupIngressResult');  
}
package Aws::EC2::RunInstances {
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::BlockDeviceMapping]', traits => ['NameInRequest'], request_name => 'BlockDeviceMapping' );
  has ClientToken => (is => 'ro', isa => 'Str');
  has DisableApiTermination => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has EbsOptimized => (is => 'ro', isa => 'Str');
  has IamInstanceProfile => (is => 'ro', isa => 'Aws::EC2::IamInstanceProfileSpecification');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has KernelId => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str');
  has MaxCount => (is => 'ro', isa => 'Int', required => 1);
  has MinCount => (is => 'ro', isa => 'Int', required => 1);
  has Monitoring => (is => 'ro', isa => 'Aws::EC2::RunInstancesMonitoringEnabled');
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceNetworkInterfaceSpecification]', traits => ['NameInRequest'], request_name => 'NetworkInterface' );
  has Placement => (is => 'ro', isa => 'Aws::EC2::Placement');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has RamdiskId => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SecurityGroup' );
  has SubnetId => (is => 'ro', isa => 'Str');
  has UserData => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RunInstances');
  has _returns => (isa => 'Aws::EC2::RunInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RunInstancesResult');  
}
package Aws::EC2::StartInstances {
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceId' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StartInstances');
  has _returns => (isa => 'Aws::EC2::StartInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StartInstancesResult');  
}
package Aws::EC2::StopInstances {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has Force => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceId' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StopInstances');
  has _returns => (isa => 'Aws::EC2::StopInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StopInstancesResult');  
}
package Aws::EC2::TerminateInstances {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceId' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateInstances');
  has _returns => (isa => 'Aws::EC2::TerminateInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'TerminateInstancesResult');  
}
package Aws::EC2::UnassignPrivateIpAddresses {
  use Moose;
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'PrivateIpAddress' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UnassignPrivateIpAddresses');
  has _returns => (isa => 'Aws::EC2::UnassignPrivateIpAddressesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UnassignPrivateIpAddressesResult');  
}
package Aws::EC2::UnmonitorInstances {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceId' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UnmonitorInstances');
  has _returns => (isa => 'Aws::EC2::UnmonitorInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UnmonitorInstancesResult');  
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
  has DeleteOnTermination => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
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
  has DeleteOnTermination => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
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
  has version => (is => 'ro', isa => 'Str', default => '2013-10-15');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '1');
  with ('Net::AWS::Caller', 'AWS::API::RegionalEndpointCaller', 'Net::AWS::V2Signature', 'Net::AWS::QueryCaller', 'Net::AWS::XMLResponse');

  
  sub AllocateAddress {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::AllocateAddress', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::AllocateAddressResult->from_result($result);
    return $o_result;
  }
  sub AssignPrivateIpAddresses {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::AssignPrivateIpAddresses', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub AssociateAddress {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::AssociateAddress', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::AssociateAddressResult->from_result($result);
    return $o_result;
  }
  sub AssociateDhcpOptions {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::AssociateDhcpOptions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub AssociateRouteTable {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::AssociateRouteTable', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::AssociateRouteTableResult->from_result($result);
    return $o_result;
  }
  sub AttachInternetGateway {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::AttachInternetGateway', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub AttachNetworkInterface {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::AttachNetworkInterface', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::AttachNetworkInterfaceResult->from_result($result);
    return $o_result;
  }
  sub AttachVolume {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::AttachVolume', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::AttachVolumeResult->from_result($result);
    return $o_result;
  }
  sub AttachVpnGateway {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::AttachVpnGateway', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::AttachVpnGatewayResult->from_result($result);
    return $o_result;
  }
  sub AuthorizeSecurityGroupEgress {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::AuthorizeSecurityGroupEgress', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub AuthorizeSecurityGroupIngress {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::AuthorizeSecurityGroupIngress', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub BundleInstance {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::BundleInstance', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::BundleInstanceResult->from_result($result);
    return $o_result;
  }
  sub CancelBundleTask {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CancelBundleTask', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CancelBundleTaskResult->from_result($result);
    return $o_result;
  }
  sub CancelConversionTask {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CancelConversionTask', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub CancelExportTask {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CancelExportTask', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub CancelReservedInstancesListing {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CancelReservedInstancesListing', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CancelReservedInstancesListingResult->from_result($result);
    return $o_result;
  }
  sub CancelSpotInstanceRequests {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CancelSpotInstanceRequests', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CancelSpotInstanceRequestsResult->from_result($result);
    return $o_result;
  }
  sub ConfirmProductInstance {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::ConfirmProductInstance', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::ConfirmProductInstanceResult->from_result($result);
    return $o_result;
  }
  sub CopyImage {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CopyImage', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CopyImageResult->from_result($result);
    return $o_result;
  }
  sub CopySnapshot {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CopySnapshot', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CopySnapshotResult->from_result($result);
    return $o_result;
  }
  sub CreateCustomerGateway {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreateCustomerGateway', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CreateCustomerGatewayResult->from_result($result);
    return $o_result;
  }
  sub CreateDhcpOptions {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreateDhcpOptions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CreateDhcpOptionsResult->from_result($result);
    return $o_result;
  }
  sub CreateImage {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreateImage', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CreateImageResult->from_result($result);
    return $o_result;
  }
  sub CreateInstanceExportTask {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreateInstanceExportTask', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CreateInstanceExportTaskResult->from_result($result);
    return $o_result;
  }
  sub CreateInternetGateway {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreateInternetGateway', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CreateInternetGatewayResult->from_result($result);
    return $o_result;
  }
  sub CreateKeyPair {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreateKeyPair', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CreateKeyPairResult->from_result($result);
    return $o_result;
  }
  sub CreateNetworkAcl {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreateNetworkAcl', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CreateNetworkAclResult->from_result($result);
    return $o_result;
  }
  sub CreateNetworkAclEntry {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreateNetworkAclEntry', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub CreateNetworkInterface {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreateNetworkInterface', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CreateNetworkInterfaceResult->from_result($result);
    return $o_result;
  }
  sub CreatePlacementGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreatePlacementGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub CreateReservedInstancesListing {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreateReservedInstancesListing', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CreateReservedInstancesListingResult->from_result($result);
    return $o_result;
  }
  sub CreateRoute {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreateRoute', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub CreateRouteTable {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreateRouteTable', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CreateRouteTableResult->from_result($result);
    return $o_result;
  }
  sub CreateSecurityGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreateSecurityGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CreateSecurityGroupResult->from_result($result);
    return $o_result;
  }
  sub CreateSnapshot {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreateSnapshot', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CreateSnapshotResult->from_result($result);
    return $o_result;
  }
  sub CreateSpotDatafeedSubscription {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreateSpotDatafeedSubscription', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CreateSpotDatafeedSubscriptionResult->from_result($result);
    return $o_result;
  }
  sub CreateSubnet {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreateSubnet', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CreateSubnetResult->from_result($result);
    return $o_result;
  }
  sub CreateTags {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreateTags', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub CreateVolume {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreateVolume', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CreateVolumeResult->from_result($result);
    return $o_result;
  }
  sub CreateVpc {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreateVpc', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CreateVpcResult->from_result($result);
    return $o_result;
  }
  sub CreateVpnConnection {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreateVpnConnection', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CreateVpnConnectionResult->from_result($result);
    return $o_result;
  }
  sub CreateVpnConnectionRoute {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreateVpnConnectionRoute', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub CreateVpnGateway {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::CreateVpnGateway', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::CreateVpnGatewayResult->from_result($result);
    return $o_result;
  }
  sub DeleteCustomerGateway {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DeleteCustomerGateway', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteDhcpOptions {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DeleteDhcpOptions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteInternetGateway {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DeleteInternetGateway', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteKeyPair {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DeleteKeyPair', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteNetworkAcl {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DeleteNetworkAcl', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteNetworkAclEntry {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DeleteNetworkAclEntry', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteNetworkInterface {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DeleteNetworkInterface', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeletePlacementGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DeletePlacementGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteRoute {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DeleteRoute', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteRouteTable {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DeleteRouteTable', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteSecurityGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DeleteSecurityGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteSnapshot {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DeleteSnapshot', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteSpotDatafeedSubscription {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DeleteSpotDatafeedSubscription', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteSubnet {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DeleteSubnet', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteTags {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DeleteTags', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteVolume {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DeleteVolume', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteVpc {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DeleteVpc', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteVpnConnection {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DeleteVpnConnection', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteVpnConnectionRoute {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DeleteVpnConnectionRoute', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteVpnGateway {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DeleteVpnGateway', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeregisterImage {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DeregisterImage', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DescribeAccountAttributes {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeAccountAttributes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeAccountAttributesResult->from_result($result);
    return $o_result;
  }
  sub DescribeAddresses {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeAddresses', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeAddressesResult->from_result($result);
    return $o_result;
  }
  sub DescribeAvailabilityZones {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeAvailabilityZones', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeAvailabilityZonesResult->from_result($result);
    return $o_result;
  }
  sub DescribeBundleTasks {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeBundleTasks', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeBundleTasksResult->from_result($result);
    return $o_result;
  }
  sub DescribeConversionTasks {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeConversionTasks', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeConversionTasksResult->from_result($result);
    return $o_result;
  }
  sub DescribeCustomerGateways {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeCustomerGateways', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeCustomerGatewaysResult->from_result($result);
    return $o_result;
  }
  sub DescribeDhcpOptions {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeDhcpOptions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeDhcpOptionsResult->from_result($result);
    return $o_result;
  }
  sub DescribeExportTasks {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeExportTasks', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeExportTasksResult->from_result($result);
    return $o_result;
  }
  sub DescribeImageAttribute {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeImageAttribute', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeImageAttributeResult->from_result($result);
    return $o_result;
  }
  sub DescribeImages {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeImages', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeImagesResult->from_result($result);
    return $o_result;
  }
  sub DescribeInstanceAttribute {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeInstanceAttribute', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeInstanceAttributeResult->from_result($result);
    return $o_result;
  }
  sub DescribeInstances {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeInstances', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeInstancesResult->from_result($result);
    return $o_result;
  }
  sub DescribeInstanceStatus {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeInstanceStatus', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeInstanceStatusResult->from_result($result);
    return $o_result;
  }
  sub DescribeInternetGateways {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeInternetGateways', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeInternetGatewaysResult->from_result($result);
    return $o_result;
  }
  sub DescribeKeyPairs {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeKeyPairs', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeKeyPairsResult->from_result($result);
    return $o_result;
  }
  sub DescribeNetworkAcls {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeNetworkAcls', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeNetworkAclsResult->from_result($result);
    return $o_result;
  }
  sub DescribeNetworkInterfaceAttribute {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeNetworkInterfaceAttribute', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeNetworkInterfaceAttributeResult->from_result($result);
    return $o_result;
  }
  sub DescribeNetworkInterfaces {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeNetworkInterfaces', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeNetworkInterfacesResult->from_result($result);
    return $o_result;
  }
  sub DescribePlacementGroups {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribePlacementGroups', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribePlacementGroupsResult->from_result($result);
    return $o_result;
  }
  sub DescribeRegions {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeRegions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeRegionsResult->from_result($result);
    return $o_result;
  }
  sub DescribeReservedInstances {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeReservedInstances', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeReservedInstancesResult->from_result($result);
    return $o_result;
  }
  sub DescribeReservedInstancesListings {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeReservedInstancesListings', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeReservedInstancesListingsResult->from_result($result);
    return $o_result;
  }
  sub DescribeReservedInstancesModifications {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeReservedInstancesModifications', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeReservedInstancesModificationsResult->from_result($result);
    return $o_result;
  }
  sub DescribeReservedInstancesOfferings {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeReservedInstancesOfferings', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeReservedInstancesOfferingsResult->from_result($result);
    return $o_result;
  }
  sub DescribeRouteTables {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeRouteTables', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeRouteTablesResult->from_result($result);
    return $o_result;
  }
  sub DescribeSecurityGroups {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeSecurityGroups', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeSecurityGroupsResult->from_result($result);
    return $o_result;
  }
  sub DescribeSnapshotAttribute {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeSnapshotAttribute', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeSnapshotAttributeResult->from_result($result);
    return $o_result;
  }
  sub DescribeSnapshots {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeSnapshots', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeSnapshotsResult->from_result($result);
    return $o_result;
  }
  sub DescribeSpotDatafeedSubscription {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeSpotDatafeedSubscription', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeSpotDatafeedSubscriptionResult->from_result($result);
    return $o_result;
  }
  sub DescribeSpotInstanceRequests {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeSpotInstanceRequests', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeSpotInstanceRequestsResult->from_result($result);
    return $o_result;
  }
  sub DescribeSpotPriceHistory {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeSpotPriceHistory', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeSpotPriceHistoryResult->from_result($result);
    return $o_result;
  }
  sub DescribeSubnets {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeSubnets', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeSubnetsResult->from_result($result);
    return $o_result;
  }
  sub DescribeTags {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeTags', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeTagsResult->from_result($result);
    return $o_result;
  }
  sub DescribeVolumeAttribute {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeVolumeAttribute', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeVolumeAttributeResult->from_result($result);
    return $o_result;
  }
  sub DescribeVolumes {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeVolumes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeVolumesResult->from_result($result);
    return $o_result;
  }
  sub DescribeVolumeStatus {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeVolumeStatus', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeVolumeStatusResult->from_result($result);
    return $o_result;
  }
  sub DescribeVpcAttribute {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeVpcAttribute', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeVpcAttributeResult->from_result($result);
    return $o_result;
  }
  sub DescribeVpcs {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeVpcs', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeVpcsResult->from_result($result);
    return $o_result;
  }
  sub DescribeVpnConnections {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeVpnConnections', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeVpnConnectionsResult->from_result($result);
    return $o_result;
  }
  sub DescribeVpnGateways {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DescribeVpnGateways', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DescribeVpnGatewaysResult->from_result($result);
    return $o_result;
  }
  sub DetachInternetGateway {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DetachInternetGateway', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DetachNetworkInterface {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DetachNetworkInterface', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DetachVolume {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DetachVolume', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::DetachVolumeResult->from_result($result);
    return $o_result;
  }
  sub DetachVpnGateway {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DetachVpnGateway', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DisableVgwRoutePropagation {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DisableVgwRoutePropagation', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DisassociateAddress {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DisassociateAddress', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DisassociateRouteTable {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::DisassociateRouteTable', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub EnableVgwRoutePropagation {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::EnableVgwRoutePropagation', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub EnableVolumeIO {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::EnableVolumeIO', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub GetConsoleOutput {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::GetConsoleOutput', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::GetConsoleOutputResult->from_result($result);
    return $o_result;
  }
  sub GetPasswordData {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::GetPasswordData', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::GetPasswordDataResult->from_result($result);
    return $o_result;
  }
  sub ImportInstance {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::ImportInstance', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::ImportInstanceResult->from_result($result);
    return $o_result;
  }
  sub ImportKeyPair {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::ImportKeyPair', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::ImportKeyPairResult->from_result($result);
    return $o_result;
  }
  sub ImportVolume {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::ImportVolume', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::ImportVolumeResult->from_result($result);
    return $o_result;
  }
  sub ModifyImageAttribute {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::ModifyImageAttribute', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub ModifyInstanceAttribute {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::ModifyInstanceAttribute', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub ModifyNetworkInterfaceAttribute {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::ModifyNetworkInterfaceAttribute', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub ModifyReservedInstances {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::ModifyReservedInstances', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::ModifyReservedInstancesResult->from_result($result);
    return $o_result;
  }
  sub ModifySnapshotAttribute {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::ModifySnapshotAttribute', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub ModifyVolumeAttribute {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::ModifyVolumeAttribute', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub ModifyVpcAttribute {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::ModifyVpcAttribute', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub MonitorInstances {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::MonitorInstances', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::MonitorInstancesResult->from_result($result);
    return $o_result;
  }
  sub PurchaseReservedInstancesOffering {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::PurchaseReservedInstancesOffering', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::PurchaseReservedInstancesOfferingResult->from_result($result);
    return $o_result;
  }
  sub RebootInstances {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::RebootInstances', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub RegisterImage {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::RegisterImage', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::RegisterImageResult->from_result($result);
    return $o_result;
  }
  sub ReleaseAddress {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::ReleaseAddress', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub ReplaceNetworkAclAssociation {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::ReplaceNetworkAclAssociation', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::ReplaceNetworkAclAssociationResult->from_result($result);
    return $o_result;
  }
  sub ReplaceNetworkAclEntry {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::ReplaceNetworkAclEntry', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub ReplaceRoute {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::ReplaceRoute', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub ReplaceRouteTableAssociation {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::ReplaceRouteTableAssociation', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::ReplaceRouteTableAssociationResult->from_result($result);
    return $o_result;
  }
  sub ReportInstanceStatus {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::ReportInstanceStatus', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub RequestSpotInstances {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::RequestSpotInstances', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::RequestSpotInstancesResult->from_result($result);
    return $o_result;
  }
  sub ResetImageAttribute {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::ResetImageAttribute', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub ResetInstanceAttribute {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::ResetInstanceAttribute', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub ResetNetworkInterfaceAttribute {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::ResetNetworkInterfaceAttribute', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub ResetSnapshotAttribute {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::ResetSnapshotAttribute', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub RevokeSecurityGroupEgress {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::RevokeSecurityGroupEgress', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub RevokeSecurityGroupIngress {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::RevokeSecurityGroupIngress', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub RunInstances {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::RunInstances', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::RunInstancesResult->from_result($result);
    return $o_result;
  }
  sub StartInstances {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::StartInstances', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::StartInstancesResult->from_result($result);
    return $o_result;
  }
  sub StopInstances {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::StopInstances', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::StopInstancesResult->from_result($result);
    return $o_result;
  }
  sub TerminateInstances {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::TerminateInstances', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::TerminateInstancesResult->from_result($result);
    return $o_result;
  }
  sub UnassignPrivateIpAddresses {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::UnassignPrivateIpAddresses', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub UnmonitorInstances {
    my $self = shift;
    my $call = new_with_coercions('Aws::EC2::UnmonitorInstances', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EC2::UnmonitorInstancesResult->from_result($result);
    return $o_result;
  }
}
