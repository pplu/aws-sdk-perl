
package Paws::CloudWatchEvents::DescribeRuleResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
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


=head2 EventPattern => Str

The event pattern. For more information, see Events and Event Patterns
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html)
in the I<Amazon CloudWatch Events User Guide>.


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

The scheduling expression. For example, "cron(0 20 * * ? *)", "rate(5
minutes)".


=head2 State => Str

Specifies whether the rule is enabled or disabled.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 _request_id => Str


=cut

1;