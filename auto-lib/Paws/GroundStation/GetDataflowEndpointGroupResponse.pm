
package Paws::GroundStation::GetDataflowEndpointGroupResponse;
  use Moose;
  has DataflowEndpointGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataflowEndpointGroupArn');
  has DataflowEndpointGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataflowEndpointGroupId');
  has EndpointsDetails => (is => 'ro', isa => 'ArrayRef[Paws::GroundStation::EndpointDetails]', traits => ['NameInRequest'], request_name => 'endpointsDetails');
  has Tags => (is => 'ro', isa => 'Paws::GroundStation::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::GetDataflowEndpointGroupResponse

=head1 ATTRIBUTES


=head2 DataflowEndpointGroupArn => Str

ARN of a dataflow endpoint group.


=head2 DataflowEndpointGroupId => Str

UUID of a dataflow endpoint group.


=head2 EndpointsDetails => ArrayRef[L<Paws::GroundStation::EndpointDetails>]

Details of a dataflow endpoint.


=head2 Tags => L<Paws::GroundStation::TagsMap>

Tags assigned to a dataflow endpoint group.


=head2 _request_id => Str


=cut

