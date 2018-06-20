
package Paws::GameLift::CreatePlayerSession;
  use Moose;
  has GameSessionId => (is => 'ro', isa => 'Str', required => 1);
  has PlayerData => (is => 'ro', isa => 'Str');
  has PlayerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlayerSession');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreatePlayerSessionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreatePlayerSession - Arguments for method CreatePlayerSession on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePlayerSession on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method CreatePlayerSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePlayerSession.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $CreatePlayerSessionOutput = $gamelift->CreatePlayerSession(
      GameSessionId => 'MyArnStringModel',
      PlayerId      => 'MyNonZeroAndMaxString',
      PlayerData    => 'MyPlayerData',            # OPTIONAL
    );

    # Results:
    my $PlayerSession = $CreatePlayerSessionOutput->PlayerSession;

    # Returns a L<Paws::GameLift::CreatePlayerSessionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/CreatePlayerSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GameSessionId => Str

Unique identifier for the game session to add a player to.



=head2 PlayerData => Str

Developer-defined information related to a player. Amazon GameLift does
not use this data, so it can be formatted as needed for use in the
game.



=head2 B<REQUIRED> PlayerId => Str

Unique identifier for a player. Player IDs are developer-defined.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePlayerSession in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

