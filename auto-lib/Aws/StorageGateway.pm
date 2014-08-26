
use AWS::API;


package Aws::StorageGateway::ActivateGateway {
  use Moose;
  has ActivationKey => (is => 'ro', isa => 'Str', required => 1);
  has GatewayName => (is => 'ro', isa => 'Str', required => 1);
  has GatewayRegion => (is => 'ro', isa => 'Str', required => 1);
  has GatewayTimezone => (is => 'ro', isa => 'Str', required => 1);
  has GatewayType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ActivateGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::ActivateGatewayResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::AddCache {
  use Moose;
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddCache');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::AddCacheResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::AddUploadBuffer {
  use Moose;
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddUploadBuffer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::AddUploadBufferResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::AddWorkingStorage {
  use Moose;
  has DiskIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddWorkingStorage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::AddWorkingStorageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::CancelArchival {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelArchival');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::CancelArchivalResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::CancelRetrieval {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelRetrieval');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::CancelRetrievalResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::CreateCachediSCSIVolume {
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotId => (is => 'ro', isa => 'Str');
  has TargetName => (is => 'ro', isa => 'Str', required => 1);
  has VolumeSizeInBytes => (is => 'ro', isa => 'Num', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCachediSCSIVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::CreateCachediSCSIVolumeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::CreateSnapshot {
  use Moose;
  has SnapshotDescription => (is => 'ro', isa => 'Str', required => 1);
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::CreateSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::CreateSnapshotFromVolumeRecoveryPoint {
  use Moose;
  has SnapshotDescription => (is => 'ro', isa => 'Str', required => 1);
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSnapshotFromVolumeRecoveryPoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::CreateSnapshotFromVolumeRecoveryPointResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::CreateStorediSCSIVolume {
  use Moose;
  has DiskId => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', required => 1);
  has PreserveExistingData => (is => 'ro', isa => 'Bool', required => 1);
  has SnapshotId => (is => 'ro', isa => 'Str');
  has TargetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStorediSCSIVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::CreateStorediSCSIVolumeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::CreateTapes {
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has NumTapesToCreate => (is => 'ro', isa => 'Int', required => 1);
  has TapeBarcodePrefix => (is => 'ro', isa => 'Str', required => 1);
  has TapeSizeInBytes => (is => 'ro', isa => 'Num', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTapes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::CreateTapesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::DeleteBandwidthRateLimit {
  use Moose;
  has BandwidthType => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBandwidthRateLimit');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DeleteBandwidthRateLimitResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::DeleteChapCredentials {
  use Moose;
  has InitiatorName => (is => 'ro', isa => 'Str', required => 1);
  has TargetARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteChapCredentials');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DeleteChapCredentialsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::DeleteGateway {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DeleteGatewayResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::DeleteSnapshotSchedule {
  use Moose;
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSnapshotSchedule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DeleteSnapshotScheduleResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::DeleteTape {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTape');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DeleteTapeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::DeleteTapeArchive {
  use Moose;
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTapeArchive');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DeleteTapeArchiveResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::DeleteVolume {
  use Moose;
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DeleteVolumeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::DescribeBandwidthRateLimit {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBandwidthRateLimit');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DescribeBandwidthRateLimitResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::DescribeCache {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCache');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DescribeCacheResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::DescribeCachediSCSIVolumes {
  use Moose;
  has VolumeARNs => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCachediSCSIVolumes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DescribeCachediSCSIVolumesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::DescribeChapCredentials {
  use Moose;
  has TargetARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeChapCredentials');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DescribeChapCredentialsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::DescribeGatewayInformation {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGatewayInformation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DescribeGatewayInformationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::DescribeMaintenanceStartTime {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMaintenanceStartTime');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DescribeMaintenanceStartTimeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::DescribeSnapshotSchedule {
  use Moose;
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSnapshotSchedule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DescribeSnapshotScheduleResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::DescribeStorediSCSIVolumes {
  use Moose;
  has VolumeARNs => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStorediSCSIVolumes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DescribeStorediSCSIVolumesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::DescribeTapeArchives {
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');
  has TapeARNs => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTapeArchives');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DescribeTapeArchivesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::DescribeTapeRecoveryPoints {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTapeRecoveryPoints');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DescribeTapeRecoveryPointsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::DescribeTapes {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');
  has TapeARNs => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTapes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DescribeTapesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::DescribeUploadBuffer {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUploadBuffer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DescribeUploadBufferResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::DescribeVTLDevices {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');
  has VTLDeviceARNs => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVTLDevices');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DescribeVTLDevicesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::DescribeWorkingStorage {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkingStorage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DescribeWorkingStorageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::DisableGateway {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DisableGatewayResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::ListGateways {
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGateways');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::ListGatewaysResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::ListLocalDisks {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLocalDisks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::ListLocalDisksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::ListVolumeRecoveryPoints {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVolumeRecoveryPoints');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::ListVolumeRecoveryPointsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::ListVolumes {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVolumes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::ListVolumesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::RetrieveTapeArchive {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RetrieveTapeArchive');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::RetrieveTapeArchiveResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::RetrieveTapeRecoveryPoint {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RetrieveTapeRecoveryPoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::RetrieveTapeRecoveryPointResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::ShutdownGateway {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ShutdownGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::ShutdownGatewayResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::StartGateway {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::StartGatewayResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::UpdateBandwidthRateLimit {
  use Moose;
  has AverageDownloadRateLimitInBitsPerSec => (is => 'ro', isa => 'Num');
  has AverageUploadRateLimitInBitsPerSec => (is => 'ro', isa => 'Num');
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBandwidthRateLimit');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::UpdateBandwidthRateLimitResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::UpdateChapCredentials {
  use Moose;
  has InitiatorName => (is => 'ro', isa => 'Str', required => 1);
  has SecretToAuthenticateInitiator => (is => 'ro', isa => 'Str', required => 1);
  has SecretToAuthenticateTarget => (is => 'ro', isa => 'Str');
  has TargetARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateChapCredentials');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::UpdateChapCredentialsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::UpdateGatewayInformation {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has GatewayName => (is => 'ro', isa => 'Str');
  has GatewayTimezone => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGatewayInformation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::UpdateGatewayInformationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::UpdateGatewaySoftwareNow {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGatewaySoftwareNow');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::UpdateGatewaySoftwareNowResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::UpdateMaintenanceStartTime {
  use Moose;
  has DayOfWeek => (is => 'ro', isa => 'Int', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has HourOfDay => (is => 'ro', isa => 'Int', required => 1);
  has MinuteOfHour => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMaintenanceStartTime');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::UpdateMaintenanceStartTimeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::StorageGateway::UpdateSnapshotSchedule {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has RecurrenceInHours => (is => 'ro', isa => 'Int', required => 1);
  has StartAt => (is => 'ro', isa => 'Int', required => 1);
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSnapshotSchedule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::UpdateSnapshotScheduleResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
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

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub ActivateGateway {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::ActivateGateway', @_);
  }
  sub AddCache {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::AddCache', @_);
  }
  sub AddUploadBuffer {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::AddUploadBuffer', @_);
  }
  sub AddWorkingStorage {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::AddWorkingStorage', @_);
  }
  sub CancelArchival {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::CancelArchival', @_);
  }
  sub CancelRetrieval {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::CancelRetrieval', @_);
  }
  sub CreateCachediSCSIVolume {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::CreateCachediSCSIVolume', @_);
  }
  sub CreateSnapshot {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::CreateSnapshot', @_);
  }
  sub CreateSnapshotFromVolumeRecoveryPoint {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::CreateSnapshotFromVolumeRecoveryPoint', @_);
  }
  sub CreateStorediSCSIVolume {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::CreateStorediSCSIVolume', @_);
  }
  sub CreateTapes {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::CreateTapes', @_);
  }
  sub DeleteBandwidthRateLimit {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::DeleteBandwidthRateLimit', @_);
  }
  sub DeleteChapCredentials {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::DeleteChapCredentials', @_);
  }
  sub DeleteGateway {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::DeleteGateway', @_);
  }
  sub DeleteSnapshotSchedule {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::DeleteSnapshotSchedule', @_);
  }
  sub DeleteTape {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::DeleteTape', @_);
  }
  sub DeleteTapeArchive {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::DeleteTapeArchive', @_);
  }
  sub DeleteVolume {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::DeleteVolume', @_);
  }
  sub DescribeBandwidthRateLimit {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::DescribeBandwidthRateLimit', @_);
  }
  sub DescribeCache {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::DescribeCache', @_);
  }
  sub DescribeCachediSCSIVolumes {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::DescribeCachediSCSIVolumes', @_);
  }
  sub DescribeChapCredentials {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::DescribeChapCredentials', @_);
  }
  sub DescribeGatewayInformation {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::DescribeGatewayInformation', @_);
  }
  sub DescribeMaintenanceStartTime {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::DescribeMaintenanceStartTime', @_);
  }
  sub DescribeSnapshotSchedule {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::DescribeSnapshotSchedule', @_);
  }
  sub DescribeStorediSCSIVolumes {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::DescribeStorediSCSIVolumes', @_);
  }
  sub DescribeTapeArchives {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::DescribeTapeArchives', @_);
  }
  sub DescribeTapeRecoveryPoints {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::DescribeTapeRecoveryPoints', @_);
  }
  sub DescribeTapes {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::DescribeTapes', @_);
  }
  sub DescribeUploadBuffer {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::DescribeUploadBuffer', @_);
  }
  sub DescribeVTLDevices {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::DescribeVTLDevices', @_);
  }
  sub DescribeWorkingStorage {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::DescribeWorkingStorage', @_);
  }
  sub DisableGateway {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::DisableGateway', @_);
  }
  sub ListGateways {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::ListGateways', @_);
  }
  sub ListLocalDisks {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::ListLocalDisks', @_);
  }
  sub ListVolumeRecoveryPoints {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::ListVolumeRecoveryPoints', @_);
  }
  sub ListVolumes {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::ListVolumes', @_);
  }
  sub RetrieveTapeArchive {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::RetrieveTapeArchive', @_);
  }
  sub RetrieveTapeRecoveryPoint {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::RetrieveTapeRecoveryPoint', @_);
  }
  sub ShutdownGateway {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::ShutdownGateway', @_);
  }
  sub StartGateway {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::StartGateway', @_);
  }
  sub UpdateBandwidthRateLimit {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::UpdateBandwidthRateLimit', @_);
  }
  sub UpdateChapCredentials {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::UpdateChapCredentials', @_);
  }
  sub UpdateGatewayInformation {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::UpdateGatewayInformation', @_);
  }
  sub UpdateGatewaySoftwareNow {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::UpdateGatewaySoftwareNow', @_);
  }
  sub UpdateMaintenanceStartTime {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::UpdateMaintenanceStartTime', @_);
  }
  sub UpdateSnapshotSchedule {
    my $self = shift;
    return $self->do_call('Aws::StorageGateway::UpdateSnapshotSchedule', @_);
  }
}
1;
