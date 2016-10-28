
package Paws::GameLift::UpdateGameSessionOutput;
  use Moose;
  has GameSession => (is => 'ro', isa => 'Paws::GameLift::GameSession');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateGameSessionOutput

=head1 ATTRIBUTES


=head2 GameSession => L<Paws::GameLift::GameSession>

Object containing the updated game session metadata.




=cut

1;