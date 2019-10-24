
package Paws::GroundStation::GetDataflowEndpointGroupResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GroundStation::Types qw/GroundStation_EndpointDetails GroundStation_TagsMap/;
  has DataflowEndpointGroupArn => (is => 'ro', isa => Str);
  has DataflowEndpointGroupId => (is => 'ro', isa => Str);
  has EndpointsDetails => (is => 'ro', isa => ArrayRef[GroundStation_EndpointDetails]);
  has Tags => (is => 'ro', isa => GroundStation_TagsMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DataflowEndpointGroupArn' => {
                                               'type' => 'Str'
                                             },
               'DataflowEndpointGroupId' => {
                                              'type' => 'Str'
                                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::GroundStation::TagsMap',
                           'type' => 'GroundStation_TagsMap'
                         },
               'EndpointsDetails' => {
                                       'class' => 'Paws::GroundStation::EndpointDetails',
                                       'type' => 'ArrayRef[GroundStation_EndpointDetails]'
                                     }
             },
  'NameInRequest' => {
                       'DataflowEndpointGroupArn' => 'dataflowEndpointGroupArn',
                       'DataflowEndpointGroupId' => 'dataflowEndpointGroupId',
                       'Tags' => 'tags',
                       'EndpointsDetails' => 'endpointsDetails'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::GetDataflowEndpointGroupResponse

=head1 ATTRIBUTES


=head2 DataflowEndpointGroupArn => Str

ARN of a dataflow endpoint group.


=head2 DataflowEndpointGroupId => Str

UUID of a dataflow endpoint group.


=head2 EndpointsDetails => ArrayRef[GroundStation_EndpointDetails]

Details of a dataflow endpoint.


=head2 Tags => GroundStation_TagsMap

Tags assigned to a dataflow endpoint group.


=head2 _request_id => Str


=cut

