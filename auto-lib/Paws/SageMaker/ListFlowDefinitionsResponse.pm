
package Paws::SageMaker::ListFlowDefinitionsResponse;
  use Moose;
  has FlowDefinitionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::FlowDefinitionSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListFlowDefinitionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowDefinitionSummaries => ArrayRef[L<Paws::SageMaker::FlowDefinitionSummary>]

An array of objects describing the flow definitions.


=head2 NextToken => Str

A token to resume pagination.


=head2 _request_id => Str


=cut

1;