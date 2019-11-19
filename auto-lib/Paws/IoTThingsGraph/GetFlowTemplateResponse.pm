# Generated from json/callresult_class.tt

package Paws::IoTThingsGraph::GetFlowTemplateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_FlowTemplateDescription/;
  has Description => (is => 'ro', isa => IoTThingsGraph_FlowTemplateDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Description' => {
                                  'type' => 'IoTThingsGraph_FlowTemplateDescription',
                                  'class' => 'Paws::IoTThingsGraph::FlowTemplateDescription'
                                }
             },
  'NameInRequest' => {
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::GetFlowTemplateResponse

=head1 ATTRIBUTES


=head2 Description => IoTThingsGraph_FlowTemplateDescription

The object that describes the specified workflow.


=head2 _request_id => Str


=cut

1;