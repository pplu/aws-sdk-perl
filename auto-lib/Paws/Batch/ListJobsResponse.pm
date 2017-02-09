
package Paws::Batch::ListJobsResponse;
  use Moose;
  has JobSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Batch::JobSummary]', traits => ['NameInRequest'], request_name => 'jobSummaryList', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::ListJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobSummaryList => ArrayRef[L<Paws::Batch::JobSummary>]

A list of job summaries that match the request.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListJobs> request. When
the results of a C<ListJobs> request exceed C<maxResults>, this value
can be used to retrieve the next page of results. This value is C<null>
when there are no more results to return.


=head2 _request_id => Str


=cut

