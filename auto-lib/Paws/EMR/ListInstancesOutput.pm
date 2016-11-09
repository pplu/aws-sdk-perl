
package Paws::EMR::ListInstancesOutput;
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Instance]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListInstancesOutput

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[L<Paws::EMR::Instance>]

The list of instances for the cluster and given filters.


=head2 Marker => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 _request_id => Str


=cut

1;