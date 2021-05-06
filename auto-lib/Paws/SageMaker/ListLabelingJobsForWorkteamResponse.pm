
package Paws::SageMaker::ListLabelingJobsForWorkteamResponse;
  use Moose;
  has LabelingJobSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::LabelingJobForWorkteamSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListLabelingJobsForWorkteamResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> LabelingJobSummaryList => ArrayRef[L<Paws::SageMaker::LabelingJobForWorkteamSummary>]

An array of C<LabelingJobSummary> objects, each describing a labeling
job.


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of labeling jobs, use it in the subsequent
request.


=head2 _request_id => Str


=cut

1;