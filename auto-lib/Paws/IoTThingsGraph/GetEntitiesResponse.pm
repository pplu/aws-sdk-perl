# Generated from json/callresult_class.tt

package Paws::IoTThingsGraph::GetEntitiesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_EntityDescription/;
  has Descriptions => (is => 'ro', isa => ArrayRef[IoTThingsGraph_EntityDescription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Descriptions' => {
                                   'class' => 'Paws::IoTThingsGraph::EntityDescription',
                                   'type' => 'ArrayRef[IoTThingsGraph_EntityDescription]'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Descriptions' => 'descriptions'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::GetEntitiesResponse

=head1 ATTRIBUTES


=head2 Descriptions => ArrayRef[IoTThingsGraph_EntityDescription]

An array of descriptions for the specified entities.


=head2 _request_id => Str


=cut

1;