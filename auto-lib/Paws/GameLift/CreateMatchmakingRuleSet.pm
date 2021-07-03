
package Paws::GameLift::CreateMatchmakingRuleSet;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RuleSetBody => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::Tag]');

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
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $RuleSet = $CreateMatchmakingRuleSetOutput->RuleSet;

    # Returns a L<Paws::GameLift::CreateMatchmakingRuleSetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/CreateMatchmakingRuleSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

A unique identifier for a matchmaking rule set. A matchmaking
configuration identifies the rule set it uses by this name value. Note
that the rule set name is different from the optional C<name> field in
the rule set body.



=head2 B<REQUIRED> RuleSetBody => Str

A collection of matchmaking rules, formatted as a JSON string. Comments
are not allowed in JSON, but most elements support a description field.



=head2 Tags => ArrayRef[L<Paws::GameLift::Tag>]

A list of labels to assign to the new matchmaking rule set resource.
Tags are developer-defined key-value pairs. Tagging AWS resources are
useful for resource management, access management and cost allocation.
For more information, see Tagging AWS Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<AWS General Reference>. Once the resource is created, you can use
TagResource, UntagResource, and ListTagsForResource to add, remove, and
view tags. The maximum tag limit may be lower than stated. See the AWS
General Reference for actual tagging limits.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMatchmakingRuleSet in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

