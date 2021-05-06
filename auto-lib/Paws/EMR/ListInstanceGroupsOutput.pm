
package Paws::EMR::ListInstanceGroupsOutput;
  use Moose;
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Paws::EMR::InstanceGroup]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListInstanceGroupsOutput

=head1 ATTRIBUTES


=head2 InstanceGroups => ArrayRef[L<Paws::EMR::InstanceGroup>]

The list of instance groups for the cluster and given filters.


=head2 Marker => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 _request_id => Str


=cut

1;