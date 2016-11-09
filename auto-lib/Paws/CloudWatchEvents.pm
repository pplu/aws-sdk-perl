package Paws::CloudWatchEvents;
  use Moose;
  sub service { 'events' }
  sub version { '2015-10-07' }
  sub target_prefix { 'AWSEvents' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub DeleteRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::DeleteRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::DescribeRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::DisableRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::EnableRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRuleNamesByTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::ListRuleNamesByTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::ListRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTargetsByRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::ListTargetsByRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::PutEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::PutRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::PutTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::RemoveTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestEventPattern {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::TestEventPattern', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/DeleteRule DescribeRule DisableRule EnableRule ListRuleNamesByTarget ListRules ListTargetsByRule PutEvents PutRule PutTargets RemoveTargets TestEventPattern / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents - Perl Interface to AWS Amazon CloudWatch Events

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CloudWatchEvents');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon CloudWatch Events helps you to respond to state changes in your
AWS resources. When your resources change state they automatically send
events into an event stream. You can create rules that match selected
events in the stream and route them to targets to take action. You can
also use rules to take action on a pre-determined schedule. For
example, you can configure rules to:

=over

=item * Automatically invoke an AWS Lambda function to update DNS
entries when an event notifies you that Amazon EC2 instance enters the
running state.

=item * Direct specific API records from CloudTrail to an Amazon
Kinesis stream for detailed analysis of potential security or
availability risks.

=item * Periodically invoke a built-in target to create a snapshot of
an Amazon EBS volume.

=back

For more information about Amazon CloudWatch Events features, see the
Amazon CloudWatch Developer Guide.

=head1 METHODS

=head2 DeleteRule(Name => Str)

Each argument is described in detail in: L<Paws::CloudWatchEvents::DeleteRule>

Returns: nothing

  Deletes a rule. You must remove all targets from a rule using
RemoveTargets before you can delete the rule.

B<Note:> When you delete a rule, incoming events might still continue
to match to the deleted rule. Please allow a short period of time for
changes to take effect.


=head2 DescribeRule(Name => Str)

Each argument is described in detail in: L<Paws::CloudWatchEvents::DescribeRule>

Returns: a L<Paws::CloudWatchEvents::DescribeRuleResponse> instance

  Describes the details of the specified rule.


=head2 DisableRule(Name => Str)

Each argument is described in detail in: L<Paws::CloudWatchEvents::DisableRule>

Returns: nothing

  Disables a rule. A disabled rule won't match any events, and won't
self-trigger if it has a schedule expression.

B<Note:> When you disable a rule, incoming events might still continue
to match to the disabled rule. Please allow a short period of time for
changes to take effect.


=head2 EnableRule(Name => Str)

Each argument is described in detail in: L<Paws::CloudWatchEvents::EnableRule>

Returns: nothing

  Enables a rule. If the rule does not exist, the operation fails.

B<Note:> When you enable a rule, incoming events might not immediately
start matching to a newly enabled rule. Please allow a short period of
time for changes to take effect.


=head2 ListRuleNamesByTarget(TargetArn => Str, [Limit => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudWatchEvents::ListRuleNamesByTarget>

Returns: a L<Paws::CloudWatchEvents::ListRuleNamesByTargetResponse> instance

  Lists the names of the rules that the given target is put to. You can
see which of the rules in Amazon CloudWatch Events can invoke a
specific target in your account. If you have more rules in your account
than the given limit, the results will be paginated. In that case, use
the next token returned in the response and repeat ListRulesByTarget
until the NextToken in the response is returned as null.


=head2 ListRules([Limit => Int, NamePrefix => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudWatchEvents::ListRules>

Returns: a L<Paws::CloudWatchEvents::ListRulesResponse> instance

  Lists the Amazon CloudWatch Events rules in your account. You can
either list all the rules or you can provide a prefix to match to the
rule names. If you have more rules in your account than the given
limit, the results will be paginated. In that case, use the next token
returned in the response and repeat ListRules until the NextToken in
the response is returned as null.


=head2 ListTargetsByRule(Rule => Str, [Limit => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudWatchEvents::ListTargetsByRule>

Returns: a L<Paws::CloudWatchEvents::ListTargetsByRuleResponse> instance

  Lists of targets assigned to the rule.


=head2 PutEvents(Entries => ArrayRef[L<Paws::CloudWatchEvents::PutEventsRequestEntry>])

Each argument is described in detail in: L<Paws::CloudWatchEvents::PutEvents>

Returns: a L<Paws::CloudWatchEvents::PutEventsResponse> instance

  Sends custom events to Amazon CloudWatch Events so that they can be
matched to rules.


=head2 PutRule(Name => Str, [Description => Str, EventPattern => Str, RoleArn => Str, ScheduleExpression => Str, State => Str])

Each argument is described in detail in: L<Paws::CloudWatchEvents::PutRule>

Returns: a L<Paws::CloudWatchEvents::PutRuleResponse> instance

  Creates or updates a rule. Rules are enabled by default, or based on
value of the State parameter. You can disable a rule using DisableRule.

B<Note:> When you create or update a rule, incoming events might not
immediately start matching to new or updated rules. Please allow a
short period of time for changes to take effect.

A rule must contain at least an EventPattern or ScheduleExpression.
Rules with EventPatterns are triggered when a matching event is
observed. Rules with ScheduleExpressions self-trigger based on the
given schedule. A rule can have both an EventPattern and a
ScheduleExpression, in which case the rule will trigger on matching
events as well as on a schedule.

B<Note:> Most services in AWS treat : or / as the same character in
Amazon Resource Names (ARNs). However, CloudWatch Events uses an exact
match in event patterns and rules. Be sure to use the correct ARN
characters when creating event patterns so that they match the ARN
syntax in the event you want to match.


=head2 PutTargets(Rule => Str, Targets => ArrayRef[L<Paws::CloudWatchEvents::Target>])

Each argument is described in detail in: L<Paws::CloudWatchEvents::PutTargets>

Returns: a L<Paws::CloudWatchEvents::PutTargetsResponse> instance

  Adds target(s) to a rule. Targets are the resources that can be invoked
when a rule is triggered. For example, AWS Lambda functions, Amazon
Kinesis streams, and built-in targets. Updates the target(s) if they
are already associated with the role. In other words, if there is
already a target with the given target ID, then the target associated
with that ID is updated.

In order to be able to make API calls against the resources you own,
Amazon CloudWatch Events needs the appropriate permissions. For AWS
Lambda and Amazon SNS resources, CloudWatch Events relies on
resource-based policies. For Amazon Kinesis streams, CloudWatch Events
relies on IAM roles. For more information, see Permissions for Sending
Events to Targets in the B<I<Amazon CloudWatch Developer Guide>>.

B<Input> and B<InputPath> are mutually-exclusive and optional
parameters of a target. When a rule is triggered due to a matched
event, if for a target:

=over

=item * Neither B<Input> nor B<InputPath> is specified, then the entire
event is passed to the target in JSON form.

=item * B<InputPath> is specified in the form of JSONPath (e.g.
B<$.detail>), then only the part of the event specified in the path is
passed to the target (e.g. only the detail part of the event is
passed).

=item * B<Input> is specified in the form of a valid JSON, then the
matched event is overridden with this constant.

=back

B<Note:> When you add targets to a rule, when the associated rule
triggers, new or updated targets might not be immediately invoked.
Please allow a short period of time for changes to take effect.


=head2 RemoveTargets(Ids => ArrayRef[Str|Undef], Rule => Str)

Each argument is described in detail in: L<Paws::CloudWatchEvents::RemoveTargets>

Returns: a L<Paws::CloudWatchEvents::RemoveTargetsResponse> instance

  Removes target(s) from a rule so that when the rule is triggered, those
targets will no longer be invoked.

B<Note:> When you remove a target, when the associated rule triggers,
removed targets might still continue to be invoked. Please allow a
short period of time for changes to take effect.


=head2 TestEventPattern(Event => Str, EventPattern => Str)

Each argument is described in detail in: L<Paws::CloudWatchEvents::TestEventPattern>

Returns: a L<Paws::CloudWatchEvents::TestEventPatternResponse> instance

  Tests whether an event pattern matches the provided event.

B<Note:> Most services in AWS treat : or / as the same character in
Amazon Resource Names (ARNs). However, CloudWatch Events uses an exact
match in event patterns and rules. Be sure to use the correct ARN
characters when creating event patterns so that they match the ARN
syntax in the event you want to match.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

