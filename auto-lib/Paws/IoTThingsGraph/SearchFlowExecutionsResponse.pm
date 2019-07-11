
package Paws::IoTThingsGraph::SearchFlowExecutionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Summaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTThingsGraph::FlowExecutionSummary]', traits => ['NameInRequest'], request_name => 'summaries' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::SearchFlowExecutionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The string to specify as C<nextToken> when you request the next page of
results.


=head2 Summaries => ArrayRef[L<Paws::IoTThingsGraph::FlowExecutionSummary>]

An array of objects that contain summary information about each
workflow execution in the result set.


=head2 _request_id => Str


=cut

1;