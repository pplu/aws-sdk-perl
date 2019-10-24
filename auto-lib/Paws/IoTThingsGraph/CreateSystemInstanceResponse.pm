# Generated from json/callresult_class.tt

package Paws::IoTThingsGraph::CreateSystemInstanceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_SystemInstanceSummary/;
  has Summary => (is => 'ro', isa => IoTThingsGraph_SystemInstanceSummary);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Summary' => {
                              'class' => 'Paws::IoTThingsGraph::SystemInstanceSummary',
                              'type' => 'IoTThingsGraph_SystemInstanceSummary'
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

Paws::IoTThingsGraph::CreateSystemInstanceResponse

=head1 ATTRIBUTES


=head2 Summary => IoTThingsGraph_SystemInstanceSummary

The summary object that describes the new system instance.


=head2 _request_id => Str


=cut

1;