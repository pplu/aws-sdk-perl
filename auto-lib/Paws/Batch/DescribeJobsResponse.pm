
package Paws::Batch::DescribeJobsResponse;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::Batch::JobDetail]', traits => ['NameInRequest'], request_name => 'jobs');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::DescribeJobsResponse

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[L<Paws::Batch::JobDetail>]

The list of jobs.


=head2 _request_id => Str


=cut

