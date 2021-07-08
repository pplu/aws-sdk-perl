
package Paws::Personalize::ListBatchInferenceJobsResponse;
  use Moose;
  has BatchInferenceJobs => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::BatchInferenceJobSummary]', traits => ['NameInRequest'], request_name => 'batchInferenceJobs' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListBatchInferenceJobsResponse

=head1 ATTRIBUTES


=head2 BatchInferenceJobs => ArrayRef[L<Paws::Personalize::BatchInferenceJobSummary>]

A list containing information on each job that is returned.


=head2 NextToken => Str

The token to use to retrieve the next page of results. The value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

1;