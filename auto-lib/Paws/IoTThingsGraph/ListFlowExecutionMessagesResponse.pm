# Generated from json/callresult_class.tt

package Paws::IoTThingsGraph::ListFlowExecutionMessagesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_FlowExecutionMessage/;
  has Messages => (is => 'ro', isa => ArrayRef[IoTThingsGraph_FlowExecutionMessage]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Messages' => {
                               'type' => 'ArrayRef[IoTThingsGraph_FlowExecutionMessage]',
                               'class' => 'Paws::IoTThingsGraph::FlowExecutionMessage'
                             }
             },
  'NameInRequest' => {
                       'Messages' => 'messages',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::ListFlowExecutionMessagesResponse

=head1 ATTRIBUTES


=head2 Messages => ArrayRef[IoTThingsGraph_FlowExecutionMessage]

A list of objects that contain information about events in the
specified flow execution.


=head2 NextToken => Str

The string to specify as C<nextToken> when you request the next page of
results.


=head2 _request_id => Str


=cut

1;