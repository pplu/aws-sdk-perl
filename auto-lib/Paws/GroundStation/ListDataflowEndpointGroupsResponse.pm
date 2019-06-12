
package Paws::GroundStation::ListDataflowEndpointGroupsResponse;
  use Moose;
  has DataflowEndpointGroupList => (is => 'ro', isa => 'ArrayRef[Paws::GroundStation::DataflowEndpointListItem]', traits => ['NameInRequest'], request_name => 'dataflowEndpointGroupList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ListDataflowEndpointGroupsResponse

=head1 ATTRIBUTES


=head2 DataflowEndpointGroupList => ArrayRef[L<Paws::GroundStation::DataflowEndpointListItem>]

A list of dataflow endpoint groups.


=head2 NextToken => Str

Next token returned in the response of a previous
C<ListDataflowEndpointGroups> call. Used to get the next page of
results.


=head2 _request_id => Str


=cut

