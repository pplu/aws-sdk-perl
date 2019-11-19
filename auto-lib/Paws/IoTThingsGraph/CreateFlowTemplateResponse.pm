# Generated from json/callresult_class.tt

package Paws::IoTThingsGraph::CreateFlowTemplateResponse;
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
               'Summary' => {
                              'type' => 'IoTThingsGraph_FlowTemplateSummary',
                              'class' => 'Paws::IoTThingsGraph::FlowTemplateSummary'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::CreateFlowTemplateResponse

=head1 ATTRIBUTES


=head2 Summary => IoTThingsGraph_FlowTemplateSummary

The summary object that describes the created workflow.


=head2 _request_id => Str


=cut

1;