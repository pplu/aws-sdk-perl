
package Paws::DeviceFarm::ListJobsResult;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::Job]', traits => ['Unwrapped'], xmlname => 'jobs' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListJobsResult

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[L<Paws::DeviceFarm::Job>]

Information about the jobs.



=head2 NextToken => Str

If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.




=cut

1;