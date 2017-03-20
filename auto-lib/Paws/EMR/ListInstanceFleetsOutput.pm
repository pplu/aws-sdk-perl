
package Paws::EMR::ListInstanceFleetsOutput;
  use Moose;
  has InstanceFleets => (is => 'ro', isa => 'ArrayRef[Paws::EMR::InstanceFleet]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListInstanceFleetsOutput

=head1 ATTRIBUTES


=head2 InstanceFleets => ArrayRef[L<Paws::EMR::InstanceFleet>]

The list of instance fleets for the cluster and given filters.


=head2 Marker => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 _request_id => Str


=cut

1;