
package Paws::SageMaker::ListExperimentsResponse;
  use Moose;
  has ExperimentSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ExperimentSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListExperimentsResponse

=head1 ATTRIBUTES


=head2 ExperimentSummaries => ArrayRef[L<Paws::SageMaker::ExperimentSummary>]

A list of the summaries of your experiments.


=head2 NextToken => Str

A token for getting the next set of experiments, if there are any.


=head2 _request_id => Str


=cut

1;