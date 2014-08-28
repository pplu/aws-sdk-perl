
use AWS::API;


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
