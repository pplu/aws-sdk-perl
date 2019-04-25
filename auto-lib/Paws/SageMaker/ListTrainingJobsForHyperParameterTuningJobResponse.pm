
package Paws::SageMaker::ListTrainingJobsForHyperParameterTuningJobResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TrainingJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::HyperParameterTrainingJobSummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListTrainingJobsForHyperParameterTuningJobResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the result of this C<ListTrainingJobsForHyperParameterTuningJob>
request was truncated, the response includes a C<NextToken>. To
retrieve the next set of training jobs, use the token in the next
request.


=head2 B<REQUIRED> TrainingJobSummaries => ArrayRef[L<Paws::SageMaker::HyperParameterTrainingJobSummary>]

A list of TrainingJobSummary objects that describe the training jobs
that the C<ListTrainingJobsForHyperParameterTuningJob> request
returned.


=head2 _request_id => Str


=cut

1;