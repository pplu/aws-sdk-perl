
package Paws::StorageGateway::CreateStorediSCSIVolumeOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has TargetARN => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeSizeInBytes => (is => 'ro', isa => 'Num');

}

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CreateStorediSCSIVolumeOutput

=head1 ATTRIBUTES

=head2 TargetARN => Str

  

he Amazon Resource Name (ARN) of the volume target that includes the
iSCSI name that initiators can use to connect to the target.









=head2 VolumeARN => Str

  

The Amazon Resource Name (ARN) of the configured volume.









=head2 VolumeSizeInBytes => Num

  

The size of the volume in bytes.











=cut

1;