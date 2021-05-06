
package Paws::Config::DeliverConfigSnapshotResponse;
  use Moose;
  has ConfigSnapshotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configSnapshotId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DeliverConfigSnapshotResponse

=head1 ATTRIBUTES


=head2 ConfigSnapshotId => Str

The ID of the snapshot that is being created.


=head2 _request_id => Str


=cut

1;