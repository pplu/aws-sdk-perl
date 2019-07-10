
package Paws::StorageGateway::DeleteSnapshotScheduleOutput;
  use Moose;
  has VolumeARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DeleteSnapshotScheduleOutput

=head1 ATTRIBUTES


=head2 VolumeARN => Str

The volume which snapshot schedule was deleted.


=head2 _request_id => Str


=cut

1;