
package Paws::GameLift::StartMatchmaking;
  use Moose;
  has ConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has Players => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::Player]', required => 1);
  has TicketId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMatchmaking');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::StartMatchmakingOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::StartMatchmaking - Arguments for method StartMatchmaking on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMatchmaking on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method StartMatchmaking.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMatchmaking.

As an example:

  $service_obj->StartMatchmaking(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationName => Str

Name of the matchmaking configuration to use for this request.
Matchmaking configurations must exist in the same region as this
request.



=head2 B<REQUIRED> Players => ArrayRef[L<Paws::GameLift::Player>]

Information on each player to be matched. This information must include
a player ID, and may contain player attributes and latency data to be
used in the matchmaking process. After a successful match, C<Player>
objects contain the name of the team the player is assigned to.



=head2 TicketId => Str

Unique identifier for a matchmaking ticket. If no ticket ID is
specified here, Amazon GameLift will generate one in the form of a
UUID. Use this identifier to track the matchmaking ticket status and
retrieve match results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMatchmaking in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

