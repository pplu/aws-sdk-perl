
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'AWS::EC2::ArchitectureValues', [qw(i386 x86_64 )];
enum 'AWS::EC2::AttachmentStatus', [qw(attaching attached detaching detached )];
enum 'AWS::EC2::AvailabilityZoneState', [qw(available )];
enum 'AWS::EC2::BundleTaskState', [qw(pending waiting-for-shutdown bundling storing cancelling complete failed )];
enum 'AWS::EC2::CancelSpotInstanceRequestState', [qw(active open closed cancelled completed )];
enum 'AWS::EC2::ContainerFormat', [qw(ova )];
enum 'AWS::EC2::ConversionTaskState', [qw(active cancelling cancelled completed )];
enum 'AWS::EC2::CurrencyCodeValues', [qw(USD )];
enum 'AWS::EC2::DatafeedSubscriptionState', [qw(Active Inactive )];
enum 'AWS::EC2::DeviceType', [qw(ebs instance-store )];
enum 'AWS::EC2::DiskImageFormat', [qw(VMDK RAW VHD )];
enum 'AWS::EC2::DomainType', [qw(vpc standard )];
enum 'AWS::EC2::EventCode', [qw(instance-reboot system-reboot system-maintenance instance-retirement instance-stop )];
enum 'AWS::EC2::ExportEnvironment', [qw(citrix vmware microsoft )];
enum 'AWS::EC2::ExportTaskState', [qw(active cancelling cancelled completed )];
enum 'AWS::EC2::GatewayType', [qw(ipsec.1 )];
enum 'AWS::EC2::HypervisorType', [qw(ovm xen )];
enum 'AWS::EC2::ImageState', [qw(available deregistered )];
enum 'AWS::EC2::ImageTypeValues', [qw(machine kernel ramdisk )];
enum 'AWS::EC2::InstanceLifecycleType', [qw(spot )];
enum 'AWS::EC2::InstanceStateName', [qw(pending running shutting-down terminated stopping stopped )];
enum 'AWS::EC2::InstanceType', [qw(t1.micro m1.small m1.medium m1.large m1.xlarge m2.xlarge m2.2xlarge m2.4xlarge m3.xlarge m3.2xlarge c1.medium c1.xlarge hi1.4xlarge hs1.8xlarge cc1.4xlarge cc2.8xlarge cg1.4xlarge cr1.8xlarge )];
enum 'AWS::EC2::ListingState', [qw(available sold cancelled pending )];
enum 'AWS::EC2::ListingStatus', [qw(active pending cancelled closed )];
enum 'AWS::EC2::MonitoringState', [qw(disabled enabled pending )];
enum 'AWS::EC2::NetworkInterfaceStatus', [qw(available attaching in-use detaching )];
enum 'AWS::EC2::OfferingTypeValues', [qw(Heavy Utilization Medium Utilization Light Utilization )];
enum 'AWS::EC2::PermissionGroup', [qw(all )];
enum 'AWS::EC2::PlacementGroupState', [qw(pending available deleting deleted )];
enum 'AWS::EC2::PlacementStrategy', [qw(cluster )];
enum 'AWS::EC2::PlatformValues', [qw(Windows )];
enum 'AWS::EC2::ProductCodeValues', [qw(devpay marketplace )];
enum 'AWS::EC2::RecurringChargeFrequency', [qw(Hourly )];
enum 'AWS::EC2::ReservedInstanceState', [qw(payment-pending active payment-failed retired )];
enum 'AWS::EC2::ResourceType', [qw(customer-gateway dhcp-options image instance internet-gateway network-acl network-interface reserved-instances route-table snapshot spot-instances-request subnet security-group volume vpc vpn-connection vpn-gateway )];
enum 'AWS::EC2::RIProductDescription', [qw(Linux/UNIX Linux/UNIX (Amazon VPC) Windows Windows (Amazon VPC) )];
enum 'AWS::EC2::RouteState', [qw(active blackhole )];
enum 'AWS::EC2::RuleAction', [qw(allow deny )];
enum 'AWS::EC2::ShutdownBehavior', [qw(stop terminate )];
enum 'AWS::EC2::SnapshotState', [qw(pending completed error )];
enum 'AWS::EC2::SpotInstanceState', [qw(open active closed cancelled failed )];
enum 'AWS::EC2::SpotInstanceType', [qw(one-time persistent )];
enum 'AWS::EC2::SubnetState', [qw(pending available )];
enum 'AWS::EC2::SummaryStatus', [qw(ok impaired insufficient-data not-applicable )];
enum 'AWS::EC2::TelemetryStatus', [qw(UP DOWN )];
enum 'AWS::EC2::Tenancy', [qw(default dedicated )];
enum 'AWS::EC2::VirtualizationType', [qw(hvm paravirtual )];
enum 'AWS::EC2::VolumeAttachmentState', [qw(attaching attached detaching detached )];
enum 'AWS::EC2::VolumeState', [qw(creating available in-use deleting deleted error )];
enum 'AWS::EC2::VolumeStatusInfoStatus', [qw(ok impaired insufficient-data )];
enum 'AWS::EC2::VolumeType', [qw(standard io1 )];
enum 'AWS::EC2::VpcState', [qw(pending available )];
enum 'AWS::EC2::VpnState', [qw(pending available deleting deleted )];
enum 'AWS::EC2::VpnStaticRouteSource', [qw(Static )];


class AWS::EC2::AccountAttribute with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AttributeName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attributeName');
  has AttributeValues => (is => 'ro', isa => 'ArrayRef[AWS::EC2::AccountAttributeValue]', traits => ['Unwrapped'], xmlname => 'attributeValueSet');
}

class AWS::EC2::AccountAttributeValue with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AttributeValue => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attributeValue');
}

class AWS::EC2::Address with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AllocationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'allocationId');
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'associationId');
  has Domain => (is => 'ro', isa => 'AWS::EC2::DomainType', traits => ['Unwrapped'], xmlname => 'domain');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceId');
  has NetworkInterfaceOwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceOwnerId');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
  has PublicIp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'publicIp');
}

class AWS::EC2::AttributeBooleanValue with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Value => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::AttributeValue with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Value => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::AvailabilityZone with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Messages => (is => 'ro', isa => 'ArrayRef[AWS::EC2::AvailabilityZoneMessage]', traits => ['Unwrapped'], xmlname => 'messageSet');
  has RegionName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'regionName');
  has State => (is => 'ro', isa => 'AWS::EC2::AvailabilityZoneState', traits => ['Unwrapped'], xmlname => 'zoneState');
  has ZoneName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'zoneName');
}

class AWS::EC2::AvailabilityZoneMessage with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message');
}

class AWS::EC2::BlockDeviceMapping with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has DeviceName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has Ebs => (is => 'ro', isa => 'AWS::EC2::EbsBlockDevice', traits => ['Unwrapped'], xmlname => '');
  has NoDevice => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has VirtualName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::BundleTask with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has BundleId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'bundleId');
  has BundleTaskError => (is => 'ro', isa => 'AWS::EC2::BundleTaskError', traits => ['Unwrapped'], xmlname => 'error');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has Progress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'progress');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'startTime');
  has State => (is => 'ro', isa => 'AWS::EC2::BundleTaskState', traits => ['Unwrapped'], xmlname => 'state');
  has Storage => (is => 'ro', isa => 'AWS::EC2::Storage', traits => ['Unwrapped'], xmlname => 'storage');
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'updateTime');
}

class AWS::EC2::BundleTaskError with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Code => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'code');
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message');
}

class AWS::EC2::CancelledSpotInstanceRequest with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has SpotInstanceRequestId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestId');
  has State => (is => 'ro', isa => 'AWS::EC2::CancelSpotInstanceRequestState', traits => ['Unwrapped'], xmlname => 'state');
}

class AWS::EC2::ConversionTask with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has ConversionTaskId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'conversionTaskId', required => 1);
  has ExpirationTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'expirationTime');
  has ImportInstance => (is => 'ro', isa => 'AWS::EC2::ImportInstanceTaskDetails', traits => ['Unwrapped'], xmlname => 'importInstance');
  has ImportVolume => (is => 'ro', isa => 'AWS::EC2::ImportVolumeTaskDetails', traits => ['Unwrapped'], xmlname => 'importVolume');
  has State => (is => 'ro', isa => 'AWS::EC2::ConversionTaskState', traits => ['Unwrapped'], xmlname => 'state', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'statusMessage');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
}

class AWS::EC2::CreateVolumePermission with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Group => (is => 'ro', isa => 'AWS::EC2::PermissionGroup', traits => ['Unwrapped'], xmlname => '');
  has UserId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::CreateVolumePermissionModifications with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Add => (is => 'ro', isa => 'ArrayRef[AWS::EC2::CreateVolumePermission]', traits => ['Unwrapped'], xmlname => '');
  has Remove => (is => 'ro', isa => 'ArrayRef[AWS::EC2::CreateVolumePermission]', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::CustomerGateway with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has BgpAsn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'bgpAsn');
  has CustomerGatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'customerGatewayId');
  has IpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ipAddress');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has Type => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'type');
}

class AWS::EC2::DhcpConfiguration with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Key => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'key');
  has Values => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'valueSet');
}

class AWS::EC2::DhcpOptions with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has DhcpConfigurations => (is => 'ro', isa => 'ArrayRef[AWS::EC2::DhcpConfiguration]', traits => ['Unwrapped'], xmlname => 'dhcpConfigurationSet');
  has DhcpOptionsId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'dhcpOptionsId');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
}

class AWS::EC2::DiskImage with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has Image => (is => 'ro', isa => 'AWS::EC2::DiskImageDetail', traits => ['Unwrapped'], xmlname => '');
  has Volume => (is => 'ro', isa => 'AWS::EC2::VolumeDetail', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::DiskImageDetail with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Bytes => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => '', required => 1);
  has Format => (is => 'ro', isa => 'AWS::EC2::DiskImageFormat', traits => ['Unwrapped'], xmlname => '', required => 1);
  has ImportManifestUrl => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '', required => 1);
}

class AWS::EC2::EbsBlockDevice with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has DeleteOnTermination => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has Iops => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => '');
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has VolumeSize => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => '');
  has VolumeType => (is => 'ro', isa => 'AWS::EC2::VolumeType', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::EbsInstanceBlockDevice with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AttachTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachTime');
  has DeleteOnTermination => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
  has Status => (is => 'ro', isa => 'AWS::EC2::AttachmentStatus', traits => ['Unwrapped'], xmlname => 'status');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
}

class AWS::EC2::EbsInstanceBlockDeviceSpecification with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has DeleteOnTermination => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::ExportTask with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has ExportTaskId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'exportTaskId');
  has ExportToS3Task => (is => 'ro', isa => 'AWS::EC2::ExportToS3Task', traits => ['Unwrapped'], xmlname => 'exportToS3');
  has InstanceExportDetails => (is => 'ro', isa => 'AWS::EC2::InstanceExportDetails', traits => ['Unwrapped'], xmlname => 'instanceExport');
  has State => (is => 'ro', isa => 'AWS::EC2::ExportTaskState', traits => ['Unwrapped'], xmlname => 'state');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'statusMessage');
}

class AWS::EC2::ExportToS3Task with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has ContainerFormat => (is => 'ro', isa => 'AWS::EC2::ContainerFormat', traits => ['Unwrapped'], xmlname => 'containerFormat');
  has DiskImageFormat => (is => 'ro', isa => 'AWS::EC2::DiskImageFormat', traits => ['Unwrapped'], xmlname => 'diskImageFormat');
  has S3Bucket => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 's3Bucket');
  has S3Key => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 's3Key');
}

class AWS::EC2::ExportToS3TaskSpecification with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has ContainerFormat => (is => 'ro', isa => 'AWS::EC2::ContainerFormat', traits => ['Unwrapped'], xmlname => '');
  has DiskImageFormat => (is => 'ro', isa => 'AWS::EC2::DiskImageFormat', traits => ['Unwrapped'], xmlname => '');
  has S3Bucket => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has S3Prefix => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::Filter with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has Values => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::GroupIdentifier with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has GroupId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupId');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupName');
}

class AWS::EC2::IamInstanceProfile with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Arn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'arn');
  has Id => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'id');
}

class AWS::EC2::IamInstanceProfileSpecification with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Arn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::IcmpTypeCode with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Code => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => '');
  has Type => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::Image with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Architecture => (is => 'ro', isa => 'AWS::EC2::ArchitectureValues', traits => ['Unwrapped'], xmlname => 'architecture');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::BlockDeviceMapping]', traits => ['Unwrapped'], xmlname => 'blockDeviceMapping');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has Hypervisor => (is => 'ro', isa => 'AWS::EC2::HypervisorType', traits => ['Unwrapped'], xmlname => 'hypervisor');
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');
  has ImageLocation => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageLocation');
  has ImageOwnerAlias => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageOwnerAlias');
  has ImageType => (is => 'ro', isa => 'AWS::EC2::ImageTypeValues', traits => ['Unwrapped'], xmlname => 'imageType');
  has KernelId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'kernelId');
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'name');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageOwnerId');
  has Platform => (is => 'ro', isa => 'AWS::EC2::PlatformValues', traits => ['Unwrapped'], xmlname => 'platform');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has Public => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'isPublic');
  has RamdiskId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ramdiskId');
  has RootDeviceName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'rootDeviceName');
  has RootDeviceType => (is => 'ro', isa => 'AWS::EC2::DeviceType', traits => ['Unwrapped'], xmlname => 'rootDeviceType');
  has State => (is => 'ro', isa => 'AWS::EC2::ImageState', traits => ['Unwrapped'], xmlname => 'imageState');
  has StateReason => (is => 'ro', isa => 'AWS::EC2::StateReason', traits => ['Unwrapped'], xmlname => 'stateReason');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VirtualizationType => (is => 'ro', isa => 'AWS::EC2::VirtualizationType', traits => ['Unwrapped'], xmlname => 'virtualizationType');
}

class AWS::EC2::ImportInstanceLaunchSpecification with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AdditionalInfo => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has Architecture => (is => 'ro', isa => 'AWS::EC2::ArchitectureValues', traits => ['Unwrapped'], xmlname => '');
  has GroupNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => '');
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'AWS::EC2::ShutdownBehavior', traits => ['Unwrapped'], xmlname => '');
  has InstanceType => (is => 'ro', isa => 'AWS::EC2::InstanceType', traits => ['Unwrapped'], xmlname => '');
  has Monitoring => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has Placement => (is => 'ro', isa => 'AWS::EC2::Placement', traits => ['Unwrapped'], xmlname => '');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has UserData => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::ImportInstanceTaskDetails with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has Platform => (is => 'ro', isa => 'AWS::EC2::PlatformValues', traits => ['Unwrapped'], xmlname => 'platform');
  has Volumes => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ImportInstanceVolumeDetailItem]', traits => ['Unwrapped'], xmlname => 'volumes', required => 1);
}

class AWS::EC2::ImportVolumeTaskDetails with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone', required => 1);
  has BytesConverted => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'bytesConverted', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has Image => (is => 'ro', isa => 'AWS::EC2::DiskImageDescription', traits => ['Unwrapped'], xmlname => 'image', required => 1);
  has Volume => (is => 'ro', isa => 'AWS::EC2::DiskImageVolumeDescription', traits => ['Unwrapped'], xmlname => 'volume', required => 1);
}

class AWS::EC2::Instance with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AmiLaunchIndex => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'amiLaunchIndex');
  has Architecture => (is => 'ro', isa => 'AWS::EC2::ArchitectureValues', traits => ['Unwrapped'], xmlname => 'architecture');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceBlockDeviceMapping]', traits => ['Unwrapped'], xmlname => 'blockDeviceMapping');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'clientToken');
  has EbsOptimized => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ebsOptimized');
  has Hypervisor => (is => 'ro', isa => 'AWS::EC2::HypervisorType', traits => ['Unwrapped'], xmlname => 'hypervisor');
  has IamInstanceProfile => (is => 'ro', isa => 'AWS::EC2::IamInstanceProfile', traits => ['Unwrapped'], xmlname => 'iamInstanceProfile');
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has InstanceLifecycle => (is => 'ro', isa => 'AWS::EC2::InstanceLifecycleType', traits => ['Unwrapped'], xmlname => 'instanceLifecycle');
  has InstanceType => (is => 'ro', isa => 'AWS::EC2::InstanceType', traits => ['Unwrapped'], xmlname => 'instanceType');
  has KernelId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'kernelId');
  has KeyName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyName');
  has LaunchTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'launchTime');
  has License => (is => 'ro', isa => 'AWS::EC2::InstanceLicense', traits => ['Unwrapped'], xmlname => 'license');
  has Monitoring => (is => 'ro', isa => 'AWS::EC2::Monitoring', traits => ['Unwrapped'], xmlname => 'monitoring');
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceNetworkInterface]', traits => ['Unwrapped'], xmlname => 'networkInterfaceSet');
  has Placement => (is => 'ro', isa => 'AWS::EC2::Placement', traits => ['Unwrapped'], xmlname => 'placement');
  has Platform => (is => 'ro', isa => 'AWS::EC2::PlatformValues', traits => ['Unwrapped'], xmlname => 'platform');
  has PrivateDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateDnsName');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has PublicDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'dnsName');
  has PublicIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ipAddress');
  has RamdiskId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ramdiskId');
  has RootDeviceName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'rootDeviceName');
  has RootDeviceType => (is => 'ro', isa => 'AWS::EC2::DeviceType', traits => ['Unwrapped'], xmlname => 'rootDeviceType');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[AWS::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has SourceDestCheck => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'sourceDestCheck');
  has SpotInstanceRequestId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestId');
  has State => (is => 'ro', isa => 'AWS::EC2::InstanceState', traits => ['Unwrapped'], xmlname => 'instanceState');
  has StateReason => (is => 'ro', isa => 'AWS::EC2::StateReason', traits => ['Unwrapped'], xmlname => 'stateReason');
  has StateTransitionReason => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reason');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VirtualizationType => (is => 'ro', isa => 'AWS::EC2::VirtualizationType', traits => ['Unwrapped'], xmlname => 'virtualizationType');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

class AWS::EC2::InstanceBlockDeviceMapping with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has DeviceName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'deviceName');
  has Ebs => (is => 'ro', isa => 'AWS::EC2::EbsInstanceBlockDevice', traits => ['Unwrapped'], xmlname => 'ebs');
}

class AWS::EC2::InstanceBlockDeviceMappingSpecification with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has DeviceName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has Ebs => (is => 'ro', isa => 'AWS::EC2::EbsInstanceBlockDeviceSpecification', traits => ['Unwrapped'], xmlname => '');
  has NoDevice => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has VirtualName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::InstanceCount with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has InstanceCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'instanceCount');
  has State => (is => 'ro', isa => 'AWS::EC2::ListingState', traits => ['Unwrapped'], xmlname => 'state');
}

class AWS::EC2::InstanceExportDetails with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has TargetEnvironment => (is => 'ro', isa => 'AWS::EC2::ExportEnvironment', traits => ['Unwrapped'], xmlname => 'targetEnvironment');
}

class AWS::EC2::InstanceLicense with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Pool => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'pool');
}

class AWS::EC2::InstanceLicenseSpecification with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Pool => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::InstanceMonitoring with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has Monitoring => (is => 'ro', isa => 'AWS::EC2::Monitoring', traits => ['Unwrapped'], xmlname => 'monitoring');
}

class AWS::EC2::InstanceNetworkInterface with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Association => (is => 'ro', isa => 'AWS::EC2::InstanceNetworkInterfaceAssociation', traits => ['Unwrapped'], xmlname => 'association');
  has Attachment => (is => 'ro', isa => 'AWS::EC2::InstanceNetworkInterfaceAttachment', traits => ['Unwrapped'], xmlname => 'attachment');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has Groups => (is => 'ro', isa => 'ArrayRef[AWS::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceId');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has PrivateDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateDnsName');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstancePrivateIpAddress]', traits => ['Unwrapped'], xmlname => 'privateIpAddressesSet');
  has SourceDestCheck => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'sourceDestCheck');
  has Status => (is => 'ro', isa => 'AWS::EC2::NetworkInterfaceStatus', traits => ['Unwrapped'], xmlname => 'status');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

class AWS::EC2::InstanceNetworkInterfaceSpecification with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has DeleteOnTermination => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has DeviceIndex => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => '');
  has Groups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => '');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[AWS::EC2::PrivateIpAddressSpecification]', traits => ['Unwrapped'], xmlname => '');
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => '');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::InstanceState with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Code => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'code');
  has Name => (is => 'ro', isa => 'AWS::EC2::InstanceStateName', traits => ['Unwrapped'], xmlname => 'name');
}

class AWS::EC2::InstanceStateChange with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has CurrentState => (is => 'ro', isa => 'AWS::EC2::InstanceState', traits => ['Unwrapped'], xmlname => 'currentState');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has PreviousState => (is => 'ro', isa => 'AWS::EC2::InstanceState', traits => ['Unwrapped'], xmlname => 'previousState');
}

class AWS::EC2::InstanceStatus with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has Events => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceStatusEvent]', traits => ['Unwrapped'], xmlname => 'eventsSet');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has InstanceState => (is => 'ro', isa => 'AWS::EC2::InstanceState', traits => ['Unwrapped'], xmlname => 'instanceState');
  has InstanceStatus => (is => 'ro', isa => 'AWS::EC2::InstanceStatusSummary', traits => ['Unwrapped'], xmlname => 'instanceStatus');
  has SystemStatus => (is => 'ro', isa => 'AWS::EC2::InstanceStatusSummary', traits => ['Unwrapped'], xmlname => 'systemStatus');
}

class AWS::EC2::InstanceStatusEvent with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Code => (is => 'ro', isa => 'AWS::EC2::EventCode', traits => ['Unwrapped'], xmlname => 'code');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has NotAfter => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'notAfter');
  has NotBefore => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'notBefore');
}

class AWS::EC2::InstanceStatusSummary with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Details => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceStatusDetails]', traits => ['Unwrapped'], xmlname => 'details');
  has Status => (is => 'ro', isa => 'AWS::EC2::SummaryStatus', traits => ['Unwrapped'], xmlname => 'status');
}

class AWS::EC2::InternetGateway with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Attachments => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InternetGatewayAttachment]', traits => ['Unwrapped'], xmlname => 'attachmentSet');
  has InternetGatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'internetGatewayId');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
}

class AWS::EC2::InternetGatewayAttachment with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has State => (is => 'ro', isa => 'AWS::EC2::AttachmentStatus', traits => ['Unwrapped'], xmlname => 'state');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

class AWS::EC2::IpPermission with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has FromPort => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'fromPort');
  has IpProtocol => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ipProtocol');
  has IpRanges => (is => 'ro', isa => 'ArrayRef[AWS::EC2::IpRange]', traits => ['Unwrapped'], xmlname => 'ipRanges');
  has ToPort => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'toPort');
  has UserIdGroupPairs => (is => 'ro', isa => 'ArrayRef[AWS::EC2::UserIdGroupPair]', traits => ['Unwrapped'], xmlname => 'groups');
}

class AWS::EC2::IpRange with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has CidrIp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'cidrIp');
}

class AWS::EC2::KeyPairInfo with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has KeyFingerprint => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyFingerprint');
  has KeyName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyName');
}

class AWS::EC2::LaunchPermission with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Group => (is => 'ro', isa => 'AWS::EC2::PermissionGroup', traits => ['Unwrapped'], xmlname => '');
  has UserId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::LaunchPermissionModifications with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Add => (is => 'ro', isa => 'ArrayRef[AWS::EC2::LaunchPermission]', traits => ['Unwrapped'], xmlname => '');
  has Remove => (is => 'ro', isa => 'ArrayRef[AWS::EC2::LaunchPermission]', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::LaunchSpecification with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AddressingType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'addressingType');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::BlockDeviceMapping]', traits => ['Unwrapped'], xmlname => 'blockDeviceMapping');
  has EbsOptimized => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ebsOptimized');
  has IamInstanceProfile => (is => 'ro', isa => 'AWS::EC2::IamInstanceProfileSpecification', traits => ['Unwrapped'], xmlname => 'iamInstanceProfile');
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');
  has InstanceType => (is => 'ro', isa => 'AWS::EC2::InstanceType', traits => ['Unwrapped'], xmlname => 'instanceType');
  has KernelId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'kernelId');
  has KeyName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyName');
  has MonitoringEnabled => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'monitoringEnabled');
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceNetworkInterfaceSpecification]', traits => ['Unwrapped'], xmlname => 'networkInterfaceSet');
  has Placement => (is => 'ro', isa => 'AWS::EC2::SpotPlacement', traits => ['Unwrapped'], xmlname => 'placement');
  has RamdiskId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ramdiskId');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[AWS::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
  has UserData => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'userData');
}

class AWS::EC2::License with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Capacities => (is => 'ro', isa => 'ArrayRef[AWS::EC2::LicenseCapacity]', traits => ['Unwrapped'], xmlname => 'capacitySet');
  has LicenseId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'licenseId');
  has Pool => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'pool');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has Type => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'type');
}

class AWS::EC2::LicenseCapacity with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Capacity => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'capacity');
  has EarliestAllowedDeactivationTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'earliestAllowedDeactivationTime');
  has InstanceCapacity => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'instanceCapacity');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
}

class AWS::EC2::Monitoring with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has State => (is => 'ro', isa => 'AWS::EC2::MonitoringState', traits => ['Unwrapped'], xmlname => 'state');
}

class AWS::EC2::NetworkAcl with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Associations => (is => 'ro', isa => 'ArrayRef[AWS::EC2::NetworkAclAssociation]', traits => ['Unwrapped'], xmlname => 'associationSet');
  has Entries => (is => 'ro', isa => 'ArrayRef[AWS::EC2::NetworkAclEntry]', traits => ['Unwrapped'], xmlname => 'entrySet');
  has IsDefault => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'default');
  has NetworkAclId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkAclId');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

class AWS::EC2::NetworkAclAssociation with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has NetworkAclAssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkAclAssociationId');
  has NetworkAclId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkAclId');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
}

class AWS::EC2::NetworkAclEntry with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has CidrBlock => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'cidrBlock');
  has Egress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'egress');
  has IcmpTypeCode => (is => 'ro', isa => 'AWS::EC2::IcmpTypeCode', traits => ['Unwrapped'], xmlname => 'icmpTypeCode');
  has PortRange => (is => 'ro', isa => 'AWS::EC2::PortRange', traits => ['Unwrapped'], xmlname => 'portRange');
  has Protocol => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'protocol');
  has RuleAction => (is => 'ro', isa => 'AWS::EC2::RuleAction', traits => ['Unwrapped'], xmlname => 'ruleAction');
  has RuleNumber => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'ruleNumber');
}

class AWS::EC2::NetworkInterface with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Association => (is => 'ro', isa => 'AWS::EC2::NetworkInterfaceAssociation', traits => ['Unwrapped'], xmlname => 'association');
  has Attachment => (is => 'ro', isa => 'AWS::EC2::NetworkInterfaceAttachment', traits => ['Unwrapped'], xmlname => 'attachment');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has Groups => (is => 'ro', isa => 'ArrayRef[AWS::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has MacAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'macAddress');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceId');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has PrivateDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateDnsName');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[AWS::EC2::NetworkInterfacePrivateIpAddress]', traits => ['Unwrapped'], xmlname => 'privateIpAddressesSet');
  has RequesterId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'requesterId');
  has RequesterManaged => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'requesterManaged');
  has SourceDestCheck => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'sourceDestCheck');
  has Status => (is => 'ro', isa => 'AWS::EC2::NetworkInterfaceStatus', traits => ['Unwrapped'], xmlname => 'status');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
  has TagSet => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

class AWS::EC2::NetworkInterfaceAssociation with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AllocationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'allocationId');
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'associationId');
  has IpOwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ipOwnerId');
  has PublicIp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'publicIp');
}

class AWS::EC2::NetworkInterfaceAttachment with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AttachTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachTime');
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachmentId');
  has DeleteOnTermination => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
  has DeviceIndex => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'deviceIndex');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has InstanceOwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceOwnerId');
  has Status => (is => 'ro', isa => 'AWS::EC2::AttachmentStatus', traits => ['Unwrapped'], xmlname => 'status');
}

class AWS::EC2::NetworkInterfaceAttachmentChanges with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has DeleteOnTermination => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::NetworkInterfacePrivateIpAddress with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Association => (is => 'ro', isa => 'AWS::EC2::NetworkInterfaceAssociation', traits => ['Unwrapped'], xmlname => 'association');
  has Primary => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'primary');
  has PrivateDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateDnsName');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
}

class AWS::EC2::Placement with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupName');
  has Tenancy => (is => 'ro', isa => 'AWS::EC2::Tenancy', traits => ['Unwrapped'], xmlname => 'tenancy');
}

class AWS::EC2::PlacementGroup with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has GroupName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupName');
  has State => (is => 'ro', isa => 'AWS::EC2::PlacementGroupState', traits => ['Unwrapped'], xmlname => 'state');
  has Strategy => (is => 'ro', isa => 'AWS::EC2::PlacementStrategy', traits => ['Unwrapped'], xmlname => 'strategy');
}

class AWS::EC2::PortRange with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has From => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'from');
  has To => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'to');
}

class AWS::EC2::PriceSchedule with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Active => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'active');
  has CurrencyCode => (is => 'ro', isa => 'AWS::EC2::CurrencyCodeValues', traits => ['Unwrapped'], xmlname => 'currencyCode');
  has Price => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'price');
  has Term => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'term');
}

class AWS::EC2::PriceScheduleSpecification with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has CurrencyCode => (is => 'ro', isa => 'AWS::EC2::CurrencyCodeValues', traits => ['Unwrapped'], xmlname => '');
  has Price => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => '');
  has Term => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::PricingDetail with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Count => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'count');
  has Price => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'price');
}

class AWS::EC2::PrivateIpAddressSpecification with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Primary => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '', required => 1);
}

class AWS::EC2::ProductCode with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has ProductCodeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'productCode');
  has ProductCodeType => (is => 'ro', isa => 'AWS::EC2::ProductCodeValues', traits => ['Unwrapped'], xmlname => 'type');
}

class AWS::EC2::PropagatingVgw with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has GatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'gatewayId');
}

class AWS::EC2::RecurringCharge with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Amount => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'amount');
  has Frequency => (is => 'ro', isa => 'AWS::EC2::RecurringChargeFrequency', traits => ['Unwrapped'], xmlname => 'frequency');
}

class AWS::EC2::Region with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Endpoint => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'regionEndpoint');
  has RegionName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'regionName');
}

class AWS::EC2::Reservation with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Groups => (is => 'ro', isa => 'ArrayRef[AWS::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has Instances => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Instance]', traits => ['Unwrapped'], xmlname => 'instancesSet');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has RequesterId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'requesterId');
  has ReservationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservationId');
}

class AWS::EC2::ReservedInstanceLimitPrice with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Amount => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => '');
  has CurrencyCode => (is => 'ro', isa => 'AWS::EC2::CurrencyCodeValues', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::ReservedInstances with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has CurrencyCode => (is => 'ro', isa => 'AWS::EC2::CurrencyCodeValues', traits => ['Unwrapped'], xmlname => 'currencyCode');
  has Duration => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'duration');
  has End => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'end');
  has FixedPrice => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'fixedPrice');
  has InstanceCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'instanceCount');
  has InstanceTenancy => (is => 'ro', isa => 'AWS::EC2::Tenancy', traits => ['Unwrapped'], xmlname => 'instanceTenancy');
  has InstanceType => (is => 'ro', isa => 'AWS::EC2::InstanceType', traits => ['Unwrapped'], xmlname => 'instanceType');
  has OfferingType => (is => 'ro', isa => 'AWS::EC2::OfferingTypeValues', traits => ['Unwrapped'], xmlname => 'offeringType');
  has ProductDescription => (is => 'ro', isa => 'AWS::EC2::RIProductDescription', traits => ['Unwrapped'], xmlname => 'productDescription');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[AWS::EC2::RecurringCharge]', traits => ['Unwrapped'], xmlname => 'recurringCharges');
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesId');
  has Start => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'start');
  has State => (is => 'ro', isa => 'AWS::EC2::ReservedInstanceState', traits => ['Unwrapped'], xmlname => 'state');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has UsagePrice => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'usagePrice');
}

class AWS::EC2::ReservedInstancesConfiguration with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has InstanceCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => '');
  has InstanceType => (is => 'ro', isa => 'AWS::EC2::InstanceType', traits => ['Unwrapped'], xmlname => '');
  has Platform => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::ReservedInstancesId with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesId');
}

class AWS::EC2::ReservedInstancesListing with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'clientToken');
  has CreateDate => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'createDate');
  has InstanceCounts => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceCount]', traits => ['Unwrapped'], xmlname => 'instanceCounts');
  has PriceSchedules => (is => 'ro', isa => 'ArrayRef[AWS::EC2::PriceSchedule]', traits => ['Unwrapped'], xmlname => 'priceSchedules');
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesId');
  has ReservedInstancesListingId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesListingId');
  has Status => (is => 'ro', isa => 'AWS::EC2::ListingStatus', traits => ['Unwrapped'], xmlname => 'status');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'statusMessage');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has UpdateDate => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'updateDate');
}

class AWS::EC2::ReservedInstancesModification with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'clientToken');
  has CreateDate => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'createDate');
  has EffectiveDate => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'effectiveDate');
  has ModificationResults => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ReservedInstancesModificationResult]', traits => ['Unwrapped'], xmlname => 'modificationResultSet');
  has ReservedInstancesIds => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ReservedInstancesId]', traits => ['Unwrapped'], xmlname => 'reservedInstancesSet');
  has ReservedInstancesModificationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesModificationId');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'statusMessage');
  has UpdateDate => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'updateDate');
}

class AWS::EC2::ReservedInstancesModificationResult with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesId');
  has TargetConfiguration => (is => 'ro', isa => 'AWS::EC2::ReservedInstancesConfiguration', traits => ['Unwrapped'], xmlname => 'targetConfiguration');
}

class AWS::EC2::ReservedInstancesOffering with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has CurrencyCode => (is => 'ro', isa => 'AWS::EC2::CurrencyCodeValues', traits => ['Unwrapped'], xmlname => 'currencyCode');
  has Duration => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'duration');
  has FixedPrice => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'fixedPrice');
  has InstanceTenancy => (is => 'ro', isa => 'AWS::EC2::Tenancy', traits => ['Unwrapped'], xmlname => 'instanceTenancy');
  has InstanceType => (is => 'ro', isa => 'AWS::EC2::InstanceType', traits => ['Unwrapped'], xmlname => 'instanceType');
  has Marketplace => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'marketplace');
  has OfferingType => (is => 'ro', isa => 'AWS::EC2::OfferingTypeValues', traits => ['Unwrapped'], xmlname => 'offeringType');
  has PricingDetails => (is => 'ro', isa => 'ArrayRef[AWS::EC2::PricingDetail]', traits => ['Unwrapped'], xmlname => 'pricingDetailsSet');
  has ProductDescription => (is => 'ro', isa => 'AWS::EC2::RIProductDescription', traits => ['Unwrapped'], xmlname => 'productDescription');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[AWS::EC2::RecurringCharge]', traits => ['Unwrapped'], xmlname => 'recurringCharges');
  has ReservedInstancesOfferingId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesOfferingId');
  has UsagePrice => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => 'usagePrice');
}

class AWS::EC2::Route with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'destinationCidrBlock');
  has GatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'gatewayId');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has InstanceOwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceOwnerId');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceId');
  has State => (is => 'ro', isa => 'AWS::EC2::RouteState', traits => ['Unwrapped'], xmlname => 'state');
}

class AWS::EC2::RouteTable with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Associations => (is => 'ro', isa => 'ArrayRef[AWS::EC2::RouteTableAssociation]', traits => ['Unwrapped'], xmlname => 'associationSet');
  has PropagatingVgws => (is => 'ro', isa => 'ArrayRef[AWS::EC2::PropagatingVgw]', traits => ['Unwrapped'], xmlname => 'propagatingVgwSet');
  has RouteTableId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'routeTableId');
  has Routes => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Route]', traits => ['Unwrapped'], xmlname => 'routeSet');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

class AWS::EC2::RouteTableAssociation with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Main => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'main');
  has RouteTableAssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'routeTableAssociationId');
  has RouteTableId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'routeTableId');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
}

class AWS::EC2::RunInstancesMonitoringEnabled with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Enabled => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '', required => 1);
}

class AWS::EC2::S3Storage with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AWSAccessKeyId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has Bucket => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'bucket');
  has Prefix => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'prefix');
  has UploadPolicy => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'uploadPolicy');
  has UploadPolicySignature => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'uploadPolicySignature');
}

class AWS::EC2::SecurityGroup with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupDescription');
  has GroupId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupId');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupName');
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[AWS::EC2::IpPermission]', traits => ['Unwrapped'], xmlname => 'ipPermissions');
  has IpPermissionsEgress => (is => 'ro', isa => 'ArrayRef[AWS::EC2::IpPermission]', traits => ['Unwrapped'], xmlname => 'ipPermissionsEgress');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

class AWS::EC2::Snapshot with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has OwnerAlias => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerAlias');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has Progress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'progress');
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'snapshotId');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'startTime');
  has State => (is => 'ro', isa => 'AWS::EC2::SnapshotState', traits => ['Unwrapped'], xmlname => 'status');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
  has VolumeSize => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'volumeSize');
}

class AWS::EC2::SpotDatafeedSubscription with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Bucket => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'bucket');
  has Fault => (is => 'ro', isa => 'AWS::EC2::SpotInstanceStateFault', traits => ['Unwrapped'], xmlname => 'fault');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has Prefix => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'prefix');
  has State => (is => 'ro', isa => 'AWS::EC2::DatafeedSubscriptionState', traits => ['Unwrapped'], xmlname => 'state');
}

class AWS::EC2::SpotInstanceRequest with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AvailabilityZoneGroup => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZoneGroup');
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'createTime');
  has Fault => (is => 'ro', isa => 'AWS::EC2::SpotInstanceStateFault', traits => ['Unwrapped'], xmlname => 'fault');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has LaunchGroup => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'launchGroup');
  has LaunchSpecification => (is => 'ro', isa => 'AWS::EC2::LaunchSpecification', traits => ['Unwrapped'], xmlname => 'launchSpecification');
  has LaunchedAvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'launchedAvailabilityZone');
  has ProductDescription => (is => 'ro', isa => 'AWS::EC2::RIProductDescription', traits => ['Unwrapped'], xmlname => 'productDescription');
  has SpotInstanceRequestId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestId');
  has SpotPrice => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'spotPrice');
  has State => (is => 'ro', isa => 'AWS::EC2::SpotInstanceState', traits => ['Unwrapped'], xmlname => 'state');
  has Status => (is => 'ro', isa => 'AWS::EC2::SpotInstanceStatus', traits => ['Unwrapped'], xmlname => 'status');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has Type => (is => 'ro', isa => 'AWS::EC2::SpotInstanceType', traits => ['Unwrapped'], xmlname => 'type');
  has ValidFrom => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'validFrom');
  has ValidUntil => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'validUntil');
}

class AWS::EC2::SpotInstanceStateFault with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Code => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'code');
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message');
}

class AWS::EC2::SpotInstanceStatus with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Code => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'code');
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message');
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'updateTime');
}

class AWS::EC2::SpotLaunchSpecification with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AddressingType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::BlockDeviceMapping]', traits => ['Unwrapped'], xmlname => '');
  has EbsOptimized => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has IamInstanceProfile => (is => 'ro', isa => 'AWS::EC2::IamInstanceProfileSpecification', traits => ['Unwrapped'], xmlname => '');
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has InstanceType => (is => 'ro', isa => 'AWS::EC2::InstanceType', traits => ['Unwrapped'], xmlname => '');
  has KernelId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has KeyName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has MonitoringEnabled => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceNetworkInterfaceSpecification]', traits => ['Unwrapped'], xmlname => '');
  has Placement => (is => 'ro', isa => 'AWS::EC2::SpotPlacement', traits => ['Unwrapped'], xmlname => '');
  has RamdiskId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => '');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => '');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has UserData => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::SpotPlacement with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::SpotPrice with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has InstanceType => (is => 'ro', isa => 'AWS::EC2::InstanceType', traits => ['Unwrapped'], xmlname => 'instanceType');
  has ProductDescription => (is => 'ro', isa => 'AWS::EC2::RIProductDescription', traits => ['Unwrapped'], xmlname => 'productDescription');
  has SpotPrice => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'spotPrice');
  has Timestamp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'timestamp');
}

class AWS::EC2::StateReason with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Code => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'code');
  has Message => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'message');
}

class AWS::EC2::Storage with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has S3 => (is => 'ro', isa => 'AWS::EC2::S3Storage', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::Subnet with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has AvailableIpAddressCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'availableIpAddressCount');
  has CidrBlock => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'cidrBlock');
  has DefaultForAz => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'defaultForAz');
  has MapPublicIpOnLaunch => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'mapPublicIpOnLaunch');
  has State => (is => 'ro', isa => 'AWS::EC2::SubnetState', traits => ['Unwrapped'], xmlname => 'state');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

class AWS::EC2::Tag with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Key => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'key');
  has Value => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'value');
}

class AWS::EC2::TagDescription with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Key => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'key');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'resourceId');
  has ResourceType => (is => 'ro', isa => 'AWS::EC2::ResourceType', traits => ['Unwrapped'], xmlname => 'resourceType');
  has Value => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'value');
}

class AWS::EC2::UserIdGroupPair with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has GroupId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupId');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupName');
  has UserId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'userId');
}

class AWS::EC2::VgwTelemetry with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AcceptedRouteCount => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'acceptedRouteCount');
  has LastStatusChange => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'lastStatusChange');
  has OutsideIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'outsideIpAddress');
  has Status => (is => 'ro', isa => 'AWS::EC2::TelemetryStatus', traits => ['Unwrapped'], xmlname => 'status');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'statusMessage');
}

class AWS::EC2::Volume with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Attachments => (is => 'ro', isa => 'ArrayRef[AWS::EC2::VolumeAttachment]', traits => ['Unwrapped'], xmlname => 'attachmentSet');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'createTime');
  has Iops => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'iops');
  has Size => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'size');
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'snapshotId');
  has State => (is => 'ro', isa => 'AWS::EC2::VolumeState', traits => ['Unwrapped'], xmlname => 'status');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
  has VolumeType => (is => 'ro', isa => 'AWS::EC2::VolumeType', traits => ['Unwrapped'], xmlname => 'volumeType');
}

class AWS::EC2::VolumeAttachment with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AttachTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachTime');
  has DeleteOnTermination => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
  has Device => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'device');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has State => (is => 'ro', isa => 'AWS::EC2::VolumeAttachmentState', traits => ['Unwrapped'], xmlname => 'status');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
}

class AWS::EC2::VolumeDetail with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Size => (is => 'ro', isa => 'Num', traits => ['Unwrapped'], xmlname => '', required => 1);
}

class AWS::EC2::VolumeStatusAction with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Code => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'code');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has EventId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'eventId');
  has EventType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'eventType');
}

class AWS::EC2::VolumeStatusEvent with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has EventId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'eventId');
  has EventType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'eventType');
  has NotAfter => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'notAfter');
  has NotBefore => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'notBefore');
}

class AWS::EC2::VolumeStatusInfo with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Details => (is => 'ro', isa => 'ArrayRef[AWS::EC2::VolumeStatusDetails]', traits => ['Unwrapped'], xmlname => 'details');
  has Status => (is => 'ro', isa => 'AWS::EC2::VolumeStatusInfoStatus', traits => ['Unwrapped'], xmlname => 'status');
}

class AWS::EC2::VolumeStatusItem with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has Actions => (is => 'ro', isa => 'ArrayRef[AWS::EC2::VolumeStatusAction]', traits => ['Unwrapped'], xmlname => 'actionsSet');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has Events => (is => 'ro', isa => 'ArrayRef[AWS::EC2::VolumeStatusEvent]', traits => ['Unwrapped'], xmlname => 'eventsSet');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
  has VolumeStatus => (is => 'ro', isa => 'AWS::EC2::VolumeStatusInfo', traits => ['Unwrapped'], xmlname => 'volumeStatus');
}

class AWS::EC2::Vpc with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has CidrBlock => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'cidrBlock');
  has DhcpOptionsId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'dhcpOptionsId');
  has InstanceTenancy => (is => 'ro', isa => 'AWS::EC2::Tenancy', traits => ['Unwrapped'], xmlname => 'instanceTenancy');
  has IsDefault => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'isDefault');
  has State => (is => 'ro', isa => 'AWS::EC2::VpcState', traits => ['Unwrapped'], xmlname => 'state');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

class AWS::EC2::VpcAttachment with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has State => (is => 'ro', isa => 'AWS::EC2::AttachmentStatus', traits => ['Unwrapped'], xmlname => 'state');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}

class AWS::EC2::VpnConnection with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has CustomerGatewayConfiguration => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'customerGatewayConfiguration');
  has CustomerGatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'customerGatewayId');
  has Options => (is => 'ro', isa => 'AWS::EC2::VpnConnectionOptions', traits => ['Unwrapped'], xmlname => 'options');
  has Routes => (is => 'ro', isa => 'ArrayRef[AWS::EC2::VpnStaticRoute]', traits => ['Unwrapped'], xmlname => 'routes');
  has State => (is => 'ro', isa => 'AWS::EC2::VpnState', traits => ['Unwrapped'], xmlname => 'state');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has Type => (is => 'ro', isa => 'AWS::EC2::GatewayType', traits => ['Unwrapped'], xmlname => 'type');
  has VgwTelemetry => (is => 'ro', isa => 'ArrayRef[AWS::EC2::VgwTelemetry]', traits => ['Unwrapped'], xmlname => 'vgwTelemetry');
  has VpnConnectionId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpnConnectionId');
  has VpnGatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpnGatewayId');
}

class AWS::EC2::VpnConnectionOptions with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has StaticRoutesOnly => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'staticRoutesOnly');
}

class AWS::EC2::VpnConnectionOptionsSpecification with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has StaticRoutesOnly => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => '');
}

class AWS::EC2::VpnGateway with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has State => (is => 'ro', isa => 'AWS::EC2::VpnState', traits => ['Unwrapped'], xmlname => 'state');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has Type => (is => 'ro', isa => 'AWS::EC2::GatewayType', traits => ['Unwrapped'], xmlname => 'type');
  has VpcAttachments => (is => 'ro', isa => 'ArrayRef[AWS::EC2::VpcAttachment]', traits => ['Unwrapped'], xmlname => 'attachments');
  has VpnGatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpnGatewayId');
}

class AWS::EC2::VpnStaticRoute with (AWS::API::UnwrappedParser, AWS::API::ToParams) {
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'destinationCidrBlock');
  has Source => (is => 'ro', isa => 'AWS::EC2::VpnStaticRouteSource', traits => ['Unwrapped'], xmlname => 'source');
  has State => (is => 'ro', isa => 'AWS::EC2::VpnState', traits => ['Unwrapped'], xmlname => 'state');
}



class AWS::EC2::ActivateLicense {
  has Capacity => (is => 'ro', isa => 'Int', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has LicenseId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ActivateLicense');
  has _returns => (isa => 'AWS::EC2::ActivateLicenseResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ActivateLicenseResult');  
}
class AWS::EC2::AllocateAddress {
  has Domain => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AllocateAddress');
  has _returns => (isa => 'AWS::EC2::AllocateAddressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AllocateAddressResult');  
}
class AWS::EC2::AssignPrivateIpAddresses {
  has AllowReassignment => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AssignPrivateIpAddresses');
  has _returns => (isa => 'AWS::EC2::AssignPrivateIpAddressesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AssignPrivateIpAddressesResult');  
}
class AWS::EC2::AssociateAddress {
  has AllocationId => (is => 'ro', isa => 'Str');
  has AllowReassociation => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has PublicIp => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateAddress');
  has _returns => (isa => 'AWS::EC2::AssociateAddressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AssociateAddressResult');  
}
class AWS::EC2::AssociateDhcpOptions {
  has DhcpOptionsId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateDhcpOptions');
  has _returns => (isa => 'AWS::EC2::AssociateDhcpOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AssociateDhcpOptionsResult');  
}
class AWS::EC2::AssociateRouteTable {
  has DryRun => (is => 'ro', isa => 'Str');
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);
  has SubnetId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateRouteTable');
  has _returns => (isa => 'AWS::EC2::AssociateRouteTableResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AssociateRouteTableResult');  
}
class AWS::EC2::AttachInternetGateway {
  has DryRun => (is => 'ro', isa => 'Str');
  has InternetGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AttachInternetGateway');
  has _returns => (isa => 'AWS::EC2::AttachInternetGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AttachInternetGatewayResult');  
}
class AWS::EC2::AttachNetworkInterface {
  has DeviceIndex => (is => 'ro', isa => 'Int', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AttachNetworkInterface');
  has _returns => (isa => 'AWS::EC2::AttachNetworkInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AttachNetworkInterfaceResult');  
}
class AWS::EC2::AttachVolume {
  has Device => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AttachVolume');
  has _returns => (isa => 'AWS::EC2::AttachVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AttachVolumeResult');  
}
class AWS::EC2::AttachVpnGateway {
  has DryRun => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);
  has VpnGatewayId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AttachVpnGateway');
  has _returns => (isa => 'AWS::EC2::AttachVpnGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AttachVpnGatewayResult');  
}
class AWS::EC2::AuthorizeSecurityGroupEgress {
  has DryRun => (is => 'ro', isa => 'Str');
  has GroupId => (is => 'ro', isa => 'Str', required => 1);
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[AWS::EC2::IpPermission]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeSecurityGroupEgress');
  has _returns => (isa => 'AWS::EC2::AuthorizeSecurityGroupEgressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AuthorizeSecurityGroupEgressResult');  
}
class AWS::EC2::AuthorizeSecurityGroupIngress {
  has DryRun => (is => 'ro', isa => 'Str');
  has GroupId => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[AWS::EC2::IpPermission]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeSecurityGroupIngress');
  has _returns => (isa => 'AWS::EC2::AuthorizeSecurityGroupIngressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AuthorizeSecurityGroupIngressResult');  
}
class AWS::EC2::BundleInstance {
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has Storage => (is => 'ro', isa => 'AWS::EC2::Storage', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'BundleInstance');
  has _returns => (isa => 'AWS::EC2::BundleInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'BundleInstanceResult');  
}
class AWS::EC2::CancelBundleTask {
  has BundleId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CancelBundleTask');
  has _returns => (isa => 'AWS::EC2::CancelBundleTaskResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CancelBundleTaskResult');  
}
class AWS::EC2::CancelConversionTask {
  has ConversionTaskId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has ReasonMessage => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CancelConversionTask');
  has _returns => (isa => 'AWS::EC2::CancelConversionTaskResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CancelConversionTaskResult');  
}
class AWS::EC2::CancelExportTask {
  has ExportTaskId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CancelExportTask');
  has _returns => (isa => 'AWS::EC2::CancelExportTaskResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CancelExportTaskResult');  
}
class AWS::EC2::CancelReservedInstancesListing {
  has ReservedInstancesListingId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CancelReservedInstancesListing');
  has _returns => (isa => 'AWS::EC2::CancelReservedInstancesListingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CancelReservedInstancesListingResult');  
}
class AWS::EC2::CancelSpotInstanceRequests {
  has DryRun => (is => 'ro', isa => 'Str');
  has SpotInstanceRequestIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CancelSpotInstanceRequests');
  has _returns => (isa => 'AWS::EC2::CancelSpotInstanceRequestsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CancelSpotInstanceRequestsResult');  
}
class AWS::EC2::ConfirmProductInstance {
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ProductCode => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmProductInstance');
  has _returns => (isa => 'AWS::EC2::ConfirmProductInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ConfirmProductInstanceResult');  
}
class AWS::EC2::CopyImage {
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SourceImageId => (is => 'ro', isa => 'Str', required => 1);
  has SourceRegion => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CopyImage');
  has _returns => (isa => 'AWS::EC2::CopyImageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CopyImageResult');  
}
class AWS::EC2::CopySnapshot {
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has SourceRegion => (is => 'ro', isa => 'Str', required => 1);
  has SourceSnapshotId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CopySnapshot');
  has _returns => (isa => 'AWS::EC2::CopySnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CopySnapshotResult');  
}
class AWS::EC2::CreateCustomerGateway {
  has BgpAsn => (is => 'ro', isa => 'Int', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has PublicIp => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCustomerGateway');
  has _returns => (isa => 'AWS::EC2::CreateCustomerGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCustomerGatewayResult');  
}
class AWS::EC2::CreateDhcpOptions {
  has DhcpConfigurations => (is => 'ro', isa => 'ArrayRef[AWS::EC2::DhcpConfiguration]', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDhcpOptions');
  has _returns => (isa => 'AWS::EC2::CreateDhcpOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDhcpOptionsResult');  
}
class AWS::EC2::CreateImage {
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::BlockDeviceMapping]');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NoReboot => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateImage');
  has _returns => (isa => 'AWS::EC2::CreateImageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateImageResult');  
}
class AWS::EC2::CreateInstanceExportTask {
  has Description => (is => 'ro', isa => 'Str');
  has ExportToS3Task => (is => 'ro', isa => 'AWS::EC2::ExportToS3TaskSpecification');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has TargetEnvironment => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstanceExportTask');
  has _returns => (isa => 'AWS::EC2::CreateInstanceExportTaskResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateInstanceExportTaskResult');  
}
class AWS::EC2::CreateInternetGateway {
  has DryRun => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInternetGateway');
  has _returns => (isa => 'AWS::EC2::CreateInternetGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateInternetGatewayResult');  
}
class AWS::EC2::CreateKeyPair {
  has DryRun => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKeyPair');
  has _returns => (isa => 'AWS::EC2::CreateKeyPairResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateKeyPairResult');  
}
class AWS::EC2::CreateNetworkAcl {
  has DryRun => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNetworkAcl');
  has _returns => (isa => 'AWS::EC2::CreateNetworkAclResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateNetworkAclResult');  
}
class AWS::EC2::CreateNetworkAclEntry {
  has CidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has Egress => (is => 'ro', isa => 'Str', required => 1);
  has IcmpTypeCode => (is => 'ro', isa => 'AWS::EC2::IcmpTypeCode');
  has NetworkAclId => (is => 'ro', isa => 'Str', required => 1);
  has PortRange => (is => 'ro', isa => 'AWS::EC2::PortRange');
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has RuleAction => (is => 'ro', isa => 'Str', required => 1);
  has RuleNumber => (is => 'ro', isa => 'Int', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNetworkAclEntry');
  has _returns => (isa => 'AWS::EC2::CreateNetworkAclEntryResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateNetworkAclEntryResult');  
}
class AWS::EC2::CreateNetworkInterface {
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has Groups => (is => 'ro', isa => 'ArrayRef[Str]');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[AWS::EC2::PrivateIpAddressSpecification]');
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int');
  has SubnetId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNetworkInterface');
  has _returns => (isa => 'AWS::EC2::CreateNetworkInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateNetworkInterfaceResult');  
}
class AWS::EC2::CreatePlacementGroup {
  has DryRun => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Strategy => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlacementGroup');
  has _returns => (isa => 'AWS::EC2::CreatePlacementGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePlacementGroupResult');  
}
class AWS::EC2::CreateReservedInstancesListing {
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has PriceSchedules => (is => 'ro', isa => 'ArrayRef[AWS::EC2::PriceScheduleSpecification]', required => 1);
  has ReservedInstancesId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReservedInstancesListing');
  has _returns => (isa => 'AWS::EC2::CreateReservedInstancesListingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateReservedInstancesListingResult');  
}
class AWS::EC2::CreateRoute {
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has GatewayId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRoute');
  has _returns => (isa => 'AWS::EC2::CreateRouteResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateRouteResult');  
}
class AWS::EC2::CreateRouteTable {
  has DryRun => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRouteTable');
  has _returns => (isa => 'AWS::EC2::CreateRouteTableResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateRouteTableResult');  
}
class AWS::EC2::CreateSecurityGroup {
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has VpcId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSecurityGroup');
  has _returns => (isa => 'AWS::EC2::CreateSecurityGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSecurityGroupResult');  
}
class AWS::EC2::CreateSnapshot {
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSnapshot');
  has _returns => (isa => 'AWS::EC2::CreateSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSnapshotResult');  
}
class AWS::EC2::CreateSpotDatafeedSubscription {
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has Prefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSpotDatafeedSubscription');
  has _returns => (isa => 'AWS::EC2::CreateSpotDatafeedSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSpotDatafeedSubscriptionResult');  
}
class AWS::EC2::CreateSubnet {
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSubnet');
  has _returns => (isa => 'AWS::EC2::CreateSubnetResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSubnetResult');  
}
class AWS::EC2::CreateTags {
  has DryRun => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTags');
  has _returns => (isa => 'AWS::EC2::CreateTagsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateTagsResult');  
}
class AWS::EC2::CreateVolume {
  has AvailabilityZone => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has Size => (is => 'ro', isa => 'Int');
  has SnapshotId => (is => 'ro', isa => 'Str');
  has VolumeType => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVolume');
  has _returns => (isa => 'AWS::EC2::CreateVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateVolumeResult');  
}
class AWS::EC2::CreateVpc {
  has CidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceTenancy => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpc');
  has _returns => (isa => 'AWS::EC2::CreateVpcResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateVpcResult');  
}
class AWS::EC2::CreateVpnConnection {
  has CustomerGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'AWS::EC2::VpnConnectionOptionsSpecification');
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has VpnGatewayId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpnConnection');
  has _returns => (isa => 'AWS::EC2::CreateVpnConnectionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateVpnConnectionResult');  
}
class AWS::EC2::CreateVpnConnectionRoute {
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has VpnConnectionId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpnConnectionRoute');
  has _returns => (isa => 'AWS::EC2::CreateVpnConnectionRouteResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateVpnConnectionRouteResult');  
}
class AWS::EC2::CreateVpnGateway {
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpnGateway');
  has _returns => (isa => 'AWS::EC2::CreateVpnGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateVpnGatewayResult');  
}
class AWS::EC2::DeactivateLicense {
  has Capacity => (is => 'ro', isa => 'Int', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has LicenseId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeactivateLicense');
  has _returns => (isa => 'AWS::EC2::DeactivateLicenseResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeactivateLicenseResult');  
}
class AWS::EC2::DeleteCustomerGateway {
  has CustomerGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCustomerGateway');
  has _returns => (isa => 'AWS::EC2::DeleteCustomerGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteCustomerGatewayResult');  
}
class AWS::EC2::DeleteDhcpOptions {
  has DhcpOptionsId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDhcpOptions');
  has _returns => (isa => 'AWS::EC2::DeleteDhcpOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDhcpOptionsResult');  
}
class AWS::EC2::DeleteInternetGateway {
  has DryRun => (is => 'ro', isa => 'Str');
  has InternetGatewayId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInternetGateway');
  has _returns => (isa => 'AWS::EC2::DeleteInternetGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteInternetGatewayResult');  
}
class AWS::EC2::DeleteKeyPair {
  has DryRun => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteKeyPair');
  has _returns => (isa => 'AWS::EC2::DeleteKeyPairResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteKeyPairResult');  
}
class AWS::EC2::DeleteNetworkAcl {
  has DryRun => (is => 'ro', isa => 'Str');
  has NetworkAclId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNetworkAcl');
  has _returns => (isa => 'AWS::EC2::DeleteNetworkAclResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteNetworkAclResult');  
}
class AWS::EC2::DeleteNetworkAclEntry {
  has DryRun => (is => 'ro', isa => 'Str');
  has Egress => (is => 'ro', isa => 'Str', required => 1);
  has NetworkAclId => (is => 'ro', isa => 'Str', required => 1);
  has RuleNumber => (is => 'ro', isa => 'Int', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNetworkAclEntry');
  has _returns => (isa => 'AWS::EC2::DeleteNetworkAclEntryResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteNetworkAclEntryResult');  
}
class AWS::EC2::DeleteNetworkInterface {
  has DryRun => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNetworkInterface');
  has _returns => (isa => 'AWS::EC2::DeleteNetworkInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteNetworkInterfaceResult');  
}
class AWS::EC2::DeletePlacementGroup {
  has DryRun => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePlacementGroup');
  has _returns => (isa => 'AWS::EC2::DeletePlacementGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeletePlacementGroupResult');  
}
class AWS::EC2::DeleteRoute {
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRoute');
  has _returns => (isa => 'AWS::EC2::DeleteRouteResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteRouteResult');  
}
class AWS::EC2::DeleteRouteTable {
  has DryRun => (is => 'ro', isa => 'Str');
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRouteTable');
  has _returns => (isa => 'AWS::EC2::DeleteRouteTableResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteRouteTableResult');  
}
class AWS::EC2::DeleteSecurityGroup {
  has DryRun => (is => 'ro', isa => 'Str');
  has GroupId => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSecurityGroup');
  has _returns => (isa => 'AWS::EC2::DeleteSecurityGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSecurityGroupResult');  
}
class AWS::EC2::DeleteSnapshot {
  has DryRun => (is => 'ro', isa => 'Str');
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSnapshot');
  has _returns => (isa => 'AWS::EC2::DeleteSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSnapshotResult');  
}
class AWS::EC2::DeleteSpotDatafeedSubscription {
  has DryRun => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSpotDatafeedSubscription');
  has _returns => (isa => 'AWS::EC2::DeleteSpotDatafeedSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSpotDatafeedSubscriptionResult');  
}
class AWS::EC2::DeleteSubnet {
  has DryRun => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSubnet');
  has _returns => (isa => 'AWS::EC2::DeleteSubnetResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSubnetResult');  
}
class AWS::EC2::DeleteTags {
  has DryRun => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTags');
  has _returns => (isa => 'AWS::EC2::DeleteTagsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteTagsResult');  
}
class AWS::EC2::DeleteVolume {
  has DryRun => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVolume');
  has _returns => (isa => 'AWS::EC2::DeleteVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteVolumeResult');  
}
class AWS::EC2::DeleteVpc {
  has DryRun => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVpc');
  has _returns => (isa => 'AWS::EC2::DeleteVpcResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteVpcResult');  
}
class AWS::EC2::DeleteVpnConnection {
  has DryRun => (is => 'ro', isa => 'Str');
  has VpnConnectionId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVpnConnection');
  has _returns => (isa => 'AWS::EC2::DeleteVpnConnectionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteVpnConnectionResult');  
}
class AWS::EC2::DeleteVpnConnectionRoute {
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has VpnConnectionId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVpnConnectionRoute');
  has _returns => (isa => 'AWS::EC2::DeleteVpnConnectionRouteResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteVpnConnectionRouteResult');  
}
class AWS::EC2::DeleteVpnGateway {
  has DryRun => (is => 'ro', isa => 'Str');
  has VpnGatewayId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVpnGateway');
  has _returns => (isa => 'AWS::EC2::DeleteVpnGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteVpnGatewayResult');  
}
class AWS::EC2::DeregisterImage {
  has DryRun => (is => 'ro', isa => 'Str');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterImage');
  has _returns => (isa => 'AWS::EC2::DeregisterImageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeregisterImageResult');  
}
class AWS::EC2::DescribeAccountAttributes {
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has DryRun => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccountAttributes');
  has _returns => (isa => 'AWS::EC2::DescribeAccountAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAccountAttributesResult');  
}
class AWS::EC2::DescribeAddresses {
  has AllocationIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has PublicIps => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAddresses');
  has _returns => (isa => 'AWS::EC2::DescribeAddressesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAddressesResult');  
}
class AWS::EC2::DescribeAvailabilityZones {
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has ZoneNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAvailabilityZones');
  has _returns => (isa => 'AWS::EC2::DescribeAvailabilityZonesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAvailabilityZonesResult');  
}
class AWS::EC2::DescribeBundleTasks {
  has BundleIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBundleTasks');
  has _returns => (isa => 'AWS::EC2::DescribeBundleTasksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeBundleTasksResult');  
}
class AWS::EC2::DescribeConversionTasks {
  has ConversionTaskIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConversionTasks');
  has _returns => (isa => 'AWS::EC2::DescribeConversionTasksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeConversionTasksResult');  
}
class AWS::EC2::DescribeCustomerGateways {
  has CustomerGatewayIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCustomerGateways');
  has _returns => (isa => 'AWS::EC2::DescribeCustomerGatewaysResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCustomerGatewaysResult');  
}
class AWS::EC2::DescribeDhcpOptions {
  has DhcpOptionsIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDhcpOptions');
  has _returns => (isa => 'AWS::EC2::DescribeDhcpOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDhcpOptionsResult');  
}
class AWS::EC2::DescribeExportTasks {
  has ExportTaskIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeExportTasks');
  has _returns => (isa => 'AWS::EC2::DescribeExportTasksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeExportTasksResult');  
}
class AWS::EC2::DescribeImageAttribute {
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeImageAttribute');
  has _returns => (isa => 'AWS::EC2::DescribeImageAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeImageAttributeResult');  
}
class AWS::EC2::DescribeImages {
  has DryRun => (is => 'ro', isa => 'Str');
  has ExecutableUsers => (is => 'ro', isa => 'ArrayRef[Str]');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has ImageIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has Owners => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeImages');
  has _returns => (isa => 'AWS::EC2::DescribeImagesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeImagesResult');  
}
class AWS::EC2::DescribeInstanceAttribute {
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceAttribute');
  has _returns => (isa => 'AWS::EC2::DescribeInstanceAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInstanceAttributeResult');  
}
class AWS::EC2::DescribeInstanceStatus {
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has IncludeAllInstances => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceStatus');
  has _returns => (isa => 'AWS::EC2::DescribeInstanceStatusResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInstanceStatusResult');  
}
class AWS::EC2::DescribeInstances {
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstances');
  has _returns => (isa => 'AWS::EC2::DescribeInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInstancesResult');  
}
class AWS::EC2::DescribeInternetGateways {
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has InternetGatewayIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInternetGateways');
  has _returns => (isa => 'AWS::EC2::DescribeInternetGatewaysResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInternetGatewaysResult');  
}
class AWS::EC2::DescribeKeyPairs {
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has KeyNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeKeyPairs');
  has _returns => (isa => 'AWS::EC2::DescribeKeyPairsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeKeyPairsResult');  
}
class AWS::EC2::DescribeLicenses {
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has LicenseIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLicenses');
  has _returns => (isa => 'AWS::EC2::DescribeLicensesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLicensesResult');  
}
class AWS::EC2::DescribeNetworkAcls {
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has NetworkAclIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNetworkAcls');
  has _returns => (isa => 'AWS::EC2::DescribeNetworkAclsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeNetworkAclsResult');  
}
class AWS::EC2::DescribeNetworkInterfaceAttribute {
  has Attachment => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has Groups => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has SourceDestCheck => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNetworkInterfaceAttribute');
  has _returns => (isa => 'AWS::EC2::DescribeNetworkInterfaceAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeNetworkInterfaceAttributeResult');  
}
class AWS::EC2::DescribeNetworkInterfaces {
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has NetworkInterfaceIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNetworkInterfaces');
  has _returns => (isa => 'AWS::EC2::DescribeNetworkInterfacesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeNetworkInterfacesResult');  
}
class AWS::EC2::DescribePlacementGroups {
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has GroupNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePlacementGroups');
  has _returns => (isa => 'AWS::EC2::DescribePlacementGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribePlacementGroupsResult');  
}
class AWS::EC2::DescribeRegions {
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has RegionNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRegions');
  has _returns => (isa => 'AWS::EC2::DescribeRegionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeRegionsResult');  
}
class AWS::EC2::DescribeReservedInstances {
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ReservedInstancesIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstances');
  has _returns => (isa => 'AWS::EC2::DescribeReservedInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesResult');  
}
class AWS::EC2::DescribeReservedInstancesListings {
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has ReservedInstancesId => (is => 'ro', isa => 'Str');
  has ReservedInstancesListingId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesListings');
  has _returns => (isa => 'AWS::EC2::DescribeReservedInstancesListingsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesListingsResult');  
}
class AWS::EC2::DescribeReservedInstancesModifications {
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has NextToken => (is => 'ro', isa => 'Str');
  has ReservedInstancesModificationIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesModifications');
  has _returns => (isa => 'AWS::EC2::DescribeReservedInstancesModificationsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesModificationsResult');  
}
class AWS::EC2::DescribeReservedInstancesOfferings {
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
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
  has ReservedInstancesOfferingIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesOfferings');
  has _returns => (isa => 'AWS::EC2::DescribeReservedInstancesOfferingsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesOfferingsResult');  
}
class AWS::EC2::DescribeRouteTables {
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has RouteTableIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRouteTables');
  has _returns => (isa => 'AWS::EC2::DescribeRouteTablesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeRouteTablesResult');  
}
class AWS::EC2::DescribeSecurityGroups {
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has GroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has GroupNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSecurityGroups');
  has _returns => (isa => 'AWS::EC2::DescribeSecurityGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSecurityGroupsResult');  
}
class AWS::EC2::DescribeSnapshotAttribute {
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSnapshotAttribute');
  has _returns => (isa => 'AWS::EC2::DescribeSnapshotAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSnapshotAttributeResult');  
}
class AWS::EC2::DescribeSnapshots {
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has OwnerIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has RestorableByUserIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has SnapshotIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSnapshots');
  has _returns => (isa => 'AWS::EC2::DescribeSnapshotsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSnapshotsResult');  
}
class AWS::EC2::DescribeSpotDatafeedSubscription {
  has DryRun => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSpotDatafeedSubscription');
  has _returns => (isa => 'AWS::EC2::DescribeSpotDatafeedSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSpotDatafeedSubscriptionResult');  
}
class AWS::EC2::DescribeSpotInstanceRequests {
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has SpotInstanceRequestIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSpotInstanceRequests');
  has _returns => (isa => 'AWS::EC2::DescribeSpotInstanceRequestsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSpotInstanceRequestsResult');  
}
class AWS::EC2::DescribeSpotPriceHistory {
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has InstanceTypes => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ProductDescriptions => (is => 'ro', isa => 'ArrayRef[Str]');
  has StartTime => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSpotPriceHistory');
  has _returns => (isa => 'AWS::EC2::DescribeSpotPriceHistoryResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSpotPriceHistoryResult');  
}
class AWS::EC2::DescribeSubnets {
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSubnets');
  has _returns => (isa => 'AWS::EC2::DescribeSubnetsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSubnetsResult');  
}
class AWS::EC2::DescribeTags {
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTags');
  has _returns => (isa => 'AWS::EC2::DescribeTagsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTagsResult');  
}
class AWS::EC2::DescribeVolumeAttribute {
  has Attribute => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVolumeAttribute');
  has _returns => (isa => 'AWS::EC2::DescribeVolumeAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVolumeAttributeResult');  
}
class AWS::EC2::DescribeVolumeStatus {
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has VolumeIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVolumeStatus');
  has _returns => (isa => 'AWS::EC2::DescribeVolumeStatusResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVolumeStatusResult');  
}
class AWS::EC2::DescribeVolumes {
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has VolumeIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVolumes');
  has _returns => (isa => 'AWS::EC2::DescribeVolumesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVolumesResult');  
}
class AWS::EC2::DescribeVpcAttribute {
  has Attribute => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpcAttribute');
  has _returns => (isa => 'AWS::EC2::DescribeVpcAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVpcAttributeResult');  
}
class AWS::EC2::DescribeVpcs {
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has VpcIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpcs');
  has _returns => (isa => 'AWS::EC2::DescribeVpcsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVpcsResult');  
}
class AWS::EC2::DescribeVpnConnections {
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has VpnConnectionIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpnConnections');
  has _returns => (isa => 'AWS::EC2::DescribeVpnConnectionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVpnConnectionsResult');  
}
class AWS::EC2::DescribeVpnGateways {
  has DryRun => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Filter]');
  has VpnGatewayIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpnGateways');
  has _returns => (isa => 'AWS::EC2::DescribeVpnGatewaysResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVpnGatewaysResult');  
}
class AWS::EC2::DetachInternetGateway {
  has DryRun => (is => 'ro', isa => 'Str');
  has InternetGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DetachInternetGateway');
  has _returns => (isa => 'AWS::EC2::DetachInternetGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DetachInternetGatewayResult');  
}
class AWS::EC2::DetachNetworkInterface {
  has AttachmentId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has Force => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DetachNetworkInterface');
  has _returns => (isa => 'AWS::EC2::DetachNetworkInterfaceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DetachNetworkInterfaceResult');  
}
class AWS::EC2::DetachVolume {
  has Device => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has Force => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DetachVolume');
  has _returns => (isa => 'AWS::EC2::DetachVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DetachVolumeResult');  
}
class AWS::EC2::DetachVpnGateway {
  has DryRun => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);
  has VpnGatewayId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DetachVpnGateway');
  has _returns => (isa => 'AWS::EC2::DetachVpnGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DetachVpnGatewayResult');  
}
class AWS::EC2::DisableVgwRoutePropagation {
  has GatewayId => (is => 'ro', isa => 'Str', required => 1);
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisableVgwRoutePropagation');
  has _returns => (isa => 'AWS::EC2::DisableVgwRoutePropagationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisableVgwRoutePropagationResult');  
}
class AWS::EC2::DisassociateAddress {
  has AssociationId => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has PublicIp => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateAddress');
  has _returns => (isa => 'AWS::EC2::DisassociateAddressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisassociateAddressResult');  
}
class AWS::EC2::DisassociateRouteTable {
  has AssociationId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateRouteTable');
  has _returns => (isa => 'AWS::EC2::DisassociateRouteTableResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisassociateRouteTableResult');  
}
class AWS::EC2::EnableVgwRoutePropagation {
  has GatewayId => (is => 'ro', isa => 'Str', required => 1);
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'EnableVgwRoutePropagation');
  has _returns => (isa => 'AWS::EC2::EnableVgwRoutePropagationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EnableVgwRoutePropagationResult');  
}
class AWS::EC2::EnableVolumeIO {
  has DryRun => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'EnableVolumeIO');
  has _returns => (isa => 'AWS::EC2::EnableVolumeIOResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EnableVolumeIOResult');  
}
class AWS::EC2::GetConsoleOutput {
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetConsoleOutput');
  has _returns => (isa => 'AWS::EC2::GetConsoleOutputResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetConsoleOutputResult');  
}
class AWS::EC2::GetPasswordData {
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetPasswordData');
  has _returns => (isa => 'AWS::EC2::GetPasswordDataResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetPasswordDataResult');  
}
class AWS::EC2::ImportInstance {
  has Description => (is => 'ro', isa => 'Str');
  has DiskImages => (is => 'ro', isa => 'ArrayRef[AWS::EC2::DiskImage]');
  has DryRun => (is => 'ro', isa => 'Str');
  has LaunchSpecification => (is => 'ro', isa => 'AWS::EC2::ImportInstanceLaunchSpecification');
  has Platform => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ImportInstance');
  has _returns => (isa => 'AWS::EC2::ImportInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ImportInstanceResult');  
}
class AWS::EC2::ImportKeyPair {
  has DryRun => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str', required => 1);
  has PublicKeyMaterial => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ImportKeyPair');
  has _returns => (isa => 'AWS::EC2::ImportKeyPairResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ImportKeyPairResult');  
}
class AWS::EC2::ImportVolume {
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has Image => (is => 'ro', isa => 'AWS::EC2::DiskImageDetail');
  has Volume => (is => 'ro', isa => 'AWS::EC2::VolumeDetail');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ImportVolume');
  has _returns => (isa => 'AWS::EC2::ImportVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ImportVolumeResult');  
}
class AWS::EC2::ModifyImageAttribute {
  has Attribute => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'AWS::EC2::AttributeValue');
  has DryRun => (is => 'ro', isa => 'Str');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);
  has LaunchPermission => (is => 'ro', isa => 'AWS::EC2::LaunchPermissionModifications');
  has OperationType => (is => 'ro', isa => 'Str');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Str]');
  has UserGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has UserIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has Value => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyImageAttribute');
  has _returns => (isa => 'AWS::EC2::ModifyImageAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyImageAttributeResult');  
}
class AWS::EC2::ModifyInstanceAttribute {
  has Attribute => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceBlockDeviceMappingSpecification]');
  has DisableApiTermination => (is => 'ro', isa => 'AWS::EC2::AttributeBooleanValue');
  has DryRun => (is => 'ro', isa => 'Str');
  has EbsOptimized => (is => 'ro', isa => 'AWS::EC2::AttributeBooleanValue');
  has Groups => (is => 'ro', isa => 'ArrayRef[Str]');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'AWS::EC2::AttributeValue');
  has InstanceType => (is => 'ro', isa => 'AWS::EC2::AttributeValue');
  has Kernel => (is => 'ro', isa => 'AWS::EC2::AttributeValue');
  has Ramdisk => (is => 'ro', isa => 'AWS::EC2::AttributeValue');
  has SourceDestCheck => (is => 'ro', isa => 'AWS::EC2::AttributeBooleanValue');
  has UserData => (is => 'ro', isa => 'AWS::EC2::AttributeValue');
  has Value => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstanceAttribute');
  has _returns => (isa => 'AWS::EC2::ModifyInstanceAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyInstanceAttributeResult');  
}
class AWS::EC2::ModifyNetworkInterfaceAttribute {
  has Attachment => (is => 'ro', isa => 'AWS::EC2::NetworkInterfaceAttachmentChanges');
  has Description => (is => 'ro', isa => 'AWS::EC2::AttributeValue');
  has DryRun => (is => 'ro', isa => 'Str');
  has Groups => (is => 'ro', isa => 'ArrayRef[Str]');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has SourceDestCheck => (is => 'ro', isa => 'AWS::EC2::AttributeBooleanValue');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyNetworkInterfaceAttribute');
  has _returns => (isa => 'AWS::EC2::ModifyNetworkInterfaceAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyNetworkInterfaceAttributeResult');  
}
class AWS::EC2::ModifyReservedInstances {
  has ClientToken => (is => 'ro', isa => 'Str');
  has ReservedInstancesIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has TargetConfigurations => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ReservedInstancesConfiguration]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyReservedInstances');
  has _returns => (isa => 'AWS::EC2::ModifyReservedInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyReservedInstancesResult');  
}
class AWS::EC2::ModifySnapshotAttribute {
  has Attribute => (is => 'ro', isa => 'Str');
  has CreateVolumePermission => (is => 'ro', isa => 'AWS::EC2::CreateVolumePermissionModifications');
  has DryRun => (is => 'ro', isa => 'Str');
  has GroupNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has OperationType => (is => 'ro', isa => 'Str');
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);
  has UserIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifySnapshotAttribute');
  has _returns => (isa => 'AWS::EC2::ModifySnapshotAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifySnapshotAttributeResult');  
}
class AWS::EC2::ModifyVolumeAttribute {
  has AutoEnableIO => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVolumeAttribute');
  has _returns => (isa => 'AWS::EC2::ModifyVolumeAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyVolumeAttributeResult');  
}
class AWS::EC2::ModifyVpcAttribute {
  has EnableDnsHostnames => (is => 'ro', isa => 'AWS::EC2::AttributeBooleanValue');
  has EnableDnsSupport => (is => 'ro', isa => 'AWS::EC2::AttributeBooleanValue');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVpcAttribute');
  has _returns => (isa => 'AWS::EC2::ModifyVpcAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyVpcAttributeResult');  
}
class AWS::EC2::MonitorInstances {
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'MonitorInstances');
  has _returns => (isa => 'AWS::EC2::MonitorInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'MonitorInstancesResult');  
}
class AWS::EC2::PurchaseReservedInstancesOffering {
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has LimitPrice => (is => 'ro', isa => 'AWS::EC2::ReservedInstanceLimitPrice');
  has ReservedInstancesOfferingId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseReservedInstancesOffering');
  has _returns => (isa => 'AWS::EC2::PurchaseReservedInstancesOfferingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PurchaseReservedInstancesOfferingResult');  
}
class AWS::EC2::RebootInstances {
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RebootInstances');
  has _returns => (isa => 'AWS::EC2::RebootInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RebootInstancesResult');  
}
class AWS::EC2::RegisterImage {
  has Architecture => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::BlockDeviceMapping]');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has ImageLocation => (is => 'ro', isa => 'Str');
  has KernelId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RamdiskId => (is => 'ro', isa => 'Str');
  has RootDeviceName => (is => 'ro', isa => 'Str');
  has VirtualizationType => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterImage');
  has _returns => (isa => 'AWS::EC2::RegisterImageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterImageResult');  
}
class AWS::EC2::ReleaseAddress {
  has AllocationId => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has PublicIp => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ReleaseAddress');
  has _returns => (isa => 'AWS::EC2::ReleaseAddressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ReleaseAddressResult');  
}
class AWS::EC2::ReplaceNetworkAclAssociation {
  has AssociationId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has NetworkAclId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceNetworkAclAssociation');
  has _returns => (isa => 'AWS::EC2::ReplaceNetworkAclAssociationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ReplaceNetworkAclAssociationResult');  
}
class AWS::EC2::ReplaceNetworkAclEntry {
  has CidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has Egress => (is => 'ro', isa => 'Str', required => 1);
  has IcmpTypeCode => (is => 'ro', isa => 'AWS::EC2::IcmpTypeCode');
  has NetworkAclId => (is => 'ro', isa => 'Str', required => 1);
  has PortRange => (is => 'ro', isa => 'AWS::EC2::PortRange');
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has RuleAction => (is => 'ro', isa => 'Str', required => 1);
  has RuleNumber => (is => 'ro', isa => 'Int', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceNetworkAclEntry');
  has _returns => (isa => 'AWS::EC2::ReplaceNetworkAclEntryResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ReplaceNetworkAclEntryResult');  
}
class AWS::EC2::ReplaceRoute {
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has GatewayId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceRoute');
  has _returns => (isa => 'AWS::EC2::ReplaceRouteResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ReplaceRouteResult');  
}
class AWS::EC2::ReplaceRouteTableAssociation {
  has AssociationId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has RouteTableId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceRouteTableAssociation');
  has _returns => (isa => 'AWS::EC2::ReplaceRouteTableAssociationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ReplaceRouteTableAssociationResult');  
}
class AWS::EC2::ReportInstanceStatus {
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has Instances => (is => 'ro', isa => 'ArrayRef[Str]');
  has ReasonCodes => (is => 'ro', isa => 'ArrayRef[Str]');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ReportInstanceStatus');
  has _returns => (isa => 'AWS::EC2::ReportInstanceStatusResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ReportInstanceStatusResult');  
}
class AWS::EC2::RequestSpotInstances {
  has AvailabilityZoneGroup => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has LaunchGroup => (is => 'ro', isa => 'Str');
  has LaunchSpecification => (is => 'ro', isa => 'AWS::EC2::SpotLaunchSpecification');
  has SpotPrice => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str');
  has ValidFrom => (is => 'ro', isa => 'Str');
  has ValidUntil => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RequestSpotInstances');
  has _returns => (isa => 'AWS::EC2::RequestSpotInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RequestSpotInstancesResult');  
}
class AWS::EC2::ResetImageAttribute {
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResetImageAttribute');
  has _returns => (isa => 'AWS::EC2::ResetImageAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResetImageAttributeResult');  
}
class AWS::EC2::ResetInstanceAttribute {
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResetInstanceAttribute');
  has _returns => (isa => 'AWS::EC2::ResetInstanceAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResetInstanceAttributeResult');  
}
class AWS::EC2::ResetNetworkInterfaceAttribute {
  has DryRun => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has SourceDestCheck => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResetNetworkInterfaceAttribute');
  has _returns => (isa => 'AWS::EC2::ResetNetworkInterfaceAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResetNetworkInterfaceAttributeResult');  
}
class AWS::EC2::ResetSnapshotAttribute {
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Str');
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResetSnapshotAttribute');
  has _returns => (isa => 'AWS::EC2::ResetSnapshotAttributeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResetSnapshotAttributeResult');  
}
class AWS::EC2::RevokeSecurityGroupEgress {
  has DryRun => (is => 'ro', isa => 'Str');
  has GroupId => (is => 'ro', isa => 'Str', required => 1);
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[AWS::EC2::IpPermission]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeSecurityGroupEgress');
  has _returns => (isa => 'AWS::EC2::RevokeSecurityGroupEgressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RevokeSecurityGroupEgressResult');  
}
class AWS::EC2::RevokeSecurityGroupIngress {
  has DryRun => (is => 'ro', isa => 'Str');
  has GroupId => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[AWS::EC2::IpPermission]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeSecurityGroupIngress');
  has _returns => (isa => 'AWS::EC2::RevokeSecurityGroupIngressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RevokeSecurityGroupIngressResult');  
}
class AWS::EC2::RunInstances {
  has AdditionalInfo => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::BlockDeviceMapping]');
  has ClientToken => (is => 'ro', isa => 'Str');
  has DisableApiTermination => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has EbsOptimized => (is => 'ro', isa => 'Str');
  has IamInstanceProfile => (is => 'ro', isa => 'AWS::EC2::IamInstanceProfileSpecification');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has KernelId => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str');
  has License => (is => 'ro', isa => 'AWS::EC2::InstanceLicenseSpecification');
  has MaxCount => (is => 'ro', isa => 'Int', required => 1);
  has MinCount => (is => 'ro', isa => 'Int', required => 1);
  has Monitoring => (is => 'ro', isa => 'AWS::EC2::RunInstancesMonitoringEnabled');
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceNetworkInterfaceSpecification]');
  has Placement => (is => 'ro', isa => 'AWS::EC2::Placement');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has RamdiskId => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has SubnetId => (is => 'ro', isa => 'Str');
  has UserData => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RunInstances');
  has _returns => (isa => 'AWS::EC2::RunInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RunInstancesResult');  
}
class AWS::EC2::StartInstances {
  has AdditionalInfo => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StartInstances');
  has _returns => (isa => 'AWS::EC2::StartInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StartInstancesResult');  
}
class AWS::EC2::StopInstances {
  has DryRun => (is => 'ro', isa => 'Str');
  has Force => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StopInstances');
  has _returns => (isa => 'AWS::EC2::StopInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StopInstancesResult');  
}
class AWS::EC2::TerminateInstances {
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateInstances');
  has _returns => (isa => 'AWS::EC2::TerminateInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'TerminateInstancesResult');  
}
class AWS::EC2::UnassignPrivateIpAddresses {
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UnassignPrivateIpAddresses');
  has _returns => (isa => 'AWS::EC2::UnassignPrivateIpAddressesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UnassignPrivateIpAddressesResult');  
}
class AWS::EC2::UnmonitorInstances {
  has DryRun => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UnmonitorInstances');
  has _returns => (isa => 'AWS::EC2::UnmonitorInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UnmonitorInstancesResult');  
}

class AWS::EC2::AllocateAddressResult with AWS::API::UnwrappedParser {
  has AllocationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'allocationId');
  has Domain => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'domain');
  has PublicIp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'publicIp');

}
class AWS::EC2::AssociateAddressResult with AWS::API::UnwrappedParser {
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'associationId');

}
class AWS::EC2::AssociateRouteTableResult with AWS::API::UnwrappedParser {
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'associationId');

}
class AWS::EC2::AttachNetworkInterfaceResult with AWS::API::UnwrappedParser {
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachmentId');

}
class AWS::EC2::AttachVolumeResult with AWS::API::UnwrappedParser {
  has AttachTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachTime');
  has DeleteOnTermination => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
  has Device => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'device');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');

}
class AWS::EC2::AttachVpnGatewayResult with AWS::API::UnwrappedParser {
  has VpcAttachement => (is => 'ro', isa => 'AWS::EC2::VpcAttachment', traits => ['Unwrapped'], xmlname => 'attachment');

}
class AWS::EC2::BundleInstanceResult with AWS::API::UnwrappedParser {
  has BundleTask => (is => 'ro', isa => 'AWS::EC2::BundleTask', traits => ['Unwrapped'], xmlname => 'bundleInstanceTask');

}
class AWS::EC2::CancelBundleTaskResult with AWS::API::UnwrappedParser {
  has BundleTask => (is => 'ro', isa => 'AWS::EC2::BundleTask', traits => ['Unwrapped'], xmlname => 'bundleInstanceTask');

}
class AWS::EC2::CancelReservedInstancesListingResult with AWS::API::UnwrappedParser {
  has ReservedInstancesListings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ReservedInstancesListing]', traits => ['Unwrapped'], xmlname => 'reservedInstancesListingsSet');

}
class AWS::EC2::CancelSpotInstanceRequestsResult with AWS::API::UnwrappedParser {
  has CancelledSpotInstanceRequests => (is => 'ro', isa => 'ArrayRef[AWS::EC2::CancelledSpotInstanceRequest]', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestSet');

}
class AWS::EC2::ConfirmProductInstanceResult with AWS::API::UnwrappedParser {
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');

}
class AWS::EC2::CopyImageResult with AWS::API::UnwrappedParser {
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');

}
class AWS::EC2::CopySnapshotResult with AWS::API::UnwrappedParser {
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'snapshotId');

}
class AWS::EC2::CreateCustomerGatewayResult with AWS::API::UnwrappedParser {
  has CustomerGateway => (is => 'ro', isa => 'AWS::EC2::CustomerGateway', traits => ['Unwrapped'], xmlname => 'customerGateway');

}
class AWS::EC2::CreateDhcpOptionsResult with AWS::API::UnwrappedParser {
  has DhcpOptions => (is => 'ro', isa => 'AWS::EC2::DhcpOptions', traits => ['Unwrapped'], xmlname => 'dhcpOptions');

}
class AWS::EC2::CreateImageResult with AWS::API::UnwrappedParser {
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');

}
class AWS::EC2::CreateInstanceExportTaskResult with AWS::API::UnwrappedParser {
  has ExportTask => (is => 'ro', isa => 'AWS::EC2::ExportTask', traits => ['Unwrapped'], xmlname => 'exportTask');

}
class AWS::EC2::CreateInternetGatewayResult with AWS::API::UnwrappedParser {
  has InternetGateway => (is => 'ro', isa => 'AWS::EC2::InternetGateway', traits => ['Unwrapped'], xmlname => 'internetGateway');

}
class AWS::EC2::CreateKeyPairResult with AWS::API::UnwrappedParser {
  has KeyFingerprint => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyFingerprint');
  has KeyMaterial => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyMaterial');
  has KeyName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyName');

}
class AWS::EC2::CreateNetworkAclResult with AWS::API::UnwrappedParser {
  has NetworkAcl => (is => 'ro', isa => 'AWS::EC2::NetworkAcl', traits => ['Unwrapped'], xmlname => 'networkAcl');

}
class AWS::EC2::CreateNetworkInterfaceResult with AWS::API::UnwrappedParser {
  has NetworkInterface => (is => 'ro', isa => 'AWS::EC2::NetworkInterface', traits => ['Unwrapped'], xmlname => 'networkInterface');

}
class AWS::EC2::CreateReservedInstancesListingResult with AWS::API::UnwrappedParser {
  has ReservedInstancesListings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ReservedInstancesListing]', traits => ['Unwrapped'], xmlname => 'reservedInstancesListingsSet');

}
class AWS::EC2::CreateRouteTableResult with AWS::API::UnwrappedParser {
  has RouteTable => (is => 'ro', isa => 'AWS::EC2::RouteTable', traits => ['Unwrapped'], xmlname => 'routeTable');

}
class AWS::EC2::CreateSecurityGroupResult with AWS::API::UnwrappedParser {
  has GroupId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'groupId');

}
class AWS::EC2::CreateSnapshotResult with AWS::API::UnwrappedParser {
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has OwnerAlias => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerAlias');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has Progress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'progress');
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'snapshotId');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'startTime');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
  has VolumeSize => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'volumeSize');

}
class AWS::EC2::CreateSpotDatafeedSubscriptionResult with AWS::API::UnwrappedParser {
  has SpotDatafeedSubscription => (is => 'ro', isa => 'AWS::EC2::SpotDatafeedSubscription', traits => ['Unwrapped'], xmlname => 'spotDatafeedSubscription');

}
class AWS::EC2::CreateSubnetResult with AWS::API::UnwrappedParser {
  has Subnet => (is => 'ro', isa => 'AWS::EC2::Subnet', traits => ['Unwrapped'], xmlname => 'subnet');

}
class AWS::EC2::CreateVolumeResult with AWS::API::UnwrappedParser {
  has Attachments => (is => 'ro', isa => 'ArrayRef[AWS::EC2::VolumeAttachment]', traits => ['Unwrapped'], xmlname => 'attachmentSet');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'createTime');
  has Iops => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'iops');
  has Size => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'size');
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'snapshotId');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
  has VolumeType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeType');

}
class AWS::EC2::CreateVpcResult with AWS::API::UnwrappedParser {
  has Vpc => (is => 'ro', isa => 'AWS::EC2::Vpc', traits => ['Unwrapped'], xmlname => 'vpc');

}
class AWS::EC2::CreateVpnConnectionResult with AWS::API::UnwrappedParser {
  has VpnConnection => (is => 'ro', isa => 'AWS::EC2::VpnConnection', traits => ['Unwrapped'], xmlname => 'vpnConnection');

}
class AWS::EC2::CreateVpnGatewayResult with AWS::API::UnwrappedParser {
  has VpnGateway => (is => 'ro', isa => 'AWS::EC2::VpnGateway', traits => ['Unwrapped'], xmlname => 'vpnGateway');

}
class AWS::EC2::DescribeAccountAttributesResult with AWS::API::UnwrappedParser {
  has AccountAttributes => (is => 'ro', isa => 'ArrayRef[AWS::EC2::AccountAttribute]', traits => ['Unwrapped'], xmlname => 'accountAttributeSet');

}
class AWS::EC2::DescribeAddressesResult with AWS::API::UnwrappedParser {
  has Addresses => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Address]', traits => ['Unwrapped'], xmlname => 'addressesSet');

}
class AWS::EC2::DescribeAvailabilityZonesResult with AWS::API::UnwrappedParser {
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[AWS::EC2::AvailabilityZone]', traits => ['Unwrapped'], xmlname => 'availabilityZoneInfo');

}
class AWS::EC2::DescribeBundleTasksResult with AWS::API::UnwrappedParser {
  has BundleTasks => (is => 'ro', isa => 'ArrayRef[AWS::EC2::BundleTask]', traits => ['Unwrapped'], xmlname => 'bundleInstanceTasksSet');

}
class AWS::EC2::DescribeConversionTasksResult with AWS::API::UnwrappedParser {
  has ConversionTasks => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ConversionTask]', traits => ['Unwrapped'], xmlname => 'conversionTasks');

}
class AWS::EC2::DescribeCustomerGatewaysResult with AWS::API::UnwrappedParser {
  has CustomerGateways => (is => 'ro', isa => 'ArrayRef[AWS::EC2::CustomerGateway]', traits => ['Unwrapped'], xmlname => 'customerGatewaySet');

}
class AWS::EC2::DescribeDhcpOptionsResult with AWS::API::UnwrappedParser {
  has DhcpOptions => (is => 'ro', isa => 'ArrayRef[AWS::EC2::DhcpOptions]', traits => ['Unwrapped'], xmlname => 'dhcpOptionsSet');

}
class AWS::EC2::DescribeExportTasksResult with AWS::API::UnwrappedParser {
  has ExportTasks => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ExportTask]', traits => ['Unwrapped'], xmlname => 'exportTaskSet');

}
class AWS::EC2::DescribeImageAttributeResult with AWS::API::UnwrappedParser {
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::BlockDeviceMapping]', traits => ['Unwrapped'], xmlname => 'blockDeviceMapping');
  has Description => (is => 'ro', isa => 'AWS::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'description');
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');
  has KernelId => (is => 'ro', isa => 'AWS::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'kernel');
  has LaunchPermissions => (is => 'ro', isa => 'ArrayRef[AWS::EC2::LaunchPermission]', traits => ['Unwrapped'], xmlname => 'launchPermission');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has RamdiskId => (is => 'ro', isa => 'AWS::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'ramdisk');

}
class AWS::EC2::DescribeImagesResult with AWS::API::UnwrappedParser {
  has Images => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Image]', traits => ['Unwrapped'], xmlname => 'imagesSet');

}
class AWS::EC2::DescribeInstanceAttributeResult with AWS::API::UnwrappedParser {
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceBlockDeviceMapping]', traits => ['Unwrapped'], xmlname => 'blockDeviceMapping');
  has DisableApiTermination => (is => 'ro', isa => 'AWS::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'disableApiTermination');
  has EbsOptimized => (is => 'ro', isa => 'AWS::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'ebsOptimized');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'AWS::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'instanceInitiatedShutdownBehavior');
  has InstanceType => (is => 'ro', isa => 'AWS::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'instanceType');
  has KernelId => (is => 'ro', isa => 'AWS::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'kernel');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has RamdiskId => (is => 'ro', isa => 'AWS::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'ramdisk');
  has RootDeviceName => (is => 'ro', isa => 'AWS::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'rootDeviceName');
  has UserData => (is => 'ro', isa => 'AWS::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'userData');

}
class AWS::EC2::DescribeInstanceStatusResult with AWS::API::UnwrappedParser {
  has InstanceStatuses => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceStatus]', traits => ['Unwrapped'], xmlname => 'instanceStatusSet');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');

}
class AWS::EC2::DescribeInstancesResult with AWS::API::UnwrappedParser {
  has Reservations => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Reservation]', traits => ['Unwrapped'], xmlname => 'reservationSet');

}
class AWS::EC2::DescribeInternetGatewaysResult with AWS::API::UnwrappedParser {
  has InternetGateways => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InternetGateway]', traits => ['Unwrapped'], xmlname => 'internetGatewaySet');

}
class AWS::EC2::DescribeKeyPairsResult with AWS::API::UnwrappedParser {
  has KeyPairs => (is => 'ro', isa => 'ArrayRef[AWS::EC2::KeyPairInfo]', traits => ['Unwrapped'], xmlname => 'keySet');

}
class AWS::EC2::DescribeLicensesResult with AWS::API::UnwrappedParser {
  has Licenses => (is => 'ro', isa => 'ArrayRef[AWS::EC2::License]', traits => ['Unwrapped'], xmlname => 'licenseSet');

}
class AWS::EC2::DescribeNetworkAclsResult with AWS::API::UnwrappedParser {
  has NetworkAcls => (is => 'ro', isa => 'ArrayRef[AWS::EC2::NetworkAcl]', traits => ['Unwrapped'], xmlname => 'networkAclSet');

}
class AWS::EC2::DescribeNetworkInterfaceAttributeResult with AWS::API::UnwrappedParser {
  has Attachment => (is => 'ro', isa => 'AWS::EC2::NetworkInterfaceAttachment', traits => ['Unwrapped'], xmlname => 'attachment');
  has Description => (is => 'ro', isa => 'AWS::EC2::AttributeValue', traits => ['Unwrapped'], xmlname => 'description');
  has Groups => (is => 'ro', isa => 'ArrayRef[AWS::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'networkInterfaceId');
  has SourceDestCheck => (is => 'ro', isa => 'AWS::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'sourceDestCheck');

}
class AWS::EC2::DescribeNetworkInterfacesResult with AWS::API::UnwrappedParser {
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[AWS::EC2::NetworkInterface]', traits => ['Unwrapped'], xmlname => 'networkInterfaceSet');

}
class AWS::EC2::DescribePlacementGroupsResult with AWS::API::UnwrappedParser {
  has PlacementGroups => (is => 'ro', isa => 'ArrayRef[AWS::EC2::PlacementGroup]', traits => ['Unwrapped'], xmlname => 'placementGroupSet');

}
class AWS::EC2::DescribeRegionsResult with AWS::API::UnwrappedParser {
  has Regions => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Region]', traits => ['Unwrapped'], xmlname => 'regionInfo');

}
class AWS::EC2::DescribeReservedInstancesResult with AWS::API::UnwrappedParser {
  has ReservedInstances => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ReservedInstances]', traits => ['Unwrapped'], xmlname => 'reservedInstancesSet');

}
class AWS::EC2::DescribeReservedInstancesListingsResult with AWS::API::UnwrappedParser {
  has ReservedInstancesListings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ReservedInstancesListing]', traits => ['Unwrapped'], xmlname => 'reservedInstancesListingsSet');

}
class AWS::EC2::DescribeReservedInstancesModificationsResult with AWS::API::UnwrappedParser {
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');
  has ReservedInstancesModifications => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ReservedInstancesModification]', traits => ['Unwrapped'], xmlname => 'reservedInstancesModificationsSet');

}
class AWS::EC2::DescribeReservedInstancesOfferingsResult with AWS::API::UnwrappedParser {
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');
  has ReservedInstancesOfferings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ReservedInstancesOffering]', traits => ['Unwrapped'], xmlname => 'reservedInstancesOfferingsSet');

}
class AWS::EC2::DescribeRouteTablesResult with AWS::API::UnwrappedParser {
  has RouteTables => (is => 'ro', isa => 'ArrayRef[AWS::EC2::RouteTable]', traits => ['Unwrapped'], xmlname => 'routeTableSet');

}
class AWS::EC2::DescribeSecurityGroupsResult with AWS::API::UnwrappedParser {
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[AWS::EC2::SecurityGroup]', traits => ['Unwrapped'], xmlname => 'securityGroupInfo');

}
class AWS::EC2::DescribeSnapshotAttributeResult with AWS::API::UnwrappedParser {
  has CreateVolumePermissions => (is => 'ro', isa => 'ArrayRef[AWS::EC2::CreateVolumePermission]', traits => ['Unwrapped'], xmlname => 'createVolumePermission');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'snapshotId');

}
class AWS::EC2::DescribeSnapshotsResult with AWS::API::UnwrappedParser {
  has Snapshots => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Snapshot]', traits => ['Unwrapped'], xmlname => 'snapshotSet');

}
class AWS::EC2::DescribeSpotDatafeedSubscriptionResult with AWS::API::UnwrappedParser {
  has SpotDatafeedSubscription => (is => 'ro', isa => 'AWS::EC2::SpotDatafeedSubscription', traits => ['Unwrapped'], xmlname => 'spotDatafeedSubscription');

}
class AWS::EC2::DescribeSpotInstanceRequestsResult with AWS::API::UnwrappedParser {
  has SpotInstanceRequests => (is => 'ro', isa => 'ArrayRef[AWS::EC2::SpotInstanceRequest]', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestSet');

}
class AWS::EC2::DescribeSpotPriceHistoryResult with AWS::API::UnwrappedParser {
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');
  has SpotPriceHistory => (is => 'ro', isa => 'ArrayRef[AWS::EC2::SpotPrice]', traits => ['Unwrapped'], xmlname => 'spotPriceHistorySet');

}
class AWS::EC2::DescribeSubnetsResult with AWS::API::UnwrappedParser {
  has Subnets => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Subnet]', traits => ['Unwrapped'], xmlname => 'subnetSet');

}
class AWS::EC2::DescribeTagsResult with AWS::API::UnwrappedParser {
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::TagDescription]', traits => ['Unwrapped'], xmlname => 'tagSet');

}
class AWS::EC2::DescribeVolumeAttributeResult with AWS::API::UnwrappedParser {
  has AutoEnableIO => (is => 'ro', isa => 'AWS::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'autoEnableIO');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');

}
class AWS::EC2::DescribeVolumeStatusResult with AWS::API::UnwrappedParser {
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');
  has VolumeStatuses => (is => 'ro', isa => 'ArrayRef[AWS::EC2::VolumeStatusItem]', traits => ['Unwrapped'], xmlname => 'volumeStatusSet');

}
class AWS::EC2::DescribeVolumesResult with AWS::API::UnwrappedParser {
  has Volumes => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Volume]', traits => ['Unwrapped'], xmlname => 'volumeSet');

}
class AWS::EC2::DescribeVpcAttributeResult with AWS::API::UnwrappedParser {
  has EnableDnsHostnames => (is => 'ro', isa => 'AWS::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'enableDnsHostnames');
  has EnableDnsSupport => (is => 'ro', isa => 'AWS::EC2::AttributeBooleanValue', traits => ['Unwrapped'], xmlname => 'enableDnsSupport');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');

}
class AWS::EC2::DescribeVpcsResult with AWS::API::UnwrappedParser {
  has Vpcs => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Vpc]', traits => ['Unwrapped'], xmlname => 'vpcSet');

}
class AWS::EC2::DescribeVpnConnectionsResult with AWS::API::UnwrappedParser {
  has VpnConnections => (is => 'ro', isa => 'ArrayRef[AWS::EC2::VpnConnection]', traits => ['Unwrapped'], xmlname => 'vpnConnectionSet');

}
class AWS::EC2::DescribeVpnGatewaysResult with AWS::API::UnwrappedParser {
  has VpnGateways => (is => 'ro', isa => 'ArrayRef[AWS::EC2::VpnGateway]', traits => ['Unwrapped'], xmlname => 'vpnGatewaySet');

}
class AWS::EC2::DetachVolumeResult with AWS::API::UnwrappedParser {
  has AttachTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'attachTime');
  has DeleteOnTermination => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'deleteOnTermination');
  has Device => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'device');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');

}
class AWS::EC2::GetConsoleOutputResult with AWS::API::UnwrappedParser {
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has Output => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'output');
  has Timestamp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'timestamp');

}
class AWS::EC2::GetPasswordDataResult with AWS::API::UnwrappedParser {
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has PasswordData => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'passwordData');
  has Timestamp => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'timestamp');

}
class AWS::EC2::ImportInstanceResult with AWS::API::UnwrappedParser {
  has ConversionTask => (is => 'ro', isa => 'AWS::EC2::ConversionTask', traits => ['Unwrapped'], xmlname => 'conversionTask');

}
class AWS::EC2::ImportKeyPairResult with AWS::API::UnwrappedParser {
  has KeyFingerprint => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyFingerprint');
  has KeyName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyName');

}
class AWS::EC2::ImportVolumeResult with AWS::API::UnwrappedParser {
  has ConversionTask => (is => 'ro', isa => 'AWS::EC2::ConversionTask', traits => ['Unwrapped'], xmlname => 'conversionTask');

}
class AWS::EC2::ModifyReservedInstancesResult with AWS::API::UnwrappedParser {
  has ReservedInstancesModificationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesModificationId');

}
class AWS::EC2::MonitorInstancesResult with AWS::API::UnwrappedParser {
  has InstanceMonitorings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceMonitoring]', traits => ['Unwrapped'], xmlname => 'instancesSet');

}
class AWS::EC2::PurchaseReservedInstancesOfferingResult with AWS::API::UnwrappedParser {
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservedInstancesId');

}
class AWS::EC2::RegisterImageResult with AWS::API::UnwrappedParser {
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');

}
class AWS::EC2::ReplaceNetworkAclAssociationResult with AWS::API::UnwrappedParser {
  has NewAssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'newAssociationId');

}
class AWS::EC2::ReplaceRouteTableAssociationResult with AWS::API::UnwrappedParser {
  has NewAssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'newAssociationId');

}
class AWS::EC2::RequestSpotInstancesResult with AWS::API::UnwrappedParser {
  has SpotInstanceRequests => (is => 'ro', isa => 'ArrayRef[AWS::EC2::SpotInstanceRequest]', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestSet');

}
class AWS::EC2::RunInstancesResult with AWS::API::UnwrappedParser {
  has Groups => (is => 'ro', isa => 'ArrayRef[AWS::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has Instances => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Instance]', traits => ['Unwrapped'], xmlname => 'instancesSet');
  has OwnerId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ownerId');
  has RequesterId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'requesterId');
  has ReservationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reservationId');

}
class AWS::EC2::StartInstancesResult with AWS::API::UnwrappedParser {
  has StartingInstances => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceStateChange]', traits => ['Unwrapped'], xmlname => 'instancesSet');

}
class AWS::EC2::StopInstancesResult with AWS::API::UnwrappedParser {
  has StoppingInstances => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceStateChange]', traits => ['Unwrapped'], xmlname => 'instancesSet');

}
class AWS::EC2::TerminateInstancesResult with AWS::API::UnwrappedParser {
  has TerminatingInstances => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceStateChange]', traits => ['Unwrapped'], xmlname => 'instancesSet');

}
class AWS::EC2::UnmonitorInstancesResult with AWS::API::UnwrappedParser {
  has InstanceMonitorings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceMonitoring]', traits => ['Unwrapped'], xmlname => 'instancesSet');

}

class AWS::EC2 with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V2Signature, Net::AWS::QueryCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'ec2');
  has version => (is => 'ro', isa => 'Str', default => '2013-10-01');
  
  method ActivateLicense (%args) {
    my $call = AWS::EC2::ActivateLicense->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method AllocateAddress (%args) {
    my $call = AWS::EC2::AllocateAddress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::AllocateAddressResult->from_result($result);
    return $o_result;
  }
  method AssignPrivateIpAddresses (%args) {
    my $call = AWS::EC2::AssignPrivateIpAddresses->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method AssociateAddress (%args) {
    my $call = AWS::EC2::AssociateAddress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::AssociateAddressResult->from_result($result);
    return $o_result;
  }
  method AssociateDhcpOptions (%args) {
    my $call = AWS::EC2::AssociateDhcpOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method AssociateRouteTable (%args) {
    my $call = AWS::EC2::AssociateRouteTable->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::AssociateRouteTableResult->from_result($result);
    return $o_result;
  }
  method AttachInternetGateway (%args) {
    my $call = AWS::EC2::AttachInternetGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method AttachNetworkInterface (%args) {
    my $call = AWS::EC2::AttachNetworkInterface->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::AttachNetworkInterfaceResult->from_result($result);
    return $o_result;
  }
  method AttachVolume (%args) {
    my $call = AWS::EC2::AttachVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::AttachVolumeResult->from_result($result);
    return $o_result;
  }
  method AttachVpnGateway (%args) {
    my $call = AWS::EC2::AttachVpnGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::AttachVpnGatewayResult->from_result($result);
    return $o_result;
  }
  method AuthorizeSecurityGroupEgress (%args) {
    my $call = AWS::EC2::AuthorizeSecurityGroupEgress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method AuthorizeSecurityGroupIngress (%args) {
    my $call = AWS::EC2::AuthorizeSecurityGroupIngress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method BundleInstance (%args) {
    my $call = AWS::EC2::BundleInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::BundleInstanceResult->from_result($result);
    return $o_result;
  }
  method CancelBundleTask (%args) {
    my $call = AWS::EC2::CancelBundleTask->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CancelBundleTaskResult->from_result($result);
    return $o_result;
  }
  method CancelConversionTask (%args) {
    my $call = AWS::EC2::CancelConversionTask->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method CancelExportTask (%args) {
    my $call = AWS::EC2::CancelExportTask->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method CancelReservedInstancesListing (%args) {
    my $call = AWS::EC2::CancelReservedInstancesListing->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CancelReservedInstancesListingResult->from_result($result);
    return $o_result;
  }
  method CancelSpotInstanceRequests (%args) {
    my $call = AWS::EC2::CancelSpotInstanceRequests->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CancelSpotInstanceRequestsResult->from_result($result);
    return $o_result;
  }
  method ConfirmProductInstance (%args) {
    my $call = AWS::EC2::ConfirmProductInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ConfirmProductInstanceResult->from_result($result);
    return $o_result;
  }
  method CopyImage (%args) {
    my $call = AWS::EC2::CopyImage->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CopyImageResult->from_result($result);
    return $o_result;
  }
  method CopySnapshot (%args) {
    my $call = AWS::EC2::CopySnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CopySnapshotResult->from_result($result);
    return $o_result;
  }
  method CreateCustomerGateway (%args) {
    my $call = AWS::EC2::CreateCustomerGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateCustomerGatewayResult->from_result($result);
    return $o_result;
  }
  method CreateDhcpOptions (%args) {
    my $call = AWS::EC2::CreateDhcpOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateDhcpOptionsResult->from_result($result);
    return $o_result;
  }
  method CreateImage (%args) {
    my $call = AWS::EC2::CreateImage->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateImageResult->from_result($result);
    return $o_result;
  }
  method CreateInstanceExportTask (%args) {
    my $call = AWS::EC2::CreateInstanceExportTask->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateInstanceExportTaskResult->from_result($result);
    return $o_result;
  }
  method CreateInternetGateway (%args) {
    my $call = AWS::EC2::CreateInternetGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateInternetGatewayResult->from_result($result);
    return $o_result;
  }
  method CreateKeyPair (%args) {
    my $call = AWS::EC2::CreateKeyPair->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateKeyPairResult->from_result($result);
    return $o_result;
  }
  method CreateNetworkAcl (%args) {
    my $call = AWS::EC2::CreateNetworkAcl->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateNetworkAclResult->from_result($result);
    return $o_result;
  }
  method CreateNetworkAclEntry (%args) {
    my $call = AWS::EC2::CreateNetworkAclEntry->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method CreateNetworkInterface (%args) {
    my $call = AWS::EC2::CreateNetworkInterface->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateNetworkInterfaceResult->from_result($result);
    return $o_result;
  }
  method CreatePlacementGroup (%args) {
    my $call = AWS::EC2::CreatePlacementGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method CreateReservedInstancesListing (%args) {
    my $call = AWS::EC2::CreateReservedInstancesListing->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateReservedInstancesListingResult->from_result($result);
    return $o_result;
  }
  method CreateRoute (%args) {
    my $call = AWS::EC2::CreateRoute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method CreateRouteTable (%args) {
    my $call = AWS::EC2::CreateRouteTable->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateRouteTableResult->from_result($result);
    return $o_result;
  }
  method CreateSecurityGroup (%args) {
    my $call = AWS::EC2::CreateSecurityGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateSecurityGroupResult->from_result($result);
    return $o_result;
  }
  method CreateSnapshot (%args) {
    my $call = AWS::EC2::CreateSnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateSnapshotResult->from_result($result);
    return $o_result;
  }
  method CreateSpotDatafeedSubscription (%args) {
    my $call = AWS::EC2::CreateSpotDatafeedSubscription->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateSpotDatafeedSubscriptionResult->from_result($result);
    return $o_result;
  }
  method CreateSubnet (%args) {
    my $call = AWS::EC2::CreateSubnet->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateSubnetResult->from_result($result);
    return $o_result;
  }
  method CreateTags (%args) {
    my $call = AWS::EC2::CreateTags->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method CreateVolume (%args) {
    my $call = AWS::EC2::CreateVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateVolumeResult->from_result($result);
    return $o_result;
  }
  method CreateVpc (%args) {
    my $call = AWS::EC2::CreateVpc->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateVpcResult->from_result($result);
    return $o_result;
  }
  method CreateVpnConnection (%args) {
    my $call = AWS::EC2::CreateVpnConnection->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateVpnConnectionResult->from_result($result);
    return $o_result;
  }
  method CreateVpnConnectionRoute (%args) {
    my $call = AWS::EC2::CreateVpnConnectionRoute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method CreateVpnGateway (%args) {
    my $call = AWS::EC2::CreateVpnGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateVpnGatewayResult->from_result($result);
    return $o_result;
  }
  method DeactivateLicense (%args) {
    my $call = AWS::EC2::DeactivateLicense->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteCustomerGateway (%args) {
    my $call = AWS::EC2::DeleteCustomerGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteDhcpOptions (%args) {
    my $call = AWS::EC2::DeleteDhcpOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteInternetGateway (%args) {
    my $call = AWS::EC2::DeleteInternetGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteKeyPair (%args) {
    my $call = AWS::EC2::DeleteKeyPair->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteNetworkAcl (%args) {
    my $call = AWS::EC2::DeleteNetworkAcl->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteNetworkAclEntry (%args) {
    my $call = AWS::EC2::DeleteNetworkAclEntry->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteNetworkInterface (%args) {
    my $call = AWS::EC2::DeleteNetworkInterface->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeletePlacementGroup (%args) {
    my $call = AWS::EC2::DeletePlacementGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteRoute (%args) {
    my $call = AWS::EC2::DeleteRoute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteRouteTable (%args) {
    my $call = AWS::EC2::DeleteRouteTable->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteSecurityGroup (%args) {
    my $call = AWS::EC2::DeleteSecurityGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteSnapshot (%args) {
    my $call = AWS::EC2::DeleteSnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteSpotDatafeedSubscription (%args) {
    my $call = AWS::EC2::DeleteSpotDatafeedSubscription->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteSubnet (%args) {
    my $call = AWS::EC2::DeleteSubnet->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteTags (%args) {
    my $call = AWS::EC2::DeleteTags->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteVolume (%args) {
    my $call = AWS::EC2::DeleteVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteVpc (%args) {
    my $call = AWS::EC2::DeleteVpc->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteVpnConnection (%args) {
    my $call = AWS::EC2::DeleteVpnConnection->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteVpnConnectionRoute (%args) {
    my $call = AWS::EC2::DeleteVpnConnectionRoute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteVpnGateway (%args) {
    my $call = AWS::EC2::DeleteVpnGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeregisterImage (%args) {
    my $call = AWS::EC2::DeregisterImage->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DescribeAccountAttributes (%args) {
    my $call = AWS::EC2::DescribeAccountAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeAccountAttributesResult->from_result($result);
    return $o_result;
  }
  method DescribeAddresses (%args) {
    my $call = AWS::EC2::DescribeAddresses->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeAddressesResult->from_result($result);
    return $o_result;
  }
  method DescribeAvailabilityZones (%args) {
    my $call = AWS::EC2::DescribeAvailabilityZones->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeAvailabilityZonesResult->from_result($result);
    return $o_result;
  }
  method DescribeBundleTasks (%args) {
    my $call = AWS::EC2::DescribeBundleTasks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeBundleTasksResult->from_result($result);
    return $o_result;
  }
  method DescribeConversionTasks (%args) {
    my $call = AWS::EC2::DescribeConversionTasks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeConversionTasksResult->from_result($result);
    return $o_result;
  }
  method DescribeCustomerGateways (%args) {
    my $call = AWS::EC2::DescribeCustomerGateways->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeCustomerGatewaysResult->from_result($result);
    return $o_result;
  }
  method DescribeDhcpOptions (%args) {
    my $call = AWS::EC2::DescribeDhcpOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeDhcpOptionsResult->from_result($result);
    return $o_result;
  }
  method DescribeExportTasks (%args) {
    my $call = AWS::EC2::DescribeExportTasks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeExportTasksResult->from_result($result);
    return $o_result;
  }
  method DescribeImageAttribute (%args) {
    my $call = AWS::EC2::DescribeImageAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeImageAttributeResult->from_result($result);
    return $o_result;
  }
  method DescribeImages (%args) {
    my $call = AWS::EC2::DescribeImages->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeImagesResult->from_result($result);
    return $o_result;
  }
  method DescribeInstanceAttribute (%args) {
    my $call = AWS::EC2::DescribeInstanceAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeInstanceAttributeResult->from_result($result);
    return $o_result;
  }
  method DescribeInstances (%args) {
    my $call = AWS::EC2::DescribeInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeInstancesResult->from_result($result);
    return $o_result;
  }
  method DescribeInstanceStatus (%args) {
    my $call = AWS::EC2::DescribeInstanceStatus->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeInstanceStatusResult->from_result($result);
    return $o_result;
  }
  method DescribeInternetGateways (%args) {
    my $call = AWS::EC2::DescribeInternetGateways->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeInternetGatewaysResult->from_result($result);
    return $o_result;
  }
  method DescribeKeyPairs (%args) {
    my $call = AWS::EC2::DescribeKeyPairs->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeKeyPairsResult->from_result($result);
    return $o_result;
  }
  method DescribeLicenses (%args) {
    my $call = AWS::EC2::DescribeLicenses->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeLicensesResult->from_result($result);
    return $o_result;
  }
  method DescribeNetworkAcls (%args) {
    my $call = AWS::EC2::DescribeNetworkAcls->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeNetworkAclsResult->from_result($result);
    return $o_result;
  }
  method DescribeNetworkInterfaceAttribute (%args) {
    my $call = AWS::EC2::DescribeNetworkInterfaceAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeNetworkInterfaceAttributeResult->from_result($result);
    return $o_result;
  }
  method DescribeNetworkInterfaces (%args) {
    my $call = AWS::EC2::DescribeNetworkInterfaces->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeNetworkInterfacesResult->from_result($result);
    return $o_result;
  }
  method DescribePlacementGroups (%args) {
    my $call = AWS::EC2::DescribePlacementGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribePlacementGroupsResult->from_result($result);
    return $o_result;
  }
  method DescribeRegions (%args) {
    my $call = AWS::EC2::DescribeRegions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeRegionsResult->from_result($result);
    return $o_result;
  }
  method DescribeReservedInstances (%args) {
    my $call = AWS::EC2::DescribeReservedInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeReservedInstancesResult->from_result($result);
    return $o_result;
  }
  method DescribeReservedInstancesListings (%args) {
    my $call = AWS::EC2::DescribeReservedInstancesListings->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeReservedInstancesListingsResult->from_result($result);
    return $o_result;
  }
  method DescribeReservedInstancesModifications (%args) {
    my $call = AWS::EC2::DescribeReservedInstancesModifications->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeReservedInstancesModificationsResult->from_result($result);
    return $o_result;
  }
  method DescribeReservedInstancesOfferings (%args) {
    my $call = AWS::EC2::DescribeReservedInstancesOfferings->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeReservedInstancesOfferingsResult->from_result($result);
    return $o_result;
  }
  method DescribeRouteTables (%args) {
    my $call = AWS::EC2::DescribeRouteTables->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeRouteTablesResult->from_result($result);
    return $o_result;
  }
  method DescribeSecurityGroups (%args) {
    my $call = AWS::EC2::DescribeSecurityGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeSecurityGroupsResult->from_result($result);
    return $o_result;
  }
  method DescribeSnapshotAttribute (%args) {
    my $call = AWS::EC2::DescribeSnapshotAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeSnapshotAttributeResult->from_result($result);
    return $o_result;
  }
  method DescribeSnapshots (%args) {
    my $call = AWS::EC2::DescribeSnapshots->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeSnapshotsResult->from_result($result);
    return $o_result;
  }
  method DescribeSpotDatafeedSubscription (%args) {
    my $call = AWS::EC2::DescribeSpotDatafeedSubscription->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeSpotDatafeedSubscriptionResult->from_result($result);
    return $o_result;
  }
  method DescribeSpotInstanceRequests (%args) {
    my $call = AWS::EC2::DescribeSpotInstanceRequests->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeSpotInstanceRequestsResult->from_result($result);
    return $o_result;
  }
  method DescribeSpotPriceHistory (%args) {
    my $call = AWS::EC2::DescribeSpotPriceHistory->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeSpotPriceHistoryResult->from_result($result);
    return $o_result;
  }
  method DescribeSubnets (%args) {
    my $call = AWS::EC2::DescribeSubnets->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeSubnetsResult->from_result($result);
    return $o_result;
  }
  method DescribeTags (%args) {
    my $call = AWS::EC2::DescribeTags->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeTagsResult->from_result($result);
    return $o_result;
  }
  method DescribeVolumeAttribute (%args) {
    my $call = AWS::EC2::DescribeVolumeAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeVolumeAttributeResult->from_result($result);
    return $o_result;
  }
  method DescribeVolumes (%args) {
    my $call = AWS::EC2::DescribeVolumes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeVolumesResult->from_result($result);
    return $o_result;
  }
  method DescribeVolumeStatus (%args) {
    my $call = AWS::EC2::DescribeVolumeStatus->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeVolumeStatusResult->from_result($result);
    return $o_result;
  }
  method DescribeVpcAttribute (%args) {
    my $call = AWS::EC2::DescribeVpcAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeVpcAttributeResult->from_result($result);
    return $o_result;
  }
  method DescribeVpcs (%args) {
    my $call = AWS::EC2::DescribeVpcs->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeVpcsResult->from_result($result);
    return $o_result;
  }
  method DescribeVpnConnections (%args) {
    my $call = AWS::EC2::DescribeVpnConnections->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeVpnConnectionsResult->from_result($result);
    return $o_result;
  }
  method DescribeVpnGateways (%args) {
    my $call = AWS::EC2::DescribeVpnGateways->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeVpnGatewaysResult->from_result($result);
    return $o_result;
  }
  method DetachInternetGateway (%args) {
    my $call = AWS::EC2::DetachInternetGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DetachNetworkInterface (%args) {
    my $call = AWS::EC2::DetachNetworkInterface->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DetachVolume (%args) {
    my $call = AWS::EC2::DetachVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DetachVolumeResult->from_result($result);
    return $o_result;
  }
  method DetachVpnGateway (%args) {
    my $call = AWS::EC2::DetachVpnGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DisableVgwRoutePropagation (%args) {
    my $call = AWS::EC2::DisableVgwRoutePropagation->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DisassociateAddress (%args) {
    my $call = AWS::EC2::DisassociateAddress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DisassociateRouteTable (%args) {
    my $call = AWS::EC2::DisassociateRouteTable->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method EnableVgwRoutePropagation (%args) {
    my $call = AWS::EC2::EnableVgwRoutePropagation->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method EnableVolumeIO (%args) {
    my $call = AWS::EC2::EnableVolumeIO->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method GetConsoleOutput (%args) {
    my $call = AWS::EC2::GetConsoleOutput->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::GetConsoleOutputResult->from_result($result);
    return $o_result;
  }
  method GetPasswordData (%args) {
    my $call = AWS::EC2::GetPasswordData->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::GetPasswordDataResult->from_result($result);
    return $o_result;
  }
  method ImportInstance (%args) {
    my $call = AWS::EC2::ImportInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ImportInstanceResult->from_result($result);
    return $o_result;
  }
  method ImportKeyPair (%args) {
    my $call = AWS::EC2::ImportKeyPair->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ImportKeyPairResult->from_result($result);
    return $o_result;
  }
  method ImportVolume (%args) {
    my $call = AWS::EC2::ImportVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ImportVolumeResult->from_result($result);
    return $o_result;
  }
  method ModifyImageAttribute (%args) {
    my $call = AWS::EC2::ModifyImageAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method ModifyInstanceAttribute (%args) {
    my $call = AWS::EC2::ModifyInstanceAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method ModifyNetworkInterfaceAttribute (%args) {
    my $call = AWS::EC2::ModifyNetworkInterfaceAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method ModifyReservedInstances (%args) {
    my $call = AWS::EC2::ModifyReservedInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ModifyReservedInstancesResult->from_result($result);
    return $o_result;
  }
  method ModifySnapshotAttribute (%args) {
    my $call = AWS::EC2::ModifySnapshotAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method ModifyVolumeAttribute (%args) {
    my $call = AWS::EC2::ModifyVolumeAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method ModifyVpcAttribute (%args) {
    my $call = AWS::EC2::ModifyVpcAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method MonitorInstances (%args) {
    my $call = AWS::EC2::MonitorInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::MonitorInstancesResult->from_result($result);
    return $o_result;
  }
  method PurchaseReservedInstancesOffering (%args) {
    my $call = AWS::EC2::PurchaseReservedInstancesOffering->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::PurchaseReservedInstancesOfferingResult->from_result($result);
    return $o_result;
  }
  method RebootInstances (%args) {
    my $call = AWS::EC2::RebootInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RegisterImage (%args) {
    my $call = AWS::EC2::RegisterImage->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::RegisterImageResult->from_result($result);
    return $o_result;
  }
  method ReleaseAddress (%args) {
    my $call = AWS::EC2::ReleaseAddress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method ReplaceNetworkAclAssociation (%args) {
    my $call = AWS::EC2::ReplaceNetworkAclAssociation->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ReplaceNetworkAclAssociationResult->from_result($result);
    return $o_result;
  }
  method ReplaceNetworkAclEntry (%args) {
    my $call = AWS::EC2::ReplaceNetworkAclEntry->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method ReplaceRoute (%args) {
    my $call = AWS::EC2::ReplaceRoute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method ReplaceRouteTableAssociation (%args) {
    my $call = AWS::EC2::ReplaceRouteTableAssociation->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ReplaceRouteTableAssociationResult->from_result($result);
    return $o_result;
  }
  method ReportInstanceStatus (%args) {
    my $call = AWS::EC2::ReportInstanceStatus->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RequestSpotInstances (%args) {
    my $call = AWS::EC2::RequestSpotInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::RequestSpotInstancesResult->from_result($result);
    return $o_result;
  }
  method ResetImageAttribute (%args) {
    my $call = AWS::EC2::ResetImageAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method ResetInstanceAttribute (%args) {
    my $call = AWS::EC2::ResetInstanceAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method ResetNetworkInterfaceAttribute (%args) {
    my $call = AWS::EC2::ResetNetworkInterfaceAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method ResetSnapshotAttribute (%args) {
    my $call = AWS::EC2::ResetSnapshotAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RevokeSecurityGroupEgress (%args) {
    my $call = AWS::EC2::RevokeSecurityGroupEgress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RevokeSecurityGroupIngress (%args) {
    my $call = AWS::EC2::RevokeSecurityGroupIngress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RunInstances (%args) {
    my $call = AWS::EC2::RunInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::RunInstancesResult->from_result($result);
    return $o_result;
  }
  method StartInstances (%args) {
    my $call = AWS::EC2::StartInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::StartInstancesResult->from_result($result);
    return $o_result;
  }
  method StopInstances (%args) {
    my $call = AWS::EC2::StopInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::StopInstancesResult->from_result($result);
    return $o_result;
  }
  method TerminateInstances (%args) {
    my $call = AWS::EC2::TerminateInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::TerminateInstancesResult->from_result($result);
    return $o_result;
  }
  method UnassignPrivateIpAddresses (%args) {
    my $call = AWS::EC2::UnassignPrivateIpAddresses->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UnmonitorInstances (%args) {
    my $call = AWS::EC2::UnmonitorInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::UnmonitorInstancesResult->from_result($result);
    return $o_result;
  }
}
