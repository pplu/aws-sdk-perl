
package Paws::GameLift::CreateMatchmakingRuleSet;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RuleSetBody => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMatchmakingRuleSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreateMatchmakingRuleSetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateMatchmakingRuleSet - Arguments for method CreateMatchmakingRuleSet on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMatchmakingRuleSet on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method CreateMatchmakingRuleSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMatchmakingRuleSet.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $CreateMatchmakingRuleSetOutput = $gamelift->CreateMatchmakingRuleSet(
      Name        => 'MyMatchmakingIdStringModel',
      RuleSetBody => 'MyRuleSetBody',

    );

    # Results:
    my $RuleSet = $CreateMatchmakingRuleSetOutput->RuleSet;

    # Returns a L<Paws::GameLift::CreateMatchmakingRuleSetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/CreateMatchmakingRuleSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

Unique identifier for a matchmaking rule set. A matchmaking
configuration identifies the rule set it uses by this name value.
(Note: The rule set name is different from the optional "name" field in
the rule set body.)



=head2 B<REQUIRED> RuleSetBody => Str

Collection of matchmaking rules, formatted as a JSON string. Note that
comments are not allowed in JSON, but most elements support a
description field.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMatchmakingRuleSet in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

