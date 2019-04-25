package Paws::GameLift::MatchmakingRuleSet;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has RuleSetBody => (is => 'ro', isa => 'Str', required => 1);
  has RuleSetName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::MatchmakingRuleSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::MatchmakingRuleSet object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., RuleSetName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::MatchmakingRuleSet object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Set of rule statements, used with FlexMatch, that determine how to
build a certain kind of player match. Each rule set describes a type of
group to be created and defines the parameters for acceptable player
matches. Rule sets are used in MatchmakingConfiguration objects.

A rule set may define the following elements for a match. For detailed
information and examples showing how to construct a rule set, see Build
a FlexMatch Rule Set
(https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html).

=over

=item *

Teams -- Required. A rule set must define one or multiple teams for the
match and set minimum and maximum team sizes. For example, a rule set
might describe a 4x4 match that requires all eight slots to be filled.

=item *

Player attributes -- Optional. These attributes specify a set of player
characteristics to evaluate when looking for a match. Matchmaking
requests that use a rule set with player attributes must provide the
corresponding attribute values. For example, an attribute might specify
a player's skill or level.

=item *

Rules -- Optional. Rules define how to evaluate potential players for a
match based on player attributes. A rule might specify minimum
requirements for individual players, teams, or entire matches. For
example, a rule might require each player to meet a certain skill
level, each team to have at least one player in a certain role, or the
match to have a minimum average skill level. or may describe an entire
group--such as all teams must be evenly matched or have at least one
player in a certain role.

=item *

Expansions -- Optional. Expansions allow you to relax the rules after a
period of time when no acceptable matches are found. This feature lets
you balance getting players into games in a reasonable amount of time
instead of making them wait indefinitely for the best possible match.
For example, you might use an expansion to increase the maximum skill
variance between players after 30 seconds.

=back


=head1 ATTRIBUTES


=head2 CreationTime => Str

  Time stamp indicating when this data object was created. Format is a
number expressed in Unix time as milliseconds (for example
"1469498468.057").


=head2 B<REQUIRED> RuleSetBody => Str

  Collection of matchmaking rules, formatted as a JSON string. (Note that
comments14 are not allowed in JSON, but most elements support a
description field.)


=head2 RuleSetName => Str

  Unique identifier for a matchmaking rule set



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

