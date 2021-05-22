
package Paws::SageMaker::ListActionsResponse;
  use Moose;
  has ActionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ActionSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListActionsResponse

=head1 ATTRIBUTES


=head2 ActionSummaries => ArrayRef[L<Paws::SageMaker::ActionSummary>]

A list of actions and their properties.


=head2 NextToken => Str

A token for getting the next set of actions, if there are any.


=head2 _request_id => Str


=cut

1;