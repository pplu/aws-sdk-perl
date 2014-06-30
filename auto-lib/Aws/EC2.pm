
use AWS::API;


package Aws::EC2::AccountAttribute {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AttributeName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attributeName');
  has AttributeValues => (is => 'ro', isa => 'ArrayRef[Aws::EC2::AccountAttributeValue]', traits => ['Unwrapped'], xmlname => 'attributeValueSet');
}

package Aws::EC2::AccountAttributeValue {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AttributeValue => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attributeValue');
}

package Aws::EC2::Address {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AllocationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'allocationId');
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'associationId');
  has Domain => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'domain');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceId');
  has NetworkInterfaceOwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceOwnerId');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
  has PublicIp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'publicIp');
}

package Aws::EC2::AttributeBooleanValue {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Value => (is => 'ro', isa => 'Bool');
}

package Aws::EC2::AttributeValue {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Value => (is => 'ro', isa => 'Str');
}

package Aws::EC2::AvailabilityZone {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Messages => (is => 'ro', isa => 'ArrayRef[Aws::EC2::AvailabilityZoneMessage]', traits => ['Unwrapped'], xmlname => 'messageSet');
  has RegionName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'regionName');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'zoneState');
  has ZoneName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'zoneName');
}

package Aws::EC2::AvailabilityZoneMessage {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message');
}

package Aws::EC2::BlockDeviceMapping {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has DeviceName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'deviceName');
  has Ebs => (is => 'ro', isa => 'Aws::EC2::EbsBlockDevice', traits => ['Unwrapped'], xmlname => 'ebs');
  has NoDevice => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'noDevice');
  has VirtualName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'virtualName');
}

package Aws::EC2::BundleTask {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has BundleId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'bundleId');
  has BundleTaskError => (is => 'ro', isa => 'Aws::EC2::BundleTaskError', traits => ['Unwrapped'], xmlname => 'error');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has Progress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'progress');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'startTime');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has Storage => (is => 'ro', isa => 'Aws::EC2::Storage', traits => ['Unwrapped'], xmlname => 'storage');
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'updateTime');
}

package Aws::EC2::BundleTaskError {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Code => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'code');
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message');
}

package Aws::EC2::CancelledSpotInstanceRequest {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has SpotInstanceRequestId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestId');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
}

package Aws::EC2::ConversionTask {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has ConversionTaskId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'conversionTaskId', required => 1);
  has ExpirationTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'expirationTime');
  has ImportInstance => (is => 'ro', isa => 'Aws::EC2::ImportInstanceTaskDetails', traits => ['Unwrapped'], xmlname => 'importInstance');
  has ImportVolume => (is => 'ro', isa => 'Aws::EC2::ImportVolumeTaskDetails', traits => ['Unwrapped'], xmlname => 'importVolume');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'statusMessage');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
}

package Aws::EC2::CreateVolumePermission {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Group => (is => 'ro', isa => 'Str');
  has UserId => (is => 'ro', isa => 'Str');
}

package Aws::EC2::CreateVolumePermissionModifications {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Add => (is => 'ro', isa => 'ArrayRef[Aws::EC2::CreateVolumePermission]');
  has Remove => (is => 'ro', isa => 'ArrayRef[Aws::EC2::CreateVolumePermission]');
}

package Aws::EC2::CustomerGateway {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has BgpAsn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'bgpAsn');
  has CustomerGatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'customerGatewayId');
  has IpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ipAddress');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has Type => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'type');
}

package Aws::EC2::DhcpConfiguration {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Key => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'key');
  has Values => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'valueSet');
}

package Aws::EC2::DhcpOptions {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has DhcpConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::EC2::DhcpConfiguration]', traits => ['Unwrapped'], xmlname => 'dhcpConfigurationSet');
  has DhcpOptionsId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'dhcpOptionsId');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
}

package Aws::EC2::DiskImage {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Description => (is => 'ro', isa => 'Str');
  has Image => (is => 'ro', isa => 'Aws::EC2::DiskImageDetail');
  has Volume => (is => 'ro', isa => 'Aws::EC2::VolumeDetail');
}

package Aws::EC2::DiskImageDescription {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Checksum => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'checksum');
  has Format => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'format', required => 1);
  has ImportManifestUrl => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'importManifestUrl', required => 1);
  has Size => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'size', required => 1);
}

package Aws::EC2::DiskImageDetail {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Bytes => (is => 'ro', isa => 'Num', required => 1);
  has Format => (is => 'ro', isa => 'Str', required => 1);
  has ImportManifestUrl => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::EC2::DiskImageVolumeDescription {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Id => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'id', required => 1);
  has Size => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'size');
}

package Aws::EC2::EbsBlockDevice {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
  has Encrypted => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'encrypted');
  has Iops => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'iops');
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'snapshotId');
  has VolumeSize => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'volumeSize');
  has VolumeType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeType');
}

package Aws::EC2::EbsInstanceBlockDevice {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AttachTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachTime');
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
}

package Aws::EC2::EbsInstanceBlockDeviceSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has DeleteOnTermination => (is => 'ro', isa => 'Bool');
  has VolumeId => (is => 'ro', isa => 'Str');
}

package Aws::EC2::ExportTask {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has ExportTaskId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'exportTaskId');
  has ExportToS3Task => (is => 'ro', isa => 'Aws::EC2::ExportToS3Task', traits => ['Unwrapped'], xmlname => 'exportToS3');
  has InstanceExportDetails => (is => 'ro', isa => 'Aws::EC2::InstanceExportDetails', traits => ['Unwrapped'], xmlname => 'instanceExport');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'statusMessage');
}

package Aws::EC2::ExportToS3Task {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has ContainerFormat => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'containerFormat');
  has DiskImageFormat => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'diskImageFormat');
  has S3Bucket => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 's3Bucket');
  has S3Key => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 's3Key');
}

package Aws::EC2::ExportToS3TaskSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has ContainerFormat => (is => 'ro', isa => 'Str');
  has DiskImageFormat => (is => 'ro', isa => 'Str');
  has S3Bucket => (is => 'ro', isa => 'Str');
  has S3Prefix => (is => 'ro', isa => 'Str');
}

package Aws::EC2::Filter {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Name => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str]');
}

package Aws::EC2::GroupIdentifier {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has GroupId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupId');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupName');
}

package Aws::EC2::IamInstanceProfile {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Arn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'arn');
  has Id => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'id');
}

package Aws::EC2::IamInstanceProfileSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Arn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'arn');
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'name');
}

package Aws::EC2::IcmpTypeCode {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Code => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'code');
  has Type => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'type');
}

package Aws::EC2::Image {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Architecture => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'architecture');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::BlockDeviceMapping]', traits => ['Unwrapped'], xmlname => 'blockDeviceMapping');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has Hypervisor => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'hypervisor');
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');
  has ImageLocation => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageLocation');
  has ImageOwnerAlias => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageOwnerAlias');
  has ImageType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageType');
  has KernelId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'kernelId');
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'name');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageOwnerId');
  has Platform => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'platform');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has Public => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'isPublic');
  has RamdiskId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ramdiskId');
  has RootDeviceName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'rootDeviceName');
  has RootDeviceType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'rootDeviceType');
  has SriovNetSupport => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'sriovNetSupport');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageState');
  has StateReason => (is => 'ro', isa => 'Aws::EC2::StateReason', traits => ['Unwrapped'], xmlname => 'stateReason');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VirtualizationType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'virtualizationType');
}

package Aws::EC2::ImportInstanceLaunchSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AdditionalInfo => (is => 'ro', isa => 'Str');
  has Architecture => (is => 'ro', isa => 'Str');
  has GroupNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has Monitoring => (is => 'ro', isa => 'Bool');
  has Placement => (is => 'ro', isa => 'Aws::EC2::Placement');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');
  has UserData => (is => 'ro', isa => 'Str');
}

package Aws::EC2::ImportInstanceTaskDetails {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has Platform => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'platform');
  has Volumes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ImportInstanceVolumeDetailItem]', traits => ['Unwrapped'], xmlname => 'volumes', required => 1);
}

package Aws::EC2::ImportInstanceVolumeDetailItem {
  use Moose;
  with ('AWS::API::UnwrappedParser');
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
  with ('AWS::API::UnwrappedParser');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone', required => 1);
  has BytesConverted => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'bytesConverted', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has Image => (is => 'ro', isa => 'Aws::EC2::DiskImageDescription', traits => ['Unwrapped'], xmlname => 'image', required => 1);
  has Volume => (is => 'ro', isa => 'Aws::EC2::DiskImageVolumeDescription', traits => ['Unwrapped'], xmlname => 'volume', required => 1);
}

package Aws::EC2::Instance {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AmiLaunchIndex => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'amiLaunchIndex');
  has Architecture => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'architecture');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceBlockDeviceMapping]', traits => ['Unwrapped'], xmlname => 'blockDeviceMapping');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'clientToken');
  has EbsOptimized => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'ebsOptimized');
  has Hypervisor => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'hypervisor');
  has IamInstanceProfile => (is => 'ro', isa => 'Aws::EC2::IamInstanceProfile', traits => ['Unwrapped'], xmlname => 'iamInstanceProfile');
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has InstanceLifecycle => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceLifecycle');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceType');
  has KernelId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'kernelId');
  has KeyName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyName');
  has LaunchTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'launchTime');
  has Monitoring => (is => 'ro', isa => 'Aws::EC2::Monitoring', traits => ['Unwrapped'], xmlname => 'monitoring');
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceNetworkInterface]', traits => ['Unwrapped'], xmlname => 'networkInterfaceSet');
  has Placement => (is => 'ro', isa => 'Aws::EC2::Placement', traits => ['Unwrapped'], xmlname => 'placement');
  has Platform => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'platform');
  has PrivateDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateDnsName');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has PublicDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'dnsName');
  has PublicIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ipAddress');
  has RamdiskId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ramdiskId');
  has RootDeviceName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'rootDeviceName');
  has RootDeviceType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'rootDeviceType');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has SourceDestCheck => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'sourceDestCheck');
  has SpotInstanceRequestId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestId');
  has SriovNetSupport => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'sriovNetSupport');
  has State => (is => 'ro', isa => 'Aws::EC2::InstanceState', traits => ['Unwrapped'], xmlname => 'instanceState');
  has StateReason => (is => 'ro', isa => 'Aws::EC2::StateReason', traits => ['Unwrapped'], xmlname => 'stateReason');
  has StateTransitionReason => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reason');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VirtualizationType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'virtualizationType');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

package Aws::EC2::InstanceBlockDeviceMapping {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has DeviceName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'deviceName');
  has Ebs => (is => 'ro', isa => 'Aws::EC2::EbsInstanceBlockDevice', traits => ['Unwrapped'], xmlname => 'ebs');
}

package Aws::EC2::InstanceBlockDeviceMappingSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has DeviceName => (is => 'ro', isa => 'Str');
  has Ebs => (is => 'ro', isa => 'Aws::EC2::EbsInstanceBlockDeviceSpecification');
  has NoDevice => (is => 'ro', isa => 'Str');
  has VirtualName => (is => 'ro', isa => 'Str');
}

package Aws::EC2::InstanceCount {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has InstanceCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'instanceCount');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
}

package Aws::EC2::InstanceExportDetails {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has TargetEnvironment => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'targetEnvironment');
}

package Aws::EC2::InstanceMonitoring {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has Monitoring => (is => 'ro', isa => 'Aws::EC2::Monitoring', traits => ['Unwrapped'], xmlname => 'monitoring');
}

package Aws::EC2::InstanceNetworkInterface {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Association => (is => 'ro', isa => 'Aws::EC2::InstanceNetworkInterfaceAssociation', traits => ['Unwrapped'], xmlname => 'association');
  has Attachment => (is => 'ro', isa => 'Aws::EC2::InstanceNetworkInterfaceAttachment', traits => ['Unwrapped'], xmlname => 'attachment');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has Groups => (is => 'ro', isa => 'ArrayRef[Aws::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceId');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has PrivateDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateDnsName');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstancePrivateIpAddress]', traits => ['Unwrapped'], xmlname => 'privateIpAddressesSet');
  has SourceDestCheck => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'sourceDestCheck');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

package Aws::EC2::InstanceNetworkInterfaceAssociation {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has IpOwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ipOwnerId');
  has PublicDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'publicDnsName');
  has PublicIp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'publicIp');
}

package Aws::EC2::InstanceNetworkInterfaceAttachment {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AttachTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachTime');
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachmentId');
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
  has DeviceIndex => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'deviceIndex');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
}

package Aws::EC2::InstanceNetworkInterfaceSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'associatePublicIpAddress');
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has DeviceIndex => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'deviceIndex');
  has Groups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'SecurityGroupId');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceId');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Aws::EC2::PrivateIpAddressSpecification]', traits => ['Unwrapped'], xmlname => 'privateIpAddressesSet');
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'secondaryPrivateIpAddressCount');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
}

package Aws::EC2::InstancePrivateIpAddress {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Association => (is => 'ro', isa => 'Aws::EC2::InstanceNetworkInterfaceAssociation', traits => ['Unwrapped'], xmlname => 'association');
  has Primary => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'primary');
  has PrivateDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateDnsName');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
}

package Aws::EC2::InstanceState {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Code => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'code');
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'name');
}

package Aws::EC2::InstanceStateChange {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has CurrentState => (is => 'ro', isa => 'Aws::EC2::InstanceState', traits => ['Unwrapped'], xmlname => 'currentState');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has PreviousState => (is => 'ro', isa => 'Aws::EC2::InstanceState', traits => ['Unwrapped'], xmlname => 'previousState');
}

package Aws::EC2::InstanceStatus {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceStatusEvent]', traits => ['Unwrapped'], xmlname => 'eventsSet');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has InstanceState => (is => 'ro', isa => 'Aws::EC2::InstanceState', traits => ['Unwrapped'], xmlname => 'instanceState');
  has InstanceStatus => (is => 'ro', isa => 'Aws::EC2::InstanceStatusSummary', traits => ['Unwrapped'], xmlname => 'instanceStatus');
  has SystemStatus => (is => 'ro', isa => 'Aws::EC2::InstanceStatusSummary', traits => ['Unwrapped'], xmlname => 'systemStatus');
}

package Aws::EC2::InstanceStatusDetails {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has ImpairedSince => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'impairedSince');
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'name');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
}

package Aws::EC2::InstanceStatusEvent {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Code => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'code');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has NotAfter => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'notAfter');
  has NotBefore => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'notBefore');
}

package Aws::EC2::InstanceStatusSummary {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Details => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceStatusDetails]', traits => ['Unwrapped'], xmlname => 'details');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
}

package Aws::EC2::InternetGateway {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Attachments => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InternetGatewayAttachment]', traits => ['Unwrapped'], xmlname => 'attachmentSet');
  has InternetGatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'internetGatewayId');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
}

package Aws::EC2::InternetGatewayAttachment {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

package Aws::EC2::IpPermission {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has FromPort => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'fromPort');
  has IpProtocol => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ipProtocol');
  has IpRanges => (is => 'ro', isa => 'ArrayRef[Aws::EC2::IpRange]', traits => ['Unwrapped'], xmlname => 'ipRanges');
  has ToPort => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'toPort');
  has UserIdGroupPairs => (is => 'ro', isa => 'ArrayRef[Aws::EC2::UserIdGroupPair]', traits => ['Unwrapped'], xmlname => 'groups');
}

package Aws::EC2::IpRange {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has CidrIp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'cidrIp');
}

package Aws::EC2::KeyPairInfo {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has KeyFingerprint => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyFingerprint');
  has KeyName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyName');
}

package Aws::EC2::LaunchPermission {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Group => (is => 'ro', isa => 'Str');
  has UserId => (is => 'ro', isa => 'Str');
}

package Aws::EC2::LaunchPermissionModifications {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Add => (is => 'ro', isa => 'ArrayRef[Aws::EC2::LaunchPermission]');
  has Remove => (is => 'ro', isa => 'ArrayRef[Aws::EC2::LaunchPermission]');
}

package Aws::EC2::LaunchSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AddressingType => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::BlockDeviceMapping]');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has IamInstanceProfile => (is => 'ro', isa => 'Aws::EC2::IamInstanceProfileSpecification');
  has ImageId => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
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

package Aws::EC2::Monitoring {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
}

package Aws::EC2::NetworkAcl {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Associations => (is => 'ro', isa => 'ArrayRef[Aws::EC2::NetworkAclAssociation]', traits => ['Unwrapped'], xmlname => 'associationSet');
  has Entries => (is => 'ro', isa => 'ArrayRef[Aws::EC2::NetworkAclEntry]', traits => ['Unwrapped'], xmlname => 'entrySet');
  has IsDefault => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'default');
  has NetworkAclId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkAclId');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

package Aws::EC2::NetworkAclAssociation {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has NetworkAclAssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkAclAssociationId');
  has NetworkAclId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkAclId');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
}

package Aws::EC2::NetworkAclEntry {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has CidrBlock => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'cidrBlock');
  has Egress => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'egress');
  has IcmpTypeCode => (is => 'ro', isa => 'Aws::EC2::IcmpTypeCode', traits => ['Unwrapped'], xmlname => 'icmpTypeCode');
  has PortRange => (is => 'ro', isa => 'Aws::EC2::PortRange', traits => ['Unwrapped'], xmlname => 'portRange');
  has Protocol => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'protocol');
  has RuleAction => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ruleAction');
  has RuleNumber => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'ruleNumber');
}

package Aws::EC2::NetworkInterface {
  use Moose;
  with ('AWS::API::UnwrappedParser');
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
  has RequesterManaged => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'requesterManaged');
  has SourceDestCheck => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'sourceDestCheck');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
  has TagSet => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

package Aws::EC2::NetworkInterfaceAssociation {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AllocationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'allocationId');
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'associationId');
  has IpOwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ipOwnerId');
  has PublicDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'publicDnsName');
  has PublicIp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'publicIp');
}

package Aws::EC2::NetworkInterfaceAttachment {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AttachTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachTime');
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachmentId');
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
  has DeviceIndex => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'deviceIndex');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has InstanceOwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceOwnerId');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
}

package Aws::EC2::NetworkInterfaceAttachmentChanges {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AttachmentId => (is => 'ro', isa => 'Str');
  has DeleteOnTermination => (is => 'ro', isa => 'Bool');
}

package Aws::EC2::NetworkInterfacePrivateIpAddress {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Association => (is => 'ro', isa => 'Aws::EC2::NetworkInterfaceAssociation', traits => ['Unwrapped'], xmlname => 'association');
  has Primary => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'primary');
  has PrivateDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateDnsName');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
}

package Aws::EC2::Placement {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupName');
  has Tenancy => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'tenancy');
}

package Aws::EC2::PlacementGroup {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupName');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has Strategy => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'strategy');
}

package Aws::EC2::PortRange {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has From => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'from');
  has To => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'to');
}

package Aws::EC2::PriceSchedule {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Active => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'active');
  has CurrencyCode => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'currencyCode');
  has Price => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'price');
  has Term => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'term');
}

package Aws::EC2::PriceScheduleSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has Price => (is => 'ro', isa => 'Num');
  has Term => (is => 'ro', isa => 'Num');
}

package Aws::EC2::PricingDetail {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Count => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'count');
  has Price => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'price');
}

package Aws::EC2::PrivateIpAddressSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Primary => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'primary');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress', required => 1);
}

package Aws::EC2::ProductCode {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has ProductCodeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'productCode');
  has ProductCodeType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'type');
}

package Aws::EC2::PropagatingVgw {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has GatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'gatewayId');
}

package Aws::EC2::RecurringCharge {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Amount => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'amount');
  has Frequency => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'frequency');
}

package Aws::EC2::Region {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Endpoint => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'regionEndpoint');
  has RegionName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'regionName');
}

package Aws::EC2::Reservation {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Groups => (is => 'ro', isa => 'ArrayRef[Aws::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Instance]', traits => ['Unwrapped'], xmlname => 'instancesSet');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has RequesterId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'requesterId');
  has ReservationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservationId');
}

package Aws::EC2::ReservedInstanceLimitPrice {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Amount => (is => 'ro', isa => 'Num');
  has CurrencyCode => (is => 'ro', isa => 'Str');
}

package Aws::EC2::ReservedInstances {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has CurrencyCode => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'currencyCode');
  has Duration => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'duration');
  has End => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'end');
  has FixedPrice => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'fixedPrice');
  has InstanceCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'instanceCount');
  has InstanceTenancy => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceTenancy');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceType');
  has OfferingType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'offeringType');
  has ProductDescription => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'productDescription');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[Aws::EC2::RecurringCharge]', traits => ['Unwrapped'], xmlname => 'recurringCharges');
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesId');
  has Start => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'start');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has UsagePrice => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'usagePrice');
}

package Aws::EC2::ReservedInstancesConfiguration {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has InstanceCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'instanceCount');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceType');
  has Platform => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'platform');
}

package Aws::EC2::ReservedInstancesId {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesId');
}

package Aws::EC2::ReservedInstancesListing {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'clientToken');
  has CreateDate => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'createDate');
  has InstanceCounts => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceCount]', traits => ['Unwrapped'], xmlname => 'instanceCounts');
  has PriceSchedules => (is => 'ro', isa => 'ArrayRef[Aws::EC2::PriceSchedule]', traits => ['Unwrapped'], xmlname => 'priceSchedules');
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesId');
  has ReservedInstancesListingId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesListingId');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'statusMessage');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has UpdateDate => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'updateDate');
}

package Aws::EC2::ReservedInstancesModification {
  use Moose;
  with ('AWS::API::UnwrappedParser');
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
  with ('AWS::API::UnwrappedParser');
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesId');
  has TargetConfiguration => (is => 'ro', isa => 'Aws::EC2::ReservedInstancesConfiguration', traits => ['Unwrapped'], xmlname => 'targetConfiguration');
}

package Aws::EC2::ReservedInstancesOffering {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has CurrencyCode => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'currencyCode');
  has Duration => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'duration');
  has FixedPrice => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'fixedPrice');
  has InstanceTenancy => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceTenancy');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceType');
  has Marketplace => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'marketplace');
  has OfferingType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'offeringType');
  has PricingDetails => (is => 'ro', isa => 'ArrayRef[Aws::EC2::PricingDetail]', traits => ['Unwrapped'], xmlname => 'pricingDetailsSet');
  has ProductDescription => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'productDescription');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[Aws::EC2::RecurringCharge]', traits => ['Unwrapped'], xmlname => 'recurringCharges');
  has ReservedInstancesOfferingId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesOfferingId');
  has UsagePrice => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'usagePrice');
}

package Aws::EC2::Route {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'destinationCidrBlock');
  has GatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'gatewayId');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has InstanceOwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceOwnerId');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceId');
  has Origin => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'origin');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcPeeringConnectionId');
}

package Aws::EC2::RouteTable {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Associations => (is => 'ro', isa => 'ArrayRef[Aws::EC2::RouteTableAssociation]', traits => ['Unwrapped'], xmlname => 'associationSet');
  has PropagatingVgws => (is => 'ro', isa => 'ArrayRef[Aws::EC2::PropagatingVgw]', traits => ['Unwrapped'], xmlname => 'propagatingVgwSet');
  has RouteTableId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'routeTableId');
  has Routes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Route]', traits => ['Unwrapped'], xmlname => 'routeSet');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

package Aws::EC2::RouteTableAssociation {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Main => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'main');
  has RouteTableAssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'routeTableAssociationId');
  has RouteTableId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'routeTableId');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
}

package Aws::EC2::RunInstancesMonitoringEnabled {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
}

package Aws::EC2::S3Storage {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AWSAccessKeyId => (is => 'ro', isa => 'Str');
  has Bucket => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'bucket');
  has Prefix => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'prefix');
  has UploadPolicy => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'uploadPolicy');
  has UploadPolicySignature => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'uploadPolicySignature');
}

package Aws::EC2::SecurityGroup {
  use Moose;
  with ('AWS::API::UnwrappedParser');
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
  with ('AWS::API::UnwrappedParser');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has Encrypted => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'encrypted');
  has OwnerAlias => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerAlias');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has Progress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'progress');
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'snapshotId');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'startTime');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
  has VolumeSize => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'volumeSize');
}

package Aws::EC2::SpotDatafeedSubscription {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Bucket => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'bucket');
  has Fault => (is => 'ro', isa => 'Aws::EC2::SpotInstanceStateFault', traits => ['Unwrapped'], xmlname => 'fault');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has Prefix => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'prefix');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
}

package Aws::EC2::SpotInstanceMonitoring {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
}

package Aws::EC2::SpotInstanceRequest {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AvailabilityZoneGroup => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZoneGroup');
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'createTime');
  has Fault => (is => 'ro', isa => 'Aws::EC2::SpotInstanceStateFault', traits => ['Unwrapped'], xmlname => 'fault');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has LaunchGroup => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'launchGroup');
  has LaunchSpecification => (is => 'ro', isa => 'Aws::EC2::SpotLaunchSpecification', traits => ['Unwrapped'], xmlname => 'launchSpecification');
  has LaunchedAvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'launchedAvailabilityZone');
  has ProductDescription => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'productDescription');
  has SpotInstanceRequestId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestId');
  has SpotPrice => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'spotPrice');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has Status => (is => 'ro', isa => 'Aws::EC2::SpotInstanceStatus', traits => ['Unwrapped'], xmlname => 'status');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has Type => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'type');
  has ValidFrom => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'validFrom');
  has ValidUntil => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'validUntil');
}

package Aws::EC2::SpotInstanceStateFault {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Code => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'code');
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message');
}

package Aws::EC2::SpotInstanceStatus {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Code => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'code');
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message');
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'updateTime');
}

package Aws::EC2::SpotLaunchSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AddressingType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'addressingType');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::BlockDeviceMapping]', traits => ['Unwrapped'], xmlname => 'blockDeviceMapping');
  has EbsOptimized => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'ebsOptimized');
  has IamInstanceProfile => (is => 'ro', isa => 'Aws::EC2::IamInstanceProfileSpecification', traits => ['Unwrapped'], xmlname => 'iamInstanceProfile');
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceType');
  has KernelId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'kernelId');
  has KeyName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyName');
  has MonitoringEnabled => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'monitoringEnabled');
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceNetworkInterfaceSpecification]', traits => ['Unwrapped'], xmlname => 'networkInterfaceSet');
  has Placement => (is => 'ro', isa => 'Aws::EC2::SpotPlacement', traits => ['Unwrapped'], xmlname => 'placement');
  has RamdiskId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ramdiskId');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
  has UserData => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'userData');
}

package Aws::EC2::SpotPlacement {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupName');
}

package Aws::EC2::SpotPrice {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceType');
  has ProductDescription => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'productDescription');
  has SpotPrice => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'spotPrice');
  has Timestamp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'timestamp');
}

package Aws::EC2::StateReason {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Code => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'code');
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message');
}

package Aws::EC2::Storage {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has S3 => (is => 'ro', isa => 'Aws::EC2::S3Storage');
}

package Aws::EC2::Subnet {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has AvailableIpAddressCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'availableIpAddressCount');
  has CidrBlock => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'cidrBlock');
  has DefaultForAz => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'defaultForAz');
  has MapPublicIpOnLaunch => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'mapPublicIpOnLaunch');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

package Aws::EC2::Tag {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Key => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'key');
  has Value => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'value');
}

package Aws::EC2::TagDescription {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Key => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'key');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'resourceId');
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'resourceType');
  has Value => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'value');
}

package Aws::EC2::UserIdGroupPair {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has GroupId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupId');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupName');
  has UserId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'userId');
}

package Aws::EC2::VgwTelemetry {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AcceptedRouteCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'acceptedRouteCount');
  has LastStatusChange => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'lastStatusChange');
  has OutsideIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'outsideIpAddress');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'statusMessage');
}

package Aws::EC2::Volume {
  use Moose;
  with ('AWS::API::UnwrappedParser');
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

package Aws::EC2::VolumeAttachment {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AttachTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachTime');
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
  has Device => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'device');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
}

package Aws::EC2::VolumeDetail {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Size => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::EC2::VolumeStatusAction {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Code => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'code');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has EventId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'eventId');
  has EventType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'eventType');
}

package Aws::EC2::VolumeStatusDetails {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'name');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
}

package Aws::EC2::VolumeStatusEvent {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has EventId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'eventId');
  has EventType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'eventType');
  has NotAfter => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'notAfter');
  has NotBefore => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'notBefore');
}

package Aws::EC2::VolumeStatusInfo {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Details => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VolumeStatusDetails]', traits => ['Unwrapped'], xmlname => 'details');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
}

package Aws::EC2::VolumeStatusItem {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Actions => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VolumeStatusAction]', traits => ['Unwrapped'], xmlname => 'actionsSet');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VolumeStatusEvent]', traits => ['Unwrapped'], xmlname => 'eventsSet');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
  has VolumeStatus => (is => 'ro', isa => 'Aws::EC2::VolumeStatusInfo', traits => ['Unwrapped'], xmlname => 'volumeStatus');
}

package Aws::EC2::Vpc {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has CidrBlock => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'cidrBlock');
  has DhcpOptionsId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'dhcpOptionsId');
  has InstanceTenancy => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceTenancy');
  has IsDefault => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'isDefault');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

package Aws::EC2::VpcAttachment {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

package Aws::EC2::VpcPeeringConnection {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AccepterVpcInfo => (is => 'ro', isa => 'Aws::EC2::VpcPeeringConnectionVpcInfo', traits => ['Unwrapped'], xmlname => 'accepterVpcInfo');
  has ExpirationTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'expirationTime');
  has RequesterVpcInfo => (is => 'ro', isa => 'Aws::EC2::VpcPeeringConnectionVpcInfo', traits => ['Unwrapped'], xmlname => 'requesterVpcInfo');
  has Status => (is => 'ro', isa => 'Aws::EC2::VpcPeeringConnectionStateReason', traits => ['Unwrapped'], xmlname => 'status');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcPeeringConnectionId');
}

package Aws::EC2::VpcPeeringConnectionStateReason {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has Code => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'code');
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message');
}

package Aws::EC2::VpcPeeringConnectionVpcInfo {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has CidrBlock => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'cidrBlock');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

package Aws::EC2::VpnConnection {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has CustomerGatewayConfiguration => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'customerGatewayConfiguration');
  has CustomerGatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'customerGatewayId');
  has Options => (is => 'ro', isa => 'Aws::EC2::VpnConnectionOptions', traits => ['Unwrapped'], xmlname => 'options');
  has Routes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VpnStaticRoute]', traits => ['Unwrapped'], xmlname => 'routes');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has Type => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'type');
  has VgwTelemetry => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VgwTelemetry]', traits => ['Unwrapped'], xmlname => 'vgwTelemetry');
  has VpnConnectionId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpnConnectionId');
  has VpnGatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpnGatewayId');
}

package Aws::EC2::VpnConnectionOptions {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has StaticRoutesOnly => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'staticRoutesOnly');
}

package Aws::EC2::VpnConnectionOptionsSpecification {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has StaticRoutesOnly => (is => 'ro', isa => 'Bool');
}

package Aws::EC2::VpnGateway {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has Type => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'type');
  has VpcAttachments => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VpcAttachment]', traits => ['Unwrapped'], xmlname => 'attachments');
  has VpnGatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpnGatewayId');
}

package Aws::EC2::VpnStaticRoute {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'destinationCidrBlock');
  has Source => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'source');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
}



package Aws::EC2::AcceptVpcPeeringConnection {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AcceptVpcPeeringConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::AcceptVpcPeeringConnectionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::AllocateAddress {
  use Moose;
  has Domain => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AllocateAddress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::AllocateAddressResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::AssignPrivateIpAddresses {
  use Moose;
  has AllowReassignment => (is => 'ro', isa => 'Bool');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'PrivateIpAddress' );
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssignPrivateIpAddresses');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::AssociateAddress {
  use Moose;
  has AllocationId => (is => 'ro', isa => 'Str');
  has AllowReassociation => (is => 'ro', isa => 'Bool');
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has PublicIp => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateAddress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::AssociateAddressResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::AssociateDhcpOptions {
  use Moose;
  has DhcpOptionsId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateDhcpOptions');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::AssociateRouteTable {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);
  has SubnetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateRouteTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::AssociateRouteTableResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::AttachInternetGateway {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has InternetGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachInternetGateway');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::AttachNetworkInterface {
  use Moose;
  has DeviceIndex => (is => 'ro', isa => 'Int', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachNetworkInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::AttachNetworkInterfaceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::AttachVolume {
  use Moose;
  has Device => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::AttachVolumeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::AttachVpnGateway {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);
  has VpnGatewayId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachVpnGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::AttachVpnGatewayResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::AuthorizeSecurityGroupEgress {
  use Moose;
  has CidrIp => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has FromPort => (is => 'ro', isa => 'Int');
  has GroupId => (is => 'ro', isa => 'Str', required => 1);
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[Aws::EC2::IpPermission]');
  has IpProtocol => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupName => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupOwnerId => (is => 'ro', isa => 'Str');
  has ToPort => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeSecurityGroupEgress');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::AuthorizeSecurityGroupIngress {
  use Moose;
  has CidrIp => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has FromPort => (is => 'ro', isa => 'Int');
  has GroupId => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[Aws::EC2::IpPermission]');
  has IpProtocol => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupName => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupOwnerId => (is => 'ro', isa => 'Str');
  has ToPort => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeSecurityGroupIngress');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::BundleInstance {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has Storage => (is => 'ro', isa => 'Aws::EC2::Storage', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BundleInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::BundleInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CancelBundleTask {
  use Moose;
  has BundleId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelBundleTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CancelBundleTaskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CancelConversionTask {
  use Moose;
  has ConversionTaskId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has ReasonMessage => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelConversionTask');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CancelExportTask {
  use Moose;
  has ExportTaskId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelExportTask');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CancelReservedInstancesListing {
  use Moose;
  has ReservedInstancesListingId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelReservedInstancesListing');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CancelReservedInstancesListingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CancelSpotInstanceRequests {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has SpotInstanceRequestIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SpotInstanceRequestId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelSpotInstanceRequests');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CancelSpotInstanceRequestsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::ConfirmProductInstance {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ProductCode => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmProductInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::ConfirmProductInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CopyImage {
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has SourceImageId => (is => 'ro', isa => 'Str', required => 1);
  has SourceRegion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CopyImageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CopySnapshot {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DestinationRegion => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has PresignedUrl => (is => 'ro', isa => 'Str');
  has SourceRegion => (is => 'ro', isa => 'Str', required => 1);
  has SourceSnapshotId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopySnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CopySnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateCustomerGateway {
  use Moose;
  has BgpAsn => (is => 'ro', isa => 'Int', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has PublicIp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'IpAddress' , required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCustomerGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateCustomerGatewayResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateDhcpOptions {
  use Moose;
  has DhcpConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::EC2::DhcpConfiguration]', traits => ['NameInRequest'], request_name => 'DhcpConfiguration' , required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDhcpOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateDhcpOptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateImage {
  use Moose;
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::BlockDeviceMapping]', traits => ['NameInRequest'], request_name => 'BlockDeviceMapping' );
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NoReboot => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateImageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateInstanceExportTask {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has ExportToS3Task => (is => 'ro', isa => 'Aws::EC2::ExportToS3TaskSpecification', traits => ['NameInRequest'], request_name => 'ExportToS3' );
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has TargetEnvironment => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstanceExportTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateInstanceExportTaskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateInternetGateway {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInternetGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateInternetGatewayResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateKeyPair {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has KeyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKeyPair');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateKeyPairResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateNetworkAcl {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNetworkAcl');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateNetworkAclResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateNetworkAclEntry {
  use Moose;
  has CidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has Egress => (is => 'ro', isa => 'Bool', required => 1);
  has IcmpTypeCode => (is => 'ro', isa => 'Aws::EC2::IcmpTypeCode', traits => ['NameInRequest'], request_name => 'Icmp' );
  has NetworkAclId => (is => 'ro', isa => 'Str', required => 1);
  has PortRange => (is => 'ro', isa => 'Aws::EC2::PortRange');
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has RuleAction => (is => 'ro', isa => 'Str', required => 1);
  has RuleNumber => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNetworkAclEntry');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateNetworkInterface {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has Groups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Aws::EC2::PrivateIpAddressSpecification]');
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int');
  has SubnetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNetworkInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateNetworkInterfaceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreatePlacementGroup {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Strategy => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlacementGroup');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateReservedInstancesListing {
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has PriceSchedules => (is => 'ro', isa => 'ArrayRef[Aws::EC2::PriceScheduleSpecification]', required => 1);
  has ReservedInstancesId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReservedInstancesListing');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateReservedInstancesListingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateRoute {
  use Moose;
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has GatewayId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRoute');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateRouteTable {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRouteTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateRouteTableResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateSecurityGroup {
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'GroupDescription' , required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has VpcId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSecurityGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateSecurityGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateSnapshot {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateSpotDatafeedSubscription {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has Prefix => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSpotDatafeedSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateSpotDatafeedSubscriptionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateSubnet {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSubnet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateSubnetResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateTags {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Resources => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ResourceId' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['NameInRequest'], request_name => 'Tag' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTags');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateVolume {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has Encrypted => (is => 'ro', isa => 'Bool');
  has Iops => (is => 'ro', isa => 'Int');
  has Size => (is => 'ro', isa => 'Int');
  has SnapshotId => (is => 'ro', isa => 'Str');
  has VolumeType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateVolumeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateVpc {
  use Moose;
  has CidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceTenancy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpc');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateVpcResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateVpcPeeringConnection {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has PeerOwnerId => (is => 'ro', isa => 'Str');
  has PeerVpcId => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpcPeeringConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateVpcPeeringConnectionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateVpnConnection {
  use Moose;
  has CustomerGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has Options => (is => 'ro', isa => 'Aws::EC2::VpnConnectionOptionsSpecification');
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has VpnGatewayId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpnConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateVpnConnectionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateVpnConnectionRoute {
  use Moose;
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has VpnConnectionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpnConnectionRoute');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::CreateVpnGateway {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpnGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateVpnGatewayResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DeleteCustomerGateway {
  use Moose;
  has CustomerGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCustomerGateway');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DeleteDhcpOptions {
  use Moose;
  has DhcpOptionsId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDhcpOptions');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DeleteInternetGateway {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has InternetGatewayId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInternetGateway');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DeleteKeyPair {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has KeyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteKeyPair');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DeleteNetworkAcl {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has NetworkAclId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNetworkAcl');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DeleteNetworkAclEntry {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Egress => (is => 'ro', isa => 'Bool', required => 1);
  has NetworkAclId => (is => 'ro', isa => 'Str', required => 1);
  has RuleNumber => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNetworkAclEntry');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DeleteNetworkInterface {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNetworkInterface');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DeletePlacementGroup {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has GroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePlacementGroup');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DeleteRoute {
  use Moose;
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRoute');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DeleteRouteTable {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRouteTable');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DeleteSecurityGroup {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has GroupId => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSecurityGroup');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DeleteSnapshot {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DeleteSpotDatafeedSubscription {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSpotDatafeedSubscription');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DeleteSubnet {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has SubnetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSubnet');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DeleteTags {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Resources => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ResourceId' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['NameInRequest'], request_name => 'Tag' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTags');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DeleteVolume {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVolume');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DeleteVpc {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVpc');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DeleteVpcPeeringConnection {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVpcPeeringConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DeleteVpcPeeringConnectionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DeleteVpnConnection {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has VpnConnectionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVpnConnection');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DeleteVpnConnectionRoute {
  use Moose;
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has VpnConnectionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVpnConnectionRoute');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DeleteVpnGateway {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has VpnGatewayId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVpnGateway');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DeregisterImage {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterImage');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeAccountAttributes {
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'AttributeName' );
  has DryRun => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccountAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeAccountAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeAddresses {
  use Moose;
  has AllocationIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'AllocationId' );
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has PublicIps => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'PublicIp' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAddresses');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeAddressesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeAvailabilityZones {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has ZoneNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ZoneName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAvailabilityZones');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeAvailabilityZonesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeBundleTasks {
  use Moose;
  has BundleIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'BundleId' );
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBundleTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeBundleTasksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeConversionTasks {
  use Moose;
  has ConversionTaskIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ConversionTaskId' );
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConversionTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeConversionTasksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeCustomerGateways {
  use Moose;
  has CustomerGatewayIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'CustomerGatewayId' );
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCustomerGateways');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeCustomerGatewaysResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeDhcpOptions {
  use Moose;
  has DhcpOptionsIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'DhcpOptionsId' );
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDhcpOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeDhcpOptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeExportTasks {
  use Moose;
  has ExportTaskIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ExportTaskId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeExportTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeExportTasksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeImageAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeImageAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeImageAttributeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeImages {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has ExecutableUsers => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ExecutableBy' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has ImageIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ImageId' );
  has Owners => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'Owner' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeImages');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeImagesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeInstanceAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeInstanceAttributeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeInstanceStatus {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has IncludeAllInstances => (is => 'ro', isa => 'Bool');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceId' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeInstanceStatusResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeInstances {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceId' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeInternetGateways {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has InternetGatewayIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InternetGatewayId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInternetGateways');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeInternetGatewaysResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeKeyPairs {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has KeyNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'KeyName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeKeyPairs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeKeyPairsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeNetworkAcls {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has NetworkAclIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'NetworkAclId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNetworkAcls');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeNetworkAclsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeNetworkInterfaceAttribute {
  use Moose;
  has Attachment => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has Groups => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'GroupSet' );
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has SourceDestCheck => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNetworkInterfaceAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeNetworkInterfaceAttributeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeNetworkInterfaces {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has NetworkInterfaceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'NetworkInterfaceId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNetworkInterfaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeNetworkInterfacesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribePlacementGroups {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has GroupNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'GroupName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePlacementGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribePlacementGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeRegions {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has RegionNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'RegionName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRegions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeRegionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeReservedInstances {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has OfferingType => (is => 'ro', isa => 'Str');
  has ReservedInstancesIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ReservedInstancesId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeReservedInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeReservedInstancesListings {
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]');
  has ReservedInstancesId => (is => 'ro', isa => 'Str');
  has ReservedInstancesListingId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesListings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeReservedInstancesListingsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeReservedInstancesModifications {
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has NextToken => (is => 'ro', isa => 'Str');
  has ReservedInstancesModificationIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ReservedInstancesModificationId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesModifications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeReservedInstancesModificationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeReservedInstancesOfferings {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has IncludeMarketplace => (is => 'ro', isa => 'Bool');
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

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesOfferings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeReservedInstancesOfferingsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeRouteTables {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has RouteTableIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'RouteTableId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRouteTables');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeRouteTablesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeSecurityGroups {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has GroupIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'GroupId' );
  has GroupNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'GroupName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSecurityGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeSecurityGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeSnapshotAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSnapshotAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeSnapshotAttributeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeSnapshots {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has OwnerIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'Owner' );
  has RestorableByUserIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'RestorableBy' );
  has SnapshotIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SnapshotId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeSnapshotsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeSpotDatafeedSubscription {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSpotDatafeedSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeSpotDatafeedSubscriptionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeSpotInstanceRequests {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has SpotInstanceRequestIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SpotInstanceRequestId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSpotInstanceRequests');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeSpotInstanceRequestsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeSpotPriceHistory {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has EndTime => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has InstanceTypes => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceType' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ProductDescriptions => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ProductDescription' );
  has StartTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSpotPriceHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeSpotPriceHistoryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeSubnets {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SubnetId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSubnets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeSubnetsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeTags {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeTagsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeVolumeAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVolumeAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeVolumeAttributeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeVolumeStatus {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has VolumeIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'VolumeId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVolumeStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeVolumeStatusResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeVolumes {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has VolumeIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'VolumeId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVolumes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeVolumesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeVpcAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpcAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeVpcAttributeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeVpcPeeringConnections {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has VpcPeeringConnectionIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'VpcPeeringConnectionId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpcPeeringConnections');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeVpcPeeringConnectionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeVpcs {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has VpcIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'VpcId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpcs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeVpcsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeVpnConnections {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has VpnConnectionIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'VpnConnectionId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpnConnections');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeVpnConnectionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DescribeVpnGateways {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has VpnGatewayIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'VpnGatewayId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpnGateways');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeVpnGatewaysResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DetachInternetGateway {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has InternetGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachInternetGateway');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DetachNetworkInterface {
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has Force => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachNetworkInterface');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DetachVolume {
  use Moose;
  has Device => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has Force => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DetachVolumeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DetachVpnGateway {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);
  has VpnGatewayId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachVpnGateway');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DisableVgwRoutePropagation {
  use Moose;
  has GatewayId => (is => 'ro', isa => 'Str', required => 1);
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableVgwRoutePropagation');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DisassociateAddress {
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has PublicIp => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateAddress');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::DisassociateRouteTable {
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateRouteTable');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::EnableVgwRoutePropagation {
  use Moose;
  has GatewayId => (is => 'ro', isa => 'Str', required => 1);
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableVgwRoutePropagation');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::EnableVolumeIO {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableVolumeIO');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::GetConsoleOutput {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConsoleOutput');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::GetConsoleOutputResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::GetPasswordData {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPasswordData');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::GetPasswordDataResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::ImportInstance {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DiskImages => (is => 'ro', isa => 'ArrayRef[Aws::EC2::DiskImage]', traits => ['NameInRequest'], request_name => 'DiskImage' );
  has DryRun => (is => 'ro', isa => 'Bool');
  has LaunchSpecification => (is => 'ro', isa => 'Aws::EC2::ImportInstanceLaunchSpecification');
  has Platform => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::ImportInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::ImportKeyPair {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has KeyName => (is => 'ro', isa => 'Str', required => 1);
  has PublicKeyMaterial => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportKeyPair');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::ImportKeyPairResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::ImportVolume {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has Image => (is => 'ro', isa => 'Aws::EC2::DiskImageDetail');
  has Volume => (is => 'ro', isa => 'Aws::EC2::VolumeDetail');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::ImportVolumeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::ModifyImageAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Aws::EC2::AttributeValue');
  has DryRun => (is => 'ro', isa => 'Bool');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);
  has LaunchPermission => (is => 'ro', isa => 'Aws::EC2::LaunchPermissionModifications');
  has OperationType => (is => 'ro', isa => 'Str');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ProductCode' );
  has UserGroups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'UserGroup' );
  has UserIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'UserId' );
  has Value => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyImageAttribute');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::ModifyInstanceAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceBlockDeviceMappingSpecification]', traits => ['NameInRequest'], request_name => 'BlockDeviceMapping' );
  has DisableApiTermination => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue');
  has DryRun => (is => 'ro', isa => 'Bool');
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

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstanceAttribute');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::ModifyNetworkInterfaceAttribute {
  use Moose;
  has Attachment => (is => 'ro', isa => 'Aws::EC2::NetworkInterfaceAttachmentChanges');
  has Description => (is => 'ro', isa => 'Aws::EC2::AttributeValue');
  has DryRun => (is => 'ro', isa => 'Bool');
  has Groups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has SourceDestCheck => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyNetworkInterfaceAttribute');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::ModifyReservedInstances {
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has ReservedInstancesIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ReservedInstancesId' , required => 1);
  has TargetConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ReservedInstancesConfiguration]', traits => ['NameInRequest'], request_name => 'ReservedInstancesConfigurationSetItemType' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyReservedInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::ModifyReservedInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::ModifySnapshotAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str');
  has CreateVolumePermission => (is => 'ro', isa => 'Aws::EC2::CreateVolumePermissionModifications');
  has DryRun => (is => 'ro', isa => 'Bool');
  has GroupNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'UserGroup' );
  has OperationType => (is => 'ro', isa => 'Str');
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);
  has UserIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'UserId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifySnapshotAttribute');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::ModifyVolumeAttribute {
  use Moose;
  has AutoEnableIO => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue');
  has DryRun => (is => 'ro', isa => 'Bool');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVolumeAttribute');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::ModifyVpcAttribute {
  use Moose;
  has EnableDnsHostnames => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue');
  has EnableDnsSupport => (is => 'ro', isa => 'Aws::EC2::AttributeBooleanValue');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVpcAttribute');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::MonitorInstances {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'MonitorInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::MonitorInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::PurchaseReservedInstancesOffering {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has LimitPrice => (is => 'ro', isa => 'Aws::EC2::ReservedInstanceLimitPrice');
  has ReservedInstancesOfferingId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseReservedInstancesOffering');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::PurchaseReservedInstancesOfferingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::RebootInstances {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RebootInstances');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::RegisterImage {
  use Moose;
  has Architecture => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::BlockDeviceMapping]', traits => ['NameInRequest'], request_name => 'BlockDeviceMapping' );
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has ImageLocation => (is => 'ro', isa => 'Str');
  has KernelId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RamdiskId => (is => 'ro', isa => 'Str');
  has RootDeviceName => (is => 'ro', isa => 'Str');
  has SriovNetSupport => (is => 'ro', isa => 'Str');
  has VirtualizationType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::RegisterImageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::RejectVpcPeeringConnection {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RejectVpcPeeringConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::RejectVpcPeeringConnectionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::ReleaseAddress {
  use Moose;
  has AllocationId => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has PublicIp => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReleaseAddress');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::ReplaceNetworkAclAssociation {
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has NetworkAclId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceNetworkAclAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::ReplaceNetworkAclAssociationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::ReplaceNetworkAclEntry {
  use Moose;
  has CidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has Egress => (is => 'ro', isa => 'Bool', required => 1);
  has IcmpTypeCode => (is => 'ro', isa => 'Aws::EC2::IcmpTypeCode', traits => ['NameInRequest'], request_name => 'Icmp' );
  has NetworkAclId => (is => 'ro', isa => 'Str', required => 1);
  has PortRange => (is => 'ro', isa => 'Aws::EC2::PortRange');
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has RuleAction => (is => 'ro', isa => 'Str', required => 1);
  has RuleNumber => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceNetworkAclEntry');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::ReplaceRoute {
  use Moose;
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has GatewayId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceRoute');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::ReplaceRouteTableAssociation {
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceRouteTableAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::ReplaceRouteTableAssociationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::ReportInstanceStatus {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has EndTime => (is => 'ro', isa => 'Str');
  has Instances => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceId' );
  has ReasonCodes => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ReasonCode' );
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReportInstanceStatus');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::RequestSpotInstances {
  use Moose;
  has AvailabilityZoneGroup => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has LaunchGroup => (is => 'ro', isa => 'Str');
  has LaunchSpecification => (is => 'ro', isa => 'Aws::EC2::LaunchSpecification');
  has SpotPrice => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str');
  has ValidFrom => (is => 'ro', isa => 'Str');
  has ValidUntil => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RequestSpotInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::RequestSpotInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::ResetImageAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetImageAttribute');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::ResetInstanceAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetInstanceAttribute');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::ResetNetworkInterfaceAttribute {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has SourceDestCheck => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetNetworkInterfaceAttribute');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::ResetSnapshotAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetSnapshotAttribute');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::RevokeSecurityGroupEgress {
  use Moose;
  has CidrIp => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has FromPort => (is => 'ro', isa => 'Int');
  has GroupId => (is => 'ro', isa => 'Str', required => 1);
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[Aws::EC2::IpPermission]');
  has IpProtocol => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupName => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupOwnerId => (is => 'ro', isa => 'Str');
  has ToPort => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeSecurityGroupEgress');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::RevokeSecurityGroupIngress {
  use Moose;
  has CidrIp => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has FromPort => (is => 'ro', isa => 'Int');
  has GroupId => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[Aws::EC2::IpPermission]');
  has IpProtocol => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupName => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupOwnerId => (is => 'ro', isa => 'Str');
  has ToPort => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeSecurityGroupIngress');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::RunInstances {
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::BlockDeviceMapping]', traits => ['NameInRequest'], request_name => 'BlockDeviceMapping' );
  has ClientToken => (is => 'ro', isa => 'Str');
  has DisableApiTermination => (is => 'ro', isa => 'Bool');
  has DryRun => (is => 'ro', isa => 'Bool');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
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

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RunInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::RunInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::StartInstances {
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::StartInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::StopInstances {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Force => (is => 'ro', isa => 'Bool');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::StopInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::TerminateInstances {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::TerminateInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::UnassignPrivateIpAddresses {
  use Moose;
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'PrivateIpAddress' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UnassignPrivateIpAddresses');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EC2::UnmonitorInstances {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'InstanceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UnmonitorInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::UnmonitorInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

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
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '1');

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
