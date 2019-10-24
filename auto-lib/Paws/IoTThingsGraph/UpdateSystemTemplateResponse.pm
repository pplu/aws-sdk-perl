# Generated from json/callresult_class.tt

package Paws::IoTThingsGraph::UpdateSystemTemplateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_SystemTemplateSummary/;
  has Summary => (is => 'ro', isa => IoTThingsGraph_SystemTemplateSummary);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Summary' => {
                              'class' => 'Paws::IoTThingsGraph::SystemTemplateSummary',
                              'type' => 'IoTThingsGraph_SystemTemplateSummary'
                            }
             },
  'NameInRequest' => {
                       'Summary' => 'summary'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::UpdateSystemTemplateResponse

=head1 ATTRIBUTES


=head2 Summary => IoTThingsGraph_SystemTemplateSummary

An object containing summary information about the updated system.


=head2 _request_id => Str


=cut

1;