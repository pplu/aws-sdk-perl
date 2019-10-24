
package Paws::GroundStation::DataflowEndpointGroupIdResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GroundStation::Types qw//;
  has DataflowEndpointGroupId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DataflowEndpointGroupId' => {
                                              'type' => 'Str'
                                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DataflowEndpointGroupId' => 'dataflowEndpointGroupId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::DataflowEndpointGroupIdResponse

=head1 ATTRIBUTES


=head2 DataflowEndpointGroupId => Str

ID of a dataflow endpoint group.


=head2 _request_id => Str


=cut

