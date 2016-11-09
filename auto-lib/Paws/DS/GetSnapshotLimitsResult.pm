
package Paws::DS::GetSnapshotLimitsResult;
  use Moose;
  has SnapshotLimits => (is => 'ro', isa => 'Paws::DS::SnapshotLimits');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::GetSnapshotLimitsResult

=head1 ATTRIBUTES


=head2 SnapshotLimits => L<Paws::DS::SnapshotLimits>

A SnapshotLimits object that contains the manual snapshot limits for
the specified directory.


=head2 _request_id => Str


=cut

1;