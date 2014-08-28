
use AWS::API;


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
