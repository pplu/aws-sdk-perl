
package Paws::GameLift::StartGameSessionPlacementOutput;
  use Moose;
  has GameSessionPlacement => (is => 'ro', isa => 'Paws::GameLift::GameSessionPlacement');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::StartGameSessionPlacementOutput

=head1 ATTRIBUTES


=head2 GameSessionPlacement => L<Paws::GameLift::GameSessionPlacement>

Object that describes the newly created game session placement. This
object includes all the information provided in the request, as well as
start/end time stamps and placement status.


=head2 _request_id => Str


=cut

1;