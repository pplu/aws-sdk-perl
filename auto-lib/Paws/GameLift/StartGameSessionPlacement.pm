
package Paws::GameLift::StartGameSessionPlacement;
  use Moose;
  has DesiredPlayerSessions => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::DesiredPlayerSession]');
  has GameProperties => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameProperty]');
  has GameSessionName => (is => 'ro', isa => 'Str');
  has GameSessionQueueName => (is => 'ro', isa => 'Str', required => 1);
  has MaximumPlayerSessionCount => (is => 'ro', isa => 'Int', required => 1);
  has PlacementId => (is => 'ro', isa => 'Str', required => 1);
  has PlayerLatencies => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::PlayerLatency]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartGameSessionPlacement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::StartGameSessionPlacementOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::StartGameSessionPlacement - Arguments for method StartGameSessionPlacement on Paws::GameLift

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartGameSessionPlacement on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method StartGameSessionPlacement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartGameSessionPlacement.

As an example:

  $service_obj->StartGameSessionPlacement(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DesiredPlayerSessions => ArrayRef[L<Paws::GameLift::DesiredPlayerSession>]

Set of information on each player to create a player session for.



=head2 GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]

Set of developer-defined properties for a game session. These
properties are passed to the server process hosting the game session.



=head2 GameSessionName => Str

Descriptive label that is associated with a game session. Session names
do not need to be unique.



=head2 B<REQUIRED> GameSessionQueueName => Str

Name of the queue to use to place the new game session.



=head2 B<REQUIRED> MaximumPlayerSessionCount => Int

Maximum number of players that can be connected simultaneously to the
game session.



=head2 B<REQUIRED> PlacementId => Str

Unique identifier to assign to the new game session placement. This
value is developer-defined. The value must be unique across all regions
and cannot be reused unless you are resubmitting a cancelled or
timed-out placement request.



=head2 PlayerLatencies => ArrayRef[L<Paws::GameLift::PlayerLatency>]

Set of values, expressed in milliseconds, indicating the amount of
latency that players experience when connected to AWS regions. This
information is relevant when requesting player sessions. Latency
information provided for player IDs not included in
I<DesiredPlayerSessions> are ignored.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartGameSessionPlacement in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

