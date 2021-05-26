
package Paws::SageMaker::ListProcessingJobsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProcessingJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ProcessingJobSummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListProcessingJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of processing jobs, use it in the subsequent
request.


=head2 B<REQUIRED> ProcessingJobSummaries => ArrayRef[L<Paws::SageMaker::ProcessingJobSummary>]

An array of C<ProcessingJobSummary> objects, each listing a processing
job.


=head2 _request_id => Str


=cut

1;