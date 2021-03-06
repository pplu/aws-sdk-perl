
package Paws::GameLift::DescribeGameSessionQueuesOutput;
  use Moose;
  has GameSessionQueues => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameSessionQueue]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeGameSessionQueuesOutput

=head1 ATTRIBUTES


=head2 GameSessionQueues => ArrayRef[L<Paws::GameLift::GameSessionQueue>]

A collection of objects that describe the requested game session
queues.


=head2 NextToken => Str

A token that indicates where to resume retrieving results on the next
call to this operation. If no token is returned, these results
represent the end of the list.


=head2 _request_id => Str


=cut

1;