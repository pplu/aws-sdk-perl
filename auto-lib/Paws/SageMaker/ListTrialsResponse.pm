
package Paws::SageMaker::ListTrialsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TrialSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::TrialSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListTrialsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token for getting the next set of trials, if there are any.


=head2 TrialSummaries => ArrayRef[L<Paws::SageMaker::TrialSummary>]

A list of the summaries of your trials.


=head2 _request_id => Str


=cut

1;