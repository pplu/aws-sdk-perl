
package Paws::EMR::ListBootstrapActionsOutput;
  use Moose;
  has BootstrapActions => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Command]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListBootstrapActionsOutput

=head1 ATTRIBUTES


=head2 BootstrapActions => ArrayRef[L<Paws::EMR::Command>]

The bootstrap actions associated with the cluster.


=head2 Marker => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 _request_id => Str


=cut

1;