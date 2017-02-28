
package Paws::GameLift::DescribeGameSessionDetailsOutput;
  use Moose;
  has GameSessionDetails => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameSessionDetail]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeGameSessionDetailsOutput

=head1 ATTRIBUTES


=head2 GameSessionDetails => ArrayRef[L<Paws::GameLift::GameSessionDetail>]

Collection of objects containing game session properties and the
protection policy currently in force for each session matching the
request.


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 _request_id => Str


=cut

1;