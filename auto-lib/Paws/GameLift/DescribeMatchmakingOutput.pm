
package Paws::GameLift::DescribeMatchmakingOutput;
  use Moose;
  has TicketList => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::MatchmakingTicket]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeMatchmakingOutput

=head1 ATTRIBUTES


=head2 TicketList => ArrayRef[L<Paws::GameLift::MatchmakingTicket>]

Collection of existing matchmaking ticket objects matching the request.


=head2 _request_id => Str


=cut

1;