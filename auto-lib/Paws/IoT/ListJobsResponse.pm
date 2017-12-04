
package Paws::IoT::ListJobsResponse;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::IoT::JobSummary]', traits => ['NameInRequest'], request_name => 'jobs');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListJobsResponse

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[L<Paws::IoT::JobSummary>]

A list of jobs.


=head2 NextToken => Str

The token for the next set of results, or B<null> if there are no
additional results.


=head2 _request_id => Str


=cut

