
package Paws::GameLift::DescribeFleetEventsOutput;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::Event]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeFleetEventsOutput

=head1 ATTRIBUTES


=head2 Events => ArrayRef[L<Paws::GameLift::Event>]

Collection of objects containing event log entries for the specified
fleet.


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 _request_id => Str


=cut

1;