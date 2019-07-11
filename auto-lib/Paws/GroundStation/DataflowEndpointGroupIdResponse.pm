
package Paws::GroundStation::DataflowEndpointGroupIdResponse;
  use Moose;
  has DataflowEndpointGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataflowEndpointGroupId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::DataflowEndpointGroupIdResponse

=head1 ATTRIBUTES


=head2 DataflowEndpointGroupId => Str

ID of a dataflow endpoint group.


=head2 _request_id => Str


=cut

