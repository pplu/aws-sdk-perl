package Paws::GameLift::ResourceCreationLimitPolicy;
  use Moose;
  has NewGameSessionsPerCreator => (is => 'ro', isa => 'Int');
  has PolicyPeriodInMinutes => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ResourceCreationLimitPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::ResourceCreationLimitPolicy object:

  $service_obj->Method(Att1 => { NewGameSessionsPerCreator => $value, ..., PolicyPeriodInMinutes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::ResourceCreationLimitPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->NewGameSessionsPerCreator

=head1 DESCRIPTION

Policy that limits the number of game sessions a player can create on
the same fleet. This optional policy gives game owners control over how
players can consume available game server resources. A resource
creation policy makes the following statement: "An individual player
can create a maximum number of new game sessions within a specified
time period".

The policy is evaluated when a player tries to create a new game
session. For example, with a policy of 10 new game sessions and a time
period of 60 minutes, on receiving a C<CreateGameSession> request,
Amazon GameLift checks that the player (identified by C<CreatorId>) has
created fewer than 10 game sessions in the past 60 minutes.

=head1 ATTRIBUTES


=head2 NewGameSessionsPerCreator => Int

  Maximum number of game sessions that an individual can create during
the policy period.


=head2 PolicyPeriodInMinutes => Int

  Time span used in evaluating the resource creation limit policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

