
package Paws::SageMaker::ListContextsResponse;
  use Moose;
  has ContextSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ContextSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListContextsResponse

=head1 ATTRIBUTES


=head2 ContextSummaries => ArrayRef[L<Paws::SageMaker::ContextSummary>]

A list of contexts and their properties.


=head2 NextToken => Str

A token for getting the next set of contexts, if there are any.


=head2 _request_id => Str


=cut

1;