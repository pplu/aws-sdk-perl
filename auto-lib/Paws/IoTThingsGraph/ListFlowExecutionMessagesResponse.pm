
package Paws::IoTThingsGraph::ListFlowExecutionMessagesResponse;
  use Moose;
  has Messages => (is => 'ro', isa => 'ArrayRef[Paws::IoTThingsGraph::FlowExecutionMessage]', traits => ['NameInRequest'], request_name => 'messages' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::ListFlowExecutionMessagesResponse

=head1 ATTRIBUTES


=head2 Messages => ArrayRef[L<Paws::IoTThingsGraph::FlowExecutionMessage>]

A list of objects that contain information about events in the
specified flow execution.


=head2 NextToken => Str

The string to specify as C<nextToken> when you request the next page of
results.


=head2 _request_id => Str


=cut

1;