
use AWS::API;


package Aws::StorageGateway::CachediSCSIVolumeInformation {
  use Moose;
  with ('AWS::API::ResultParser');
  has SourceSnapshotId => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str');
  has VolumeProgress => (is => 'ro', isa => 'Num');
  has VolumeSizeInBytes => (is => 'ro', isa => 'Num');
  has VolumeStatus => (is => 'ro', isa => 'Str');
  has VolumeType => (is => 'ro', isa => 'Str');
  has VolumeiSCSIAttributes => (is => 'ro', isa => 'Aws::StorageGateway::VolumeiSCSIAttributes');
}

package Aws::StorageGateway::ChapInfo {
  use Moose;
  with ('AWS::API::ResultParser');
  has InitiatorName => (is => 'ro', isa => 'Str');
  has SecretToAuthenticateInitiator => (is => 'ro', isa => 'Str');
  has SecretToAuthenticateTarget => (is => 'ro', isa => 'Str');
  has TargetARN => (is => 'ro', isa => 'Str');
}

package Aws::StorageGateway::DeviceiSCSIAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has ChapEnabled => (is => 'ro', isa => 'Bool');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has NetworkInterfacePort => (is => 'ro', isa => 'Int');
  has TargetARN => (is => 'ro', isa => 'Str');
}

package Aws::StorageGateway::DiskInformation {
  use Moose;
  with ('AWS::API::ResultParser');
  has DiskAllocationResource => (is => 'ro', isa => 'Str');
  has DiskAllocationType => (is => 'ro', isa => 'Str');
  has DiskId => (is => 'ro', isa => 'Str');
  has DiskNode => (is => 'ro', isa => 'Str');
  has DiskPath => (is => 'ro', isa => 'Str');
  has DiskSizeInBytes => (is => 'ro', isa => 'Num');
}

package Aws::StorageGateway::GatewayInformation {
  use Moose;
  with ('AWS::API::ResultParser');
  has GatewayARN => (is => 'ro', isa => 'Str');
  has GatewayType => (is => 'ro', isa => 'Str');
}

package Aws::StorageGateway::NetworkInterface {
  use Moose;
  with ('AWS::API::ResultParser');
  has Ipv4Address => (is => 'ro', isa => 'Str');
  has Ipv6Address => (is => 'ro', isa => 'Str');
  has MacAddress => (is => 'ro', isa => 'Str');
}

package Aws::StorageGateway::StorediSCSIVolumeInformation {
  use Moose;
  with ('AWS::API::ResultParser');
  has PreservedExistingData => (is => 'ro', isa => 'Bool');
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

package Aws::StorageGateway::Tape {
  use Moose;
  with ('AWS::API::ResultParser');
  has Progress => (is => 'ro', isa => 'Num');
  has TapeARN => (is => 'ro', isa => 'Str');
  has TapeBarcode => (is => 'ro', isa => 'Str');
  has TapeSizeInBytes => (is => 'ro', isa => 'Num');
  has TapeStatus => (is => 'ro', isa => 'Str');
  has VTLDevice => (is => 'ro', isa => 'Str');
}

package Aws::StorageGateway::TapeArchive {
  use Moose;
  with ('AWS::API::ResultParser');
  has CompletionTime => (is => 'ro', isa => 'Str');
  has RetrievedTo => (is => 'ro', isa => 'Str');
  has TapeARN => (is => 'ro', isa => 'Str');
  has TapeBarcode => (is => 'ro', isa => 'Str');
  has TapeSizeInBytes => (is => 'ro', isa => 'Num');
  has TapeStatus => (is => 'ro', isa => 'Str');
}

package Aws::StorageGateway::TapeRecoveryPointInfo {
  use Moose;
  with ('AWS::API::ResultParser');
  has TapeARN => (is => 'ro', isa => 'Str');
  has TapeRecoveryPointTime => (is => 'ro', isa => 'Str');
  has TapeSizeInBytes => (is => 'ro', isa => 'Num');
}

package Aws::StorageGateway::VTLDevice {
  use Moose;
  with ('AWS::API::ResultParser');
  has DeviceiSCSIAttributes => (is => 'ro', isa => 'Aws::StorageGateway::DeviceiSCSIAttributes');
  has VTLDeviceARN => (is => 'ro', isa => 'Str');
}

package Aws::StorageGateway::VolumeInformation {
  use Moose;
  with ('AWS::API::ResultParser');
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeType => (is => 'ro', isa => 'Str');
}

package Aws::StorageGateway::VolumeRecoveryPointInfo {
  use Moose;
  with ('AWS::API::ResultParser');
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeRecoveryPointTime => (is => 'ro', isa => 'Str');
  has VolumeSizeInBytes => (is => 'ro', isa => 'Num');
  has VolumeUsageInBytes => (is => 'ro', isa => 'Num');
}

package Aws::StorageGateway::VolumeiSCSIAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has ChapEnabled => (is => 'ro', isa => 'Bool');
  has LunNumber => (is => 'ro', isa => 'Int');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has NetworkInterfacePort => (is => 'ro', isa => 'Int');
  has TargetARN => (is => 'ro', isa => 'Str');
}



package Aws::StorageGateway::ActivateGateway {
  use Moose;
  has ActivationKey => (is => 'ro', isa => 'Str', required => 1);
  has GatewayName => (is => 'ro', isa => 'Str', required => 1);
  has GatewayRegion => (is => 'ro', isa => 'Str', required => 1);
  has GatewayTimezone => (is => 'ro', isa => 'Str', required => 1);
  has GatewayType => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ActivateGateway');
  has _returns => (isa => 'Aws::StorageGateway::ActivateGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ActivateGatewayResult');  
}
package Aws::StorageGateway::AddCache {
  use Moose;
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddCache');
  has _returns => (isa => 'Aws::StorageGateway::AddCacheResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddCacheResult');  
}
package Aws::StorageGateway::AddUploadBuffer {
  use Moose;
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddUploadBuffer');
  has _returns => (isa => 'Aws::StorageGateway::AddUploadBufferResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddUploadBufferResult');  
}
package Aws::StorageGateway::AddWorkingStorage {
  use Moose;
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddWorkingStorage');
  has _returns => (isa => 'Aws::StorageGateway::AddWorkingStorageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddWorkingStorageResult');  
}
package Aws::StorageGateway::CancelArchival {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CancelArchival');
  has _returns => (isa => 'Aws::StorageGateway::CancelArchivalResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CancelArchivalResult');  
}
package Aws::StorageGateway::CancelRetrieval {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CancelRetrieval');
  has _returns => (isa => 'Aws::StorageGateway::CancelRetrievalResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CancelRetrievalResult');  
}
package Aws::StorageGateway::CreateCachediSCSIVolume {
  use Moose;
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
package Aws::StorageGateway::CreateSnapshot {
  use Moose;
  has SnapshotDescription => (is => 'ro', isa => 'Str', required => 1);
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSnapshot');
  has _returns => (isa => 'Aws::StorageGateway::CreateSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSnapshotResult');  
}
package Aws::StorageGateway::CreateSnapshotFromVolumeRecoveryPoint {
  use Moose;
  has SnapshotDescription => (is => 'ro', isa => 'Str', required => 1);
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSnapshotFromVolumeRecoveryPoint');
  has _returns => (isa => 'Aws::StorageGateway::CreateSnapshotFromVolumeRecoveryPointResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSnapshotFromVolumeRecoveryPointResult');  
}
package Aws::StorageGateway::CreateStorediSCSIVolume {
  use Moose;
  has DiskId => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has PreserveExistingData => (is => 'ro', isa => 'Bool', required => 1);
  has SnapshotId => (is => 'ro', isa => 'Str');
  has TargetName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStorediSCSIVolume');
  has _returns => (isa => 'Aws::StorageGateway::CreateStorediSCSIVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStorediSCSIVolumeResult');  
}
package Aws::StorageGateway::CreateTapes {
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has NumTapesToCreate => (is => 'ro', isa => 'Int', required => 1);
  has TapeBarcodePrefix => (is => 'ro', isa => 'Str', required => 1);
  has TapeSizeInBytes => (is => 'ro', isa => 'Num', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTapes');
  has _returns => (isa => 'Aws::StorageGateway::CreateTapesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateTapesResult');  
}
package Aws::StorageGateway::DeleteBandwidthRateLimit {
  use Moose;
  has BandwidthType => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBandwidthRateLimit');
  has _returns => (isa => 'Aws::StorageGateway::DeleteBandwidthRateLimitResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteBandwidthRateLimitResult');  
}
package Aws::StorageGateway::DeleteChapCredentials {
  use Moose;
  has InitiatorName => (is => 'ro', isa => 'Str', required => 1);
  has TargetARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteChapCredentials');
  has _returns => (isa => 'Aws::StorageGateway::DeleteChapCredentialsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteChapCredentialsResult');  
}
package Aws::StorageGateway::DeleteGateway {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGateway');
  has _returns => (isa => 'Aws::StorageGateway::DeleteGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteGatewayResult');  
}
package Aws::StorageGateway::DeleteSnapshotSchedule {
  use Moose;
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSnapshotSchedule');
  has _returns => (isa => 'Aws::StorageGateway::DeleteSnapshotScheduleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSnapshotScheduleResult');  
}
package Aws::StorageGateway::DeleteTape {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTape');
  has _returns => (isa => 'Aws::StorageGateway::DeleteTapeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteTapeResult');  
}
package Aws::StorageGateway::DeleteTapeArchive {
  use Moose;
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTapeArchive');
  has _returns => (isa => 'Aws::StorageGateway::DeleteTapeArchiveResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteTapeArchiveResult');  
}
package Aws::StorageGateway::DeleteVolume {
  use Moose;
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVolume');
  has _returns => (isa => 'Aws::StorageGateway::DeleteVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteVolumeResult');  
}
package Aws::StorageGateway::DescribeBandwidthRateLimit {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBandwidthRateLimit');
  has _returns => (isa => 'Aws::StorageGateway::DescribeBandwidthRateLimitResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeBandwidthRateLimitResult');  
}
package Aws::StorageGateway::DescribeCache {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCache');
  has _returns => (isa => 'Aws::StorageGateway::DescribeCacheResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheResult');  
}
package Aws::StorageGateway::DescribeCachediSCSIVolumes {
  use Moose;
  has VolumeARNs => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCachediSCSIVolumes');
  has _returns => (isa => 'Aws::StorageGateway::DescribeCachediSCSIVolumesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCachediSCSIVolumesResult');  
}
package Aws::StorageGateway::DescribeChapCredentials {
  use Moose;
  has TargetARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeChapCredentials');
  has _returns => (isa => 'Aws::StorageGateway::DescribeChapCredentialsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeChapCredentialsResult');  
}
package Aws::StorageGateway::DescribeGatewayInformation {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGatewayInformation');
  has _returns => (isa => 'Aws::StorageGateway::DescribeGatewayInformationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeGatewayInformationResult');  
}
package Aws::StorageGateway::DescribeMaintenanceStartTime {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMaintenanceStartTime');
  has _returns => (isa => 'Aws::StorageGateway::DescribeMaintenanceStartTimeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeMaintenanceStartTimeResult');  
}
package Aws::StorageGateway::DescribeSnapshotSchedule {
  use Moose;
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSnapshotSchedule');
  has _returns => (isa => 'Aws::StorageGateway::DescribeSnapshotScheduleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSnapshotScheduleResult');  
}
package Aws::StorageGateway::DescribeStorediSCSIVolumes {
  use Moose;
  has VolumeARNs => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStorediSCSIVolumes');
  has _returns => (isa => 'Aws::StorageGateway::DescribeStorediSCSIVolumesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStorediSCSIVolumesResult');  
}
package Aws::StorageGateway::DescribeTapeArchives {
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');
  has TapeARNs => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTapeArchives');
  has _returns => (isa => 'Aws::StorageGateway::DescribeTapeArchivesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTapeArchivesResult');  
}
package Aws::StorageGateway::DescribeTapeRecoveryPoints {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTapeRecoveryPoints');
  has _returns => (isa => 'Aws::StorageGateway::DescribeTapeRecoveryPointsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTapeRecoveryPointsResult');  
}
package Aws::StorageGateway::DescribeTapes {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');
  has TapeARNs => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTapes');
  has _returns => (isa => 'Aws::StorageGateway::DescribeTapesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTapesResult');  
}
package Aws::StorageGateway::DescribeUploadBuffer {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUploadBuffer');
  has _returns => (isa => 'Aws::StorageGateway::DescribeUploadBufferResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeUploadBufferResult');  
}
package Aws::StorageGateway::DescribeVTLDevices {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');
  has VTLDeviceARNs => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVTLDevices');
  has _returns => (isa => 'Aws::StorageGateway::DescribeVTLDevicesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVTLDevicesResult');  
}
package Aws::StorageGateway::DescribeWorkingStorage {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkingStorage');
  has _returns => (isa => 'Aws::StorageGateway::DescribeWorkingStorageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeWorkingStorageResult');  
}
package Aws::StorageGateway::DisableGateway {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisableGateway');
  has _returns => (isa => 'Aws::StorageGateway::DisableGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisableGatewayResult');  
}
package Aws::StorageGateway::ListGateways {
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListGateways');
  has _returns => (isa => 'Aws::StorageGateway::ListGatewaysResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListGatewaysResult');  
}
package Aws::StorageGateway::ListLocalDisks {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListLocalDisks');
  has _returns => (isa => 'Aws::StorageGateway::ListLocalDisksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListLocalDisksResult');  
}
package Aws::StorageGateway::ListVolumeRecoveryPoints {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListVolumeRecoveryPoints');
  has _returns => (isa => 'Aws::StorageGateway::ListVolumeRecoveryPointsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListVolumeRecoveryPointsResult');  
}
package Aws::StorageGateway::ListVolumes {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListVolumes');
  has _returns => (isa => 'Aws::StorageGateway::ListVolumesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListVolumesResult');  
}
package Aws::StorageGateway::RetrieveTapeArchive {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RetrieveTapeArchive');
  has _returns => (isa => 'Aws::StorageGateway::RetrieveTapeArchiveResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RetrieveTapeArchiveResult');  
}
package Aws::StorageGateway::RetrieveTapeRecoveryPoint {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RetrieveTapeRecoveryPoint');
  has _returns => (isa => 'Aws::StorageGateway::RetrieveTapeRecoveryPointResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RetrieveTapeRecoveryPointResult');  
}
package Aws::StorageGateway::ShutdownGateway {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ShutdownGateway');
  has _returns => (isa => 'Aws::StorageGateway::ShutdownGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ShutdownGatewayResult');  
}
package Aws::StorageGateway::StartGateway {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StartGateway');
  has _returns => (isa => 'Aws::StorageGateway::StartGatewayResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StartGatewayResult');  
}
package Aws::StorageGateway::UpdateBandwidthRateLimit {
  use Moose;
  has AverageDownloadRateLimitInBitsPerSec => (is => 'ro', isa => 'Num');
  has AverageUploadRateLimitInBitsPerSec => (is => 'ro', isa => 'Num');
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBandwidthRateLimit');
  has _returns => (isa => 'Aws::StorageGateway::UpdateBandwidthRateLimitResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateBandwidthRateLimitResult');  
}
package Aws::StorageGateway::UpdateChapCredentials {
  use Moose;
  has InitiatorName => (is => 'ro', isa => 'Str', required => 1);
  has SecretToAuthenticateInitiator => (is => 'ro', isa => 'Str', required => 1);
  has SecretToAuthenticateTarget => (is => 'ro', isa => 'Str');
  has TargetARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateChapCredentials');
  has _returns => (isa => 'Aws::StorageGateway::UpdateChapCredentialsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateChapCredentialsResult');  
}
package Aws::StorageGateway::UpdateGatewayInformation {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has GatewayName => (is => 'ro', isa => 'Str');
  has GatewayTimezone => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGatewayInformation');
  has _returns => (isa => 'Aws::StorageGateway::UpdateGatewayInformationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateGatewayInformationResult');  
}
package Aws::StorageGateway::UpdateGatewaySoftwareNow {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGatewaySoftwareNow');
  has _returns => (isa => 'Aws::StorageGateway::UpdateGatewaySoftwareNowResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateGatewaySoftwareNowResult');  
}
package Aws::StorageGateway::UpdateMaintenanceStartTime {
  use Moose;
  has DayOfWeek => (is => 'ro', isa => 'Int', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has HourOfDay => (is => 'ro', isa => 'Int', required => 1);
  has MinuteOfHour => (is => 'ro', isa => 'Int', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMaintenanceStartTime');
  has _returns => (isa => 'Aws::StorageGateway::UpdateMaintenanceStartTimeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateMaintenanceStartTimeResult');  
}
package Aws::StorageGateway::UpdateSnapshotSchedule {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has RecurrenceInHours => (is => 'ro', isa => 'Int', required => 1);
  has StartAt => (is => 'ro', isa => 'Int', required => 1);
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSnapshotSchedule');
  has _returns => (isa => 'Aws::StorageGateway::UpdateSnapshotScheduleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateSnapshotScheduleResult');  
}

package Aws::StorageGateway::ActivateGatewayResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::AddCacheResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::AddUploadBufferResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::AddWorkingStorageResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::CancelArchivalResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TapeARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::CancelRetrievalResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TapeARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::CreateCachediSCSIVolumeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TargetARN => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::CreateSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has SnapshotId => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::CreateSnapshotFromVolumeRecoveryPointResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has SnapshotId => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeRecoveryPointTime => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::CreateStorediSCSIVolumeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TargetARN => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeSizeInBytes => (is => 'ro', isa => 'Num');

}
package Aws::StorageGateway::CreateTapesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TapeARNs => (is => 'ro', isa => 'ArrayRef[Str]');

}
package Aws::StorageGateway::DeleteBandwidthRateLimitResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::DeleteChapCredentialsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has InitiatorName => (is => 'ro', isa => 'Str');
  has TargetARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::DeleteGatewayResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::DeleteSnapshotScheduleResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has VolumeARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::DeleteTapeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TapeARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::DeleteTapeArchiveResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TapeARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::DeleteVolumeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has VolumeARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::DescribeBandwidthRateLimitResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AverageDownloadRateLimitInBitsPerSec => (is => 'ro', isa => 'Num');
  has AverageUploadRateLimitInBitsPerSec => (is => 'ro', isa => 'Num');
  has GatewayARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::DescribeCacheResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheAllocatedInBytes => (is => 'ro', isa => 'Num');
  has CacheDirtyPercentage => (is => 'ro', isa => 'Num');
  has CacheHitPercentage => (is => 'ro', isa => 'Num');
  has CacheMissPercentage => (is => 'ro', isa => 'Num');
  has CacheUsedPercentage => (is => 'ro', isa => 'Num');
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has GatewayARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::DescribeCachediSCSIVolumesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CachediSCSIVolumes => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::CachediSCSIVolumeInformation]');

}
package Aws::StorageGateway::DescribeChapCredentialsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ChapCredentials => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::ChapInfo]');

}
package Aws::StorageGateway::DescribeGatewayInformationResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');
  has GatewayId => (is => 'ro', isa => 'Str');
  has GatewayNetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::NetworkInterface]');
  has GatewayState => (is => 'ro', isa => 'Str');
  has GatewayTimezone => (is => 'ro', isa => 'Str');
  has GatewayType => (is => 'ro', isa => 'Str');
  has NextUpdateAvailabilityDate => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::DescribeMaintenanceStartTimeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DayOfWeek => (is => 'ro', isa => 'Int');
  has GatewayARN => (is => 'ro', isa => 'Str');
  has HourOfDay => (is => 'ro', isa => 'Int');
  has MinuteOfHour => (is => 'ro', isa => 'Int');
  has Timezone => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::DescribeSnapshotScheduleResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Description => (is => 'ro', isa => 'Str');
  has RecurrenceInHours => (is => 'ro', isa => 'Int');
  has StartAt => (is => 'ro', isa => 'Int');
  has Timezone => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::DescribeStorediSCSIVolumesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has StorediSCSIVolumes => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::StorediSCSIVolumeInformation]');

}
package Aws::StorageGateway::DescribeTapeArchivesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has TapeArchives => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::TapeArchive]');

}
package Aws::StorageGateway::DescribeTapeRecoveryPointsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has TapeRecoveryPointInfos => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::TapeRecoveryPointInfo]');

}
package Aws::StorageGateway::DescribeTapesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Tapes => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::Tape]');

}
package Aws::StorageGateway::DescribeUploadBufferResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has GatewayARN => (is => 'ro', isa => 'Str');
  has UploadBufferAllocatedInBytes => (is => 'ro', isa => 'Num');
  has UploadBufferUsedInBytes => (is => 'ro', isa => 'Num');

}
package Aws::StorageGateway::DescribeVTLDevicesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has VTLDevices => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::VTLDevice]');

}
package Aws::StorageGateway::DescribeWorkingStorageResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has GatewayARN => (is => 'ro', isa => 'Str');
  has WorkingStorageAllocatedInBytes => (is => 'ro', isa => 'Num');
  has WorkingStorageUsedInBytes => (is => 'ro', isa => 'Num');

}
package Aws::StorageGateway::DisableGatewayResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::ListGatewaysResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Gateways => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::GatewayInformation]');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::ListLocalDisksResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Disks => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::DiskInformation]');
  has GatewayARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::ListVolumeRecoveryPointsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');
  has VolumeRecoveryPointInfos => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::VolumeRecoveryPointInfo]');

}
package Aws::StorageGateway::ListVolumesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has VolumeInfos => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::VolumeInformation]');

}
package Aws::StorageGateway::RetrieveTapeArchiveResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TapeARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::RetrieveTapeRecoveryPointResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TapeARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::ShutdownGatewayResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::StartGatewayResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::UpdateBandwidthRateLimitResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::UpdateChapCredentialsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has InitiatorName => (is => 'ro', isa => 'Str');
  has TargetARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::UpdateGatewayInformationResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::UpdateGatewaySoftwareNowResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str');

}
package Aws::StorageGateway::UpdateMaintenanceStartTimeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

}
package Aws::StorageGateway::UpdateSnapshotScheduleResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has VolumeARN => (is => 'ro', isa => 'Str');

}

package Aws::StorageGateway {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'storagegateway');
  has version => (is => 'ro', isa => 'Str', default => '2013-06-30');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'StorageGateway_20130630');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");
  with ('Net::AWS::Caller', 'AWS::API::RegionalEndpointCaller', 'Net::AWS::V4Signature', 'Net::AWS::JsonCaller', 'Net::AWS::JsonResponse');
  
  sub ActivateGateway {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::ActivateGateway', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::ActivateGatewayResult->from_result($result);return $o_result;
  }
  sub AddCache {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::AddCache', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::AddCacheResult->from_result($result);return $o_result;
  }
  sub AddUploadBuffer {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::AddUploadBuffer', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::AddUploadBufferResult->from_result($result);return $o_result;
  }
  sub AddWorkingStorage {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::AddWorkingStorage', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::AddWorkingStorageResult->from_result($result);return $o_result;
  }
  sub CancelArchival {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::CancelArchival', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::CancelArchivalResult->from_result($result);return $o_result;
  }
  sub CancelRetrieval {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::CancelRetrieval', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::CancelRetrievalResult->from_result($result);return $o_result;
  }
  sub CreateCachediSCSIVolume {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::CreateCachediSCSIVolume', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::CreateCachediSCSIVolumeResult->from_result($result);return $o_result;
  }
  sub CreateSnapshot {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::CreateSnapshot', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::CreateSnapshotResult->from_result($result);return $o_result;
  }
  sub CreateSnapshotFromVolumeRecoveryPoint {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::CreateSnapshotFromVolumeRecoveryPoint', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::CreateSnapshotFromVolumeRecoveryPointResult->from_result($result);return $o_result;
  }
  sub CreateStorediSCSIVolume {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::CreateStorediSCSIVolume', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::CreateStorediSCSIVolumeResult->from_result($result);return $o_result;
  }
  sub CreateTapes {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::CreateTapes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::CreateTapesResult->from_result($result);return $o_result;
  }
  sub DeleteBandwidthRateLimit {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::DeleteBandwidthRateLimit', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DeleteBandwidthRateLimitResult->from_result($result);return $o_result;
  }
  sub DeleteChapCredentials {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::DeleteChapCredentials', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DeleteChapCredentialsResult->from_result($result);return $o_result;
  }
  sub DeleteGateway {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::DeleteGateway', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DeleteGatewayResult->from_result($result);return $o_result;
  }
  sub DeleteSnapshotSchedule {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::DeleteSnapshotSchedule', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DeleteSnapshotScheduleResult->from_result($result);return $o_result;
  }
  sub DeleteTape {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::DeleteTape', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DeleteTapeResult->from_result($result);return $o_result;
  }
  sub DeleteTapeArchive {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::DeleteTapeArchive', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DeleteTapeArchiveResult->from_result($result);return $o_result;
  }
  sub DeleteVolume {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::DeleteVolume', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DeleteVolumeResult->from_result($result);return $o_result;
  }
  sub DescribeBandwidthRateLimit {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::DescribeBandwidthRateLimit', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeBandwidthRateLimitResult->from_result($result);return $o_result;
  }
  sub DescribeCache {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::DescribeCache', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeCacheResult->from_result($result);return $o_result;
  }
  sub DescribeCachediSCSIVolumes {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::DescribeCachediSCSIVolumes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeCachediSCSIVolumesResult->from_result($result);return $o_result;
  }
  sub DescribeChapCredentials {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::DescribeChapCredentials', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeChapCredentialsResult->from_result($result);return $o_result;
  }
  sub DescribeGatewayInformation {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::DescribeGatewayInformation', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeGatewayInformationResult->from_result($result);return $o_result;
  }
  sub DescribeMaintenanceStartTime {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::DescribeMaintenanceStartTime', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeMaintenanceStartTimeResult->from_result($result);return $o_result;
  }
  sub DescribeSnapshotSchedule {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::DescribeSnapshotSchedule', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeSnapshotScheduleResult->from_result($result);return $o_result;
  }
  sub DescribeStorediSCSIVolumes {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::DescribeStorediSCSIVolumes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeStorediSCSIVolumesResult->from_result($result);return $o_result;
  }
  sub DescribeTapeArchives {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::DescribeTapeArchives', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeTapeArchivesResult->from_result($result);return $o_result;
  }
  sub DescribeTapeRecoveryPoints {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::DescribeTapeRecoveryPoints', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeTapeRecoveryPointsResult->from_result($result);return $o_result;
  }
  sub DescribeTapes {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::DescribeTapes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeTapesResult->from_result($result);return $o_result;
  }
  sub DescribeUploadBuffer {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::DescribeUploadBuffer', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeUploadBufferResult->from_result($result);return $o_result;
  }
  sub DescribeVTLDevices {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::DescribeVTLDevices', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeVTLDevicesResult->from_result($result);return $o_result;
  }
  sub DescribeWorkingStorage {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::DescribeWorkingStorage', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DescribeWorkingStorageResult->from_result($result);return $o_result;
  }
  sub DisableGateway {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::DisableGateway', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::DisableGatewayResult->from_result($result);return $o_result;
  }
  sub ListGateways {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::ListGateways', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::ListGatewaysResult->from_result($result);return $o_result;
  }
  sub ListLocalDisks {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::ListLocalDisks', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::ListLocalDisksResult->from_result($result);return $o_result;
  }
  sub ListVolumeRecoveryPoints {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::ListVolumeRecoveryPoints', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::ListVolumeRecoveryPointsResult->from_result($result);return $o_result;
  }
  sub ListVolumes {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::ListVolumes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::ListVolumesResult->from_result($result);return $o_result;
  }
  sub RetrieveTapeArchive {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::RetrieveTapeArchive', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::RetrieveTapeArchiveResult->from_result($result);return $o_result;
  }
  sub RetrieveTapeRecoveryPoint {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::RetrieveTapeRecoveryPoint', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::RetrieveTapeRecoveryPointResult->from_result($result);return $o_result;
  }
  sub ShutdownGateway {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::ShutdownGateway', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::ShutdownGatewayResult->from_result($result);return $o_result;
  }
  sub StartGateway {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::StartGateway', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::StartGatewayResult->from_result($result);return $o_result;
  }
  sub UpdateBandwidthRateLimit {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::UpdateBandwidthRateLimit', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::UpdateBandwidthRateLimitResult->from_result($result);return $o_result;
  }
  sub UpdateChapCredentials {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::UpdateChapCredentials', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::UpdateChapCredentialsResult->from_result($result);return $o_result;
  }
  sub UpdateGatewayInformation {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::UpdateGatewayInformation', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::UpdateGatewayInformationResult->from_result($result);return $o_result;
  }
  sub UpdateGatewaySoftwareNow {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::UpdateGatewaySoftwareNow', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::UpdateGatewaySoftwareNowResult->from_result($result);return $o_result;
  }
  sub UpdateMaintenanceStartTime {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::UpdateMaintenanceStartTime', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::UpdateMaintenanceStartTimeResult->from_result($result);return $o_result;
  }
  sub UpdateSnapshotSchedule {
    my $self = shift;
    my $call = new_with_coercions('Aws::StorageGateway::UpdateSnapshotSchedule', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::StorageGateway::UpdateSnapshotScheduleResult->from_result($result);return $o_result;
  }
}
