
package Paws::StorageGateway::CreateStorediSCSIVolumeOutput;
  use Moose;
  has TargetARN => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeSizeInBytes => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CreateStorediSCSIVolumeOutput

=head1 ATTRIBUTES


=head2 TargetARN => Str

The Amazon Resource Name (ARN) of the volume target, which includes the
iSCSI name that initiators can use to connect to the target.


=head2 VolumeARN => Str

The Amazon Resource Name (ARN) of the configured volume.


=head2 VolumeSizeInBytes => Int

The size of the volume in bytes.


=head2 _request_id => Str


=cut

1;