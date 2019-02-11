
package Paws::SageMaker::ListHyperParameterTuningJobsResponse;
  use Moose;
  has HyperParameterTuningJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::HyperParameterTuningJobSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListHyperParameterTuningJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HyperParameterTuningJobSummaries => ArrayRef[L<Paws::SageMaker::HyperParameterTuningJobSummary>]

A list of HyperParameterTuningJobSummary objects that describe the
tuning jobs that the C<ListHyperParameterTuningJobs> request returned.


=head2 NextToken => Str

If the result of this C<ListHyperParameterTuningJobs> request was
truncated, the response includes a C<NextToken>. To retrieve the next
set of tuning jobs, use the token in the next request.


=head2 _request_id => Str


=cut

1;