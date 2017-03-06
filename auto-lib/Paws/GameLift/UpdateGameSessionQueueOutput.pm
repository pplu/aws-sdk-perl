
package Paws::GameLift::UpdateGameSessionQueueOutput;
  use Moose;
  has GameSessionQueue => (is => 'ro', isa => 'Paws::GameLift::GameSessionQueue');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateGameSessionQueueOutput

=head1 ATTRIBUTES


=head2 GameSessionQueue => L<Paws::GameLift::GameSessionQueue>

Object that describes the newly updated game session queue.


=head2 _request_id => Str


=cut

1;