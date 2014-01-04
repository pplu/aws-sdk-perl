
use MooseX::Declare;
use AWS::API;


class AWS::StorageGateway::CachediSCSIVolumeInformation with (AWS::API::ResultParser, AWS::API::ToParams) {
  has SourceSnapshotId => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str');
  has VolumeProgress => (is => 'ro', isa => 'Num');
  has VolumeSizeInBytes => (is => 'ro', isa => 'Num');
  has VolumeStatus => (is => 'ro', isa => 'Str');
  has VolumeType => (is => 'ro', isa => 'Str');
  has VolumeiSCSIAttributes => (is => 'ro', isa => 'AWS::StorageGateway::VolumeiSCSIAttributes');
}

class AWS::StorageGateway::ChapInfo with (AWS::API::ResultParser, AWS::API::ToParams) {
  has InitiatorName => (is => 'ro', isa => 'Str');
  has SecretToAuthenticateInitiator => (is => 'ro', isa => 'Str');
  has SecretToAuthenticateTarget => (is => 'ro', isa => 'Str');
  has TargetARN => (is => 'ro', isa => 'Str');
}

class AWS::StorageGateway::DeviceiSCSIAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ChapEnabled => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has NetworkInterfacePort => (is => 'ro', isa => 'Int');
  has TargetARN => (is => 'ro', isa => 'Str');
}

class AWS::StorageGateway::DiskInformation with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DiskAllocationResource => (is => 'ro', isa => 'Str');
  has DiskAllocationType => (is => 'ro', isa => 'Str');
  has DiskId => (is => 'ro', isa => 'Str');
  has DiskNode => (is => 'ro', isa => 'Str');
  has DiskPath => (is => 'ro', isa => 'Str');
  has DiskSizeInBytes => (is => 'ro', isa => 'Num');
}

class AWS::StorageGateway::GatewayInformation with (AWS::API::ResultParser, AWS::API::ToParams) {
  has GatewayARN => (is => 'ro', isa => 'Str');
  has GatewayType => (is => 'ro', isa => 'Str');
}

class AWS::StorageGateway::NetworkInterface with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Ipv4Address => (is => 'ro', isa => 'Str');
  has Ipv6Address => (is => 'ro', isa => 'Str');
  has MacAddress => (is => 'ro', isa => 'Str');
}

class AWS::StorageGateway::StorediSCSIVolumeInformation with (AWS::API::ResultParser, AWS::API::ToParams) {
  has PreservedExistingData => (is => 'ro', isa => 'Str');
  has SourceSnapshotId => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeDiskId => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str');
  has VolumeProgress => (is => 'ro', isa => 'Num');
  has VolumeSizeInBytes => (is => 'ro', isa => 'Num');
  has VolumeStatus => (is => 'ro', isa => 'Str');
  has VolumeType => (is => 'ro', isa => 'Str');
  has VolumeiSCSIAttributes => (is => 'ro', isa => 'AWS::StorageGateway::VolumeiSCSIAttributes');
}

class AWS::StorageGateway::Tape with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Progress => (is => 'ro', isa => 'Num');
  has TapeARN => (is => 'ro', isa => 'Str');
  has TapeBarcode => (is => 'ro', isa => 'Str');
  has TapeSizeInBytes => (is => 'ro', isa => 'Num');
  has TapeStatus => (is => 'ro', isa => 'Str');
  has VTLDevice => (is => 'ro', isa => 'Str');
}

class AWS::StorageGateway::TapeArchive with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CompletionTime => (is => 'ro', isa => 'Str');
  has RetrievedTo => (is => 'ro', isa => 'Str');
  has TapeARN => (is => 'ro', isa => 'Str');
  has TapeBarcode => (is => 'ro', isa => 'Str');
  has TapeSizeInBytes => (is => 'ro', isa => 'Num');
  has TapeStatus => (is => 'ro', isa => 'Str');
}

class AWS::StorageGateway::TapeRecoveryPointInfo with (AWS::API::ResultParser, AWS::API::ToParams) {
  has TapeARN => (is => 'ro', isa => 'Str');
  has TapeRecoveryPointTime => (is => 'ro', isa => 'Str');
  has TapeSizeInBytes => (is => 'ro', isa => 'Num');
}

class AWS::StorageGateway::VTLDevice with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DeviceiSCSIAttributes => (is => 'ro', isa => 'AWS::StorageGateway::DeviceiSCSIAttributes');
  has VTLDeviceARN => (is => 'ro', isa => 'Str');
}

class AWS::StorageGateway::VolumeInformation with (AWS::API::ResultParser, AWS::API::ToParams) {
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeType => (is => 'ro', isa => 'Str');
}

class AWS::StorageGateway::VolumeRecoveryPointInfo with (AWS::API::ResultParser, AWS::API::ToParams) {
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeRecoveryPointTime => (is => 'ro', isa => 'Str');
  has VolumeSizeInBytes => (is => 'ro', isa => 'Num');
  has VolumeUsageInBytes => (is => 'ro', isa => 'Num');
}

class AWS::StorageGateway::VolumeiSCSIAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ChapEnabled => (is => 'ro', isa => 'Str');
  has LunNumber => (is => 'ro', isa => 'Int');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has NetworkInterfacePort => (is => 'ro', isa => 'Int');
  has TargetARN => (is => 'ro', isa => 'Str');
}



class AWS::StorageGateway::ActivateGateway {
  has ActivationKey => (is => 'ro', isa => 'Str', required => 1);
  has GatewayName => (is => 'ro', isa => 'Str', required => 1);
  has GatewayRegion => (is => 'ro', isa => 'Str', required => 1);
  has GatewayTimezone => (is => 'ro', isa => 'Str', required => 1);
  has GatewayType => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ActivateGateway');
  has _returns => (isa => 'AWS::StorageGateway::ActivateGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ActivateGatewayResult');  
}
class AWS::StorageGateway::AddCache {
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddCache');
  has _returns => (isa => 'AWS::StorageGateway::AddCacheResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddCacheResult');  
}
class AWS::StorageGateway::AddUploadBuffer {
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddUploadBuffer');
  has _returns => (isa => 'AWS::StorageGateway::AddUploadBufferResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddUploadBufferResult');  
}
class AWS::StorageGateway::AddWorkingStorage {
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddWorkingStorage');
  has _returns => (isa => 'AWS::StorageGateway::AddWorkingStorageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddWorkingStorageResult');  
}
class AWS::StorageGateway::CancelArchival {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CancelArchival');
  has _returns => (isa => 'AWS::StorageGateway::CancelArchivalResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CancelArchivalResult');  
}
class AWS::StorageGateway::CancelRetrieval {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CancelRetrieval');
  has _returns => (isa => 'AWS::StorageGateway::CancelRetrievalResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CancelRetrievalResult');  
}
class AWS::StorageGateway::CreateCachediSCSIVolume {
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotId => (is => 'ro', isa => 'Str');
  has TargetName => (is => 'ro', isa => 'Str', required => 1);
  has VolumeSizeInBytes => (is => 'ro', isa => 'Num', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCachediSCSIVolume');
  has _returns => (isa => 'AWS::StorageGateway::CreateCachediSCSIVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCachediSCSIVolumeResult');  
}
class AWS::StorageGateway::CreateSnapshot {
  has SnapshotDescription => (is => 'ro', isa => 'Str', required => 1);
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSnapshot');
  has _returns => (isa => 'AWS::StorageGateway::CreateSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSnapshotResult');  
}
class AWS::StorageGateway::CreateSnapshotFromVolumeRecoveryPoint {
  has SnapshotDescription => (is => 'ro', isa => 'Str', required => 1);
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSnapshotFromVolumeRecoveryPoint');
  has _returns => (isa => 'AWS::StorageGateway::CreateSnapshotFromVolumeRecoveryPointResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSnapshotFromVolumeRecoveryPointResult');  
}
class AWS::StorageGateway::CreateStorediSCSIVolume {
  has DiskId => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has PreserveExistingData => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotId => (is => 'ro', isa => 'Str');
  has TargetName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStorediSCSIVolume');
  has _returns => (isa => 'AWS::StorageGateway::CreateStorediSCSIVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStorediSCSIVolumeResult');  
}
class AWS::StorageGateway::CreateTapes {
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has NumTapesToCreate => (is => 'ro', isa => 'Int', required => 1);
  has TapeBarcodePrefix => (is => 'ro', isa => 'Str', required => 1);
  has TapeSizeInBytes => (is => 'ro', isa => 'Num', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTapes');
  has _returns => (isa => 'AWS::StorageGateway::CreateTapesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateTapesResult');  
}
class AWS::StorageGateway::DeleteBandwidthRateLimit {
  has BandwidthType => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBandwidthRateLimit');
  has _returns => (isa => 'AWS::StorageGateway::DeleteBandwidthRateLimitResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteBandwidthRateLimitResult');  
}
class AWS::StorageGateway::DeleteChapCredentials {
  has InitiatorName => (is => 'ro', isa => 'Str', required => 1);
  has TargetARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteChapCredentials');
  has _returns => (isa => 'AWS::StorageGateway::DeleteChapCredentialsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteChapCredentialsResult');  
}
class AWS::StorageGateway::DeleteGateway {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGateway');
  has _returns => (isa => 'AWS::StorageGateway::DeleteGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteGatewayResult');  
}
class AWS::StorageGateway::DeleteSnapshotSchedule {
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSnapshotSchedule');
  has _returns => (isa => 'AWS::StorageGateway::DeleteSnapshotScheduleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSnapshotScheduleResult');  
}
class AWS::StorageGateway::DeleteTape {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTape');
  has _returns => (isa => 'AWS::StorageGateway::DeleteTapeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteTapeResult');  
}
class AWS::StorageGateway::DeleteTapeArchive {
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTapeArchive');
  has _returns => (isa => 'AWS::StorageGateway::DeleteTapeArchiveResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteTapeArchiveResult');  
}
class AWS::StorageGateway::DeleteVolume {
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVolume');
  has _returns => (isa => 'AWS::StorageGateway::DeleteVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteVolumeResult');  
}
class AWS::StorageGateway::DescribeBandwidthRateLimit {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBandwidthRateLimit');
  has _returns => (isa => 'AWS::StorageGateway::DescribeBandwidthRateLimitResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeBandwidthRateLimitResult');  
}
class AWS::StorageGateway::DescribeCache {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCache');
  has _returns => (isa => 'AWS::StorageGateway::DescribeCacheResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheResult');  
}
class AWS::StorageGateway::DescribeCachediSCSIVolumes {
  has VolumeARNs => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCachediSCSIVolumes');
  has _returns => (isa => 'AWS::StorageGateway::DescribeCachediSCSIVolumesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCachediSCSIVolumesResult');  
}
class AWS::StorageGateway::DescribeChapCredentials {
  has TargetARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeChapCredentials');
  has _returns => (isa => 'AWS::StorageGateway::DescribeChapCredentialsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeChapCredentialsResult');  
}
class AWS::StorageGateway::DescribeGatewayInformation {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGatewayInformation');
  has _returns => (isa => 'AWS::StorageGateway::DescribeGatewayInformationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeGatewayInformationResult');  
}
class AWS::StorageGateway::DescribeMaintenanceStartTime {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMaintenanceStartTime');
  has _returns => (isa => 'AWS::StorageGateway::DescribeMaintenanceStartTimeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeMaintenanceStartTimeResult');  
}
class AWS::StorageGateway::DescribeSnapshotSchedule {
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSnapshotSchedule');
  has _returns => (isa => 'AWS::StorageGateway::DescribeSnapshotScheduleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSnapshotScheduleResult');  
}
class AWS::StorageGateway::DescribeStorediSCSIVolumes {
  has VolumeARNs => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStorediSCSIVolumes');
  has _returns => (isa => 'AWS::StorageGateway::DescribeStorediSCSIVolumesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStorediSCSIVolumesResult');  
}
class AWS::StorageGateway::DescribeTapeArchives {
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');
  has TapeARNs => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTapeArchives');
  has _returns => (isa => 'AWS::StorageGateway::DescribeTapeArchivesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTapeArchivesResult');  
}
class AWS::StorageGateway::DescribeTapeRecoveryPoints {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTapeRecoveryPoints');
  has _returns => (isa => 'AWS::StorageGateway::DescribeTapeRecoveryPointsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTapeRecoveryPointsResult');  
}
class AWS::StorageGateway::DescribeTapes {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');
  has TapeARNs => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTapes');
  has _returns => (isa => 'AWS::StorageGateway::DescribeTapesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTapesResult');  
}
class AWS::StorageGateway::DescribeUploadBuffer {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUploadBuffer');
  has _returns => (isa => 'AWS::StorageGateway::DescribeUploadBufferResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeUploadBufferResult');  
}
class AWS::StorageGateway::DescribeVTLDevices {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');
  has VTLDeviceARNs => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVTLDevices');
  has _returns => (isa => 'AWS::StorageGateway::DescribeVTLDevicesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVTLDevicesResult');  
}
class AWS::StorageGateway::DescribeWorkingStorage {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkingStorage');
  has _returns => (isa => 'AWS::StorageGateway::DescribeWorkingStorageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeWorkingStorageResult');  
}
class AWS::StorageGateway::DisableGateway {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisableGateway');
  has _returns => (isa => 'AWS::StorageGateway::DisableGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisableGatewayResult');  
}
class AWS::StorageGateway::ListGateways {
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListGateways');
  has _returns => (isa => 'AWS::StorageGateway::ListGatewaysResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListGatewaysResult');  
}
class AWS::StorageGateway::ListLocalDisks {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListLocalDisks');
  has _returns => (isa => 'AWS::StorageGateway::ListLocalDisksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListLocalDisksResult');  
}
class AWS::StorageGateway::ListVolumeRecoveryPoints {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListVolumeRecoveryPoints');
  has _returns => (isa => 'AWS::StorageGateway::ListVolumeRecoveryPointsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListVolumeRecoveryPointsResult');  
}
class AWS::StorageGateway::ListVolumes {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListVolumes');
  has _returns => (isa => 'AWS::StorageGateway::ListVolumesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListVolumesResult');  
}
class AWS::StorageGateway::RetrieveTapeArchive {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RetrieveTapeArchive');
  has _returns => (isa => 'AWS::StorageGateway::RetrieveTapeArchiveResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RetrieveTapeArchiveResult');  
}
class AWS::StorageGateway::RetrieveTapeRecoveryPoint {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RetrieveTapeRecoveryPoint');
  has _returns => (isa => 'AWS::StorageGateway::RetrieveTapeRecoveryPointResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RetrieveTapeRecoveryPointResult');  
}
class AWS::StorageGateway::ShutdownGateway {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ShutdownGateway');
  has _returns => (isa => 'AWS::StorageGateway::ShutdownGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ShutdownGatewayResult');  
}
class AWS::StorageGateway::StartGateway {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StartGateway');
  has _returns => (isa => 'AWS::StorageGateway::StartGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StartGatewayResult');  
}
class AWS::StorageGateway::UpdateBandwidthRateLimit {
  has AverageDownloadRateLimitInBitsPerSec => (is => 'ro', isa => 'Num');
  has AverageUploadRateLimitInBitsPerSec => (is => 'ro', isa => 'Num');
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBandwidthRateLimit');
  has _returns => (isa => 'AWS::StorageGateway::UpdateBandwidthRateLimitResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateBandwidthRateLimitResult');  
}
class AWS::StorageGateway::UpdateChapCredentials {
  has InitiatorName => (is => 'ro', isa => 'Str', required => 1);
  has SecretToAuthenticateInitiator => (is => 'ro', isa => 'Str', required => 1);
  has SecretToAuthenticateTarget => (is => 'ro', isa => 'Str');
  has TargetARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateChapCredentials');
  has _returns => (isa => 'AWS::StorageGateway::UpdateChapCredentialsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateChapCredentialsResult');  
}
class AWS::StorageGateway::UpdateGatewayInformation {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has GatewayName => (is => 'ro', isa => 'Str');
  has GatewayTimezone => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGatewayInformation');
  has _returns => (isa => 'AWS::StorageGateway::UpdateGatewayInformationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateGatewayInformationResult');  
}
class AWS::StorageGateway::UpdateGatewaySoftwareNow {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGatewaySoftwareNow');
  has _returns => (isa => 'AWS::StorageGateway::UpdateGatewaySoftwareNowResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateGatewaySoftwareNowResult');  
}
class AWS::StorageGateway::UpdateMaintenanceStartTime {
  has DayOfWeek => (is => 'ro', isa => 'Int', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has HourOfDay => (is => 'ro', isa => 'Int', required => 1);
  has MinuteOfHour => (is => 'ro', isa => 'Int', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMaintenanceStartTime');
  has _returns => (isa => 'AWS::StorageGateway::UpdateMaintenanceStartTimeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateMaintenanceStartTimeResult');  
}
class AWS::StorageGateway::UpdateSnapshotSchedule {
  has Description => (is => 'ro', isa => 'Str');
  has RecurrenceInHours => (is => 'ro', isa => 'Int', required => 1);
  has StartAt => (is => 'ro', isa => 'Int', required => 1);
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSnapshotSchedule');
  has _returns => (isa => 'AWS::StorageGateway::UpdateSnapshotScheduleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateSnapshotScheduleResult');  
}

class AWS::StorageGateway::ActivateGatewayResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::AddCacheResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::AddUploadBufferResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::AddWorkingStorageResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::CancelArchivalResult with AWS::API::ResultParser {
  has TapeARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::CancelRetrievalResult with AWS::API::ResultParser {
  has TapeARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::CreateCachediSCSIVolumeResult with AWS::API::ResultParser {
  has TargetARN => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::CreateSnapshotResult with AWS::API::ResultParser {
  has SnapshotId => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::CreateSnapshotFromVolumeRecoveryPointResult with AWS::API::ResultParser {
  has SnapshotId => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeRecoveryPointTime => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::CreateStorediSCSIVolumeResult with AWS::API::ResultParser {
  has TargetARN => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeSizeInBytes => (is => 'ro', isa => 'Num');

}
class AWS::StorageGateway::CreateTapesResult with AWS::API::ResultParser {
  has TapeARNs => (is => 'ro', isa => 'ArrayRef[Str]');

}
class AWS::StorageGateway::DeleteBandwidthRateLimitResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::DeleteChapCredentialsResult with AWS::API::ResultParser {
  has InitiatorName => (is => 'ro', isa => 'Str');
  has TargetARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::DeleteGatewayResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::DeleteSnapshotScheduleResult with AWS::API::ResultParser {
  has VolumeARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::DeleteTapeResult with AWS::API::ResultParser {
  has TapeARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::DeleteTapeArchiveResult with AWS::API::ResultParser {
  has TapeARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::DeleteVolumeResult with AWS::API::ResultParser {
  has VolumeARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::DescribeBandwidthRateLimitResult with AWS::API::ResultParser {
  has AverageDownloadRateLimitInBitsPerSec => (is => 'ro', isa => 'Num');
  has AverageUploadRateLimitInBitsPerSec => (is => 'ro', isa => 'Num');
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::DescribeCacheResult with AWS::API::ResultParser {
  has CacheAllocatedInBytes => (is => 'ro', isa => 'Num');
  has CacheDirtyPercentage => (is => 'ro', isa => 'Num');
  has CacheHitPercentage => (is => 'ro', isa => 'Num');
  has CacheMissPercentage => (is => 'ro', isa => 'Num');
  has CacheUsedPercentage => (is => 'ro', isa => 'Num');
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::DescribeCachediSCSIVolumesResult with AWS::API::ResultParser {
  has CachediSCSIVolumes => (is => 'ro', isa => 'ArrayRef[AWS::StorageGateway::CachediSCSIVolumeInformation]');

}
class AWS::StorageGateway::DescribeChapCredentialsResult with AWS::API::ResultParser {
  has ChapCredentials => (is => 'ro', isa => 'ArrayRef[AWS::StorageGateway::ChapInfo]');

}
class AWS::StorageGateway::DescribeGatewayInformationResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');
  has GatewayId => (is => 'ro', isa => 'Str');
  has GatewayNetworkInterfaces => (is => 'ro', isa => 'ArrayRef[AWS::StorageGateway::NetworkInterface]');
  has GatewayState => (is => 'ro', isa => 'Str');
  has GatewayTimezone => (is => 'ro', isa => 'Str');
  has GatewayType => (is => 'ro', isa => 'Str');
  has NextUpdateAvailabilityDate => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::DescribeMaintenanceStartTimeResult with AWS::API::ResultParser {
  has DayOfWeek => (is => 'ro', isa => 'Int');
  has GatewayARN => (is => 'ro', isa => 'Str');
  has HourOfDay => (is => 'ro', isa => 'Int');
  has MinuteOfHour => (is => 'ro', isa => 'Int');
  has Timezone => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::DescribeSnapshotScheduleResult with AWS::API::ResultParser {
  has Description => (is => 'ro', isa => 'Str');
  has RecurrenceInHours => (is => 'ro', isa => 'Int');
  has StartAt => (is => 'ro', isa => 'Int');
  has Timezone => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::DescribeStorediSCSIVolumesResult with AWS::API::ResultParser {
  has StorediSCSIVolumes => (is => 'ro', isa => 'ArrayRef[AWS::StorageGateway::StorediSCSIVolumeInformation]');

}
class AWS::StorageGateway::DescribeTapeArchivesResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has TapeArchives => (is => 'ro', isa => 'ArrayRef[AWS::StorageGateway::TapeArchive]');

}
class AWS::StorageGateway::DescribeTapeRecoveryPointsResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has TapeRecoveryPointInfos => (is => 'ro', isa => 'ArrayRef[AWS::StorageGateway::TapeRecoveryPointInfo]');

}
class AWS::StorageGateway::DescribeTapesResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has Tapes => (is => 'ro', isa => 'ArrayRef[AWS::StorageGateway::Tape]');

}
class AWS::StorageGateway::DescribeUploadBufferResult with AWS::API::ResultParser {
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has GatewayARN => (is => 'ro', isa => 'Str');
  has UploadBufferAllocatedInBytes => (is => 'ro', isa => 'Num');
  has UploadBufferUsedInBytes => (is => 'ro', isa => 'Num');

}
class AWS::StorageGateway::DescribeVTLDevicesResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has VTLDevices => (is => 'ro', isa => 'ArrayRef[AWS::StorageGateway::VTLDevice]');

}
class AWS::StorageGateway::DescribeWorkingStorageResult with AWS::API::ResultParser {
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has GatewayARN => (is => 'ro', isa => 'Str');
  has WorkingStorageAllocatedInBytes => (is => 'ro', isa => 'Num');
  has WorkingStorageUsedInBytes => (is => 'ro', isa => 'Num');

}
class AWS::StorageGateway::DisableGatewayResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::ListGatewaysResult with AWS::API::ResultParser {
  has Gateways => (is => 'ro', isa => 'ArrayRef[AWS::StorageGateway::GatewayInformation]');
  has Marker => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::ListLocalDisksResult with AWS::API::ResultParser {
  has Disks => (is => 'ro', isa => 'ArrayRef[AWS::StorageGateway::DiskInformation]');
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::ListVolumeRecoveryPointsResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');
  has VolumeRecoveryPointInfos => (is => 'ro', isa => 'ArrayRef[AWS::StorageGateway::VolumeRecoveryPointInfo]');

}
class AWS::StorageGateway::ListVolumesResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has VolumeInfos => (is => 'ro', isa => 'ArrayRef[AWS::StorageGateway::VolumeInformation]');

}
class AWS::StorageGateway::RetrieveTapeArchiveResult with AWS::API::ResultParser {
  has TapeARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::RetrieveTapeRecoveryPointResult with AWS::API::ResultParser {
  has TapeARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::ShutdownGatewayResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::StartGatewayResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::UpdateBandwidthRateLimitResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::UpdateChapCredentialsResult with AWS::API::ResultParser {
  has InitiatorName => (is => 'ro', isa => 'Str');
  has TargetARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::UpdateGatewayInformationResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::UpdateGatewaySoftwareNowResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str');

}
class AWS::StorageGateway::UpdateMaintenanceStartTimeResult with AWS::API::ResultParser {
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

}
class AWS::StorageGateway::UpdateSnapshotScheduleResult with AWS::API::ResultParser {
  has VolumeARN => (is => 'ro', isa => 'Str');

}

class AWS::StorageGateway with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::JsonCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'storagegateway');
  has version => (is => 'ro', isa => 'Str', default => '2013-06-30');
  
  method ActivateGateway (%args) {
    my $call = AWS::StorageGateway::ActivateGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::ActivateGatewayResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method AddCache (%args) {
    my $call = AWS::StorageGateway::AddCache->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::AddCacheResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method AddUploadBuffer (%args) {
    my $call = AWS::StorageGateway::AddUploadBuffer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::AddUploadBufferResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method AddWorkingStorage (%args) {
    my $call = AWS::StorageGateway::AddWorkingStorage->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::AddWorkingStorageResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CancelArchival (%args) {
    my $call = AWS::StorageGateway::CancelArchival->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::CancelArchivalResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CancelRetrieval (%args) {
    my $call = AWS::StorageGateway::CancelRetrieval->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::CancelRetrievalResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateCachediSCSIVolume (%args) {
    my $call = AWS::StorageGateway::CreateCachediSCSIVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::CreateCachediSCSIVolumeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateSnapshot (%args) {
    my $call = AWS::StorageGateway::CreateSnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::CreateSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateSnapshotFromVolumeRecoveryPoint (%args) {
    my $call = AWS::StorageGateway::CreateSnapshotFromVolumeRecoveryPoint->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::CreateSnapshotFromVolumeRecoveryPointResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateStorediSCSIVolume (%args) {
    my $call = AWS::StorageGateway::CreateStorediSCSIVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::CreateStorediSCSIVolumeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateTapes (%args) {
    my $call = AWS::StorageGateway::CreateTapes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::CreateTapesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteBandwidthRateLimit (%args) {
    my $call = AWS::StorageGateway::DeleteBandwidthRateLimit->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::DeleteBandwidthRateLimitResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteChapCredentials (%args) {
    my $call = AWS::StorageGateway::DeleteChapCredentials->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::DeleteChapCredentialsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteGateway (%args) {
    my $call = AWS::StorageGateway::DeleteGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::DeleteGatewayResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteSnapshotSchedule (%args) {
    my $call = AWS::StorageGateway::DeleteSnapshotSchedule->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::DeleteSnapshotScheduleResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteTape (%args) {
    my $call = AWS::StorageGateway::DeleteTape->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::DeleteTapeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteTapeArchive (%args) {
    my $call = AWS::StorageGateway::DeleteTapeArchive->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::DeleteTapeArchiveResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteVolume (%args) {
    my $call = AWS::StorageGateway::DeleteVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::DeleteVolumeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeBandwidthRateLimit (%args) {
    my $call = AWS::StorageGateway::DescribeBandwidthRateLimit->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::DescribeBandwidthRateLimitResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeCache (%args) {
    my $call = AWS::StorageGateway::DescribeCache->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::DescribeCacheResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeCachediSCSIVolumes (%args) {
    my $call = AWS::StorageGateway::DescribeCachediSCSIVolumes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::DescribeCachediSCSIVolumesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeChapCredentials (%args) {
    my $call = AWS::StorageGateway::DescribeChapCredentials->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::DescribeChapCredentialsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeGatewayInformation (%args) {
    my $call = AWS::StorageGateway::DescribeGatewayInformation->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::DescribeGatewayInformationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeMaintenanceStartTime (%args) {
    my $call = AWS::StorageGateway::DescribeMaintenanceStartTime->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::DescribeMaintenanceStartTimeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeSnapshotSchedule (%args) {
    my $call = AWS::StorageGateway::DescribeSnapshotSchedule->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::DescribeSnapshotScheduleResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeStorediSCSIVolumes (%args) {
    my $call = AWS::StorageGateway::DescribeStorediSCSIVolumes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::DescribeStorediSCSIVolumesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeTapeArchives (%args) {
    my $call = AWS::StorageGateway::DescribeTapeArchives->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::DescribeTapeArchivesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeTapeRecoveryPoints (%args) {
    my $call = AWS::StorageGateway::DescribeTapeRecoveryPoints->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::DescribeTapeRecoveryPointsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeTapes (%args) {
    my $call = AWS::StorageGateway::DescribeTapes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::DescribeTapesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeUploadBuffer (%args) {
    my $call = AWS::StorageGateway::DescribeUploadBuffer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::DescribeUploadBufferResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeVTLDevices (%args) {
    my $call = AWS::StorageGateway::DescribeVTLDevices->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::DescribeVTLDevicesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeWorkingStorage (%args) {
    my $call = AWS::StorageGateway::DescribeWorkingStorage->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::DescribeWorkingStorageResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DisableGateway (%args) {
    my $call = AWS::StorageGateway::DisableGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::DisableGatewayResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListGateways (%args) {
    my $call = AWS::StorageGateway::ListGateways->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::ListGatewaysResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListLocalDisks (%args) {
    my $call = AWS::StorageGateway::ListLocalDisks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::ListLocalDisksResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListVolumeRecoveryPoints (%args) {
    my $call = AWS::StorageGateway::ListVolumeRecoveryPoints->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::ListVolumeRecoveryPointsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListVolumes (%args) {
    my $call = AWS::StorageGateway::ListVolumes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::ListVolumesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RetrieveTapeArchive (%args) {
    my $call = AWS::StorageGateway::RetrieveTapeArchive->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::RetrieveTapeArchiveResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RetrieveTapeRecoveryPoint (%args) {
    my $call = AWS::StorageGateway::RetrieveTapeRecoveryPoint->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::RetrieveTapeRecoveryPointResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ShutdownGateway (%args) {
    my $call = AWS::StorageGateway::ShutdownGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::ShutdownGatewayResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method StartGateway (%args) {
    my $call = AWS::StorageGateway::StartGateway->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::StartGatewayResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateBandwidthRateLimit (%args) {
    my $call = AWS::StorageGateway::UpdateBandwidthRateLimit->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::UpdateBandwidthRateLimitResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateChapCredentials (%args) {
    my $call = AWS::StorageGateway::UpdateChapCredentials->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::UpdateChapCredentialsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateGatewayInformation (%args) {
    my $call = AWS::StorageGateway::UpdateGatewayInformation->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::UpdateGatewayInformationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateGatewaySoftwareNow (%args) {
    my $call = AWS::StorageGateway::UpdateGatewaySoftwareNow->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::UpdateGatewaySoftwareNowResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateMaintenanceStartTime (%args) {
    my $call = AWS::StorageGateway::UpdateMaintenanceStartTime->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::UpdateMaintenanceStartTimeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateSnapshotSchedule (%args) {
    my $call = AWS::StorageGateway::UpdateSnapshotSchedule->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::StorageGateway::UpdateSnapshotScheduleResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
