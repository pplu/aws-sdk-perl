
package Paws::CloudWatchEvents::DescribeRuleResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EventBusName => (is => 'ro', isa => 'Str');
  has EventPattern => (is => 'ro', isa => 'Str');
  has ManagedBy => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has ScheduleExpression => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::DescribeRuleResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the rule.


=head2 Description => Str

The description of the rule.


=head2 EventBusName => Str

The event bus associated with the rule.


=head2 EventPattern => Str

The event pattern. For more information, see Event Patterns
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html)
in the I<Amazon EventBridge User Guide>.


=head2 ManagedBy => Str

If this is a managed rule, created by an AWS service on your behalf,
this field displays the principal name of the AWS service that created
the rule.


=head2 Name => Str

The name of the rule.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role associated with the
rule.


=head2 ScheduleExpression => Str

The scheduling expression: for example, C<"cron(0 20 * * ? *)"> or
C<"rate(5 minutes)">.


=head2 State => Str

Specifies whether the rule is enabled or disabled.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 _request_id => Str


=cut

1;