
package Paws::EBS::CompleteSnapshotResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EBS::CompleteSnapshotResponse

=head1 ATTRIBUTES


=head2 Status => Str

The status of the snapshot.

Valid values are: C<"completed">, C<"pending">, C<"error">
=head2 _request_id => Str


=cut

