
package Paws::FSX::DescribeDataRepositoryTasksResponse;
  use Moose;
  has DataRepositoryTasks => (is => 'ro', isa => 'ArrayRef[Paws::FSX::DataRepositoryTask]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DescribeDataRepositoryTasksResponse

=head1 ATTRIBUTES


=head2 DataRepositoryTasks => ArrayRef[L<Paws::FSX::DataRepositoryTask>]

The collection of data repository task descriptions returned.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;