
use Paws::API;


package Paws::StorageGateway {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'storagegateway');
  has version => (is => 'ro', isa => 'Str', default => '2013-06-30');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'StorageGateway_20130630');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonResponse');

  
  sub ActivateGateway {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::ActivateGateway', @_);
  }
  sub AddCache {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::AddCache', @_);
  }
  sub AddUploadBuffer {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::AddUploadBuffer', @_);
  }
  sub AddWorkingStorage {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::AddWorkingStorage', @_);
  }
  sub CancelArchival {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::CancelArchival', @_);
  }
  sub CancelRetrieval {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::CancelRetrieval', @_);
  }
  sub CreateCachediSCSIVolume {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::CreateCachediSCSIVolume', @_);
  }
  sub CreateSnapshot {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::CreateSnapshot', @_);
  }
  sub CreateSnapshotFromVolumeRecoveryPoint {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::CreateSnapshotFromVolumeRecoveryPoint', @_);
  }
  sub CreateStorediSCSIVolume {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::CreateStorediSCSIVolume', @_);
  }
  sub CreateTapes {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::CreateTapes', @_);
  }
  sub DeleteBandwidthRateLimit {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DeleteBandwidthRateLimit', @_);
  }
  sub DeleteChapCredentials {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DeleteChapCredentials', @_);
  }
  sub DeleteGateway {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DeleteGateway', @_);
  }
  sub DeleteSnapshotSchedule {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DeleteSnapshotSchedule', @_);
  }
  sub DeleteTape {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DeleteTape', @_);
  }
  sub DeleteTapeArchive {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DeleteTapeArchive', @_);
  }
  sub DeleteVolume {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DeleteVolume', @_);
  }
  sub DescribeBandwidthRateLimit {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeBandwidthRateLimit', @_);
  }
  sub DescribeCache {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeCache', @_);
  }
  sub DescribeCachediSCSIVolumes {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeCachediSCSIVolumes', @_);
  }
  sub DescribeChapCredentials {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeChapCredentials', @_);
  }
  sub DescribeGatewayInformation {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeGatewayInformation', @_);
  }
  sub DescribeMaintenanceStartTime {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeMaintenanceStartTime', @_);
  }
  sub DescribeSnapshotSchedule {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeSnapshotSchedule', @_);
  }
  sub DescribeStorediSCSIVolumes {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeStorediSCSIVolumes', @_);
  }
  sub DescribeTapeArchives {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeTapeArchives', @_);
  }
  sub DescribeTapeRecoveryPoints {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeTapeRecoveryPoints', @_);
  }
  sub DescribeTapes {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeTapes', @_);
  }
  sub DescribeUploadBuffer {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeUploadBuffer', @_);
  }
  sub DescribeVTLDevices {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeVTLDevices', @_);
  }
  sub DescribeWorkingStorage {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DescribeWorkingStorage', @_);
  }
  sub DisableGateway {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::DisableGateway', @_);
  }
  sub ListGateways {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::ListGateways', @_);
  }
  sub ListLocalDisks {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::ListLocalDisks', @_);
  }
  sub ListVolumeRecoveryPoints {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::ListVolumeRecoveryPoints', @_);
  }
  sub ListVolumes {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::ListVolumes', @_);
  }
  sub RetrieveTapeArchive {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::RetrieveTapeArchive', @_);
  }
  sub RetrieveTapeRecoveryPoint {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::RetrieveTapeRecoveryPoint', @_);
  }
  sub ShutdownGateway {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::ShutdownGateway', @_);
  }
  sub StartGateway {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::StartGateway', @_);
  }
  sub UpdateBandwidthRateLimit {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::UpdateBandwidthRateLimit', @_);
  }
  sub UpdateChapCredentials {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::UpdateChapCredentials', @_);
  }
  sub UpdateGatewayInformation {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::UpdateGatewayInformation', @_);
  }
  sub UpdateGatewaySoftwareNow {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::UpdateGatewaySoftwareNow', @_);
  }
  sub UpdateMaintenanceStartTime {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::UpdateMaintenanceStartTime', @_);
  }
  sub UpdateSnapshotSchedule {
    my $self = shift;
    return $self->do_call('Paws::StorageGateway::UpdateSnapshotSchedule', @_);
  }
}
1;
