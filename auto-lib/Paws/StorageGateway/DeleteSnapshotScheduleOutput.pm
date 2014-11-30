
package Paws::StorageGateway::DeleteSnapshotScheduleOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has VolumeARN => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DeleteSnapshotScheduleOutput

=head1 ATTRIBUTES

=head2 VolumeARN => Str

  


=cut

1;