# Generated from json/callargs_class.tt

package Paws::GameLift::UpdateGameSession;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::GameLift::Types qw//;
  has GameSessionId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaximumPlayerSessionCount => (is => 'ro', isa => Int, predicate => 1);
  has Name => (is => 'ro', isa => Str, predicate => 1);
  has PlayerSessionCreationPolicy => (is => 'ro', isa => Str, predicate => 1);
  has ProtectionPolicy => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateGameSession');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GameLift::UpdateGameSessionOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'GameSessionId' => 1
                  },
  'types' => {
               'GameSessionId' => {
                                    'type' => 'Str'
                                  },
               'MaximumPlayerSessionCount' => {
                                                'type' => 'Int'
                                              },
               'Name' => {
                           'type' => 'Str'
                         },
               'PlayerSessionCreationPolicy' => {
                                                  'type' => 'Str'
                                                },
               'ProtectionPolicy' => {
                                       'type' => 'Str'
                                     }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateGameSession - Arguments for method UpdateGameSession on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGameSession on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method UpdateGameSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGameSession.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $UpdateGameSessionOutput = $gamelift->UpdateGameSession(
      GameSessionId               => 'MyArnStringModel',
      MaximumPlayerSessionCount   => 1,                          # OPTIONAL
      Name                        => 'MyNonZeroAndMaxString',    # OPTIONAL
      PlayerSessionCreationPolicy => 'ACCEPT_ALL',               # OPTIONAL
      ProtectionPolicy            => 'NoProtection',             # OPTIONAL
    );

    # Results:
    my $GameSession = $UpdateGameSessionOutput->GameSession;

    # Returns a L<Paws::GameLift::UpdateGameSessionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/UpdateGameSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GameSessionId => Str

Unique identifier for the game session to update.



=head2 MaximumPlayerSessionCount => Int

Maximum number of players that can be connected simultaneously to the
game session.



=head2 Name => Str

Descriptive label that is associated with a game session. Session names
do not need to be unique.



=head2 PlayerSessionCreationPolicy => Str

Policy determining whether or not the game session accepts new players.

Valid values are: C<"ACCEPT_ALL">, C<"DENY_ALL">

=head2 ProtectionPolicy => Str

Game session protection policy to apply to this game session only.

=over

=item *

B<NoProtection> -- The game session can be terminated during a
scale-down event.

=item *

B<FullProtection> -- If the game session is in an C<ACTIVE> status, it
cannot be terminated during a scale-down event.

=back


Valid values are: C<"NoProtection">, C<"FullProtection">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGameSession in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

