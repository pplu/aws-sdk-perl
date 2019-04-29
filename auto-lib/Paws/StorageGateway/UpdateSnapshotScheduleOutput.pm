
package Paws::StorageGateway::UpdateSnapshotScheduleOutput;
  use Moose;
  has VolumeARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::UpdateSnapshotScheduleOutput

=head1 ATTRIBUTES


=head2 VolumeARN => Str

The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
operation to return a list of gateway volumes.


=head2 _request_id => Str


=cut

1;