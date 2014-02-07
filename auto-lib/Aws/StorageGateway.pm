
use MooseX::Declare;
use AWS::API;


class Aws::StorageGateway::CachediSCSIVolumeInformation with (AWS::API::ResultParser, AWS::API::ToParams) {
  has SourceSnapshotId => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str');
  has VolumeProgress => (is => 'ro', isa => 'Num');
  has VolumeSizeInBytes => (is => 'ro', isa => 'Num');
  has VolumeStatus => (is => 'ro', isa => 'Str');
  has VolumeType => (is => 'ro', isa => 'Str');
  has VolumeiSCSIAttributes => (is => 'ro', isa => 'Aws::StorageGateway::VolumeiSCSIAttributes');
}

class Aws::StorageGateway::ChapInfo with (AWS::API::ResultParser, AWS::API::ToParams) {
  has InitiatorName => (is => 'ro', isa => 'Str');
  has SecretToAuthenticateInitiator => (is => 'ro', isa => 'Str');
  has SecretToAuthenticateTarget => (is => 'ro', isa => 'Str');
  has TargetARN => (is => 'ro', isa => 'Str');
}

class Aws::StorageGateway::DeviceiSCSIAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ChapEnabled => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has NetworkInterfacePort => (is => 'ro', isa => 'Int');
  has TargetARN => (is => 'ro', isa => 'Str');
}

class Aws::StorageGateway::DiskInformation with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DiskAllocationResource => (is => 'ro', isa => 'Str');
  has DiskAllocationType => (is => 'ro', isa => 'Str');
  has DiskId => (is => 'ro', isa => 'Str');
  has DiskNode => (is => 'ro', isa => 'Str');
  has DiskPath => (is => 'ro', isa => 'Str');
  has DiskSizeInBytes => (is => 'ro', isa => 'Num');
}

class Aws::StorageGateway::GatewayInformation with (AWS::API::ResultParser, AWS::API::ToParams) {
  has GatewayARN => (is => 'ro', isa => 'Str');
  has GatewayType => (is => 'ro', isa => 'Str');
}

class Aws::StorageGateway::NetworkInterface with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Ipv4Address => (is => 'ro', isa => 'Str');
  has Ipv6Address => (is => 'ro', isa => 'Str');
  has MacAddress => (is => 'ro', isa => 'Str');
}

class Aws::StorageGateway::StorediSCSIVolumeInformation with (AWS::API::ResultParser, AWS::API::ToParams) {
  has PreservedExistingData => (is => 'ro', isa => 'Str');
  has SourceSnapshotId => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeDiskId => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str');
  has VolumeProgress => (is => 'ro', isa => 'Num');
  has VolumeSizeInBytes => (is => 'ro', isa => 'Num');
  has VolumeStatus => (is => 'ro', isa => 'Str');
  has VolumeType => (is => 'ro', isa => 'Str');
  has VolumeiSCSIAttributes => (is => 'ro', isa => 'Aws::StorageGateway::VolumeiSCSIAttributes');
}

class Aws::StorageGateway::Tape with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Progress => (is => 'ro', isa => 'Num');
  has TapeARN => (is => 'ro', isa => 'Str');
  has TapeBarcode => (is => 'ro', isa => 'Str');
  has TapeSizeInBytes => (is => 'ro', isa => 'Num');
  has TapeStatus => (is => 'ro', isa => 'Str');
  has VTLDevice => (is => 'ro', isa => 'Str');
}

class Aws::StorageGateway::TapeArchive with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CompletionTime => (is => 'ro', isa => 'Str');
  has RetrievedTo => (is => 'ro', isa => 'Str');
  has TapeARN => (is => 'ro', isa => 'Str');
  has TapeBarcode => (is => 'ro', isa => 'Str');
  has TapeSizeInBytes => (is => 'ro', isa => 'Num');
  has TapeStatus => (is => 'ro', isa => 'Str');
}

class Aws::StorageGateway::TapeRecoveryPointInfo with (AWS::API::ResultParser, AWS::API::ToParams) {
  has TapeARN => (is => 'ro', isa => 'Str');
  has TapeRecoveryPointTime => (is => 'ro', isa => 'Str');
  has TapeSizeInBytes => (is => 'ro', isa => 'Num');
}

class Aws::StorageGateway::VTLDevice with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DeviceiSCSIAttributes => (is => 'ro', isa => 'Aws::StorageGateway::DeviceiSCSIAttributes');
  has VTLDeviceARN => (is => 'ro', isa => 'Str');
}

class Aws::StorageGateway::VolumeInformation with (AWS::API::ResultParser, AWS::API::ToParams) {
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeType => (is => 'ro', isa => 'Str');
}

class Aws::StorageGateway::VolumeRecoveryPointInfo with (AWS::API::ResultParser, AWS::API::ToParams) {
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeRecoveryPointTime => (is => 'ro', isa => 'Str');
  has VolumeSizeInBytes => (is => 'ro', isa => 'Num');
  has VolumeUsageInBytes => (is => 'ro', isa => 'Num');
}

class Aws::StorageGateway::VolumeiSCSIAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ChapEnabled => (is => 'ro', isa => 'Str');
  has LunNumber => (is => 'ro', isa => 'Int');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has NetworkInterfacePort => (is => 'ro', isa => 'Int');
  has TargetARN => (is => 'ro', isa => 'Str');
}



class Aws::StorageGateway::ActivateGateway {
  has ActivationKey => (is => 'ro', isa => 'Str', required => 1);
  has GatewayName => (is => 'ro', isa => 'Str', required => 1);
  has GatewayRegion => (is => 'ro', isa => 'Str', required => 1);
  has GatewayTimezone => (is => 'ro', isa => 'Str', required => 1);
  has GatewayType => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ActivateGateway');
  has _returns => (isa => 'Aws::StorageGateway::ActivateGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ActivateGatewayResult');  
}
class Aws::StorageGateway::AddCache {
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddCache');
  has _returns => (isa => 'Aws::StorageGateway::AddCacheResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddCacheResult');  
}
class Aws::StorageGateway::AddUploadBuffer {
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddUploadBuffer');
  has _returns => (isa => 'Aws::StorageGateway::AddUploadBufferResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddUploadBufferResult');  
}
class Aws::StorageGateway::AddWorkingStorage {
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddWorkingStorage');
  has _returns => (isa => 'Aws::StorageGateway::AddWorkingStorageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddWorkingStorageResult');  
}
class Aws::StorageGateway::CancelArchival {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CancelArchival');
  has _returns => (isa => 'Aws::StorageGateway::CancelArchivalResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CancelArchivalResult');  
}
class Aws::StorageGateway::CancelRetrieval {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CancelRetrieval');
  has _returns => (isa => 'Aws::StorageGateway::CancelRetrievalResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CancelRetrievalResult');  
}
class Aws::StorageGateway::CreateCachediSCSIVolume {
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotId => (is => 'ro', isa => 'Str');
  has TargetName => (is => 'ro', isa => 'Str', required => 1);
  has VolumeSizeInBytes => (is => 'ro', isa => 'Num', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCachediSCSIVolume');
  has _returns => (isa => 'Aws::StorageGateway::CreateCachediSCSIVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCachediSCSIVolumeResult');  
}
class Aws::StorageGateway::CreateSnapshot {
  has SnapshotDescription => (is => 'ro', isa => 'Str', required => 1);
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSnapshot');
  has _returns => (isa => 'Aws::StorageGateway::CreateSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSnapshotResult');  
}
class Aws::StorageGateway::CreateSnapshotFromVolumeRecoveryPoint {
  has SnapshotDescription => (is => 'ro', isa => 'Str', required => 1);
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSnapshotFromVolumeRecoveryPoint');
  has _returns => (isa => 'Aws::StorageGateway::CreateSnapshotFromVolumeRecoveryPointResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSnapshotFromVolumeRecoveryPointResult');  
}
class Aws::StorageGateway::CreateStorediSCSIVolume {
  has DiskId => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has PreserveExistingData => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotId => (is => 'ro', isa => 'Str');
  has TargetName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStorediSCSIVolume');
  has _returns => (isa => 'Aws::StorageGateway::CreateStorediSCSIVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStorediSCSIVolumeResult');  
}
class Aws::StorageGateway::CreateTapes {
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has NumTapesToCreate => (is => 'ro', isa => 'Int', required => 1);
  has TapeBarcodePrefix => (is => 'ro', isa => 'Str', required => 1);
  has TapeSizeInBytes => (is => 'ro', isa => 'Num', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTapes');
  has _returns => (isa => 'Aws::StorageGateway::CreateTapesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateTapesResult');  
}
class Aws::StorageGateway::DeleteBandwidthRateLimit {
  has BandwidthType => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBandwidthRateLimit');
  has _returns => (isa => 'Aws::StorageGateway::DeleteBandwidthRateLimitResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteBandwidthRateLimitResult');  
}
class Aws::StorageGateway::DeleteChapCredentials {
  has InitiatorName => (is => 'ro', isa => 'Str', required => 1);
  has TargetARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteChapCredentials');
  has _returns => (isa => 'Aws::StorageGateway::DeleteChapCredentialsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteChapCredentialsResult');  
}
class Aws::StorageGateway::DeleteGateway {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGateway');
  has _returns => (isa => 'Aws::StorageGateway::DeleteGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteGatewayResult');  
}
class Aws::StorageGateway::DeleteSnapshotSchedule {
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSnapshotSchedule');
  has _returns => (isa => 'Aws::StorageGateway::DeleteSnapshotScheduleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSnapshotScheduleResult');  
}
class Aws::StorageGateway::DeleteTape {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTape');
  has _returns => (isa => 'Aws::StorageGateway::DeleteTapeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteTapeResult');  
}
class Aws::StorageGateway::DeleteTapeArchive {
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTapeArchive');
  has _returns => (isa => 'Aws::StorageGateway::DeleteTapeArchiveResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteTapeArchiveResult');  
}
class Aws::StorageGateway::DeleteVolume {
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVolume');
  has _returns => (isa => 'Aws::StorageGateway::DeleteVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteVolumeResult');  
}
class Aws::StorageGateway::DescribeBandwidthRateLimit {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBandwidthRateLimit');
  has _returns => (isa => 'Aws::StorageGateway::DescribeBandwidthRateLimitResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeBandwidthRateLimitResult');  
}
class Aws::StorageGateway::DescribeCache {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCache');
  has _returns => (isa => 'Aws::StorageGateway::DescribeCacheResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheResult');  
}
class Aws::StorageGateway::DescribeCachediSCSIVolumes {
  has VolumeARNs => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCachediSCSIVolumes');
  has _returns => (isa => 'Aws::StorageGateway::DescribeCachediSCSIVolumesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCachediSCSIVolumesResult');  
}
class Aws::StorageGateway::DescribeChapCredentials {
  has TargetARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeChapCredentials');
  has _returns => (isa => 'Aws::StorageGateway::DescribeChapCredentialsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeChapCredentialsResult');  
}
class Aws::StorageGateway::DescribeGatewayInformation {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGatewayInformation');
  has _returns => (isa => 'Aws::StorageGateway::DescribeGatewayInformationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeGatewayInformationResult');  
}
class Aws::StorageGateway::DescribeMaintenanceStartTime {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMaintenanceStartTime');
  has _returns => (isa => 'Aws::StorageGateway::DescribeMaintenanceStartTimeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeMaintenanceStartTimeResult');  
}
class Aws::StorageGateway::DescribeSnapshotSchedule {
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSnapshotSchedule');
  has _returns => (isa => 'Aws::StorageGateway::DescribeSnapshotScheduleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSnapshotScheduleResult');  
}
class Aws::StorageGateway::DescribeStorediSCSIVolumes {
  has VolumeARNs => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStorediSCSIVolumes');
  has _returns => (isa => 'Aws::StorageGateway::DescribeStorediSCSIVolumesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStorediSCSIVolumesResult');  
}
class Aws::StorageGateway::DescribeTapeArchives {
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');
  has TapeARNs => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTapeArchives');
  has _returns => (isa => 'Aws::StorageGateway::DescribeTapeArchivesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTapeArchivesResult');  
}
class Aws::StorageGateway::DescribeTapeRecoveryPoints {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTapeRecoveryPoints');
  has _returns => (isa => 'Aws::StorageGateway::DescribeTapeRecoveryPointsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTapeRecoveryPointsResult');  
}
class Aws::StorageGateway::DescribeTapes {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');
  has TapeARNs => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTapes');
  has _returns => (isa => 'Aws::StorageGateway::DescribeTapesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTapesResult');  
}
class Aws::StorageGateway::DescribeUploadBuffer {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUploadBuffer');
  has _returns => (isa => 'Aws::StorageGateway::DescribeUploadBufferResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeUploadBufferResult');  
}
class Aws::StorageGateway::DescribeVTLDevices {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');
  has VTLDeviceARNs => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVTLDevices');
  has _returns => (isa => 'Aws::StorageGateway::DescribeVTLDevicesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVTLDevicesResult');  
}
class Aws::StorageGateway::DescribeWorkingStorage {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkingStorage');
  has _returns => (isa => 'Aws::StorageGateway::DescribeWorkingStorageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeWorkingStorageResult');  
}
class Aws::StorageGateway::DisableGateway {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisableGateway');
  has _returns => (isa => 'Aws::StorageGateway::DisableGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisableGatewayResult');  
}
class Aws::StorageGateway::ListGateways {
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListGateways');
  has _returns => (isa => 'Aws::StorageGateway::ListGatewaysResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListGatewaysResult');  
}
class Aws::StorageGateway::ListLocalDisks {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListLocalDisks');
  has _returns => (isa => 'Aws::StorageGateway::ListLocalDisksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListLocalDisksResult');  
}
class Aws::StorageGateway::ListVolumeRecoveryPoints {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListVolumeRecoveryPoints');
  has _returns => (isa => 'Aws::StorageGateway::ListVolumeRecoveryPointsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListVolumeRecoveryPointsResult');  
}
class Aws::StorageGateway::ListVolumes {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListVolumes');
  has _returns => (isa => 'Aws::StorageGateway::ListVolumesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListVolumesResult');  
}
class Aws::StorageGateway::RetrieveTapeArchive {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RetrieveTapeArchive');
  has _returns => (isa => 'Aws::StorageGateway::RetrieveTapeArchiveResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RetrieveTapeArchiveResult');  
}
class Aws::StorageGateway::RetrieveTapeRecoveryPoint {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RetrieveTapeRecoveryPoint');
  has _returns => (isa => 'Aws::StorageGateway::RetrieveTapeRecoveryPointResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RetrieveTapeRecoveryPointResult');  
}
class Aws::StorageGateway::ShutdownGateway {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ShutdownGateway');
  has _returns => (isa => 'Aws::StorageGateway::ShutdownGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ShutdownGatewayResult');  
}
class Aws::StorageGateway::StartGateway {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StartGateway');
  has _returns => (isa => 'Aws::StorageGateway::StartGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StartGatewayResult');  
}
class Aws::StorageGateway::UpdateBandwidthRateLimit {
  has AverageDownloadRateLimitInBitsPerSec => (is => 'ro', isa => 'Num');
  has AverageUploadRateLimitInBitsPerSec => (is => 'ro', isa => 'Num');
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBandwidthRateLimit');
  has _returns => (isa => 'Aws::StorageGateway::UpdateBandwidthRateLimitResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateBandwidthRateLimitResult');  
}
class Aws::StorageGateway::UpdateChapCredentials {
  has InitiatorName => (is => 'ro', isa => 'Str', required => 1);
  has SecretToAuthenticateInitiator => (is => 'ro', isa => 'Str', required => 1);
  has SecretToAuthenticateTarget => (is => 'ro', isa => 'Str');
  has TargetARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateChapCredentials');
  has _returns => (isa => 'Aws::StorageGateway::UpdateChapCredentialsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateChapCredentialsResult');  
}
class Aws::StorageGateway::UpdateGatewayInformation {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has GatewayName => (is => 'ro', isa => 'Str');
  has GatewayTimezone => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGatewayInformation');
  has _returns => (isa => 'Aws::StorageGateway::UpdateGatewayInformationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateGatewayInformationResult');  
}
class Aws::StorageGateway::UpdateGatewaySoftwareNow {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGatewaySoftwareNow');
  has _returns => (isa => 'Aws::StorageGateway::UpdateGatewaySoftwareNowResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateGatewaySoftwareNowResult');  
}
class Aws::StorageGateway::UpdateMaintenanceStartTime {
  has DayOfWeek => (is => 'ro', isa => 'Int', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has HourOfDay => (is => 'ro', isa => 'Int', required => 1);
  has MinuteOfHour => (is => 'ro', isa => 'Int', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMaintenanceStartTime');
  has _returns => (isa => 'Aws::StorageGateway::UpdateMaintenanceStartTimeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateMaintenanceStartTimeResult');  
}
class Aws::StorageGateway::UpdateSnapshotSchedule {
  has Description => (is => 'ro', isa => 'Str');
  has RecurrenceInHours => (is => 'ro', isa => 'Int', required => 1);
  has StartAt => (is => 'ro', isa => 'Int', required => 1);
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSnapshotSchedule');
  has _returns => (isa => 'Aws::StorageGateway::UpdateSnapshotScheduleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateSnapshotScheduleResult');  
}

class Aws::StorageGateway::ActivateGatewayResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::AddCacheResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::AddUploadBufferResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::AddWorkingStorageResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::CancelArchivalResult with AWS::API::ResultParser {
  has TapeARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::CancelRetrievalResult with AWS::API::ResultParser {
  has TapeARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::CreateCachediSCSIVolumeResult with AWS::API::ResultParser {
  has TargetARN => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::CreateSnapshotResult with AWS::API::ResultParser {
  has SnapshotId => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::CreateSnapshotFromVolumeRecoveryPointResult with AWS::API::ResultParser {
  has SnapshotId => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeRecoveryPointTime => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::CreateStorediSCSIVolumeResult with AWS::API::ResultParser {
  has TargetARN => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeSizeInBytes => (is => 'ro', isa => 'Num');

}
class Aws::StorageGateway::CreateTapesResult with AWS::API::ResultParser {
  has TapeARNs => (is => 'ro', isa => 'ArrayRef[Str]');

}
class Aws::StorageGateway::DeleteBandwidthRateLimitResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::DeleteChapCredentialsResult with AWS::API::ResultParser {
  has InitiatorName => (is => 'ro', isa => 'Str');
  has TargetARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::DeleteGatewayResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::DeleteSnapshotScheduleResult with AWS::API::ResultParser {
  has VolumeARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::DeleteTapeResult with AWS::API::ResultParser {
  has TapeARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::DeleteTapeArchiveResult with AWS::API::ResultParser {
  has TapeARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::DeleteVolumeResult with AWS::API::ResultParser {
  has VolumeARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::DescribeBandwidthRateLimitResult with AWS::API::ResultParser {
  has AverageDownloadRateLimitInBitsPerSec => (is => 'ro', isa => 'Num');
  has AverageUploadRateLimitInBitsPerSec => (is => 'ro', isa => 'Num');
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::DescribeCacheResult with AWS::API::ResultParser {
  has CacheAllocatedInBytes => (is => 'ro', isa => 'Num');
  has CacheDirtyPercentage => (is => 'ro', isa => 'Num');
  has CacheHitPercentage => (is => 'ro', isa => 'Num');
  has CacheMissPercentage => (is => 'ro', isa => 'Num');
  has CacheUsedPercentage => (is => 'ro', isa => 'Num');
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::DescribeCachediSCSIVolumesResult with AWS::API::ResultParser {
  has CachediSCSIVolumes => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::CachediSCSIVolumeInformation]');

}
class Aws::StorageGateway::DescribeChapCredentialsResult with AWS::API::ResultParser {
  has ChapCredentials => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::ChapInfo]');

}
class Aws::StorageGateway::DescribeGatewayInformationResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');
  has GatewayId => (is => 'ro', isa => 'Str');
  has GatewayNetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::NetworkInterface]');
  has GatewayState => (is => 'ro', isa => 'Str');
  has GatewayTimezone => (is => 'ro', isa => 'Str');
  has GatewayType => (is => 'ro', isa => 'Str');
  has NextUpdateAvailabilityDate => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::DescribeMaintenanceStartTimeResult with AWS::API::ResultParser {
  has DayOfWeek => (is => 'ro', isa => 'Int');
  has GatewayARN => (is => 'ro', isa => 'Str');
  has HourOfDay => (is => 'ro', isa => 'Int');
  has MinuteOfHour => (is => 'ro', isa => 'Int');
  has Timezone => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::DescribeSnapshotScheduleResult with AWS::API::ResultParser {
  has Description => (is => 'ro', isa => 'Str');
  has RecurrenceInHours => (is => 'ro', isa => 'Int');
  has StartAt => (is => 'ro', isa => 'Int');
  has Timezone => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::DescribeStorediSCSIVolumesResult with AWS::API::ResultParser {
  has StorediSCSIVolumes => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::StorediSCSIVolumeInformation]');

}
class Aws::StorageGateway::DescribeTapeArchivesResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has TapeArchives => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::TapeArchive]');

}
class Aws::StorageGateway::DescribeTapeRecoveryPointsResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has TapeRecoveryPointInfos => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::TapeRecoveryPointInfo]');

}
class Aws::StorageGateway::DescribeTapesResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has Tapes => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::Tape]');

}
class Aws::StorageGateway::DescribeUploadBufferResult with AWS::API::ResultParser {
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has GatewayARN => (is => 'ro', isa => 'Str');
  has UploadBufferAllocatedInBytes => (is => 'ro', isa => 'Num');
  has UploadBufferUsedInBytes => (is => 'ro', isa => 'Num');

}
class Aws::StorageGateway::DescribeVTLDevicesResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has VTLDevices => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::VTLDevice]');

}
class Aws::StorageGateway::DescribeWorkingStorageResult with AWS::API::ResultParser {
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has GatewayARN => (is => 'ro', isa => 'Str');
  has WorkingStorageAllocatedInBytes => (is => 'ro', isa => 'Num');
  has WorkingStorageUsedInBytes => (is => 'ro', isa => 'Num');

}
class Aws::StorageGateway::DisableGatewayResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::ListGatewaysResult with AWS::API::ResultParser {
  has Gateways => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::GatewayInformation]');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::ListLocalDisksResult with AWS::API::ResultParser {
  has Disks => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::DiskInformation]');
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::ListVolumeRecoveryPointsResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');
  has VolumeRecoveryPointInfos => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::VolumeRecoveryPointInfo]');

}
class Aws::StorageGateway::ListVolumesResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has VolumeInfos => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::VolumeInformation]');

}
class Aws::StorageGateway::RetrieveTapeArchiveResult with AWS::API::ResultParser {
  has TapeARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::RetrieveTapeRecoveryPointResult with AWS::API::ResultParser {
  has TapeARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::ShutdownGatewayResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::StartGatewayResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::UpdateBandwidthRateLimitResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::UpdateChapCredentialsResult with AWS::API::ResultParser {
  has InitiatorName => (is => 'ro', isa => 'Str');
  has TargetARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::UpdateGatewayInformationResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::UpdateGatewaySoftwareNowResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class Aws::StorageGateway::UpdateMaintenanceStartTimeResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

}
class Aws::StorageGateway::UpdateSnapshotScheduleResult with AWS::API::ResultParser {
  has VolumeARN => (is => 'ro', isa => 'Str');

}

class Aws::StorageGateway with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::JsonCaller, Net::AWS::JsonResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'storagegateway');
  has version => (is => 'ro', isa => 'Str', default => '2013-06-30');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'StorageGateway_20130630');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");
  
  method ActivateGateway (%args) {
    my $call = Aws::StorageGateway::ActivateGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::ActivateGatewayResult->from_result($result);return $o_result;
  }
  method AddCache (%args) {
    my $call = Aws::StorageGateway::AddCache->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::AddCacheResult->from_result($result);return $o_result;
  }
  method AddUploadBuffer (%args) {
    my $call = Aws::StorageGateway::AddUploadBuffer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::AddUploadBufferResult->from_result($result);return $o_result;
  }
  method AddWorkingStorage (%args) {
    my $call = Aws::StorageGateway::AddWorkingStorage->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::AddWorkingStorageResult->from_result($result);return $o_result;
  }
  method CancelArchival (%args) {
    my $call = Aws::StorageGateway::CancelArchival->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::CancelArchivalResult->from_result($result);return $o_result;
  }
  method CancelRetrieval (%args) {
    my $call = Aws::StorageGateway::CancelRetrieval->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::CancelRetrievalResult->from_result($result);return $o_result;
  }
  method CreateCachediSCSIVolume (%args) {
    my $call = Aws::StorageGateway::CreateCachediSCSIVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::CreateCachediSCSIVolumeResult->from_result($result);return $o_result;
  }
  method CreateSnapshot (%args) {
    my $call = Aws::StorageGateway::CreateSnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::CreateSnapshotResult->from_result($result);return $o_result;
  }
  method CreateSnapshotFromVolumeRecoveryPoint (%args) {
    my $call = Aws::StorageGateway::CreateSnapshotFromVolumeRecoveryPoint->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::CreateSnapshotFromVolumeRecoveryPointResult->from_result($result);return $o_result;
  }
  method CreateStorediSCSIVolume (%args) {
    my $call = Aws::StorageGateway::CreateStorediSCSIVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::CreateStorediSCSIVolumeResult->from_result($result);return $o_result;
  }
  method CreateTapes (%args) {
    my $call = Aws::StorageGateway::CreateTapes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::CreateTapesResult->from_result($result);return $o_result;
  }
  method DeleteBandwidthRateLimit (%args) {
    my $call = Aws::StorageGateway::DeleteBandwidthRateLimit->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DeleteBandwidthRateLimitResult->from_result($result);return $o_result;
  }
  method DeleteChapCredentials (%args) {
    my $call = Aws::StorageGateway::DeleteChapCredentials->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DeleteChapCredentialsResult->from_result($result);return $o_result;
  }
  method DeleteGateway (%args) {
    my $call = Aws::StorageGateway::DeleteGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DeleteGatewayResult->from_result($result);return $o_result;
  }
  method DeleteSnapshotSchedule (%args) {
    my $call = Aws::StorageGateway::DeleteSnapshotSchedule->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DeleteSnapshotScheduleResult->from_result($result);return $o_result;
  }
  method DeleteTape (%args) {
    my $call = Aws::StorageGateway::DeleteTape->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DeleteTapeResult->from_result($result);return $o_result;
  }
  method DeleteTapeArchive (%args) {
    my $call = Aws::StorageGateway::DeleteTapeArchive->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DeleteTapeArchiveResult->from_result($result);return $o_result;
  }
  method DeleteVolume (%args) {
    my $call = Aws::StorageGateway::DeleteVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DeleteVolumeResult->from_result($result);return $o_result;
  }
  method DescribeBandwidthRateLimit (%args) {
    my $call = Aws::StorageGateway::DescribeBandwidthRateLimit->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeBandwidthRateLimitResult->from_result($result);return $o_result;
  }
  method DescribeCache (%args) {
    my $call = Aws::StorageGateway::DescribeCache->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeCacheResult->from_result($result);return $o_result;
  }
  method DescribeCachediSCSIVolumes (%args) {
    my $call = Aws::StorageGateway::DescribeCachediSCSIVolumes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeCachediSCSIVolumesResult->from_result($result);return $o_result;
  }
  method DescribeChapCredentials (%args) {
    my $call = Aws::StorageGateway::DescribeChapCredentials->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeChapCredentialsResult->from_result($result);return $o_result;
  }
  method DescribeGatewayInformation (%args) {
    my $call = Aws::StorageGateway::DescribeGatewayInformation->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeGatewayInformationResult->from_result($result);return $o_result;
  }
  method DescribeMaintenanceStartTime (%args) {
    my $call = Aws::StorageGateway::DescribeMaintenanceStartTime->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeMaintenanceStartTimeResult->from_result($result);return $o_result;
  }
  method DescribeSnapshotSchedule (%args) {
    my $call = Aws::StorageGateway::DescribeSnapshotSchedule->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeSnapshotScheduleResult->from_result($result);return $o_result;
  }
  method DescribeStorediSCSIVolumes (%args) {
    my $call = Aws::StorageGateway::DescribeStorediSCSIVolumes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeStorediSCSIVolumesResult->from_result($result);return $o_result;
  }
  method DescribeTapeArchives (%args) {
    my $call = Aws::StorageGateway::DescribeTapeArchives->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeTapeArchivesResult->from_result($result);return $o_result;
  }
  method DescribeTapeRecoveryPoints (%args) {
    my $call = Aws::StorageGateway::DescribeTapeRecoveryPoints->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeTapeRecoveryPointsResult->from_result($result);return $o_result;
  }
  method DescribeTapes (%args) {
    my $call = Aws::StorageGateway::DescribeTapes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeTapesResult->from_result($result);return $o_result;
  }
  method DescribeUploadBuffer (%args) {
    my $call = Aws::StorageGateway::DescribeUploadBuffer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeUploadBufferResult->from_result($result);return $o_result;
  }
  method DescribeVTLDevices (%args) {
    my $call = Aws::StorageGateway::DescribeVTLDevices->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeVTLDevicesResult->from_result($result);return $o_result;
  }
  method DescribeWorkingStorage (%args) {
    my $call = Aws::StorageGateway::DescribeWorkingStorage->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeWorkingStorageResult->from_result($result);return $o_result;
  }
  method DisableGateway (%args) {
    my $call = Aws::StorageGateway::DisableGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DisableGatewayResult->from_result($result);return $o_result;
  }
  method ListGateways (%args) {
    my $call = Aws::StorageGateway::ListGateways->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::ListGatewaysResult->from_result($result);return $o_result;
  }
  method ListLocalDisks (%args) {
    my $call = Aws::StorageGateway::ListLocalDisks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::ListLocalDisksResult->from_result($result);return $o_result;
  }
  method ListVolumeRecoveryPoints (%args) {
    my $call = Aws::StorageGateway::ListVolumeRecoveryPoints->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::ListVolumeRecoveryPointsResult->from_result($result);return $o_result;
  }
  method ListVolumes (%args) {
    my $call = Aws::StorageGateway::ListVolumes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::ListVolumesResult->from_result($result);return $o_result;
  }
  method RetrieveTapeArchive (%args) {
    my $call = Aws::StorageGateway::RetrieveTapeArchive->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::RetrieveTapeArchiveResult->from_result($result);return $o_result;
  }
  method RetrieveTapeRecoveryPoint (%args) {
    my $call = Aws::StorageGateway::RetrieveTapeRecoveryPoint->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::RetrieveTapeRecoveryPointResult->from_result($result);return $o_result;
  }
  method ShutdownGateway (%args) {
    my $call = Aws::StorageGateway::ShutdownGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::ShutdownGatewayResult->from_result($result);return $o_result;
  }
  method StartGateway (%args) {
    my $call = Aws::StorageGateway::StartGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::StartGatewayResult->from_result($result);return $o_result;
  }
  method UpdateBandwidthRateLimit (%args) {
    my $call = Aws::StorageGateway::UpdateBandwidthRateLimit->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::UpdateBandwidthRateLimitResult->from_result($result);return $o_result;
  }
  method UpdateChapCredentials (%args) {
    my $call = Aws::StorageGateway::UpdateChapCredentials->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::UpdateChapCredentialsResult->from_result($result);return $o_result;
  }
  method UpdateGatewayInformation (%args) {
    my $call = Aws::StorageGateway::UpdateGatewayInformation->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::UpdateGatewayInformationResult->from_result($result);return $o_result;
  }
  method UpdateGatewaySoftwareNow (%args) {
    my $call = Aws::StorageGateway::UpdateGatewaySoftwareNow->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::UpdateGatewaySoftwareNowResult->from_result($result);return $o_result;
  }
  method UpdateMaintenanceStartTime (%args) {
    my $call = Aws::StorageGateway::UpdateMaintenanceStartTime->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::UpdateMaintenanceStartTimeResult->from_result($result);return $o_result;
  }
  method UpdateSnapshotSchedule (%args) {
    my $call = Aws::StorageGateway::UpdateSnapshotSchedule->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::UpdateSnapshotScheduleResult->from_result($result);return $o_result;
  }
}
