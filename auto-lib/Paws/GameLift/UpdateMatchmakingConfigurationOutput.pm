
package Paws::GameLift::UpdateMatchmakingConfigurationOutput;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::GameLift::MatchmakingConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateMatchmakingConfigurationOutput

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::GameLift::MatchmakingConfiguration>

Object that describes the updated matchmaking configuration.


=head2 _request_id => Str


=cut

1;