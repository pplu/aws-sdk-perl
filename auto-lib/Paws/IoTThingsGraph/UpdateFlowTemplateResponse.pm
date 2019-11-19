# Generated from json/callresult_class.tt

package Paws::IoTThingsGraph::UpdateFlowTemplateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_FlowTemplateSummary/;
  has Summary => (is => 'ro', isa => IoTThingsGraph_FlowTemplateSummary);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Summary' => 'summary'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Summary' => {
                              'class' => 'Paws::IoTThingsGraph::FlowTemplateSummary',
                              'type' => 'IoTThingsGraph_FlowTemplateSummary'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::UpdateFlowTemplateResponse

=head1 ATTRIBUTES


=head2 Summary => IoTThingsGraph_FlowTemplateSummary

An object containing summary information about the updated workflow.


=head2 _request_id => Str


=cut

1;