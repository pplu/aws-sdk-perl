package Paws::GameLift::PlayerLatencyPolicy;
  use Moose;
  has MaximumIndividualPlayerLatencyMilliseconds => (is => 'ro', isa => 'Int');
  has PolicyDurationSeconds => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::PlayerLatencyPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::PlayerLatencyPolicy object:

  $service_obj->Method(Att1 => { MaximumIndividualPlayerLatencyMilliseconds => $value, ..., PolicyDurationSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::PlayerLatencyPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->MaximumIndividualPlayerLatencyMilliseconds

=head1 DESCRIPTION

Queue setting that determines the highest latency allowed for
individual players when placing a game session. When a latency policy
is in force, a game session cannot be placed at any destination in a
region where a player is reporting latency higher than the cap. Latency
policies are only enforced when the placement request contains player
latency information.

=over

=item *

CreateGameSessionQueue

=item *

DescribeGameSessionQueues

=item *

UpdateGameSessionQueue

=item *

DeleteGameSessionQueue

=back


=head1 ATTRIBUTES


=head2 MaximumIndividualPlayerLatencyMilliseconds => Int

  The maximum latency value that is allowed for any player, in
milliseconds. All policies must have a value set for this property.


=head2 PolicyDurationSeconds => Int

  The length of time, in seconds, that the policy is enforced while
placing a new game session. A null value for this property means that
the policy is enforced until the queue times out.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

