package Paws::StorageGateway;
  use Moose;
  sub service { 'storagegateway' }
  sub signing_name { 'storagegateway' }
  sub version { '2013-06-30' }
  sub target_prefix { 'StorageGateway_20130630' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub ActivateGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::ActivateGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddCache {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::AddCache', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddTagsToResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::AddTagsToResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddUploadBuffer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::AddUploadBuffer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddWorkingStorage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::AddWorkingStorage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::AttachVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelArchival {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::CancelArchival', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelRetrieval {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::CancelRetrieval', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCachediSCSIVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::CreateCachediSCSIVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNFSFileShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::CreateNFSFileShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSMBFileShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::CreateSMBFileShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::CreateSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSnapshotFromVolumeRecoveryPoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::CreateSnapshotFromVolumeRecoveryPoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStorediSCSIVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::CreateStorediSCSIVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTapes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::CreateTapes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTapeWithBarcode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::CreateTapeWithBarcode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBandwidthRateLimit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DeleteBandwidthRateLimit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChapCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DeleteChapCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFileShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DeleteFileShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DeleteGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSnapshotSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DeleteSnapshotSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTape {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DeleteTape', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTapeArchive {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DeleteTapeArchive', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DeleteVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBandwidthRateLimit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DescribeBandwidthRateLimit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCache {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DescribeCache', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCachediSCSIVolumes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DescribeCachediSCSIVolumes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeChapCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DescribeChapCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeGatewayInformation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DescribeGatewayInformation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMaintenanceStartTime {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DescribeMaintenanceStartTime', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNFSFileShares {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DescribeNFSFileShares', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSMBFileShares {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DescribeSMBFileShares', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSMBSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DescribeSMBSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSnapshotSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DescribeSnapshotSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStorediSCSIVolumes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DescribeStorediSCSIVolumes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTapeArchives {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DescribeTapeArchives', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTapeRecoveryPoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DescribeTapeRecoveryPoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTapes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DescribeTapes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUploadBuffer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DescribeUploadBuffer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVTLDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DescribeVTLDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkingStorage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DescribeWorkingStorage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DetachVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::DisableGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub JoinDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::JoinDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFileShares {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::ListFileShares', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::ListGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLocalDisks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::ListLocalDisks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTapes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::ListTapes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVolumeInitiators {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::ListVolumeInitiators', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVolumeRecoveryPoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::ListVolumeRecoveryPoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVolumes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::ListVolumes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub NotifyWhenUploaded {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::NotifyWhenUploaded', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RefreshCache {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::RefreshCache', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTagsFromResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::RemoveTagsFromResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetCache {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::ResetCache', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RetrieveTapeArchive {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::RetrieveTapeArchive', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RetrieveTapeRecoveryPoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::RetrieveTapeRecoveryPoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetLocalConsolePassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::SetLocalConsolePassword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetSMBGuestPassword {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::SetSMBGuestPassword', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ShutdownGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::ShutdownGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::StartGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBandwidthRateLimit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::UpdateBandwidthRateLimit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateChapCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::UpdateChapCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGatewayInformation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::UpdateGatewayInformation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGatewaySoftwareNow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::UpdateGatewaySoftwareNow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMaintenanceStartTime {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::UpdateMaintenanceStartTime', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNFSFileShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::UpdateNFSFileShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSMBFileShare {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::UpdateSMBFileShare', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSnapshotSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::UpdateSnapshotSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVTLDeviceType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StorageGateway::UpdateVTLDeviceType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllTapeArchives {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTapeArchives(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeTapeArchives(@_, Marker => $next_result->Marker);
        push @{ $result->TapeArchives }, @{ $next_result->TapeArchives };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'TapeArchives') foreach (@{ $result->TapeArchives });
        $result = $self->DescribeTapeArchives(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'TapeArchives') foreach (@{ $result->TapeArchives });
    }

    return undef
  }
  sub DescribeAllTapeRecoveryPoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTapeRecoveryPoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeTapeRecoveryPoints(@_, Marker => $next_result->Marker);
        push @{ $result->TapeRecoveryPointInfos }, @{ $next_result->TapeRecoveryPointInfos };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'TapeRecoveryPointInfos') foreach (@{ $result->TapeRecoveryPointInfos });
        $result = $self->DescribeTapeRecoveryPoints(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'TapeRecoveryPointInfos') foreach (@{ $result->TapeRecoveryPointInfos });
    }

    return undef
  }
  sub DescribeAllTapes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTapes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeTapes(@_, Marker => $next_result->Marker);
        push @{ $result->Tapes }, @{ $next_result->Tapes };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Tapes') foreach (@{ $result->Tapes });
        $result = $self->DescribeTapes(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Tapes') foreach (@{ $result->Tapes });
    }

    return undef
  }
  sub DescribeAllVTLDevices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVTLDevices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->DescribeVTLDevices(@_, Marker => $next_result->Marker);
        push @{ $result->VTLDevices }, @{ $next_result->VTLDevices };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'VTLDevices') foreach (@{ $result->VTLDevices });
        $result = $self->DescribeVTLDevices(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'VTLDevices') foreach (@{ $result->VTLDevices });
    }

    return undef
  }
  sub ListAllGateways {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGateways(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->ListGateways(@_, Marker => $next_result->Marker);
        push @{ $result->Gateways }, @{ $next_result->Gateways };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Gateways') foreach (@{ $result->Gateways });
        $result = $self->ListGateways(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Gateways') foreach (@{ $result->Gateways });
    }

    return undef
  }
  sub ListAllTapes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTapes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->ListTapes(@_, Marker => $next_result->Marker);
        push @{ $result->TapeInfos }, @{ $next_result->TapeInfos };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'TapeInfos') foreach (@{ $result->TapeInfos });
        $result = $self->ListTapes(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'TapeInfos') foreach (@{ $result->TapeInfos });
    }

    return undef
  }
  sub ListAllVolumes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListVolumes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->ListVolumes(@_, Marker => $next_result->Marker);
        push @{ $result->VolumeInfos }, @{ $next_result->VolumeInfos };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'VolumeInfos') foreach (@{ $result->VolumeInfos });
        $result = $self->ListVolumes(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'VolumeInfos') foreach (@{ $result->VolumeInfos });
    }

    return undef
  }


  sub operations { qw/ActivateGateway AddCache AddTagsToResource AddUploadBuffer AddWorkingStorage AttachVolume CancelArchival CancelRetrieval CreateCachediSCSIVolume CreateNFSFileShare CreateSMBFileShare CreateSnapshot CreateSnapshotFromVolumeRecoveryPoint CreateStorediSCSIVolume CreateTapes CreateTapeWithBarcode DeleteBandwidthRateLimit DeleteChapCredentials DeleteFileShare DeleteGateway DeleteSnapshotSchedule DeleteTape DeleteTapeArchive DeleteVolume DescribeBandwidthRateLimit DescribeCache DescribeCachediSCSIVolumes DescribeChapCredentials DescribeGatewayInformation DescribeMaintenanceStartTime DescribeNFSFileShares DescribeSMBFileShares DescribeSMBSettings DescribeSnapshotSchedule DescribeStorediSCSIVolumes DescribeTapeArchives DescribeTapeRecoveryPoints DescribeTapes DescribeUploadBuffer DescribeVTLDevices DescribeWorkingStorage DetachVolume DisableGateway JoinDomain ListFileShares ListGateways ListLocalDisks ListTagsForResource ListTapes ListVolumeInitiators ListVolumeRecoveryPoints ListVolumes NotifyWhenUploaded RefreshCache RemoveTagsFromResource ResetCache RetrieveTapeArchive RetrieveTapeRecoveryPoint SetLocalConsolePassword SetSMBGuestPassword ShutdownGateway StartGateway UpdateBandwidthRateLimit UpdateChapCredentials UpdateGatewayInformation UpdateGatewaySoftwareNow UpdateMaintenanceStartTime UpdateNFSFileShare UpdateSMBFileShare UpdateSnapshotSchedule UpdateVTLDeviceType / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway - Perl Interface to AWS AWS Storage Gateway

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('StorageGateway');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS Storage Gateway Service

AWS Storage Gateway is the service that connects an on-premises
software appliance with cloud-based storage to provide seamless and
secure integration between an organization's on-premises IT environment
and AWS's storage infrastructure. The service enables you to securely
upload data to the AWS cloud for cost effective backup and rapid
disaster recovery.

Use the following links to get started using the I<AWS Storage Gateway
Service API Reference>:

=over

=item *

AWS Storage Gateway Required Request Headers
(http://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#AWSStorageGatewayHTTPRequestsHeaders):
Describes the required headers that you must send with every POST
request to AWS Storage Gateway.

=item *

Signing Requests
(http://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#AWSStorageGatewaySigningRequests):
AWS Storage Gateway requires that you authenticate every request you
send; this topic describes how sign such a request.

=item *

Error Responses
(http://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#APIErrorResponses):
Provides reference information about AWS Storage Gateway errors.

=item *

Operations in AWS Storage Gateway
(http://docs.aws.amazon.com/storagegateway/latest/APIReference/API_Operations.html):
Contains detailed descriptions of all AWS Storage Gateway operations,
their request parameters, response elements, possible errors, and
examples of requests and responses.

=item *

AWS Storage Gateway Regions and Endpoints:
(http://docs.aws.amazon.com/general/latest/gr/rande.html#sg_region)
Provides a list of each AWS region and endpoints available for use with
AWS Storage Gateway.

=back

AWS Storage Gateway resource IDs are in uppercase. When you use these
resource IDs with the Amazon EC2 API, EC2 expects resource IDs in
lowercase. You must change your resource ID to lowercase to use it with
the EC2 API. For example, in Storage Gateway the ID for a volume might
be C<vol-AA22BB012345DAF670>. When you use this ID with the EC2 API,
you must change it to C<vol-aa22bb012345daf670>. Otherwise, the EC2 API
might not behave as expected.

IDs for Storage Gateway volumes and Amazon EBS snapshots created from
gateway volumes are changing to a longer format. Starting in December
2016, all new volumes and snapshots will be created with a 17-character
string. Starting in April 2016, you will be able to use these longer
IDs so you can test your systems with the new format. For more
information, see Longer EC2 and EBS Resource IDs
(https://aws.amazon.com/ec2/faqs/#longer-ids).

For example, a volume Amazon Resource Name (ARN) with the longer volume
ID format looks like the following:

C<arn:aws:storagegateway:us-west-2:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABBCCDDEEFFG>.

A snapshot ID with the longer ID format looks like the following:
C<snap-78e226633445566ee>.

For more information, see Announcement: Heads-up E<ndash> Longer AWS
Storage Gateway volume and snapshot IDs coming in 2016
(https://forums.aws.amazon.com/ann.jspa?annID=3557).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30>


=head1 METHODS

=head2 ActivateGateway

=over

=item ActivationKey => Str

=item GatewayName => Str

=item GatewayRegion => Str

=item GatewayTimezone => Str

=item [GatewayType => Str]

=item [MediumChangerType => Str]

=item [TapeDriveType => Str]


=back

Each argument is described in detail in: L<Paws::StorageGateway::ActivateGateway>

Returns: a L<Paws::StorageGateway::ActivateGatewayOutput> instance

Activates the gateway you previously deployed on your host. In the
activation process, you specify information such as the region you want
to use for storing snapshots or tapes, the time zone for scheduled
snapshots the gateway snapshot schedule window, an activation key, and
a name for your gateway. The activation process also associates your
gateway with your account; for more information, see
UpdateGatewayInformation.

You must turn on the gateway VM before you can activate your gateway.


=head2 AddCache

=over

=item DiskIds => ArrayRef[Str|Undef]

=item GatewayARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::AddCache>

Returns: a L<Paws::StorageGateway::AddCacheOutput> instance

Configures one or more gateway local disks as cache for a gateway. This
operation is only supported in the cached volume, tape and file gateway
type (see Storage Gateway Concepts
(http://docs.aws.amazon.com/storagegateway/latest/userguide/StorageGatewayConcepts.html)).

In the request, you specify the gateway Amazon Resource Name (ARN) to
which you want to add cache, and one or more disk IDs that you want to
configure as cache.


=head2 AddTagsToResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::StorageGateway::Tag>]


=back

Each argument is described in detail in: L<Paws::StorageGateway::AddTagsToResource>

Returns: a L<Paws::StorageGateway::AddTagsToResourceOutput> instance

Adds one or more tags to the specified resource. You use tags to add
metadata to resources, which you can use to categorize these resources.
For example, you can categorize resources by purpose, owner,
environment, or team. Each tag consists of a key and a value, which you
define. You can add tags to the following AWS Storage Gateway
resources:

=over

=item *

Storage gateways of all types

=back

=over

=item *

Storage Volumes

=back

=over

=item *

Virtual Tapes

=back

You can create a maximum of 10 tags for each resource. Virtual tapes
and storage volumes that are recovered to a new gateway maintain their
tags.


=head2 AddUploadBuffer

=over

=item DiskIds => ArrayRef[Str|Undef]

=item GatewayARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::AddUploadBuffer>

Returns: a L<Paws::StorageGateway::AddUploadBufferOutput> instance

Configures one or more gateway local disks as upload buffer for a
specified gateway. This operation is supported for the stored volume,
cached volume and tape gateway types.

In the request, you specify the gateway Amazon Resource Name (ARN) to
which you want to add upload buffer, and one or more disk IDs that you
want to configure as upload buffer.


=head2 AddWorkingStorage

=over

=item DiskIds => ArrayRef[Str|Undef]

=item GatewayARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::AddWorkingStorage>

Returns: a L<Paws::StorageGateway::AddWorkingStorageOutput> instance

Configures one or more gateway local disks as working storage for a
gateway. This operation is only supported in the stored volume gateway
type. This operation is deprecated in cached volume API version
20120630. Use AddUploadBuffer instead.

Working storage is also referred to as upload buffer. You can also use
the AddUploadBuffer operation to add upload buffer to a stored volume
gateway.

In the request, you specify the gateway Amazon Resource Name (ARN) to
which you want to add working storage, and one or more disk IDs that
you want to configure as working storage.


=head2 AttachVolume

=over

=item GatewayARN => Str

=item NetworkInterfaceId => Str

=item VolumeARN => Str

=item [DiskId => Str]

=item [TargetName => Str]


=back

Each argument is described in detail in: L<Paws::StorageGateway::AttachVolume>

Returns: a L<Paws::StorageGateway::AttachVolumeOutput> instance

Connects a volume to an iSCSI connection and then attaches the volume
to the specified gateway. Detaching and attaching a volume enables you
to recover your data from one gateway to a different gateway without
creating a snapshot. It also makes it easier to move your volumes from
an on-premises gateway to a gateway hosted on an Amazon EC2 instance.


=head2 CancelArchival

=over

=item GatewayARN => Str

=item TapeARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::CancelArchival>

Returns: a L<Paws::StorageGateway::CancelArchivalOutput> instance

Cancels archiving of a virtual tape to the virtual tape shelf (VTS)
after the archiving process is initiated. This operation is only
supported in the tape gateway type.


=head2 CancelRetrieval

=over

=item GatewayARN => Str

=item TapeARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::CancelRetrieval>

Returns: a L<Paws::StorageGateway::CancelRetrievalOutput> instance

Cancels retrieval of a virtual tape from the virtual tape shelf (VTS)
to a gateway after the retrieval process is initiated. The virtual tape
is returned to the VTS. This operation is only supported in the tape
gateway type.


=head2 CreateCachediSCSIVolume

=over

=item ClientToken => Str

=item GatewayARN => Str

=item NetworkInterfaceId => Str

=item TargetName => Str

=item VolumeSizeInBytes => Int

=item [KMSEncrypted => Bool]

=item [KMSKey => Str]

=item [SnapshotId => Str]

=item [SourceVolumeARN => Str]


=back

Each argument is described in detail in: L<Paws::StorageGateway::CreateCachediSCSIVolume>

Returns: a L<Paws::StorageGateway::CreateCachediSCSIVolumeOutput> instance

Creates a cached volume on a specified cached volume gateway. This
operation is only supported in the cached volume gateway type.

Cache storage must be allocated to the gateway before you can create a
cached volume. Use the AddCache operation to add cache storage to a
gateway.

In the request, you must specify the gateway, size of the volume in
bytes, the iSCSI target name, an IP address on which to expose the
target, and a unique client token. In response, the gateway creates the
volume and returns information about it. This information includes the
volume Amazon Resource Name (ARN), its size, and the iSCSI target ARN
that initiators can use to connect to the volume target.

Optionally, you can provide the ARN for an existing volume as the
C<SourceVolumeARN> for this cached volume, which creates an exact copy
of the existing volumeE<rsquo>s latest recovery point. The
C<VolumeSizeInBytes> value must be equal to or larger than the size of
the copied volume, in bytes.


=head2 CreateNFSFileShare

=over

=item ClientToken => Str

=item GatewayARN => Str

=item LocationARN => Str

=item Role => Str

=item [ClientList => ArrayRef[Str|Undef]]

=item [DefaultStorageClass => Str]

=item [GuessMIMETypeEnabled => Bool]

=item [KMSEncrypted => Bool]

=item [KMSKey => Str]

=item [NFSFileShareDefaults => L<Paws::StorageGateway::NFSFileShareDefaults>]

=item [ObjectACL => Str]

=item [ReadOnly => Bool]

=item [RequesterPays => Bool]

=item [Squash => Str]


=back

Each argument is described in detail in: L<Paws::StorageGateway::CreateNFSFileShare>

Returns: a L<Paws::StorageGateway::CreateNFSFileShareOutput> instance

Creates a Network File System (NFS) file share on an existing file
gateway. In Storage Gateway, a file share is a file system mount point
backed by Amazon S3 cloud storage. Storage Gateway exposes file shares
using a NFS interface. This operation is only supported for file
gateways.

File gateway requires AWS Security Token Service (AWS STS) to be
activated to enable you create a file share. Make sure AWS STS is
activated in the region you are creating your file gateway in. If AWS
STS is not activated in the region, activate it. For information about
how to activate AWS STS, see Activating and Deactivating AWS STS in an
AWS Region in the AWS Identity and Access Management User Guide.

File gateway does not support creating hard or symbolic links on a file
share.


=head2 CreateSMBFileShare

=over

=item ClientToken => Str

=item GatewayARN => Str

=item LocationARN => Str

=item Role => Str

=item [Authentication => Str]

=item [DefaultStorageClass => Str]

=item [GuessMIMETypeEnabled => Bool]

=item [InvalidUserList => ArrayRef[Str|Undef]]

=item [KMSEncrypted => Bool]

=item [KMSKey => Str]

=item [ObjectACL => Str]

=item [ReadOnly => Bool]

=item [RequesterPays => Bool]

=item [ValidUserList => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::StorageGateway::CreateSMBFileShare>

Returns: a L<Paws::StorageGateway::CreateSMBFileShareOutput> instance

Creates a Server Message Block (SMB) file share on an existing file
gateway. In Storage Gateway, a file share is a file system mount point
backed by Amazon S3 cloud storage. Storage Gateway expose file shares
using a SMB interface. This operation is only supported for file
gateways.

File gateways require AWS Security Token Service (AWS STS) to be
activated to enable you to create a file share. Make sure that AWS STS
is activated in the AWS Region you are creating your file gateway in.
If AWS STS is not activated in this AWS Region, activate it. For
information about how to activate AWS STS, see Activating and
Deactivating AWS STS in an AWS Region
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
in the I<AWS Identity and Access Management User Guide.>

File gateways don't support creating hard or symbolic links on a file
share.


=head2 CreateSnapshot

=over

=item SnapshotDescription => Str

=item VolumeARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::CreateSnapshot>

Returns: a L<Paws::StorageGateway::CreateSnapshotOutput> instance

Initiates a snapshot of a volume.

AWS Storage Gateway provides the ability to back up point-in-time
snapshots of your data to Amazon Simple Storage (S3) for durable
off-site recovery, as well as import the data to an Amazon Elastic
Block Store (EBS) volume in Amazon Elastic Compute Cloud (EC2). You can
take snapshots of your gateway volume on a scheduled or ad-hoc basis.
This API enables you to take ad-hoc snapshot. For more information, see
Editing a Snapshot Schedule
(http://docs.aws.amazon.com/storagegateway/latest/userguide/managing-volumes.html#SchedulingSnapshot).

In the CreateSnapshot request you identify the volume by providing its
Amazon Resource Name (ARN). You must also provide description for the
snapshot. When AWS Storage Gateway takes the snapshot of specified
volume, the snapshot and description appears in the AWS Storage Gateway
Console. In response, AWS Storage Gateway returns you a snapshot ID.
You can use this snapshot ID to check the snapshot progress or later
use it when you want to create a volume from a snapshot. This operation
is only supported in stored and cached volume gateway type.

To list or delete a snapshot, you must use the Amazon EC2 API. For more
information, see DescribeSnapshots or DeleteSnapshot in the EC2 API
reference
(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Operations.html).

Volume and snapshot IDs are changing to a longer length ID format. For
more information, see the important note on the Welcome
(http://docs.aws.amazon.com/storagegateway/latest/APIReference/Welcome.html)
page.


=head2 CreateSnapshotFromVolumeRecoveryPoint

=over

=item SnapshotDescription => Str

=item VolumeARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::CreateSnapshotFromVolumeRecoveryPoint>

Returns: a L<Paws::StorageGateway::CreateSnapshotFromVolumeRecoveryPointOutput> instance

Initiates a snapshot of a gateway from a volume recovery point. This
operation is only supported in the cached volume gateway type.

A volume recovery point is a point in time at which all data of the
volume is consistent and from which you can create a snapshot. To get a
list of volume recovery point for cached volume gateway, use
ListVolumeRecoveryPoints.

In the C<CreateSnapshotFromVolumeRecoveryPoint> request, you identify
the volume by providing its Amazon Resource Name (ARN). You must also
provide a description for the snapshot. When the gateway takes a
snapshot of the specified volume, the snapshot and its description
appear in the AWS Storage Gateway console. In response, the gateway
returns you a snapshot ID. You can use this snapshot ID to check the
snapshot progress or later use it when you want to create a volume from
a snapshot.

To list or delete a snapshot, you must use the Amazon EC2 API. For more
information, in I<Amazon Elastic Compute Cloud API Reference>.


=head2 CreateStorediSCSIVolume

=over

=item DiskId => Str

=item GatewayARN => Str

=item NetworkInterfaceId => Str

=item PreserveExistingData => Bool

=item TargetName => Str

=item [KMSEncrypted => Bool]

=item [KMSKey => Str]

=item [SnapshotId => Str]


=back

Each argument is described in detail in: L<Paws::StorageGateway::CreateStorediSCSIVolume>

Returns: a L<Paws::StorageGateway::CreateStorediSCSIVolumeOutput> instance

Creates a volume on a specified gateway. This operation is only
supported in the stored volume gateway type.

The size of the volume to create is inferred from the disk size. You
can choose to preserve existing data on the disk, create volume from an
existing snapshot, or create an empty volume. If you choose to create
an empty gateway volume, then any existing data on the disk is erased.

In the request you must specify the gateway and the disk information on
which you are creating the volume. In response, the gateway creates the
volume and returns volume information such as the volume Amazon
Resource Name (ARN), its size, and the iSCSI target ARN that initiators
can use to connect to the volume target.


=head2 CreateTapes

=over

=item ClientToken => Str

=item GatewayARN => Str

=item NumTapesToCreate => Int

=item TapeBarcodePrefix => Str

=item TapeSizeInBytes => Int

=item [KMSEncrypted => Bool]

=item [KMSKey => Str]


=back

Each argument is described in detail in: L<Paws::StorageGateway::CreateTapes>

Returns: a L<Paws::StorageGateway::CreateTapesOutput> instance

Creates one or more virtual tapes. You write data to the virtual tapes
and then archive the tapes. This operation is only supported in the
tape gateway type.

Cache storage must be allocated to the gateway before you can create
virtual tapes. Use the AddCache operation to add cache storage to a
gateway.


=head2 CreateTapeWithBarcode

=over

=item GatewayARN => Str

=item TapeBarcode => Str

=item TapeSizeInBytes => Int

=item [KMSEncrypted => Bool]

=item [KMSKey => Str]


=back

Each argument is described in detail in: L<Paws::StorageGateway::CreateTapeWithBarcode>

Returns: a L<Paws::StorageGateway::CreateTapeWithBarcodeOutput> instance

Creates a virtual tape by using your own barcode. You write data to the
virtual tape and then archive the tape. A barcode is unique and can not
be reused if it has already been used on a tape . This applies to
barcodes used on deleted tapes. This operation is only supported in the
tape gateway type.

Cache storage must be allocated to the gateway before you can create a
virtual tape. Use the AddCache operation to add cache storage to a
gateway.


=head2 DeleteBandwidthRateLimit

=over

=item BandwidthType => Str

=item GatewayARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::DeleteBandwidthRateLimit>

Returns: a L<Paws::StorageGateway::DeleteBandwidthRateLimitOutput> instance

Deletes the bandwidth rate limits of a gateway. You can delete either
the upload and download bandwidth rate limit, or you can delete both.
If you delete only one of the limits, the other limit remains
unchanged. To specify which gateway to work with, use the Amazon
Resource Name (ARN) of the gateway in your request.


=head2 DeleteChapCredentials

=over

=item InitiatorName => Str

=item TargetARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::DeleteChapCredentials>

Returns: a L<Paws::StorageGateway::DeleteChapCredentialsOutput> instance

Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials
for a specified iSCSI target and initiator pair.


=head2 DeleteFileShare

=over

=item FileShareARN => Str

=item [ForceDelete => Bool]


=back

Each argument is described in detail in: L<Paws::StorageGateway::DeleteFileShare>

Returns: a L<Paws::StorageGateway::DeleteFileShareOutput> instance

Deletes a file share from a file gateway. This operation is only
supported for file gateways.


=head2 DeleteGateway

=over

=item GatewayARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::DeleteGateway>

Returns: a L<Paws::StorageGateway::DeleteGatewayOutput> instance

Deletes a gateway. To specify which gateway to delete, use the Amazon
Resource Name (ARN) of the gateway in your request. The operation
deletes the gateway; however, it does not delete the gateway virtual
machine (VM) from your host computer.

After you delete a gateway, you cannot reactivate it. Completed
snapshots of the gateway volumes are not deleted upon deleting the
gateway, however, pending snapshots will not complete. After you delete
a gateway, your next step is to remove it from your environment.

You no longer pay software charges after the gateway is deleted;
however, your existing Amazon EBS snapshots persist and you will
continue to be billed for these snapshots. You can choose to remove all
remaining Amazon EBS snapshots by canceling your Amazon EC2
subscription. If you prefer not to cancel your Amazon EC2 subscription,
you can delete your snapshots using the Amazon EC2 console. For more
information, see the AWS Storage Gateway Detail Page
(http://aws.amazon.com/storagegateway).


=head2 DeleteSnapshotSchedule

=over

=item VolumeARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::DeleteSnapshotSchedule>

Returns: a L<Paws::StorageGateway::DeleteSnapshotScheduleOutput> instance

Deletes a snapshot of a volume.

You can take snapshots of your gateway volumes on a scheduled or ad hoc
basis. This API action enables you to delete a snapshot schedule for a
volume. For more information, see Working with Snapshots
(http://docs.aws.amazon.com/storagegateway/latest/userguide/WorkingWithSnapshots.html).
In the C<DeleteSnapshotSchedule> request, you identify the volume by
providing its Amazon Resource Name (ARN). This operation is only
supported in stored and cached volume gateway types.

To list or delete a snapshot, you must use the Amazon EC2 API. in
I<Amazon Elastic Compute Cloud API Reference>.


=head2 DeleteTape

=over

=item GatewayARN => Str

=item TapeARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::DeleteTape>

Returns: a L<Paws::StorageGateway::DeleteTapeOutput> instance

Deletes the specified virtual tape. This operation is only supported in
the tape gateway type.


=head2 DeleteTapeArchive

=over

=item TapeARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::DeleteTapeArchive>

Returns: a L<Paws::StorageGateway::DeleteTapeArchiveOutput> instance

Deletes the specified virtual tape from the virtual tape shelf (VTS).
This operation is only supported in the tape gateway type.


=head2 DeleteVolume

=over

=item VolumeARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::DeleteVolume>

Returns: a L<Paws::StorageGateway::DeleteVolumeOutput> instance

Deletes the specified storage volume that you previously created using
the CreateCachediSCSIVolume or CreateStorediSCSIVolume API. This
operation is only supported in the cached volume and stored volume
types. For stored volume gateways, the local disk that was configured
as the storage volume is not deleted. You can reuse the local disk to
create another storage volume.

Before you delete a volume, make sure there are no iSCSI connections to
the volume you are deleting. You should also make sure there is no
snapshot in progress. You can use the Amazon Elastic Compute Cloud
(Amazon EC2) API to query snapshots on the volume you are deleting and
check the snapshot status. For more information, go to
DescribeSnapshots
(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html)
in the I<Amazon Elastic Compute Cloud API Reference>.

In the request, you must provide the Amazon Resource Name (ARN) of the
storage volume you want to delete.


=head2 DescribeBandwidthRateLimit

=over

=item GatewayARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::DescribeBandwidthRateLimit>

Returns: a L<Paws::StorageGateway::DescribeBandwidthRateLimitOutput> instance

Returns the bandwidth rate limits of a gateway. By default, these
limits are not set, which means no bandwidth rate limiting is in
effect.

This operation only returns a value for a bandwidth rate limit only if
the limit is set. If no limits are set for the gateway, then this
operation returns only the gateway ARN in the response body. To specify
which gateway to describe, use the Amazon Resource Name (ARN) of the
gateway in your request.


=head2 DescribeCache

=over

=item GatewayARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::DescribeCache>

Returns: a L<Paws::StorageGateway::DescribeCacheOutput> instance

Returns information about the cache of a gateway. This operation is
only supported in the cached volume, tape and file gateway types.

The response includes disk IDs that are configured as cache, and it
includes the amount of cache allocated and used.


=head2 DescribeCachediSCSIVolumes

=over

=item VolumeARNs => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::StorageGateway::DescribeCachediSCSIVolumes>

Returns: a L<Paws::StorageGateway::DescribeCachediSCSIVolumesOutput> instance

Returns a description of the gateway volumes specified in the request.
This operation is only supported in the cached volume gateway types.

The list of gateway volumes in the request must be from one gateway. In
the response Amazon Storage Gateway returns volume information sorted
by volume Amazon Resource Name (ARN).


=head2 DescribeChapCredentials

=over

=item TargetARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::DescribeChapCredentials>

Returns: a L<Paws::StorageGateway::DescribeChapCredentialsOutput> instance

Returns an array of Challenge-Handshake Authentication Protocol (CHAP)
credentials information for a specified iSCSI target, one for each
target-initiator pair.


=head2 DescribeGatewayInformation

=over

=item GatewayARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::DescribeGatewayInformation>

Returns: a L<Paws::StorageGateway::DescribeGatewayInformationOutput> instance

Returns metadata about a gateway such as its name, network interfaces,
configured time zone, and the state (whether the gateway is running or
not). To specify which gateway to describe, use the Amazon Resource
Name (ARN) of the gateway in your request.


=head2 DescribeMaintenanceStartTime

=over

=item GatewayARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::DescribeMaintenanceStartTime>

Returns: a L<Paws::StorageGateway::DescribeMaintenanceStartTimeOutput> instance

Returns your gateway's weekly maintenance start time including the day
and time of the week. Note that values are in terms of the gateway's
time zone.


=head2 DescribeNFSFileShares

=over

=item FileShareARNList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::StorageGateway::DescribeNFSFileShares>

Returns: a L<Paws::StorageGateway::DescribeNFSFileSharesOutput> instance

Gets a description for one or more Network File System (NFS) file
shares from a file gateway. This operation is only supported for file
gateways.


=head2 DescribeSMBFileShares

=over

=item FileShareARNList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::StorageGateway::DescribeSMBFileShares>

Returns: a L<Paws::StorageGateway::DescribeSMBFileSharesOutput> instance

Gets a description for one or more Server Message Block (SMB) file
shares from a file gateway. This operation is only supported for file
gateways.


=head2 DescribeSMBSettings

=over

=item GatewayARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::DescribeSMBSettings>

Returns: a L<Paws::StorageGateway::DescribeSMBSettingsOutput> instance

Gets a description of a Server Message Block (SMB) file share settings
from a file gateway. This operation is only supported for file
gateways.


=head2 DescribeSnapshotSchedule

=over

=item VolumeARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::DescribeSnapshotSchedule>

Returns: a L<Paws::StorageGateway::DescribeSnapshotScheduleOutput> instance

Describes the snapshot schedule for the specified gateway volume. The
snapshot schedule information includes intervals at which snapshots are
automatically initiated on the volume. This operation is only supported
in the cached volume and stored volume types.


=head2 DescribeStorediSCSIVolumes

=over

=item VolumeARNs => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::StorageGateway::DescribeStorediSCSIVolumes>

Returns: a L<Paws::StorageGateway::DescribeStorediSCSIVolumesOutput> instance

Returns the description of the gateway volumes specified in the
request. The list of gateway volumes in the request must be from one
gateway. In the response Amazon Storage Gateway returns volume
information sorted by volume ARNs. This operation is only supported in
stored volume gateway type.


=head2 DescribeTapeArchives

=over

=item [Limit => Int]

=item [Marker => Str]

=item [TapeARNs => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::StorageGateway::DescribeTapeArchives>

Returns: a L<Paws::StorageGateway::DescribeTapeArchivesOutput> instance

Returns a description of specified virtual tapes in the virtual tape
shelf (VTS). This operation is only supported in the tape gateway type.

If a specific C<TapeARN> is not specified, AWS Storage Gateway returns
a description of all virtual tapes found in the VTS associated with
your account.


=head2 DescribeTapeRecoveryPoints

=over

=item GatewayARN => Str

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::StorageGateway::DescribeTapeRecoveryPoints>

Returns: a L<Paws::StorageGateway::DescribeTapeRecoveryPointsOutput> instance

Returns a list of virtual tape recovery points that are available for
the specified tape gateway.

A recovery point is a point-in-time view of a virtual tape at which all
the data on the virtual tape is consistent. If your gateway crashes,
virtual tapes that have recovery points can be recovered to a new
gateway. This operation is only supported in the tape gateway type.


=head2 DescribeTapes

=over

=item GatewayARN => Str

=item [Limit => Int]

=item [Marker => Str]

=item [TapeARNs => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::StorageGateway::DescribeTapes>

Returns: a L<Paws::StorageGateway::DescribeTapesOutput> instance

Returns a description of the specified Amazon Resource Name (ARN) of
virtual tapes. If a C<TapeARN> is not specified, returns a description
of all virtual tapes associated with the specified gateway. This
operation is only supported in the tape gateway type.


=head2 DescribeUploadBuffer

=over

=item GatewayARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::DescribeUploadBuffer>

Returns: a L<Paws::StorageGateway::DescribeUploadBufferOutput> instance

Returns information about the upload buffer of a gateway. This
operation is supported for the stored volume, cached volume and tape
gateway types.

The response includes disk IDs that are configured as upload buffer
space, and it includes the amount of upload buffer space allocated and
used.


=head2 DescribeVTLDevices

=over

=item GatewayARN => Str

=item [Limit => Int]

=item [Marker => Str]

=item [VTLDeviceARNs => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::StorageGateway::DescribeVTLDevices>

Returns: a L<Paws::StorageGateway::DescribeVTLDevicesOutput> instance

Returns a description of virtual tape library (VTL) devices for the
specified tape gateway. In the response, AWS Storage Gateway returns
VTL device information.

This operation is only supported in the tape gateway type.


=head2 DescribeWorkingStorage

=over

=item GatewayARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::DescribeWorkingStorage>

Returns: a L<Paws::StorageGateway::DescribeWorkingStorageOutput> instance

Returns information about the working storage of a gateway. This
operation is only supported in the stored volumes gateway type. This
operation is deprecated in cached volumes API version (20120630). Use
DescribeUploadBuffer instead.

Working storage is also referred to as upload buffer. You can also use
the DescribeUploadBuffer operation to add upload buffer to a stored
volume gateway.

The response includes disk IDs that are configured as working storage,
and it includes the amount of working storage allocated and used.


=head2 DetachVolume

=over

=item VolumeARN => Str

=item [ForceDetach => Bool]


=back

Each argument is described in detail in: L<Paws::StorageGateway::DetachVolume>

Returns: a L<Paws::StorageGateway::DetachVolumeOutput> instance

Disconnects a volume from an iSCSI connection and then detaches the
volume from the specified gateway. Detaching and attaching a volume
enables you to recover your data from one gateway to a different
gateway without creating a snapshot. It also makes it easier to move
your volumes from an on-premises gateway to a gateway hosted on an
Amazon EC2 instance.


=head2 DisableGateway

=over

=item GatewayARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::DisableGateway>

Returns: a L<Paws::StorageGateway::DisableGatewayOutput> instance

Disables a tape gateway when the gateway is no longer functioning. For
example, if your gateway VM is damaged, you can disable the gateway so
you can recover virtual tapes.

Use this operation for a tape gateway that is not reachable or not
functioning. This operation is only supported in the tape gateway type.

Once a gateway is disabled it cannot be enabled.


=head2 JoinDomain

=over

=item DomainName => Str

=item GatewayARN => Str

=item Password => Str

=item UserName => Str

=item [DomainControllers => ArrayRef[Str|Undef]]

=item [OrganizationalUnit => Str]


=back

Each argument is described in detail in: L<Paws::StorageGateway::JoinDomain>

Returns: a L<Paws::StorageGateway::JoinDomainOutput> instance

Adds a file gateway to an Active Directory domain. This operation is
only supported for file gateways that support the SMB file protocol.


=head2 ListFileShares

=over

=item [GatewayARN => Str]

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::StorageGateway::ListFileShares>

Returns: a L<Paws::StorageGateway::ListFileSharesOutput> instance

Gets a list of the file shares for a specific file gateway, or the list
of file shares that belong to the calling user account. This operation
is only supported for file gateways.


=head2 ListGateways

=over

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::StorageGateway::ListGateways>

Returns: a L<Paws::StorageGateway::ListGatewaysOutput> instance

Lists gateways owned by an AWS account in a region specified in the
request. The returned list is ordered by gateway Amazon Resource Name
(ARN).

By default, the operation returns a maximum of 100 gateways. This
operation supports pagination that allows you to optionally reduce the
number of gateways returned in a response.

If you have more gateways than are returned in a response (that is, the
response returns only a truncated list of your gateways), the response
contains a marker that you can specify in your next request to fetch
the next page of gateways.


=head2 ListLocalDisks

=over

=item GatewayARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::ListLocalDisks>

Returns: a L<Paws::StorageGateway::ListLocalDisksOutput> instance

Returns a list of the gateway's local disks. To specify which gateway
to describe, you use the Amazon Resource Name (ARN) of the gateway in
the body of the request.

The request returns a list of all disks, specifying which are
configured as working storage, cache storage, or stored volume or not
configured at all. The response includes a C<DiskStatus> field. This
field can have a value of present (the disk is available to use),
missing (the disk is no longer connected to the gateway), or mismatch
(the disk node is occupied by a disk that has incorrect metadata or the
disk content is corrupted).


=head2 ListTagsForResource

=over

=item ResourceARN => Str

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::StorageGateway::ListTagsForResource>

Returns: a L<Paws::StorageGateway::ListTagsForResourceOutput> instance

Lists the tags that have been added to the specified resource. This
operation is only supported in the cached volume, stored volume and
tape gateway type.


=head2 ListTapes

=over

=item [Limit => Int]

=item [Marker => Str]

=item [TapeARNs => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::StorageGateway::ListTapes>

Returns: a L<Paws::StorageGateway::ListTapesOutput> instance

Lists virtual tapes in your virtual tape library (VTL) and your virtual
tape shelf (VTS). You specify the tapes to list by specifying one or
more tape Amazon Resource Names (ARNs). If you don't specify a tape
ARN, the operation lists all virtual tapes in both your VTL and VTS.

This operation supports pagination. By default, the operation returns a
maximum of up to 100 tapes. You can optionally specify the C<Limit>
parameter in the body to limit the number of tapes in the response. If
the number of tapes returned in the response is truncated, the response
includes a C<Marker> element that you can use in your subsequent
request to retrieve the next set of tapes. This operation is only
supported in the tape gateway type.


=head2 ListVolumeInitiators

=over

=item VolumeARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::ListVolumeInitiators>

Returns: a L<Paws::StorageGateway::ListVolumeInitiatorsOutput> instance

Lists iSCSI initiators that are connected to a volume. You can use this
operation to determine whether a volume is being used or not. This
operation is only supported in the cached volume and stored volume
gateway types.


=head2 ListVolumeRecoveryPoints

=over

=item GatewayARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::ListVolumeRecoveryPoints>

Returns: a L<Paws::StorageGateway::ListVolumeRecoveryPointsOutput> instance

Lists the recovery points for a specified gateway. This operation is
only supported in the cached volume gateway type.

Each cache volume has one recovery point. A volume recovery point is a
point in time at which all data of the volume is consistent and from
which you can create a snapshot or clone a new cached volume from a
source volume. To create a snapshot from a volume recovery point use
the CreateSnapshotFromVolumeRecoveryPoint operation.


=head2 ListVolumes

=over

=item [GatewayARN => Str]

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::StorageGateway::ListVolumes>

Returns: a L<Paws::StorageGateway::ListVolumesOutput> instance

Lists the iSCSI stored volumes of a gateway. Results are sorted by
volume ARN. The response includes only the volume ARNs. If you want
additional volume information, use the DescribeStorediSCSIVolumes or
the DescribeCachediSCSIVolumes API.

The operation supports pagination. By default, the operation returns a
maximum of up to 100 volumes. You can optionally specify the C<Limit>
field in the body to limit the number of volumes in the response. If
the number of volumes returned in the response is truncated, the
response includes a Marker field. You can use this Marker value in your
subsequent request to retrieve the next set of volumes. This operation
is only supported in the cached volume and stored volume gateway types.


=head2 NotifyWhenUploaded

=over

=item FileShareARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::NotifyWhenUploaded>

Returns: a L<Paws::StorageGateway::NotifyWhenUploadedOutput> instance

Sends you notification through CloudWatch Events when all files written
to your NFS file share have been uploaded to Amazon S3.

AWS Storage Gateway can send a notification through Amazon CloudWatch
Events when all files written to your file share up to that point in
time have been uploaded to Amazon S3. These files include files written
to the NFS file share up to the time that you make a request for
notification. When the upload is done, Storage Gateway sends you
notification through an Amazon CloudWatch Event. You can configure
CloudWatch Events to send the notification through event targets such
as Amazon SNS or AWS Lambda function. This operation is only supported
for file gateways.

For more information, see Getting File Upload Notification in the
Storage Gateway User Guide
(https://docs.aws.amazon.com/storagegateway/latest/userguide/monitoring-file-gateway.html#get-upload-notification).


=head2 RefreshCache

=over

=item FileShareARN => Str

=item [FolderList => ArrayRef[Str|Undef]]

=item [Recursive => Bool]


=back

Each argument is described in detail in: L<Paws::StorageGateway::RefreshCache>

Returns: a L<Paws::StorageGateway::RefreshCacheOutput> instance

Refreshes the cache for the specified file share. This operation finds
objects in the Amazon S3 bucket that were added, removed or replaced
since the gateway last listed the bucket's contents and cached the
results. This operation is only supported in the file gateway type. You
can subscribe to be notified through an Amazon CloudWatch event when
your RefreshCache operation completes. For more information, see
Getting Notified About File Operations
(https://docs.aws.amazon.com/storagegateway/latest/userguide/monitoring-file-gateway.html#get-notification).


=head2 RemoveTagsFromResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::StorageGateway::RemoveTagsFromResource>

Returns: a L<Paws::StorageGateway::RemoveTagsFromResourceOutput> instance

Removes one or more tags from the specified resource. This operation is
only supported in the cached volume, stored volume and tape gateway
types.


=head2 ResetCache

=over

=item GatewayARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::ResetCache>

Returns: a L<Paws::StorageGateway::ResetCacheOutput> instance

Resets all cache disks that have encountered a error and makes the
disks available for reconfiguration as cache storage. If your cache
disk encounters a error, the gateway prevents read and write operations
on virtual tapes in the gateway. For example, an error can occur when a
disk is corrupted or removed from the gateway. When a cache is reset,
the gateway loses its cache storage. At this point you can reconfigure
the disks as cache disks. This operation is only supported in the
cached volume and tape types.

If the cache disk you are resetting contains data that has not been
uploaded to Amazon S3 yet, that data can be lost. After you reset cache
disks, there will be no configured cache disks left in the gateway, so
you must configure at least one new cache disk for your gateway to
function properly.


=head2 RetrieveTapeArchive

=over

=item GatewayARN => Str

=item TapeARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::RetrieveTapeArchive>

Returns: a L<Paws::StorageGateway::RetrieveTapeArchiveOutput> instance

Retrieves an archived virtual tape from the virtual tape shelf (VTS) to
a tape gateway. Virtual tapes archived in the VTS are not associated
with any gateway. However after a tape is retrieved, it is associated
with a gateway, even though it is also listed in the VTS, that is,
archive. This operation is only supported in the tape gateway type.

Once a tape is successfully retrieved to a gateway, it cannot be
retrieved again to another gateway. You must archive the tape again
before you can retrieve it to another gateway. This operation is only
supported in the tape gateway type.


=head2 RetrieveTapeRecoveryPoint

=over

=item GatewayARN => Str

=item TapeARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::RetrieveTapeRecoveryPoint>

Returns: a L<Paws::StorageGateway::RetrieveTapeRecoveryPointOutput> instance

Retrieves the recovery point for the specified virtual tape. This
operation is only supported in the tape gateway type.

A recovery point is a point in time view of a virtual tape at which all
the data on the tape is consistent. If your gateway crashes, virtual
tapes that have recovery points can be recovered to a new gateway.

The virtual tape can be retrieved to only one gateway. The retrieved
tape is read-only. The virtual tape can be retrieved to only a tape
gateway. There is no charge for retrieving recovery points.


=head2 SetLocalConsolePassword

=over

=item GatewayARN => Str

=item LocalConsolePassword => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::SetLocalConsolePassword>

Returns: a L<Paws::StorageGateway::SetLocalConsolePasswordOutput> instance

Sets the password for your VM local console. When you log in to the
local console for the first time, you log in to the VM with the default
credentials. We recommend that you set a new password. You don't need
to know the default password to set a new password.


=head2 SetSMBGuestPassword

=over

=item GatewayARN => Str

=item Password => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::SetSMBGuestPassword>

Returns: a L<Paws::StorageGateway::SetSMBGuestPasswordOutput> instance

Sets the password for the guest user C<smbguest>. The C<smbguest> user
is the user when the authentication method for the file share is set to
C<GuestAccess>.


=head2 ShutdownGateway

=over

=item GatewayARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::ShutdownGateway>

Returns: a L<Paws::StorageGateway::ShutdownGatewayOutput> instance

Shuts down a gateway. To specify which gateway to shut down, use the
Amazon Resource Name (ARN) of the gateway in the body of your request.

The operation shuts down the gateway service component running in the
gateway's virtual machine (VM) and not the host VM.

If you want to shut down the VM, it is recommended that you first shut
down the gateway component in the VM to avoid unpredictable conditions.

After the gateway is shutdown, you cannot call any other API except
StartGateway, DescribeGatewayInformation, and ListGateways. For more
information, see ActivateGateway. Your applications cannot read from or
write to the gateway's storage volumes, and there are no snapshots
taken.

When you make a shutdown request, you will get a C<200 OK> success
response immediately. However, it might take some time for the gateway
to shut down. You can call the DescribeGatewayInformation API to check
the status. For more information, see ActivateGateway.

If do not intend to use the gateway again, you must delete the gateway
(using DeleteGateway) to no longer pay software charges associated with
the gateway.


=head2 StartGateway

=over

=item GatewayARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::StartGateway>

Returns: a L<Paws::StorageGateway::StartGatewayOutput> instance

Starts a gateway that you previously shut down (see ShutdownGateway).
After the gateway starts, you can then make other API calls, your
applications can read from or write to the gateway's storage volumes
and you will be able to take snapshot backups.

When you make a request, you will get a 200 OK success response
immediately. However, it might take some time for the gateway to be
ready. You should call DescribeGatewayInformation and check the status
before making any additional API calls. For more information, see
ActivateGateway.

To specify which gateway to start, use the Amazon Resource Name (ARN)
of the gateway in your request.


=head2 UpdateBandwidthRateLimit

=over

=item GatewayARN => Str

=item [AverageDownloadRateLimitInBitsPerSec => Int]

=item [AverageUploadRateLimitInBitsPerSec => Int]


=back

Each argument is described in detail in: L<Paws::StorageGateway::UpdateBandwidthRateLimit>

Returns: a L<Paws::StorageGateway::UpdateBandwidthRateLimitOutput> instance

Updates the bandwidth rate limits of a gateway. You can update both the
upload and download bandwidth rate limit or specify only one of the
two. If you don't set a bandwidth rate limit, the existing rate limit
remains.

By default, a gateway's bandwidth rate limits are not set. If you don't
set any limit, the gateway does not have any limitations on its
bandwidth usage and could potentially use the maximum available
bandwidth.

To specify which gateway to update, use the Amazon Resource Name (ARN)
of the gateway in your request.


=head2 UpdateChapCredentials

=over

=item InitiatorName => Str

=item SecretToAuthenticateInitiator => Str

=item TargetARN => Str

=item [SecretToAuthenticateTarget => Str]


=back

Each argument is described in detail in: L<Paws::StorageGateway::UpdateChapCredentials>

Returns: a L<Paws::StorageGateway::UpdateChapCredentialsOutput> instance

Updates the Challenge-Handshake Authentication Protocol (CHAP)
credentials for a specified iSCSI target. By default, a gateway does
not have CHAP enabled; however, for added security, you might use it.

When you update CHAP credentials, all existing connections on the
target are closed and initiators must reconnect with the new
credentials.


=head2 UpdateGatewayInformation

=over

=item GatewayARN => Str

=item [GatewayName => Str]

=item [GatewayTimezone => Str]


=back

Each argument is described in detail in: L<Paws::StorageGateway::UpdateGatewayInformation>

Returns: a L<Paws::StorageGateway::UpdateGatewayInformationOutput> instance

Updates a gateway's metadata, which includes the gateway's name and
time zone. To specify which gateway to update, use the Amazon Resource
Name (ARN) of the gateway in your request.

For Gateways activated after September 2, 2015, the gateway's ARN
contains the gateway ID rather than the gateway name. However, changing
the name of the gateway has no effect on the gateway's ARN.


=head2 UpdateGatewaySoftwareNow

=over

=item GatewayARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::UpdateGatewaySoftwareNow>

Returns: a L<Paws::StorageGateway::UpdateGatewaySoftwareNowOutput> instance

Updates the gateway virtual machine (VM) software. The request
immediately triggers the software update.

When you make this request, you get a C<200 OK> success response
immediately. However, it might take some time for the update to
complete. You can call DescribeGatewayInformation to verify the gateway
is in the C<STATE_RUNNING> state.

A software update forces a system restart of your gateway. You can
minimize the chance of any disruption to your applications by
increasing your iSCSI Initiators' timeouts. For more information about
increasing iSCSI Initiator timeouts for Windows and Linux, see
Customizing Your Windows iSCSI Settings
(http://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorWindowsClient.html#CustomizeWindowsiSCSISettings)
and Customizing Your Linux iSCSI Settings
(http://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorRedHatClient.html#CustomizeLinuxiSCSISettings),
respectively.


=head2 UpdateMaintenanceStartTime

=over

=item DayOfWeek => Int

=item GatewayARN => Str

=item HourOfDay => Int

=item MinuteOfHour => Int


=back

Each argument is described in detail in: L<Paws::StorageGateway::UpdateMaintenanceStartTime>

Returns: a L<Paws::StorageGateway::UpdateMaintenanceStartTimeOutput> instance

Updates a gateway's weekly maintenance start time information,
including day and time of the week. The maintenance time is the time in
your gateway's time zone.


=head2 UpdateNFSFileShare

=over

=item FileShareARN => Str

=item [ClientList => ArrayRef[Str|Undef]]

=item [DefaultStorageClass => Str]

=item [GuessMIMETypeEnabled => Bool]

=item [KMSEncrypted => Bool]

=item [KMSKey => Str]

=item [NFSFileShareDefaults => L<Paws::StorageGateway::NFSFileShareDefaults>]

=item [ObjectACL => Str]

=item [ReadOnly => Bool]

=item [RequesterPays => Bool]

=item [Squash => Str]


=back

Each argument is described in detail in: L<Paws::StorageGateway::UpdateNFSFileShare>

Returns: a L<Paws::StorageGateway::UpdateNFSFileShareOutput> instance

Updates a Network File System (NFS) file share. This operation is only
supported in the file gateway type.

To leave a file share field unchanged, set the corresponding input
field to null.

Updates the following file share setting:

=over

=item *

Default storage class for your S3 bucket

=item *

Metadata defaults for your S3 bucket

=item *

Allowed NFS clients for your file share

=item *

Squash settings

=item *

Write status of your file share

=back

To leave a file share field unchanged, set the corresponding input
field to null. This operation is only supported in file gateways.


=head2 UpdateSMBFileShare

=over

=item FileShareARN => Str

=item [DefaultStorageClass => Str]

=item [GuessMIMETypeEnabled => Bool]

=item [InvalidUserList => ArrayRef[Str|Undef]]

=item [KMSEncrypted => Bool]

=item [KMSKey => Str]

=item [ObjectACL => Str]

=item [ReadOnly => Bool]

=item [RequesterPays => Bool]

=item [ValidUserList => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::StorageGateway::UpdateSMBFileShare>

Returns: a L<Paws::StorageGateway::UpdateSMBFileShareOutput> instance

Updates a Server Message Block (SMB) file share.

To leave a file share field unchanged, set the corresponding input
field to null. This operation is only supported for file gateways.

File gateways require AWS Security Token Service (AWS STS) to be
activated to enable you to create a file share. Make sure that AWS STS
is activated in the AWS Region you are creating your file gateway in.
If AWS STS is not activated in this AWS Region, activate it. For
information about how to activate AWS STS, see Activating and
Deactivating AWS STS in an AWS Region
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
in the I<AWS Identity and Access Management User Guide.>

File gateways don't support creating hard or symbolic links on a file
share.


=head2 UpdateSnapshotSchedule

=over

=item RecurrenceInHours => Int

=item StartAt => Int

=item VolumeARN => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::StorageGateway::UpdateSnapshotSchedule>

Returns: a L<Paws::StorageGateway::UpdateSnapshotScheduleOutput> instance

Updates a snapshot schedule configured for a gateway volume. This
operation is only supported in the cached volume and stored volume
gateway types.

The default snapshot schedule for volume is once every 24 hours,
starting at the creation time of the volume. You can use this API to
change the snapshot schedule configured for the volume.

In the request you must identify the gateway volume whose snapshot
schedule you want to update, and the schedule information, including
when you want the snapshot to begin on a day and the frequency (in
hours) of snapshots.


=head2 UpdateVTLDeviceType

=over

=item DeviceType => Str

=item VTLDeviceARN => Str


=back

Each argument is described in detail in: L<Paws::StorageGateway::UpdateVTLDeviceType>

Returns: a L<Paws::StorageGateway::UpdateVTLDeviceTypeOutput> instance

Updates the type of medium changer in a tape gateway. When you activate
a tape gateway, you select a medium changer type for the tape gateway.
This operation enables you to select a different type of medium changer
after a tape gateway is activated. This operation is only supported in
the tape gateway type.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllTapeArchives(sub { },[Limit => Int, Marker => Str, TapeARNs => ArrayRef[Str|Undef]])

=head2 DescribeAllTapeArchives([Limit => Int, Marker => Str, TapeARNs => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TapeArchives, passing the object as the first parameter, and the string 'TapeArchives' as the second parameter 

If not, it will return a a L<Paws::StorageGateway::DescribeTapeArchivesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTapeRecoveryPoints(sub { },GatewayARN => Str, [Limit => Int, Marker => Str])

=head2 DescribeAllTapeRecoveryPoints(GatewayARN => Str, [Limit => Int, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TapeRecoveryPointInfos, passing the object as the first parameter, and the string 'TapeRecoveryPointInfos' as the second parameter 

If not, it will return a a L<Paws::StorageGateway::DescribeTapeRecoveryPointsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTapes(sub { },GatewayARN => Str, [Limit => Int, Marker => Str, TapeARNs => ArrayRef[Str|Undef]])

=head2 DescribeAllTapes(GatewayARN => Str, [Limit => Int, Marker => Str, TapeARNs => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tapes, passing the object as the first parameter, and the string 'Tapes' as the second parameter 

If not, it will return a a L<Paws::StorageGateway::DescribeTapesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVTLDevices(sub { },GatewayARN => Str, [Limit => Int, Marker => Str, VTLDeviceARNs => ArrayRef[Str|Undef]])

=head2 DescribeAllVTLDevices(GatewayARN => Str, [Limit => Int, Marker => Str, VTLDeviceARNs => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VTLDevices, passing the object as the first parameter, and the string 'VTLDevices' as the second parameter 

If not, it will return a a L<Paws::StorageGateway::DescribeVTLDevicesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGateways(sub { },[Limit => Int, Marker => Str])

=head2 ListAllGateways([Limit => Int, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Gateways, passing the object as the first parameter, and the string 'Gateways' as the second parameter 

If not, it will return a a L<Paws::StorageGateway::ListGatewaysOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTapes(sub { },[Limit => Int, Marker => Str, TapeARNs => ArrayRef[Str|Undef]])

=head2 ListAllTapes([Limit => Int, Marker => Str, TapeARNs => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TapeInfos, passing the object as the first parameter, and the string 'TapeInfos' as the second parameter 

If not, it will return a a L<Paws::StorageGateway::ListTapesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllVolumes(sub { },[GatewayARN => Str, Limit => Int, Marker => Str])

=head2 ListAllVolumes([GatewayARN => Str, Limit => Int, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VolumeInfos, passing the object as the first parameter, and the string 'VolumeInfos' as the second parameter 

If not, it will return a a L<Paws::StorageGateway::ListVolumesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

