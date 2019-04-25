
package Paws::GameLift::DeleteMatchmakingRuleSet;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMatchmakingRuleSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DeleteMatchmakingRuleSetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DeleteMatchmakingRuleSet - Arguments for method DeleteMatchmakingRuleSet on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMatchmakingRuleSet on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DeleteMatchmakingRuleSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMatchmakingRuleSet.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DeleteMatchmakingRuleSetOutput = $gamelift->DeleteMatchmakingRuleSet(
      Name => 'MyMatchmakingIdStringModel',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DeleteMatchmakingRuleSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

Unique identifier for a matchmaking rule set to be deleted. (Note: The
rule set name is different from the optional "name" field in the rule
set body.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMatchmakingRuleSet in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

