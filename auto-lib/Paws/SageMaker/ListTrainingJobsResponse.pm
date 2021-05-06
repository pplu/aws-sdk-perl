
package Paws::SageMaker::ListTrainingJobsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TrainingJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::TrainingJobSummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListTrainingJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of training jobs, use it in the subsequent
request.


=head2 B<REQUIRED> TrainingJobSummaries => ArrayRef[L<Paws::SageMaker::TrainingJobSummary>]

An array of C<TrainingJobSummary> objects, each listing a training job.


=head2 _request_id => Str


=cut

1;