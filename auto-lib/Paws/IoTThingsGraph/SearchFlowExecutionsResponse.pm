# Generated from json/callresult_class.tt

package Paws::IoTThingsGraph::SearchFlowExecutionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_FlowExecutionSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Summaries => (is => 'ro', isa => ArrayRef[IoTThingsGraph_FlowExecutionSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Summaries' => 'summaries',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Summaries' => {
                                'class' => 'Paws::IoTThingsGraph::FlowExecutionSummary',
                                'type' => 'ArrayRef[IoTThingsGraph_FlowExecutionSummary]'
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

Paws::IoTThingsGraph::SearchFlowExecutionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The string to specify as C<nextToken> when you request the next page of
results.


=head2 Summaries => ArrayRef[IoTThingsGraph_FlowExecutionSummary]

An array of objects that contain summary information about each
workflow execution in the result set.


=head2 _request_id => Str


=cut

1;