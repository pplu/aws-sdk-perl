
package Paws::Config::DeliverConfigSnapshotResponse;
  use Moose;
  has ConfigSnapshotId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'configSnapshotId' );


### main pod documentation begin ###

=head1 NAME

Paws::Config::DeliverConfigSnapshotResponse

=head1 ATTRIBUTES

=head2 ConfigSnapshotId => Str

  The ID of the snapshot that is being created.


=cut

1;