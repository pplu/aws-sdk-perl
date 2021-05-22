
package Paws::SageMaker::ListEdgePackagingJobsResponse;
  use Moose;
  has EdgePackagingJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::EdgePackagingJobSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListEdgePackagingJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EdgePackagingJobSummaries => ArrayRef[L<Paws::SageMaker::EdgePackagingJobSummary>]

Summaries of edge packaging jobs.


=head2 NextToken => Str

Token to use when calling the next page of results.


=head2 _request_id => Str


=cut

1;