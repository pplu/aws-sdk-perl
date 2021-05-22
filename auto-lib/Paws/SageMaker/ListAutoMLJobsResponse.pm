
package Paws::SageMaker::ListAutoMLJobsResponse;
  use Moose;
  has AutoMLJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::AutoMLJobSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListAutoMLJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoMLJobSummaries => ArrayRef[L<Paws::SageMaker::AutoMLJobSummary>]

Returns a summary list of jobs.


=head2 NextToken => Str

If the previous response was truncated, you receive this token. Use it
in your next request to receive the next set of results.


=head2 _request_id => Str


=cut

1;