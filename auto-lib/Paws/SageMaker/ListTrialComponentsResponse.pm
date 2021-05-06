
package Paws::SageMaker::ListTrialComponentsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TrialComponentSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::TrialComponentSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListTrialComponentsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token for getting the next set of components, if there are any.


=head2 TrialComponentSummaries => ArrayRef[L<Paws::SageMaker::TrialComponentSummary>]

A list of the summaries of your trial components.


=head2 _request_id => Str


=cut

1;