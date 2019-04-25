
package Paws::CloudWatchEvents::PutRule;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has EventPattern => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');
  has ScheduleExpression => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::PutRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::PutRule - Arguments for method PutRule on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRule on the
L<Amazon CloudWatch Events|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method PutRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRule.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $PutRuleResponse = $events->PutRule(
      Name               => 'MyRuleName',
      Description        => 'MyRuleDescription',       # OPTIONAL
      EventPattern       => 'MyEventPattern',          # OPTIONAL
      RoleArn            => 'MyRoleArn',               # OPTIONAL
      ScheduleExpression => 'MyScheduleExpression',    # OPTIONAL
      State              => 'ENABLED',                 # OPTIONAL
    );

    # Results:
    my $RuleArn = $PutRuleResponse->RuleArn;

    # Returns a L<Paws::CloudWatchEvents::PutRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/PutRule>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the rule.



=head2 EventPattern => Str

The event pattern. For more information, see Events and Event Patterns
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html)
in the I<Amazon CloudWatch Events User Guide>.



=head2 B<REQUIRED> Name => Str

The name of the rule that you are creating or updating.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role associated with the
rule.



=head2 ScheduleExpression => Str

The scheduling expression. For example, "cron(0 20 * * ? *)" or "rate(5
minutes)".



=head2 State => Str

Indicates whether the rule is enabled or disabled.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRule in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

