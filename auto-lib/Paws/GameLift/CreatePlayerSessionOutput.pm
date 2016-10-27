
package Paws::GameLift::CreatePlayerSessionOutput;
  use Moose;
  has PlayerSession => (is => 'ro', isa => 'Paws::GameLift::PlayerSession');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreatePlayerSessionOutput

=head1 ATTRIBUTES


=head2 PlayerSession => L<Paws::GameLift::PlayerSession>

Object containing the newly created player session record.




=cut

1;