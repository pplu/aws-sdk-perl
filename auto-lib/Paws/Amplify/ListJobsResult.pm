
package Paws::Amplify::ListJobsResult;
  use Moose;
  has JobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Amplify::JobSummary]', traits => ['NameInRequest'], request_name => 'jobSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::ListJobsResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobSummaries => ArrayRef[L<Paws::Amplify::JobSummary>]

Result structure for list job result request.


=head2 NextToken => Str

Pagination token. If non-null pagination token is returned in a result,
then pass its value in another request to fetch more entries.


=head2 _request_id => Str


=cut

