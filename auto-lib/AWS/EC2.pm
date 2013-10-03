use MooseX::Declare;
use AWS::API;
class AWS::EC2::AccountAttribute with AWS::API::ResultParser {
  has AttributeName => (is => 'ro', isa => 'Str');
  has AttributeValues => (is => 'ro', isa => 'ArrayRef[AWS::EC2::AccountAttributeValue]');
}

class AWS::EC2::AccountAttributeValue with AWS::API::ResultParser {
  has AttributeValue => (is => 'ro', isa => 'Str');
}

class AWS::EC2::Address with AWS::API::ResultParser {
  has AllocationId => (is => 'ro', isa => 'Str');
  has AssociationId => (is => 'ro', isa => 'Str');
  has Domain => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has NetworkInterfaceOwnerId => (is => 'ro', isa => 'Str');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has PublicIp => (is => 'ro', isa => 'Str');
}

class AWS::EC2::AttributeBooleanValue with AWS::API::ResultParser {
  has Value => (is => 'ro', isa => 'Str');
}

class AWS::EC2::AttributeValue with AWS::API::ResultParser {
  has Value => (is => 'ro', isa => 'Str');
}

class AWS::EC2::AvailabilityZone with AWS::API::ResultParser {
  has Messages => (is => 'ro', isa => 'ArrayRef[AWS::EC2::AvailabilityZoneMessage]');
  has RegionName => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has ZoneName => (is => 'ro', isa => 'Str');
}

class AWS::EC2::AvailabilityZoneMessage with AWS::API::ResultParser {
  has Message => (is => 'ro', isa => 'Str');
}

class AWS::EC2::BlockDeviceMapping with AWS::API::ResultParser {
  has DeviceName => (is => 'ro', isa => 'Str');
  has Ebs => (is => 'ro', isa => 'AWS::EC2::EbsBlockDevice');
  has NoDevice => (is => 'ro', isa => 'Str');
  has VirtualName => (is => 'ro', isa => 'Str');
}

class AWS::EC2::BundleTask with AWS::API::ResultParser {
  has BundleId => (is => 'ro', isa => 'Str');
  has BundleTaskError => (is => 'ro', isa => 'AWS::EC2::BundleTaskError');
  has InstanceId => (is => 'ro', isa => 'Str');
  has Progress => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Storage => (is => 'ro', isa => 'AWS::EC2::Storage');
  has UpdateTime => (is => 'ro', isa => 'Str');
}

class AWS::EC2::BundleTaskError with AWS::API::ResultParser {
  has Code => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
}

class AWS::EC2::CancelledSpotInstanceRequest with AWS::API::ResultParser {
  has SpotInstanceRequestId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
}

class AWS::EC2::ConversionTask with AWS::API::ResultParser {
  has ConversionTaskId => (is => 'ro', isa => 'Str', required => 1);
  has ExpirationTime => (is => 'ro', isa => 'Str');
  has ImportInstance => (is => 'ro', isa => 'AWS::EC2::ImportInstanceTaskDetails');
  has ImportVolume => (is => 'ro', isa => 'AWS::EC2::ImportVolumeTaskDetails');
  has State => (is => 'ro', isa => 'Str', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');
}

class AWS::EC2::CreateVolumePermission with AWS::API::ResultParser {
  has Group => (is => 'ro', isa => 'Str');
  has UserId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::CreateVolumePermissionModifications with AWS::API::ResultParser {
  has Add => (is => 'ro', isa => 'ArrayRef[AWS::EC2::CreateVolumePermission]');
  has Remove => (is => 'ro', isa => 'ArrayRef[AWS::EC2::CreateVolumePermission]');
}

class AWS::EC2::CustomerGateway with AWS::API::ResultParser {
  has BgpAsn => (is => 'ro', isa => 'Str');
  has CustomerGatewayId => (is => 'ro', isa => 'Str');
  has IpAddress => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');
  has Type => (is => 'ro', isa => 'Str');
}

class AWS::EC2::DhcpConfiguration with AWS::API::ResultParser {
  has Key => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str]');
}

class AWS::EC2::DhcpOptions with AWS::API::ResultParser {
  has DhcpConfigurations => (is => 'ro', isa => 'ArrayRef[AWS::EC2::DhcpConfiguration]');
  has DhcpOptionsId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');
}

class AWS::EC2::DiskImage with AWS::API::ResultParser {
  has Description => (is => 'ro', isa => 'Str');
  has Image => (is => 'ro', isa => 'AWS::EC2::DiskImageDetail');
  has Volume => (is => 'ro', isa => 'AWS::EC2::VolumeDetail');
}

class AWS::EC2::DiskImageDetail with AWS::API::ResultParser {
  has Bytes => (is => 'ro', isa => 'Num', required => 1);
  has Format => (is => 'ro', isa => 'Str', required => 1);
  has ImportManifestUrl => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::EC2::EbsBlockDevice with AWS::API::ResultParser {
  has DeleteOnTermination => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has SnapshotId => (is => 'ro', isa => 'Str');
  has VolumeSize => (is => 'ro', isa => 'Int');
  has VolumeType => (is => 'ro', isa => 'Str');
}

class AWS::EC2::EbsInstanceBlockDevice with AWS::API::ResultParser {
  has AttachTime => (is => 'ro', isa => 'Str');
  has DeleteOnTermination => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::EbsInstanceBlockDeviceSpecification with AWS::API::ResultParser {
  has DeleteOnTermination => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::ExportTask with AWS::API::ResultParser {
  has Description => (is => 'ro', isa => 'Str');
  has ExportTaskId => (is => 'ro', isa => 'Str');
  has ExportToS3Task => (is => 'ro', isa => 'AWS::EC2::ExportToS3Task');
  has InstanceExportDetails => (is => 'ro', isa => 'AWS::EC2::InstanceExportDetails');
  has State => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
}

class AWS::EC2::ExportToS3Task with AWS::API::ResultParser {
  has ContainerFormat => (is => 'ro', isa => 'Str');
  has DiskImageFormat => (is => 'ro', isa => 'Str');
  has S3Bucket => (is => 'ro', isa => 'Str');
  has S3Key => (is => 'ro', isa => 'Str');
}

class AWS::EC2::ExportToS3TaskSpecification with AWS::API::ResultParser {
  has ContainerFormat => (is => 'ro', isa => 'Str');
  has DiskImageFormat => (is => 'ro', isa => 'Str');
  has S3Bucket => (is => 'ro', isa => 'Str');
  has S3Prefix => (is => 'ro', isa => 'Str');
}

class AWS::EC2::Filter with AWS::API::ResultParser {
  has Name => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str]');
}

class AWS::EC2::GroupIdentifier with AWS::API::ResultParser {
  has GroupId => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
}

class AWS::EC2::IamInstanceProfile with AWS::API::ResultParser {
  has Arn => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
}

class AWS::EC2::IamInstanceProfileSpecification with AWS::API::ResultParser {
  has Arn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
}

class AWS::EC2::IcmpTypeCode with AWS::API::ResultParser {
  has Code => (is => 'ro', isa => 'Int');
  has Type => (is => 'ro', isa => 'Int');
}

class AWS::EC2::Image with AWS::API::ResultParser {
  has Architecture => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::BlockDeviceMapping]');
  has Description => (is => 'ro', isa => 'Str');
  has Hypervisor => (is => 'ro', isa => 'Str');
  has ImageId => (is => 'ro', isa => 'Str');
  has ImageLocation => (is => 'ro', isa => 'Str');
  has ImageOwnerAlias => (is => 'ro', isa => 'Str');
  has ImageType => (is => 'ro', isa => 'Str');
  has KernelId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OwnerId => (is => 'ro', isa => 'Str');
  has Platform => (is => 'ro', isa => 'Str');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ProductCode]');
  has Public => (is => 'ro', isa => 'Str');
  has RamdiskId => (is => 'ro', isa => 'Str');
  has RootDeviceName => (is => 'ro', isa => 'Str');
  has RootDeviceType => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has StateReason => (is => 'ro', isa => 'AWS::EC2::StateReason');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');
  has VirtualizationType => (is => 'ro', isa => 'Str');
}

class AWS::EC2::ImportInstanceLaunchSpecification with AWS::API::ResultParser {
  has AdditionalInfo => (is => 'ro', isa => 'Str');
  has Architecture => (is => 'ro', isa => 'Str');
  has GroupNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has Monitoring => (is => 'ro', isa => 'Str');
  has Placement => (is => 'ro', isa => 'AWS::EC2::Placement');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');
  has UserData => (is => 'ro', isa => 'Str');
}

class AWS::EC2::ImportInstanceTaskDetails with AWS::API::ResultParser {
  has Description => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has Platform => (is => 'ro', isa => 'Str');
  has Volumes => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ImportInstanceVolumeDetailItem]', required => 1);
}

class AWS::EC2::ImportVolumeTaskDetails with AWS::API::ResultParser {
  has AvailabilityZone => (is => 'ro', isa => 'Str', required => 1);
  has BytesConverted => (is => 'ro', isa => 'Num', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Image => (is => 'ro', isa => 'AWS::EC2::DiskImageDescription', required => 1);
  has Volume => (is => 'ro', isa => 'AWS::EC2::DiskImageVolumeDescription', required => 1);
}

class AWS::EC2::Instance with AWS::API::ResultParser {
  has AmiLaunchIndex => (is => 'ro', isa => 'Int');
  has Architecture => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceBlockDeviceMapping]');
  has ClientToken => (is => 'ro', isa => 'Str');
  has EbsOptimized => (is => 'ro', isa => 'Str');
  has Hypervisor => (is => 'ro', isa => 'Str');
  has IamInstanceProfile => (is => 'ro', isa => 'AWS::EC2::IamInstanceProfile');
  has ImageId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has InstanceLifecycle => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has KernelId => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str');
  has LaunchTime => (is => 'ro', isa => 'Str');
  has License => (is => 'ro', isa => 'AWS::EC2::InstanceLicense');
  has Monitoring => (is => 'ro', isa => 'AWS::EC2::Monitoring');
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceNetworkInterface]');
  has Placement => (is => 'ro', isa => 'AWS::EC2::Placement');
  has Platform => (is => 'ro', isa => 'Str');
  has PrivateDnsName => (is => 'ro', isa => 'Str');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ProductCode]');
  has PublicDnsName => (is => 'ro', isa => 'Str');
  has PublicIpAddress => (is => 'ro', isa => 'Str');
  has RamdiskId => (is => 'ro', isa => 'Str');
  has RootDeviceName => (is => 'ro', isa => 'Str');
  has RootDeviceType => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[AWS::EC2::GroupIdentifier]');
  has SourceDestCheck => (is => 'ro', isa => 'Str');
  has SpotInstanceRequestId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'AWS::EC2::InstanceState');
  has StateReason => (is => 'ro', isa => 'AWS::EC2::StateReason');
  has StateTransitionReason => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');
  has VirtualizationType => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::InstanceBlockDeviceMapping with AWS::API::ResultParser {
  has DeviceName => (is => 'ro', isa => 'Str');
  has Ebs => (is => 'ro', isa => 'AWS::EC2::EbsInstanceBlockDevice');
}

class AWS::EC2::InstanceBlockDeviceMappingSpecification with AWS::API::ResultParser {
  has DeviceName => (is => 'ro', isa => 'Str');
  has Ebs => (is => 'ro', isa => 'AWS::EC2::EbsInstanceBlockDeviceSpecification');
  has NoDevice => (is => 'ro', isa => 'Str');
  has VirtualName => (is => 'ro', isa => 'Str');
}

class AWS::EC2::InstanceCount with AWS::API::ResultParser {
  has InstanceCount => (is => 'ro', isa => 'Int');
  has State => (is => 'ro', isa => 'Str');
}

class AWS::EC2::InstanceExportDetails with AWS::API::ResultParser {
  has InstanceId => (is => 'ro', isa => 'Str');
  has TargetEnvironment => (is => 'ro', isa => 'Str');
}

class AWS::EC2::InstanceLicense with AWS::API::ResultParser {
  has Pool => (is => 'ro', isa => 'Str');
}

class AWS::EC2::InstanceLicenseSpecification with AWS::API::ResultParser {
  has Pool => (is => 'ro', isa => 'Str');
}

class AWS::EC2::InstanceMonitoring with AWS::API::ResultParser {
  has InstanceId => (is => 'ro', isa => 'Str');
  has Monitoring => (is => 'ro', isa => 'AWS::EC2::Monitoring');
}

class AWS::EC2::InstanceNetworkInterface with AWS::API::ResultParser {
  has Association => (is => 'ro', isa => 'AWS::EC2::InstanceNetworkInterfaceAssociation');
  has Attachment => (is => 'ro', isa => 'AWS::EC2::InstanceNetworkInterfaceAttachment');
  has Description => (is => 'ro', isa => 'Str');
  has Groups => (is => 'ro', isa => 'ArrayRef[AWS::EC2::GroupIdentifier]');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has OwnerId => (is => 'ro', isa => 'Str');
  has PrivateDnsName => (is => 'ro', isa => 'Str');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstancePrivateIpAddress]');
  has SourceDestCheck => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::InstanceNetworkInterfaceSpecification with AWS::API::ResultParser {
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Str');
  has DeleteOnTermination => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DeviceIndex => (is => 'ro', isa => 'Int');
  has Groups => (is => 'ro', isa => 'ArrayRef[Str]');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[AWS::EC2::PrivateIpAddressSpecification]');
  has SecondaryPrivateIpAddressCount => (is => 'ro', isa => 'Int');
  has SubnetId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::InstanceState with AWS::API::ResultParser {
  has Code => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
}

class AWS::EC2::InstanceStateChange with AWS::API::ResultParser {
  has CurrentState => (is => 'ro', isa => 'AWS::EC2::InstanceState');
  has InstanceId => (is => 'ro', isa => 'Str');
  has PreviousState => (is => 'ro', isa => 'AWS::EC2::InstanceState');
}

class AWS::EC2::InstanceStatus with AWS::API::ResultParser {
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has Events => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceStatusEvent]');
  has InstanceId => (is => 'ro', isa => 'Str');
  has InstanceState => (is => 'ro', isa => 'AWS::EC2::InstanceState');
  has InstanceStatus => (is => 'ro', isa => 'AWS::EC2::InstanceStatusSummary');
  has SystemStatus => (is => 'ro', isa => 'AWS::EC2::InstanceStatusSummary');
}

class AWS::EC2::InstanceStatusEvent with AWS::API::ResultParser {
  has Code => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has NotAfter => (is => 'ro', isa => 'Str');
  has NotBefore => (is => 'ro', isa => 'Str');
}

class AWS::EC2::InstanceStatusSummary with AWS::API::ResultParser {
  has Details => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceStatusDetails]');
  has Status => (is => 'ro', isa => 'Str');
}

class AWS::EC2::InternetGateway with AWS::API::ResultParser {
  has Attachments => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InternetGatewayAttachment]');
  has InternetGatewayId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');
}

class AWS::EC2::InternetGatewayAttachment with AWS::API::ResultParser {
  has State => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::IpPermission with AWS::API::ResultParser {
  has FromPort => (is => 'ro', isa => 'Int');
  has IpProtocol => (is => 'ro', isa => 'Str');
  has IpRanges => (is => 'ro', isa => 'ArrayRef[AWS::EC2::IpRange]');
  has ToPort => (is => 'ro', isa => 'Int');
  has UserIdGroupPairs => (is => 'ro', isa => 'ArrayRef[AWS::EC2::UserIdGroupPair]');
}

class AWS::EC2::IpRange with AWS::API::ResultParser {
  has CidrIp => (is => 'ro', isa => 'Str');
}

class AWS::EC2::KeyPairInfo with AWS::API::ResultParser {
  has KeyFingerprint => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str');
}

class AWS::EC2::LaunchPermission with AWS::API::ResultParser {
  has Group => (is => 'ro', isa => 'Str');
  has UserId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::LaunchPermissionModifications with AWS::API::ResultParser {
  has Add => (is => 'ro', isa => 'ArrayRef[AWS::EC2::LaunchPermission]');
  has Remove => (is => 'ro', isa => 'ArrayRef[AWS::EC2::LaunchPermission]');
}

class AWS::EC2::LaunchSpecification with AWS::API::ResultParser {
  has AddressingType => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::BlockDeviceMapping]');
  has EbsOptimized => (is => 'ro', isa => 'Str');
  has IamInstanceProfile => (is => 'ro', isa => 'AWS::EC2::IamInstanceProfileSpecification');
  has ImageId => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has KernelId => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str');
  has MonitoringEnabled => (is => 'ro', isa => 'Str');
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceNetworkInterfaceSpecification]');
  has Placement => (is => 'ro', isa => 'AWS::EC2::SpotPlacement');
  has RamdiskId => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[AWS::EC2::GroupIdentifier]');
  has SubnetId => (is => 'ro', isa => 'Str');
  has UserData => (is => 'ro', isa => 'Str');
}

class AWS::EC2::LaunchSpecification2 with AWS::API::ResultParser {
  has AddressingType => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::BlockDeviceMapping]');
  has EbsOptimized => (is => 'ro', isa => 'Str');
  has IamInstanceProfile => (is => 'ro', isa => 'AWS::EC2::IamInstanceProfileSpecification');
  has ImageId => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has KernelId => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str');
  has MonitoringEnabled => (is => 'ro', isa => 'Str');
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceNetworkInterfaceSpecification]');
  has Placement => (is => 'ro', isa => 'AWS::EC2::SpotPlacement');
  has RamdiskId => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has SubnetId => (is => 'ro', isa => 'Str');
  has UserData => (is => 'ro', isa => 'Str');
}

class AWS::EC2::License with AWS::API::ResultParser {
  has Capacities => (is => 'ro', isa => 'ArrayRef[AWS::EC2::LicenseCapacity]');
  has LicenseId => (is => 'ro', isa => 'Str');
  has Pool => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');
  has Type => (is => 'ro', isa => 'Str');
}

class AWS::EC2::LicenseCapacity with AWS::API::ResultParser {
  has Capacity => (is => 'ro', isa => 'Int');
  has EarliestAllowedDeactivationTime => (is => 'ro', isa => 'Str');
  has InstanceCapacity => (is => 'ro', isa => 'Int');
  has State => (is => 'ro', isa => 'Str');
}

class AWS::EC2::Monitoring with AWS::API::ResultParser {
  has State => (is => 'ro', isa => 'Str');
}

class AWS::EC2::NetworkAcl with AWS::API::ResultParser {
  has Associations => (is => 'ro', isa => 'ArrayRef[AWS::EC2::NetworkAclAssociation]');
  has Entries => (is => 'ro', isa => 'ArrayRef[AWS::EC2::NetworkAclEntry]');
  has IsDefault => (is => 'ro', isa => 'Str');
  has NetworkAclId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');
  has VpcId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::NetworkAclAssociation with AWS::API::ResultParser {
  has NetworkAclAssociationId => (is => 'ro', isa => 'Str');
  has NetworkAclId => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::NetworkAclEntry with AWS::API::ResultParser {
  has CidrBlock => (is => 'ro', isa => 'Str');
  has Egress => (is => 'ro', isa => 'Str');
  has IcmpTypeCode => (is => 'ro', isa => 'AWS::EC2::IcmpTypeCode');
  has PortRange => (is => 'ro', isa => 'AWS::EC2::PortRange');
  has Protocol => (is => 'ro', isa => 'Str');
  has RuleAction => (is => 'ro', isa => 'Str');
  has RuleNumber => (is => 'ro', isa => 'Int');
}

class AWS::EC2::NetworkInterface with AWS::API::ResultParser {
  has Association => (is => 'ro', isa => 'AWS::EC2::NetworkInterfaceAssociation');
  has Attachment => (is => 'ro', isa => 'AWS::EC2::NetworkInterfaceAttachment');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Groups => (is => 'ro', isa => 'ArrayRef[AWS::EC2::GroupIdentifier]');
  has MacAddress => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has OwnerId => (is => 'ro', isa => 'Str');
  has PrivateDnsName => (is => 'ro', isa => 'Str');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[AWS::EC2::NetworkInterfacePrivateIpAddress]');
  has RequesterId => (is => 'ro', isa => 'Str');
  has RequesterManaged => (is => 'ro', isa => 'Str');
  has SourceDestCheck => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');
  has TagSet => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');
  has VpcId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::NetworkInterfaceAssociation with AWS::API::ResultParser {
  has AllocationId => (is => 'ro', isa => 'Str');
  has AssociationId => (is => 'ro', isa => 'Str');
  has IpOwnerId => (is => 'ro', isa => 'Str');
  has PublicIp => (is => 'ro', isa => 'Str');
}

class AWS::EC2::NetworkInterfaceAttachment with AWS::API::ResultParser {
  has AttachTime => (is => 'ro', isa => 'Str');
  has AttachmentId => (is => 'ro', isa => 'Str');
  has DeleteOnTermination => (is => 'ro', isa => 'Str');
  has DeviceIndex => (is => 'ro', isa => 'Int');
  has InstanceId => (is => 'ro', isa => 'Str');
  has InstanceOwnerId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class AWS::EC2::NetworkInterfaceAttachmentChanges with AWS::API::ResultParser {
  has AttachmentId => (is => 'ro', isa => 'Str');
  has DeleteOnTermination => (is => 'ro', isa => 'Str');
}

class AWS::EC2::NetworkInterfacePrivateIpAddress with AWS::API::ResultParser {
  has Association => (is => 'ro', isa => 'AWS::EC2::NetworkInterfaceAssociation');
  has Primary => (is => 'ro', isa => 'Str');
  has PrivateDnsName => (is => 'ro', isa => 'Str');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
}

class AWS::EC2::Placement with AWS::API::ResultParser {
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has Tenancy => (is => 'ro', isa => 'Str');
}

class AWS::EC2::PlacementGroup with AWS::API::ResultParser {
  has GroupName => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Strategy => (is => 'ro', isa => 'Str');
}

class AWS::EC2::PortRange with AWS::API::ResultParser {
  has From => (is => 'ro', isa => 'Int');
  has To => (is => 'ro', isa => 'Int');
}

class AWS::EC2::PriceSchedule with AWS::API::ResultParser {
  has Active => (is => 'ro', isa => 'Str');
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has Price => (is => 'ro', isa => 'Int');
  has Term => (is => 'ro', isa => 'Num');
}

class AWS::EC2::PriceScheduleSpecification with AWS::API::ResultParser {
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has Price => (is => 'ro', isa => 'Int');
  has Term => (is => 'ro', isa => 'Num');
}

class AWS::EC2::PricingDetail with AWS::API::ResultParser {
  has Count => (is => 'ro', isa => 'Int');
  has Price => (is => 'ro', isa => 'Int');
}

class AWS::EC2::PrivateIpAddressSpecification with AWS::API::ResultParser {
  has Primary => (is => 'ro', isa => 'Str');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::EC2::ProductCode with AWS::API::ResultParser {
  has ProductCodeId => (is => 'ro', isa => 'Str');
  has ProductCodeType => (is => 'ro', isa => 'Str');
}

class AWS::EC2::PropagatingVgw with AWS::API::ResultParser {
  has GatewayId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::RecurringCharge with AWS::API::ResultParser {
  has Amount => (is => 'ro', isa => 'Int');
  has Frequency => (is => 'ro', isa => 'Str');
}

class AWS::EC2::Region with AWS::API::ResultParser {
  has Endpoint => (is => 'ro', isa => 'Str');
  has RegionName => (is => 'ro', isa => 'Str');
}

class AWS::EC2::Reservation with AWS::API::ResultParser {
  has Groups => (is => 'ro', isa => 'ArrayRef[AWS::EC2::GroupIdentifier]');
  has Instances => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Instance]');
  has OwnerId => (is => 'ro', isa => 'Str');
  has RequesterId => (is => 'ro', isa => 'Str');
  has ReservationId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::ReservedInstanceLimitPrice with AWS::API::ResultParser {
  has Amount => (is => 'ro', isa => 'Int');
  has CurrencyCode => (is => 'ro', isa => 'Str');
}

class AWS::EC2::ReservedInstances with AWS::API::ResultParser {
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Num');
  has End => (is => 'ro', isa => 'Str');
  has FixedPrice => (is => 'ro', isa => 'Num');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has InstanceTenancy => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[AWS::EC2::RecurringCharge]');
  has ReservedInstancesId => (is => 'ro', isa => 'Str');
  has Start => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');
  has UsagePrice => (is => 'ro', isa => 'Num');
}

class AWS::EC2::ReservedInstancesConfiguration with AWS::API::ResultParser {
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has Platform => (is => 'ro', isa => 'Str');
}

class AWS::EC2::ReservedInstancesId with AWS::API::ResultParser {
  has ReservedInstancesId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::ReservedInstancesListing with AWS::API::ResultParser {
  has ClientToken => (is => 'ro', isa => 'Str');
  has CreateDate => (is => 'ro', isa => 'Str');
  has InstanceCounts => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceCount]');
  has PriceSchedules => (is => 'ro', isa => 'ArrayRef[AWS::EC2::PriceSchedule]');
  has ReservedInstancesId => (is => 'ro', isa => 'Str');
  has ReservedInstancesListingId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');
  has UpdateDate => (is => 'ro', isa => 'Str');
}

class AWS::EC2::ReservedInstancesModification with AWS::API::ResultParser {
  has ClientToken => (is => 'ro', isa => 'Str');
  has CreateDate => (is => 'ro', isa => 'Str');
  has EffectiveDate => (is => 'ro', isa => 'Str');
  has ModificationResults => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ReservedInstancesModificationResult]');
  has ReservedInstancesIds => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ReservedInstancesId]');
  has ReservedInstancesModificationId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has UpdateDate => (is => 'ro', isa => 'Str');
}

class AWS::EC2::ReservedInstancesModificationResult with AWS::API::ResultParser {
  has ReservedInstancesId => (is => 'ro', isa => 'Str');
  has TargetConfiguration => (is => 'ro', isa => 'AWS::EC2::ReservedInstancesConfiguration');
}

class AWS::EC2::ReservedInstancesOffering with AWS::API::ResultParser {
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Num');
  has FixedPrice => (is => 'ro', isa => 'Num');
  has InstanceTenancy => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has Marketplace => (is => 'ro', isa => 'Str');
  has OfferingType => (is => 'ro', isa => 'Str');
  has PricingDetails => (is => 'ro', isa => 'ArrayRef[AWS::EC2::PricingDetail]');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[AWS::EC2::RecurringCharge]');
  has ReservedInstancesOfferingId => (is => 'ro', isa => 'Str');
  has UsagePrice => (is => 'ro', isa => 'Num');
}

class AWS::EC2::Route with AWS::API::ResultParser {
  has DestinationCidrBlock => (is => 'ro', isa => 'Str');
  has GatewayId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has InstanceOwnerId => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
}

class AWS::EC2::RouteTable with AWS::API::ResultParser {
  has Associations => (is => 'ro', isa => 'ArrayRef[AWS::EC2::RouteTableAssociation]');
  has PropagatingVgws => (is => 'ro', isa => 'ArrayRef[AWS::EC2::PropagatingVgw]');
  has RouteTableId => (is => 'ro', isa => 'Str');
  has Routes => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Route]');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');
  has VpcId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::RouteTableAssociation with AWS::API::ResultParser {
  has Main => (is => 'ro', isa => 'Str');
  has RouteTableAssociationId => (is => 'ro', isa => 'Str');
  has RouteTableId => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::RunInstancesMonitoringEnabled with AWS::API::ResultParser {
  has Enabled => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::EC2::S3Storage with AWS::API::ResultParser {
  has AWSAccessKeyId => (is => 'ro', isa => 'Str');
  has Bucket => (is => 'ro', isa => 'Str');
  has Prefix => (is => 'ro', isa => 'Str');
  has UploadPolicy => (is => 'ro', isa => 'Str');
  has UploadPolicySignature => (is => 'ro', isa => 'Str');
}

class AWS::EC2::SecurityGroup with AWS::API::ResultParser {
  has Description => (is => 'ro', isa => 'Str');
  has GroupId => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[AWS::EC2::IpPermission]');
  has IpPermissionsEgress => (is => 'ro', isa => 'ArrayRef[AWS::EC2::IpPermission]');
  has OwnerId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');
  has VpcId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::Snapshot with AWS::API::ResultParser {
  has Description => (is => 'ro', isa => 'Str');
  has OwnerAlias => (is => 'ro', isa => 'Str');
  has OwnerId => (is => 'ro', isa => 'Str');
  has Progress => (is => 'ro', isa => 'Str');
  has SnapshotId => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');
  has VolumeId => (is => 'ro', isa => 'Str');
  has VolumeSize => (is => 'ro', isa => 'Int');
}

class AWS::EC2::SpotDatafeedSubscription with AWS::API::ResultParser {
  has Bucket => (is => 'ro', isa => 'Str');
  has Fault => (is => 'ro', isa => 'AWS::EC2::SpotInstanceStateFault');
  has OwnerId => (is => 'ro', isa => 'Str');
  has Prefix => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
}

class AWS::EC2::SpotInstanceRequest with AWS::API::ResultParser {
  has AvailabilityZoneGroup => (is => 'ro', isa => 'Str');
  has CreateTime => (is => 'ro', isa => 'Str');
  has Fault => (is => 'ro', isa => 'AWS::EC2::SpotInstanceStateFault');
  has InstanceId => (is => 'ro', isa => 'Str');
  has LaunchGroup => (is => 'ro', isa => 'Str');
  has LaunchSpecification => (is => 'ro', isa => 'AWS::EC2::LaunchSpecification');
  has LaunchedAvailabilityZone => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has SpotInstanceRequestId => (is => 'ro', isa => 'Str');
  has SpotPrice => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'AWS::EC2::SpotInstanceStatus');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');
  has Type => (is => 'ro', isa => 'Str');
  has ValidFrom => (is => 'ro', isa => 'Str');
  has ValidUntil => (is => 'ro', isa => 'Str');
}

class AWS::EC2::SpotInstanceStateFault with AWS::API::ResultParser {
  has Code => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
}

class AWS::EC2::SpotInstanceStatus with AWS::API::ResultParser {
  has Code => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has UpdateTime => (is => 'ro', isa => 'Str');
}

class AWS::EC2::SpotPlacement with AWS::API::ResultParser {
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
}

class AWS::EC2::SpotPrice with AWS::API::ResultParser {
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has SpotPrice => (is => 'ro', isa => 'Str');
  has Timestamp => (is => 'ro', isa => 'Str');
}

class AWS::EC2::StateReason with AWS::API::ResultParser {
  has Code => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
}

class AWS::EC2::Storage with AWS::API::ResultParser {
  has S3 => (is => 'ro', isa => 'AWS::EC2::S3Storage');
}

class AWS::EC2::Subnet with AWS::API::ResultParser {
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has AvailableIpAddressCount => (is => 'ro', isa => 'Int');
  has CidrBlock => (is => 'ro', isa => 'Str');
  has DefaultForAz => (is => 'ro', isa => 'Str');
  has MapPublicIpOnLaunch => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');
  has VpcId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::Tag with AWS::API::ResultParser {
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}

class AWS::EC2::TagDescription with AWS::API::ResultParser {
  has Key => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}

class AWS::EC2::UserIdGroupPair with AWS::API::ResultParser {
  has GroupId => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has UserId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::VgwTelemetry with AWS::API::ResultParser {
  has AcceptedRouteCount => (is => 'ro', isa => 'Int');
  has LastStatusChange => (is => 'ro', isa => 'Str');
  has OutsideIpAddress => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
}

class AWS::EC2::Volume with AWS::API::ResultParser {
  has Attachments => (is => 'ro', isa => 'ArrayRef[AWS::EC2::VolumeAttachment]');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CreateTime => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has Size => (is => 'ro', isa => 'Int');
  has SnapshotId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');
  has VolumeId => (is => 'ro', isa => 'Str');
  has VolumeType => (is => 'ro', isa => 'Str');
}

class AWS::EC2::VolumeAttachment with AWS::API::ResultParser {
  has AttachTime => (is => 'ro', isa => 'Str');
  has DeleteOnTermination => (is => 'ro', isa => 'Str');
  has Device => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::VolumeDetail with AWS::API::ResultParser {
  has Size => (is => 'ro', isa => 'Num', required => 1);
}

class AWS::EC2::VolumeStatusAction with AWS::API::ResultParser {
  has Code => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EventId => (is => 'ro', isa => 'Str');
  has EventType => (is => 'ro', isa => 'Str');
}

class AWS::EC2::VolumeStatusEvent with AWS::API::ResultParser {
  has Description => (is => 'ro', isa => 'Str');
  has EventId => (is => 'ro', isa => 'Str');
  has EventType => (is => 'ro', isa => 'Str');
  has NotAfter => (is => 'ro', isa => 'Str');
  has NotBefore => (is => 'ro', isa => 'Str');
}

class AWS::EC2::VolumeStatusInfo with AWS::API::ResultParser {
  has Details => (is => 'ro', isa => 'ArrayRef[AWS::EC2::VolumeStatusDetails]');
  has Status => (is => 'ro', isa => 'Str');
}

class AWS::EC2::VolumeStatusItem with AWS::API::ResultParser {
  has Actions => (is => 'ro', isa => 'ArrayRef[AWS::EC2::VolumeStatusAction]');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has Events => (is => 'ro', isa => 'ArrayRef[AWS::EC2::VolumeStatusEvent]');
  has VolumeId => (is => 'ro', isa => 'Str');
  has VolumeStatus => (is => 'ro', isa => 'AWS::EC2::VolumeStatusInfo');
}

class AWS::EC2::Vpc with AWS::API::ResultParser {
  has CidrBlock => (is => 'ro', isa => 'Str');
  has DhcpOptionsId => (is => 'ro', isa => 'Str');
  has InstanceTenancy => (is => 'ro', isa => 'Str');
  has IsDefault => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');
  has VpcId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::VpcAttachment with AWS::API::ResultParser {
  has State => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::VpnConnection with AWS::API::ResultParser {
  has CustomerGatewayConfiguration => (is => 'ro', isa => 'Str');
  has CustomerGatewayId => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'AWS::EC2::VpnConnectionOptions');
  has Routes => (is => 'ro', isa => 'ArrayRef[AWS::EC2::VpnStaticRoute]');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');
  has Type => (is => 'ro', isa => 'Str');
  has VgwTelemetry => (is => 'ro', isa => 'ArrayRef[AWS::EC2::VgwTelemetry]');
  has VpnConnectionId => (is => 'ro', isa => 'Str');
  has VpnGatewayId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::VpnConnectionOptions with AWS::API::ResultParser {
  has StaticRoutesOnly => (is => 'ro', isa => 'Str');
}

class AWS::EC2::VpnConnectionOptionsSpecification with AWS::API::ResultParser {
  has StaticRoutesOnly => (is => 'ro', isa => 'Str');
}

class AWS::EC2::VpnGateway with AWS::API::ResultParser {
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');
  has Type => (is => 'ro', isa => 'Str');
  has VpcAttachments => (is => 'ro', isa => 'ArrayRef[AWS::EC2::VpcAttachment]');
  has VpnGatewayId => (is => 'ro', isa => 'Str');
}

class AWS::EC2::VpnStaticRoute with AWS::API::ResultParser {
  has DestinationCidrBlock => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
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
  has LaunchSpecification => (is => 'ro', isa => 'AWS::EC2::LaunchSpecification2');
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
class AWS::EC2::AllocateAddressResult with AWS::API::ResultParser {
  has AllocationId => (is => 'ro', isa => 'Str');
  has Domain => (is => 'ro', isa => 'Str');
  has PublicIp => (is => 'ro', isa => 'Str');
}
class AWS::EC2::AssociateAddressResult with AWS::API::ResultParser {
  has AssociationId => (is => 'ro', isa => 'Str');
}
class AWS::EC2::AssociateRouteTableResult with AWS::API::ResultParser {
  has AssociationId => (is => 'ro', isa => 'Str');
}
class AWS::EC2::AttachNetworkInterfaceResult with AWS::API::ResultParser {
  has AttachmentId => (is => 'ro', isa => 'Str');
}
class AWS::EC2::AttachVolumeResult with AWS::API::ResultParser {
  has AttachTime => (is => 'ro', isa => 'Str');
  has DeleteOnTermination => (is => 'ro', isa => 'Str');
  has Device => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str');
}
class AWS::EC2::AttachVpnGatewayResult with AWS::API::ResultParser {
  has VpcAttachement => (is => 'ro', isa => 'AWS::EC2::VpcAttachment');
}
class AWS::EC2::BundleInstanceResult with AWS::API::ResultParser {
  has BundleTask => (is => 'ro', isa => 'AWS::EC2::BundleTask');
}
class AWS::EC2::CancelBundleTaskResult with AWS::API::ResultParser {
  has BundleTask => (is => 'ro', isa => 'AWS::EC2::BundleTask');
}
class AWS::EC2::CancelReservedInstancesListingResult with AWS::API::ResultParser {
  has ReservedInstancesListings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ReservedInstancesListing]');
}
class AWS::EC2::CancelSpotInstanceRequestsResult with AWS::API::ResultParser {
  has CancelledSpotInstanceRequests => (is => 'ro', isa => 'ArrayRef[AWS::EC2::CancelledSpotInstanceRequest]');
}
class AWS::EC2::ConfirmProductInstanceResult with AWS::API::ResultParser {
  has OwnerId => (is => 'ro', isa => 'Str');
}
class AWS::EC2::CopyImageResult with AWS::API::ResultParser {
  has ImageId => (is => 'ro', isa => 'Str');
}
class AWS::EC2::CopySnapshotResult with AWS::API::ResultParser {
  has SnapshotId => (is => 'ro', isa => 'Str');
}
class AWS::EC2::CreateCustomerGatewayResult with AWS::API::ResultParser {
  has CustomerGateway => (is => 'ro', isa => 'AWS::EC2::CustomerGateway');
}
class AWS::EC2::CreateDhcpOptionsResult with AWS::API::ResultParser {
  has DhcpOptions => (is => 'ro', isa => 'AWS::EC2::DhcpOptions');
}
class AWS::EC2::CreateImageResult with AWS::API::ResultParser {
  has ImageId => (is => 'ro', isa => 'Str');
}
class AWS::EC2::CreateInstanceExportTaskResult with AWS::API::ResultParser {
  has ExportTask => (is => 'ro', isa => 'AWS::EC2::ExportTask');
}
class AWS::EC2::CreateInternetGatewayResult with AWS::API::ResultParser {
  has InternetGateway => (is => 'ro', isa => 'AWS::EC2::InternetGateway');
}
class AWS::EC2::CreateKeyPairResult with AWS::API::ResultParser {
  has KeyFingerprint => (is => 'ro', isa => 'Str');
  has KeyMaterial => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str');
}
class AWS::EC2::CreateNetworkAclResult with AWS::API::ResultParser {
  has NetworkAcl => (is => 'ro', isa => 'AWS::EC2::NetworkAcl');
}
class AWS::EC2::CreateNetworkInterfaceResult with AWS::API::ResultParser {
  has NetworkInterface => (is => 'ro', isa => 'AWS::EC2::NetworkInterface');
}
class AWS::EC2::CreateReservedInstancesListingResult with AWS::API::ResultParser {
  has ReservedInstancesListings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ReservedInstancesListing]');
}
class AWS::EC2::CreateRouteTableResult with AWS::API::ResultParser {
  has RouteTable => (is => 'ro', isa => 'AWS::EC2::RouteTable');
}
class AWS::EC2::CreateSecurityGroupResult with AWS::API::ResultParser {
  has GroupId => (is => 'ro', isa => 'Str');
}
class AWS::EC2::CreateSnapshotResult with AWS::API::ResultParser {
  has Description => (is => 'ro', isa => 'Str');
  has OwnerAlias => (is => 'ro', isa => 'Str');
  has OwnerId => (is => 'ro', isa => 'Str');
  has Progress => (is => 'ro', isa => 'Str');
  has SnapshotId => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');
  has VolumeId => (is => 'ro', isa => 'Str');
  has VolumeSize => (is => 'ro', isa => 'Int');
}
class AWS::EC2::CreateSpotDatafeedSubscriptionResult with AWS::API::ResultParser {
  has SpotDatafeedSubscription => (is => 'ro', isa => 'AWS::EC2::SpotDatafeedSubscription');
}
class AWS::EC2::CreateSubnetResult with AWS::API::ResultParser {
  has Subnet => (is => 'ro', isa => 'AWS::EC2::Subnet');
}
class AWS::EC2::CreateVolumeResult with AWS::API::ResultParser {
  has Attachments => (is => 'ro', isa => 'ArrayRef[AWS::EC2::VolumeAttachment]');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CreateTime => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has Size => (is => 'ro', isa => 'Int');
  has SnapshotId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Tag]');
  has VolumeId => (is => 'ro', isa => 'Str');
  has VolumeType => (is => 'ro', isa => 'Str');
}
class AWS::EC2::CreateVpcResult with AWS::API::ResultParser {
  has Vpc => (is => 'ro', isa => 'AWS::EC2::Vpc');
}
class AWS::EC2::CreateVpnConnectionResult with AWS::API::ResultParser {
  has VpnConnection => (is => 'ro', isa => 'AWS::EC2::VpnConnection');
}
class AWS::EC2::CreateVpnGatewayResult with AWS::API::ResultParser {
  has VpnGateway => (is => 'ro', isa => 'AWS::EC2::VpnGateway');
}
class AWS::EC2::DescribeAccountAttributesResult with AWS::API::ResultParser {
  has AccountAttributes => (is => 'ro', isa => 'ArrayRef[AWS::EC2::AccountAttribute]');
}
class AWS::EC2::DescribeAddressesResult with AWS::API::ResultParser {
  has Addresses => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Address]');
}
class AWS::EC2::DescribeAvailabilityZonesResult with AWS::API::ResultParser {
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[AWS::EC2::AvailabilityZone]');
}
class AWS::EC2::DescribeBundleTasksResult with AWS::API::ResultParser {
  has BundleTasks => (is => 'ro', isa => 'ArrayRef[AWS::EC2::BundleTask]');
}
class AWS::EC2::DescribeConversionTasksResult with AWS::API::ResultParser {
  has ConversionTasks => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ConversionTask]');
}
class AWS::EC2::DescribeCustomerGatewaysResult with AWS::API::ResultParser {
  has CustomerGateways => (is => 'ro', isa => 'ArrayRef[AWS::EC2::CustomerGateway]');
}
class AWS::EC2::DescribeDhcpOptionsResult with AWS::API::ResultParser {
  has DhcpOptions => (is => 'ro', isa => 'ArrayRef[AWS::EC2::DhcpOptions]');
}
class AWS::EC2::DescribeExportTasksResult with AWS::API::ResultParser {
  has ExportTasks => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ExportTask]');
}
class AWS::EC2::DescribeImageAttributeResult with AWS::API::ResultParser {
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::BlockDeviceMapping]');
  has Description => (is => 'ro', isa => 'AWS::EC2::AttributeValue');
  has ImageId => (is => 'ro', isa => 'Str');
  has KernelId => (is => 'ro', isa => 'AWS::EC2::AttributeValue');
  has LaunchPermissions => (is => 'ro', isa => 'ArrayRef[AWS::EC2::LaunchPermission]');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ProductCode]');
  has RamdiskId => (is => 'ro', isa => 'AWS::EC2::AttributeValue');
}
class AWS::EC2::DescribeImagesResult with AWS::API::ResultParser {
  has Images => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Image]');
}
class AWS::EC2::DescribeInstanceAttributeResult with AWS::API::ResultParser {
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceBlockDeviceMapping]');
  has DisableApiTermination => (is => 'ro', isa => 'AWS::EC2::AttributeBooleanValue');
  has EbsOptimized => (is => 'ro', isa => 'AWS::EC2::AttributeBooleanValue');
  has InstanceId => (is => 'ro', isa => 'Str');
  has InstanceInitiatedShutdownBehavior => (is => 'ro', isa => 'AWS::EC2::AttributeValue');
  has InstanceType => (is => 'ro', isa => 'AWS::EC2::AttributeValue');
  has KernelId => (is => 'ro', isa => 'AWS::EC2::AttributeValue');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ProductCode]');
  has RamdiskId => (is => 'ro', isa => 'AWS::EC2::AttributeValue');
  has RootDeviceName => (is => 'ro', isa => 'AWS::EC2::AttributeValue');
  has UserData => (is => 'ro', isa => 'AWS::EC2::AttributeValue');
}
class AWS::EC2::DescribeInstanceStatusResult with AWS::API::ResultParser {
  has InstanceStatuses => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceStatus]');
  has NextToken => (is => 'ro', isa => 'Str');
}
class AWS::EC2::DescribeInstancesResult with AWS::API::ResultParser {
  has Reservations => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Reservation]');
}
class AWS::EC2::DescribeInternetGatewaysResult with AWS::API::ResultParser {
  has InternetGateways => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InternetGateway]');
}
class AWS::EC2::DescribeKeyPairsResult with AWS::API::ResultParser {
  has KeyPairs => (is => 'ro', isa => 'ArrayRef[AWS::EC2::KeyPairInfo]');
}
class AWS::EC2::DescribeLicensesResult with AWS::API::ResultParser {
  has Licenses => (is => 'ro', isa => 'ArrayRef[AWS::EC2::License]');
}
class AWS::EC2::DescribeNetworkAclsResult with AWS::API::ResultParser {
  has NetworkAcls => (is => 'ro', isa => 'ArrayRef[AWS::EC2::NetworkAcl]');
}
class AWS::EC2::DescribeNetworkInterfaceAttributeResult with AWS::API::ResultParser {
  has Attachment => (is => 'ro', isa => 'AWS::EC2::NetworkInterfaceAttachment');
  has Description => (is => 'ro', isa => 'AWS::EC2::AttributeValue');
  has Groups => (is => 'ro', isa => 'ArrayRef[AWS::EC2::GroupIdentifier]');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has SourceDestCheck => (is => 'ro', isa => 'AWS::EC2::AttributeBooleanValue');
}
class AWS::EC2::DescribeNetworkInterfacesResult with AWS::API::ResultParser {
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[AWS::EC2::NetworkInterface]');
}
class AWS::EC2::DescribePlacementGroupsResult with AWS::API::ResultParser {
  has PlacementGroups => (is => 'ro', isa => 'ArrayRef[AWS::EC2::PlacementGroup]');
}
class AWS::EC2::DescribeRegionsResult with AWS::API::ResultParser {
  has Regions => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Region]');
}
class AWS::EC2::DescribeReservedInstancesResult with AWS::API::ResultParser {
  has ReservedInstances => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ReservedInstances]');
}
class AWS::EC2::DescribeReservedInstancesListingsResult with AWS::API::ResultParser {
  has ReservedInstancesListings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ReservedInstancesListing]');
}
class AWS::EC2::DescribeReservedInstancesModificationsResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has ReservedInstancesModifications => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ReservedInstancesModification]');
}
class AWS::EC2::DescribeReservedInstancesOfferingsResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has ReservedInstancesOfferings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ReservedInstancesOffering]');
}
class AWS::EC2::DescribeRouteTablesResult with AWS::API::ResultParser {
  has RouteTables => (is => 'ro', isa => 'ArrayRef[AWS::EC2::RouteTable]');
}
class AWS::EC2::DescribeSecurityGroupsResult with AWS::API::ResultParser {
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[AWS::EC2::SecurityGroup]');
}
class AWS::EC2::DescribeSnapshotAttributeResult with AWS::API::ResultParser {
  has CreateVolumePermissions => (is => 'ro', isa => 'ArrayRef[AWS::EC2::CreateVolumePermission]');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ProductCode]');
  has SnapshotId => (is => 'ro', isa => 'Str');
}
class AWS::EC2::DescribeSnapshotsResult with AWS::API::ResultParser {
  has Snapshots => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Snapshot]');
}
class AWS::EC2::DescribeSpotDatafeedSubscriptionResult with AWS::API::ResultParser {
  has SpotDatafeedSubscription => (is => 'ro', isa => 'AWS::EC2::SpotDatafeedSubscription');
}
class AWS::EC2::DescribeSpotInstanceRequestsResult with AWS::API::ResultParser {
  has SpotInstanceRequests => (is => 'ro', isa => 'ArrayRef[AWS::EC2::SpotInstanceRequest]');
}
class AWS::EC2::DescribeSpotPriceHistoryResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has SpotPriceHistory => (is => 'ro', isa => 'ArrayRef[AWS::EC2::SpotPrice]');
}
class AWS::EC2::DescribeSubnetsResult with AWS::API::ResultParser {
  has Subnets => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Subnet]');
}
class AWS::EC2::DescribeTagsResult with AWS::API::ResultParser {
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EC2::TagDescription]');
}
class AWS::EC2::DescribeVolumeAttributeResult with AWS::API::ResultParser {
  has AutoEnableIO => (is => 'ro', isa => 'AWS::EC2::AttributeBooleanValue');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[AWS::EC2::ProductCode]');
  has VolumeId => (is => 'ro', isa => 'Str');
}
class AWS::EC2::DescribeVolumeStatusResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has VolumeStatuses => (is => 'ro', isa => 'ArrayRef[AWS::EC2::VolumeStatusItem]');
}
class AWS::EC2::DescribeVolumesResult with AWS::API::ResultParser {
  has Volumes => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Volume]');
}
class AWS::EC2::DescribeVpcAttributeResult with AWS::API::ResultParser {
  has EnableDnsHostnames => (is => 'ro', isa => 'AWS::EC2::AttributeBooleanValue');
  has EnableDnsSupport => (is => 'ro', isa => 'AWS::EC2::AttributeBooleanValue');
  has VpcId => (is => 'ro', isa => 'Str');
}
class AWS::EC2::DescribeVpcsResult with AWS::API::ResultParser {
  has Vpcs => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Vpc]');
}
class AWS::EC2::DescribeVpnConnectionsResult with AWS::API::ResultParser {
  has VpnConnections => (is => 'ro', isa => 'ArrayRef[AWS::EC2::VpnConnection]');
}
class AWS::EC2::DescribeVpnGatewaysResult with AWS::API::ResultParser {
  has VpnGateways => (is => 'ro', isa => 'ArrayRef[AWS::EC2::VpnGateway]');
}
class AWS::EC2::DetachVolumeResult with AWS::API::ResultParser {
  has AttachTime => (is => 'ro', isa => 'Str');
  has DeleteOnTermination => (is => 'ro', isa => 'Str');
  has Device => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str');
}
class AWS::EC2::GetConsoleOutputResult with AWS::API::ResultParser {
  has InstanceId => (is => 'ro', isa => 'Str');
  has Output => (is => 'ro', isa => 'Str');
  has Timestamp => (is => 'ro', isa => 'Str');
}
class AWS::EC2::GetPasswordDataResult with AWS::API::ResultParser {
  has InstanceId => (is => 'ro', isa => 'Str');
  has PasswordData => (is => 'ro', isa => 'Str');
  has Timestamp => (is => 'ro', isa => 'Str');
}
class AWS::EC2::ImportInstanceResult with AWS::API::ResultParser {
  has ConversionTask => (is => 'ro', isa => 'AWS::EC2::ConversionTask');
}
class AWS::EC2::ImportKeyPairResult with AWS::API::ResultParser {
  has KeyFingerprint => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str');
}
class AWS::EC2::ImportVolumeResult with AWS::API::ResultParser {
  has ConversionTask => (is => 'ro', isa => 'AWS::EC2::ConversionTask');
}
class AWS::EC2::ModifyReservedInstancesResult with AWS::API::ResultParser {
  has ReservedInstancesModificationId => (is => 'ro', isa => 'Str');
}
class AWS::EC2::MonitorInstancesResult with AWS::API::ResultParser {
  has InstanceMonitorings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceMonitoring]');
}
class AWS::EC2::PurchaseReservedInstancesOfferingResult with AWS::API::ResultParser {
  has ReservedInstancesId => (is => 'ro', isa => 'Str');
}
class AWS::EC2::RegisterImageResult with AWS::API::ResultParser {
  has ImageId => (is => 'ro', isa => 'Str');
}
class AWS::EC2::ReplaceNetworkAclAssociationResult with AWS::API::ResultParser {
  has NewAssociationId => (is => 'ro', isa => 'Str');
}
class AWS::EC2::ReplaceRouteTableAssociationResult with AWS::API::ResultParser {
  has NewAssociationId => (is => 'ro', isa => 'Str');
}
class AWS::EC2::RequestSpotInstancesResult with AWS::API::ResultParser {
  has SpotInstanceRequests => (is => 'ro', isa => 'ArrayRef[AWS::EC2::SpotInstanceRequest]');
}
class AWS::EC2::RunInstancesResult with AWS::API::ResultParser {
  has Groups => (is => 'ro', isa => 'ArrayRef[AWS::EC2::GroupIdentifier]');
  has Instances => (is => 'ro', isa => 'ArrayRef[AWS::EC2::Instance]');
  has OwnerId => (is => 'ro', isa => 'Str');
  has RequesterId => (is => 'ro', isa => 'Str');
  has ReservationId => (is => 'ro', isa => 'Str');
}
class AWS::EC2::StartInstancesResult with AWS::API::ResultParser {
  has StartingInstances => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceStateChange]');
}
class AWS::EC2::StopInstancesResult with AWS::API::ResultParser {
  has StoppingInstances => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceStateChange]');
}
class AWS::EC2::TerminateInstancesResult with AWS::API::ResultParser {
  has TerminatingInstances => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceStateChange]');
}
class AWS::EC2::UnmonitorInstancesResult with AWS::API::ResultParser {
  has InstanceMonitorings => (is => 'ro', isa => 'ArrayRef[AWS::EC2::InstanceMonitoring]');
}
class AWS::EC2 with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V2Signature, Net::AWS::QueryCaller) {
  has service => (is => 'ro', isa => 'Str', default => 'ec2');
  has version => (is => 'ro', isa => 'Str', default => '2013-08-15');

  method ActivateLicense (%args) {
    my $call = AWS::EC2::ActivateLicense->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ActivateLicenseResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method AllocateAddress (%args) {
    my $call = AWS::EC2::AllocateAddress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::AllocateAddressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method AssignPrivateIpAddresses (%args) {
    my $call = AWS::EC2::AssignPrivateIpAddresses->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::AssignPrivateIpAddressesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method AssociateAddress (%args) {
    my $call = AWS::EC2::AssociateAddress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::AssociateAddressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method AssociateDhcpOptions (%args) {
    my $call = AWS::EC2::AssociateDhcpOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::AssociateDhcpOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method AssociateRouteTable (%args) {
    my $call = AWS::EC2::AssociateRouteTable->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::AssociateRouteTableResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method AttachInternetGateway (%args) {
    my $call = AWS::EC2::AttachInternetGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::AttachInternetGatewayResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method AttachNetworkInterface (%args) {
    my $call = AWS::EC2::AttachNetworkInterface->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::AttachNetworkInterfaceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method AttachVolume (%args) {
    my $call = AWS::EC2::AttachVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::AttachVolumeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method AttachVpnGateway (%args) {
    my $call = AWS::EC2::AttachVpnGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::AttachVpnGatewayResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method AuthorizeSecurityGroupEgress (%args) {
    my $call = AWS::EC2::AuthorizeSecurityGroupEgress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::AuthorizeSecurityGroupEgressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method AuthorizeSecurityGroupIngress (%args) {
    my $call = AWS::EC2::AuthorizeSecurityGroupIngress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::AuthorizeSecurityGroupIngressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method BundleInstance (%args) {
    my $call = AWS::EC2::BundleInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::BundleInstanceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CancelBundleTask (%args) {
    my $call = AWS::EC2::CancelBundleTask->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CancelBundleTaskResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CancelConversionTask (%args) {
    my $call = AWS::EC2::CancelConversionTask->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CancelConversionTaskResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CancelExportTask (%args) {
    my $call = AWS::EC2::CancelExportTask->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CancelExportTaskResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CancelReservedInstancesListing (%args) {
    my $call = AWS::EC2::CancelReservedInstancesListing->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CancelReservedInstancesListingResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CancelSpotInstanceRequests (%args) {
    my $call = AWS::EC2::CancelSpotInstanceRequests->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CancelSpotInstanceRequestsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ConfirmProductInstance (%args) {
    my $call = AWS::EC2::ConfirmProductInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ConfirmProductInstanceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CopyImage (%args) {
    my $call = AWS::EC2::CopyImage->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CopyImageResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CopySnapshot (%args) {
    my $call = AWS::EC2::CopySnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CopySnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateCustomerGateway (%args) {
    my $call = AWS::EC2::CreateCustomerGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateCustomerGatewayResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateDhcpOptions (%args) {
    my $call = AWS::EC2::CreateDhcpOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateDhcpOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateImage (%args) {
    my $call = AWS::EC2::CreateImage->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateImageResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateInstanceExportTask (%args) {
    my $call = AWS::EC2::CreateInstanceExportTask->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateInstanceExportTaskResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateInternetGateway (%args) {
    my $call = AWS::EC2::CreateInternetGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateInternetGatewayResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateKeyPair (%args) {
    my $call = AWS::EC2::CreateKeyPair->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateKeyPairResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateNetworkAcl (%args) {
    my $call = AWS::EC2::CreateNetworkAcl->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateNetworkAclResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateNetworkAclEntry (%args) {
    my $call = AWS::EC2::CreateNetworkAclEntry->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateNetworkAclEntryResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateNetworkInterface (%args) {
    my $call = AWS::EC2::CreateNetworkInterface->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateNetworkInterfaceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreatePlacementGroup (%args) {
    my $call = AWS::EC2::CreatePlacementGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreatePlacementGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateReservedInstancesListing (%args) {
    my $call = AWS::EC2::CreateReservedInstancesListing->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateReservedInstancesListingResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateRoute (%args) {
    my $call = AWS::EC2::CreateRoute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateRouteResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateRouteTable (%args) {
    my $call = AWS::EC2::CreateRouteTable->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateRouteTableResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateSecurityGroup (%args) {
    my $call = AWS::EC2::CreateSecurityGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateSecurityGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateSnapshot (%args) {
    my $call = AWS::EC2::CreateSnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateSpotDatafeedSubscription (%args) {
    my $call = AWS::EC2::CreateSpotDatafeedSubscription->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateSpotDatafeedSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateSubnet (%args) {
    my $call = AWS::EC2::CreateSubnet->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateSubnetResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateTags (%args) {
    my $call = AWS::EC2::CreateTags->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateTagsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateVolume (%args) {
    my $call = AWS::EC2::CreateVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateVolumeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateVpc (%args) {
    my $call = AWS::EC2::CreateVpc->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateVpcResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateVpnConnection (%args) {
    my $call = AWS::EC2::CreateVpnConnection->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateVpnConnectionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateVpnConnectionRoute (%args) {
    my $call = AWS::EC2::CreateVpnConnectionRoute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateVpnConnectionRouteResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateVpnGateway (%args) {
    my $call = AWS::EC2::CreateVpnGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::CreateVpnGatewayResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeactivateLicense (%args) {
    my $call = AWS::EC2::DeactivateLicense->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DeactivateLicenseResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteCustomerGateway (%args) {
    my $call = AWS::EC2::DeleteCustomerGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DeleteCustomerGatewayResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteDhcpOptions (%args) {
    my $call = AWS::EC2::DeleteDhcpOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DeleteDhcpOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteInternetGateway (%args) {
    my $call = AWS::EC2::DeleteInternetGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DeleteInternetGatewayResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteKeyPair (%args) {
    my $call = AWS::EC2::DeleteKeyPair->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DeleteKeyPairResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteNetworkAcl (%args) {
    my $call = AWS::EC2::DeleteNetworkAcl->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DeleteNetworkAclResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteNetworkAclEntry (%args) {
    my $call = AWS::EC2::DeleteNetworkAclEntry->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DeleteNetworkAclEntryResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteNetworkInterface (%args) {
    my $call = AWS::EC2::DeleteNetworkInterface->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DeleteNetworkInterfaceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeletePlacementGroup (%args) {
    my $call = AWS::EC2::DeletePlacementGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DeletePlacementGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteRoute (%args) {
    my $call = AWS::EC2::DeleteRoute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DeleteRouteResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteRouteTable (%args) {
    my $call = AWS::EC2::DeleteRouteTable->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DeleteRouteTableResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteSecurityGroup (%args) {
    my $call = AWS::EC2::DeleteSecurityGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DeleteSecurityGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteSnapshot (%args) {
    my $call = AWS::EC2::DeleteSnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DeleteSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteSpotDatafeedSubscription (%args) {
    my $call = AWS::EC2::DeleteSpotDatafeedSubscription->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DeleteSpotDatafeedSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteSubnet (%args) {
    my $call = AWS::EC2::DeleteSubnet->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DeleteSubnetResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteTags (%args) {
    my $call = AWS::EC2::DeleteTags->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DeleteTagsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteVolume (%args) {
    my $call = AWS::EC2::DeleteVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DeleteVolumeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteVpc (%args) {
    my $call = AWS::EC2::DeleteVpc->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DeleteVpcResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteVpnConnection (%args) {
    my $call = AWS::EC2::DeleteVpnConnection->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DeleteVpnConnectionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteVpnConnectionRoute (%args) {
    my $call = AWS::EC2::DeleteVpnConnectionRoute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DeleteVpnConnectionRouteResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteVpnGateway (%args) {
    my $call = AWS::EC2::DeleteVpnGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DeleteVpnGatewayResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeregisterImage (%args) {
    my $call = AWS::EC2::DeregisterImage->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DeregisterImageResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeAccountAttributes (%args) {
    my $call = AWS::EC2::DescribeAccountAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeAccountAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeAddresses (%args) {
    my $call = AWS::EC2::DescribeAddresses->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeAddressesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeAvailabilityZones (%args) {
    my $call = AWS::EC2::DescribeAvailabilityZones->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeAvailabilityZonesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeBundleTasks (%args) {
    my $call = AWS::EC2::DescribeBundleTasks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeBundleTasksResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeConversionTasks (%args) {
    my $call = AWS::EC2::DescribeConversionTasks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeConversionTasksResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeCustomerGateways (%args) {
    my $call = AWS::EC2::DescribeCustomerGateways->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeCustomerGatewaysResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeDhcpOptions (%args) {
    my $call = AWS::EC2::DescribeDhcpOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeDhcpOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeExportTasks (%args) {
    my $call = AWS::EC2::DescribeExportTasks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeExportTasksResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeImageAttribute (%args) {
    my $call = AWS::EC2::DescribeImageAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeImageAttributeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeImages (%args) {
    my $call = AWS::EC2::DescribeImages->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeImagesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeInstanceAttribute (%args) {
    my $call = AWS::EC2::DescribeInstanceAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeInstanceAttributeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeInstanceStatus (%args) {
    my $call = AWS::EC2::DescribeInstanceStatus->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeInstanceStatusResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeInstances (%args) {
    my $call = AWS::EC2::DescribeInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeInternetGateways (%args) {
    my $call = AWS::EC2::DescribeInternetGateways->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeInternetGatewaysResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeKeyPairs (%args) {
    my $call = AWS::EC2::DescribeKeyPairs->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeKeyPairsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeLicenses (%args) {
    my $call = AWS::EC2::DescribeLicenses->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeLicensesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeNetworkAcls (%args) {
    my $call = AWS::EC2::DescribeNetworkAcls->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeNetworkAclsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeNetworkInterfaceAttribute (%args) {
    my $call = AWS::EC2::DescribeNetworkInterfaceAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeNetworkInterfaceAttributeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeNetworkInterfaces (%args) {
    my $call = AWS::EC2::DescribeNetworkInterfaces->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeNetworkInterfacesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribePlacementGroups (%args) {
    my $call = AWS::EC2::DescribePlacementGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribePlacementGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeRegions (%args) {
    my $call = AWS::EC2::DescribeRegions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeRegionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeReservedInstances (%args) {
    my $call = AWS::EC2::DescribeReservedInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeReservedInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeReservedInstancesListings (%args) {
    my $call = AWS::EC2::DescribeReservedInstancesListings->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeReservedInstancesListingsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeReservedInstancesModifications (%args) {
    my $call = AWS::EC2::DescribeReservedInstancesModifications->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeReservedInstancesModificationsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeReservedInstancesOfferings (%args) {
    my $call = AWS::EC2::DescribeReservedInstancesOfferings->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeReservedInstancesOfferingsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeRouteTables (%args) {
    my $call = AWS::EC2::DescribeRouteTables->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeRouteTablesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeSecurityGroups (%args) {
    my $call = AWS::EC2::DescribeSecurityGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeSecurityGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeSnapshotAttribute (%args) {
    my $call = AWS::EC2::DescribeSnapshotAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeSnapshotAttributeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeSnapshots (%args) {
    my $call = AWS::EC2::DescribeSnapshots->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeSnapshotsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeSpotDatafeedSubscription (%args) {
    my $call = AWS::EC2::DescribeSpotDatafeedSubscription->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeSpotDatafeedSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeSpotInstanceRequests (%args) {
    my $call = AWS::EC2::DescribeSpotInstanceRequests->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeSpotInstanceRequestsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeSpotPriceHistory (%args) {
    my $call = AWS::EC2::DescribeSpotPriceHistory->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeSpotPriceHistoryResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeSubnets (%args) {
    my $call = AWS::EC2::DescribeSubnets->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeSubnetsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeTags (%args) {
    my $call = AWS::EC2::DescribeTags->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeTagsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeVolumeAttribute (%args) {
    my $call = AWS::EC2::DescribeVolumeAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeVolumeAttributeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeVolumeStatus (%args) {
    my $call = AWS::EC2::DescribeVolumeStatus->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeVolumeStatusResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeVolumes (%args) {
    my $call = AWS::EC2::DescribeVolumes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeVolumesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeVpcAttribute (%args) {
    my $call = AWS::EC2::DescribeVpcAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeVpcAttributeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeVpcs (%args) {
    my $call = AWS::EC2::DescribeVpcs->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeVpcsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeVpnConnections (%args) {
    my $call = AWS::EC2::DescribeVpnConnections->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeVpnConnectionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeVpnGateways (%args) {
    my $call = AWS::EC2::DescribeVpnGateways->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DescribeVpnGatewaysResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DetachInternetGateway (%args) {
    my $call = AWS::EC2::DetachInternetGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DetachInternetGatewayResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DetachNetworkInterface (%args) {
    my $call = AWS::EC2::DetachNetworkInterface->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DetachNetworkInterfaceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DetachVolume (%args) {
    my $call = AWS::EC2::DetachVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DetachVolumeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DetachVpnGateway (%args) {
    my $call = AWS::EC2::DetachVpnGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DetachVpnGatewayResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DisableVgwRoutePropagation (%args) {
    my $call = AWS::EC2::DisableVgwRoutePropagation->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DisableVgwRoutePropagationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DisassociateAddress (%args) {
    my $call = AWS::EC2::DisassociateAddress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DisassociateAddressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DisassociateRouteTable (%args) {
    my $call = AWS::EC2::DisassociateRouteTable->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::DisassociateRouteTableResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method EnableVgwRoutePropagation (%args) {
    my $call = AWS::EC2::EnableVgwRoutePropagation->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::EnableVgwRoutePropagationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method EnableVolumeIO (%args) {
    my $call = AWS::EC2::EnableVolumeIO->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::EnableVolumeIOResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method GetConsoleOutput (%args) {
    my $call = AWS::EC2::GetConsoleOutput->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::GetConsoleOutputResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method GetPasswordData (%args) {
    my $call = AWS::EC2::GetPasswordData->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::GetPasswordDataResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ImportInstance (%args) {
    my $call = AWS::EC2::ImportInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ImportInstanceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ImportKeyPair (%args) {
    my $call = AWS::EC2::ImportKeyPair->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ImportKeyPairResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ImportVolume (%args) {
    my $call = AWS::EC2::ImportVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ImportVolumeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ModifyImageAttribute (%args) {
    my $call = AWS::EC2::ModifyImageAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ModifyImageAttributeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ModifyInstanceAttribute (%args) {
    my $call = AWS::EC2::ModifyInstanceAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ModifyInstanceAttributeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ModifyNetworkInterfaceAttribute (%args) {
    my $call = AWS::EC2::ModifyNetworkInterfaceAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ModifyNetworkInterfaceAttributeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ModifyReservedInstances (%args) {
    my $call = AWS::EC2::ModifyReservedInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ModifyReservedInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ModifySnapshotAttribute (%args) {
    my $call = AWS::EC2::ModifySnapshotAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ModifySnapshotAttributeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ModifyVolumeAttribute (%args) {
    my $call = AWS::EC2::ModifyVolumeAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ModifyVolumeAttributeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ModifyVpcAttribute (%args) {
    my $call = AWS::EC2::ModifyVpcAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ModifyVpcAttributeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method MonitorInstances (%args) {
    my $call = AWS::EC2::MonitorInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::MonitorInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method PurchaseReservedInstancesOffering (%args) {
    my $call = AWS::EC2::PurchaseReservedInstancesOffering->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::PurchaseReservedInstancesOfferingResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method RebootInstances (%args) {
    my $call = AWS::EC2::RebootInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::RebootInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method RegisterImage (%args) {
    my $call = AWS::EC2::RegisterImage->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::RegisterImageResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ReleaseAddress (%args) {
    my $call = AWS::EC2::ReleaseAddress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ReleaseAddressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ReplaceNetworkAclAssociation (%args) {
    my $call = AWS::EC2::ReplaceNetworkAclAssociation->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ReplaceNetworkAclAssociationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ReplaceNetworkAclEntry (%args) {
    my $call = AWS::EC2::ReplaceNetworkAclEntry->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ReplaceNetworkAclEntryResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ReplaceRoute (%args) {
    my $call = AWS::EC2::ReplaceRoute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ReplaceRouteResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ReplaceRouteTableAssociation (%args) {
    my $call = AWS::EC2::ReplaceRouteTableAssociation->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ReplaceRouteTableAssociationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ReportInstanceStatus (%args) {
    my $call = AWS::EC2::ReportInstanceStatus->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ReportInstanceStatusResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method RequestSpotInstances (%args) {
    my $call = AWS::EC2::RequestSpotInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::RequestSpotInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ResetImageAttribute (%args) {
    my $call = AWS::EC2::ResetImageAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ResetImageAttributeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ResetInstanceAttribute (%args) {
    my $call = AWS::EC2::ResetInstanceAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ResetInstanceAttributeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ResetNetworkInterfaceAttribute (%args) {
    my $call = AWS::EC2::ResetNetworkInterfaceAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ResetNetworkInterfaceAttributeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ResetSnapshotAttribute (%args) {
    my $call = AWS::EC2::ResetSnapshotAttribute->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::ResetSnapshotAttributeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method RevokeSecurityGroupEgress (%args) {
    my $call = AWS::EC2::RevokeSecurityGroupEgress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::RevokeSecurityGroupEgressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method RevokeSecurityGroupIngress (%args) {
    my $call = AWS::EC2::RevokeSecurityGroupIngress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::RevokeSecurityGroupIngressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method RunInstances (%args) {
    my $call = AWS::EC2::RunInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::RunInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method StartInstances (%args) {
    my $call = AWS::EC2::StartInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::StartInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method StopInstances (%args) {
    my $call = AWS::EC2::StopInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::StopInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method TerminateInstances (%args) {
    my $call = AWS::EC2::TerminateInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::TerminateInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method UnassignPrivateIpAddresses (%args) {
    my $call = AWS::EC2::UnassignPrivateIpAddresses->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::UnassignPrivateIpAddressesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method UnmonitorInstances (%args) {
    my $call = AWS::EC2::UnmonitorInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EC2::UnmonitorInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

}

