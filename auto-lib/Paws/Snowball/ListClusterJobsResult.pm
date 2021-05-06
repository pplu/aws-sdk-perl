
package Paws::Snowball::ListClusterJobsResult;
  use Moose;
  has JobListEntries => (is => 'ro', isa => 'ArrayRef[Paws::Snowball::JobListEntry]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::ListClusterJobsResult

=head1 ATTRIBUTES


=head2 JobListEntries => ArrayRef[L<Paws::Snowball::JobListEntry>]

Each C<JobListEntry> object contains a job's state, a job's ID, and a
value that indicates whether the job is a job part, in the case of
export jobs.


=head2 NextToken => Str

HTTP requests are stateless. If you use the automatically generated
C<NextToken> value in your next C<ListClusterJobsResult> call, your
list of returned jobs will start from this point in the array.


=head2 _request_id => Str


=cut

1;