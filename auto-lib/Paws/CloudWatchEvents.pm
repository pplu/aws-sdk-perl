package Paws::CloudWatchEvents;
  use Moose;
  sub service { 'events' }
  sub signing_name { 'events' }
  sub version { '2015-10-07' }
  sub target_prefix { 'AWSEvents' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub ActivateEventSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::ActivateEventSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEventBus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::CreateEventBus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePartnerEventSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::CreatePartnerEventSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeactivateEventSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::DeactivateEventSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventBus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::DeleteEventBus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePartnerEventSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::DeletePartnerEventSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::DeleteRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventBus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::DescribeEventBus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::DescribeEventSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePartnerEventSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::DescribePartnerEventSource', @_);
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
  sub ListEventBuses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::ListEventBuses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEventSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::ListEventSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPartnerEventSourceAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::ListPartnerEventSourceAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPartnerEventSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::ListPartnerEventSources', @_);
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
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::ListTagsForResource', @_);
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
  sub PutPartnerEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::PutPartnerEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::PutPermission', @_);
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
  sub RemovePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::RemovePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::RemoveTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestEventPattern {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::TestEventPattern', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchEvents::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllRuleNamesByTarget {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRuleNamesByTarget(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRuleNamesByTarget(@_, NextToken => $next_result->NextToken);
        push @{ $result->RuleNames }, @{ $next_result->RuleNames };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RuleNames') foreach (@{ $result->RuleNames });
        $result = $self->ListRuleNamesByTarget(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RuleNames') foreach (@{ $result->RuleNames });
    }

    return undef
  }
  sub ListAllRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRules(@_, NextToken => $next_result->NextToken);
        push @{ $result->Rules }, @{ $next_result->Rules };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Rules') foreach (@{ $result->Rules });
        $result = $self->ListRules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Rules') foreach (@{ $result->Rules });
    }

    return undef
  }
  sub ListAllTargetsByRule {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTargetsByRule(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTargetsByRule(@_, NextToken => $next_result->NextToken);
        push @{ $result->Targets }, @{ $next_result->Targets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Targets') foreach (@{ $result->Targets });
        $result = $self->ListTargetsByRule(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Targets') foreach (@{ $result->Targets });
    }

    return undef
  }


  sub operations { qw/ActivateEventSource CreateEventBus CreatePartnerEventSource DeactivateEventSource DeleteEventBus DeletePartnerEventSource DeleteRule DescribeEventBus DescribeEventSource DescribePartnerEventSource DescribeRule DisableRule EnableRule ListEventBuses ListEventSources ListPartnerEventSourceAccounts ListPartnerEventSources ListRuleNamesByTarget ListRules ListTagsForResource ListTargetsByRule PutEvents PutPartnerEvents PutPermission PutRule PutTargets RemovePermission RemoveTargets TagResource TestEventPattern UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents - Perl Interface to AWS Amazon EventBridge

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

Amazon EventBridge helps you to respond to state changes in your AWS
resources. When your resources change state, they automatically send
events into an event stream. You can create rules that match selected
events in the stream and route them to targets to take action. You can
also use rules to take action on a predetermined schedule. For example,
you can configure rules to:

=over

=item *

Automatically invoke an AWS Lambda function to update DNS entries when
an event notifies you that Amazon EC2 instance enters the running state

=item *

Direct specific API records from AWS CloudTrail to an Amazon Kinesis
data stream for detailed analysis of potential security or availability
risks

=item *

Periodically invoke a built-in target to create a snapshot of an Amazon
EBS volume

=back

For more information about the features of Amazon EventBridge, see the
Amazon EventBridge User Guide
(https://docs.aws.amazon.com/eventbridge/latest/userguide/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/cloudwatch/>


=head1 METHODS

=head2 ActivateEventSource

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::ActivateEventSource>

Returns: nothing

Activates a partner event source that has been deactivated. Once
activated, your matching event bus will start receiving events from the
event source.

This operation is performed by AWS customers, not by SaaS partners.


=head2 CreateEventBus

=over

=item Name => Str

=item [EventSourceName => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::CreateEventBus>

Returns: a L<Paws::CloudWatchEvents::CreateEventBusResponse> instance

Creates a new event bus within your account. This can be a custom event
bus which you can use to receive events from your own custom
applications and services, or it can be a partner event bus which can
be matched to a partner event source.

This operation is used by AWS customers, not by SaaS partners.


=head2 CreatePartnerEventSource

=over

=item Account => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::CreatePartnerEventSource>

Returns: a L<Paws::CloudWatchEvents::CreatePartnerEventSourceResponse> instance

Called by an SaaS partner to create a partner event source.

This operation is not used by AWS customers.

Each partner event source can be used by one AWS account to create a
matching partner event bus in that AWS account. A SaaS partner must
create one partner event source for each AWS account that wants to
receive those event types.

A partner event source creates events based on resources in the SaaS
partner's service or application.

An AWS account that creates a partner event bus that matches the
partner event source can use that event bus to receive events from the
partner, and then process them using AWS Events rules and targets.

Partner event source names follow this format:

C<aws.partner/I<partner_name>/I<event_namespace>/I<event_name>>

=over

=item *

I<partner_name> is determined during partner registration and
identifies the partner to AWS customers.

=item *

For I<event_namespace>, we recommend that partners use a string that
identifies the AWS customer within the partner's system. This should
not be the customer's AWS account ID.

=item *

I<event_name> is determined by the partner, and should uniquely
identify an event-generating resource within the partner system. This
should help AWS customers decide whether to create an event bus to
receive these events.

=back



=head2 DeactivateEventSource

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::DeactivateEventSource>

Returns: nothing

An AWS customer uses this operation to temporarily stop receiving
events from the specified partner event source. The matching event bus
isn't deleted.

When you deactivate a partner event source, the source goes into
C<PENDING> state. If it remains in C<PENDING> state for more than two
weeks, it's deleted.

To activate a deactivated partner event source, use
ActivateEventSource.


=head2 DeleteEventBus

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::DeleteEventBus>

Returns: nothing

Deletes the specified custom event bus or partner event bus. All rules
associated with this event bus are also deleted. You can't delete your
account's default event bus.

This operation is performed by AWS customers, not by SaaS partners.


=head2 DeletePartnerEventSource

=over

=item Account => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::DeletePartnerEventSource>

Returns: nothing

This operation is used by SaaS partners to delete a partner event
source. AWS customers don't use this operation.

When you delete an event source, the status of the corresponding
partner event bus in the AWS customer account becomes C<DELETED>.


=head2 DeleteRule

=over

=item Name => Str

=item [EventBusName => Str]

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::DeleteRule>

Returns: nothing

Deletes the specified rule.

Before you can delete the rule, you must remove all targets, using
RemoveTargets.

When you delete a rule, incoming events might continue to match to the
deleted rule. Allow a short period of time for changes to take effect.

Managed rules are rules created and managed by another AWS service on
your behalf. These rules are created by those other AWS services to
support functionality in those services. You can delete these rules
using the C<Force> option, but you should do so only if you're sure
that the other service isn't still using that rule.


=head2 DescribeEventBus

=over

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::DescribeEventBus>

Returns: a L<Paws::CloudWatchEvents::DescribeEventBusResponse> instance

Displays details about an event bus in your account. This can include
the external AWS accounts that are permitted to write events to your
default event bus, and the associated policy. For custom event buses
and partner event buses, it displays the name, ARN, policy, state, and
creation time.

To enable your account to receive events from other accounts on its
default event bus, use PutPermission.

For more information about partner event buses, see CreateEventBus.


=head2 DescribeEventSource

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::DescribeEventSource>

Returns: a L<Paws::CloudWatchEvents::DescribeEventSourceResponse> instance

This operation lists details about a partner event source that is
shared with your account.

This operation is run by AWS customers, not by SaaS partners.


=head2 DescribePartnerEventSource

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::DescribePartnerEventSource>

Returns: a L<Paws::CloudWatchEvents::DescribePartnerEventSourceResponse> instance

An SaaS partner can use this operation to list details about a partner
event source that they have created.

AWS customers do not use this operation. Instead, AWS customers can use
DescribeEventSource to see details about a partner event source that is
shared with them.


=head2 DescribeRule

=over

=item Name => Str

=item [EventBusName => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::DescribeRule>

Returns: a L<Paws::CloudWatchEvents::DescribeRuleResponse> instance

Describes the specified rule.

C<DescribeRule> doesn't list the targets of a rule. To see the targets
associated with a rule, use ListTargetsByRule.


=head2 DisableRule

=over

=item Name => Str

=item [EventBusName => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::DisableRule>

Returns: nothing

Disables the specified rule. A disabled rule won't match any events and
won't self-trigger if it has a schedule expression.

When you disable a rule, incoming events might continue to match to the
disabled rule. Allow a short period of time for changes to take effect.


=head2 EnableRule

=over

=item Name => Str

=item [EventBusName => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::EnableRule>

Returns: nothing

Enables the specified rule. If the rule doesn't exist, the operation
fails.

When you enable a rule, incoming events might not immediately start
matching to a newly enabled rule. Allow a short period of time for
changes to take effect.


=head2 ListEventBuses

=over

=item [Limit => Int]

=item [NamePrefix => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::ListEventBuses>

Returns: a L<Paws::CloudWatchEvents::ListEventBusesResponse> instance

Lists all the event buses in your account, including the default event
bus, custom event buses, and partner event buses.

This operation is run by AWS customers, not by SaaS partners.


=head2 ListEventSources

=over

=item [Limit => Int]

=item [NamePrefix => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::ListEventSources>

Returns: a L<Paws::CloudWatchEvents::ListEventSourcesResponse> instance

You can use this to see all the partner event sources that have been
shared with your AWS account. For more information about partner event
sources, see CreateEventBus.

This operation is run by AWS customers, not by SaaS partners.


=head2 ListPartnerEventSourceAccounts

=over

=item EventSourceName => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::ListPartnerEventSourceAccounts>

Returns: a L<Paws::CloudWatchEvents::ListPartnerEventSourceAccountsResponse> instance

An SaaS partner can use this operation to display the AWS account ID
that a particular partner event source name is associated with.

This operation is used by SaaS partners, not by AWS customers.


=head2 ListPartnerEventSources

=over

=item NamePrefix => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::ListPartnerEventSources>

Returns: a L<Paws::CloudWatchEvents::ListPartnerEventSourcesResponse> instance

An SaaS partner can use this operation to list all the partner event
source names that they have created.

This operation is not used by AWS customers.


=head2 ListRuleNamesByTarget

=over

=item TargetArn => Str

=item [EventBusName => Str]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::ListRuleNamesByTarget>

Returns: a L<Paws::CloudWatchEvents::ListRuleNamesByTargetResponse> instance

Lists the rules for the specified target. You can see which rules can
invoke a specific target in your account.


=head2 ListRules

=over

=item [EventBusName => Str]

=item [Limit => Int]

=item [NamePrefix => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::ListRules>

Returns: a L<Paws::CloudWatchEvents::ListRulesResponse> instance

Lists your EventBridge rules. You can either list all the rules or
provide a prefix to match to the rule names.

C<ListRules> doesn't list the targets of a rule. To see the targets
associated with a rule, use ListTargetsByRule.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::ListTagsForResource>

Returns: a L<Paws::CloudWatchEvents::ListTagsForResourceResponse> instance

Displays the tags associated with an EventBridge resource. In
EventBridge, rules can be tagged.


=head2 ListTargetsByRule

=over

=item Rule => Str

=item [EventBusName => Str]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::ListTargetsByRule>

Returns: a L<Paws::CloudWatchEvents::ListTargetsByRuleResponse> instance

Lists the targets assigned to the specified rule.


=head2 PutEvents

=over

=item Entries => ArrayRef[L<Paws::CloudWatchEvents::PutEventsRequestEntry>]


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::PutEvents>

Returns: a L<Paws::CloudWatchEvents::PutEventsResponse> instance

Sends custom events to EventBridge so that they can be matched to
rules. These events can be from your custom applications and services.


=head2 PutPartnerEvents

=over

=item Entries => ArrayRef[L<Paws::CloudWatchEvents::PutPartnerEventsRequestEntry>]


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::PutPartnerEvents>

Returns: a L<Paws::CloudWatchEvents::PutPartnerEventsResponse> instance

This is used by SaaS partners to write events to a customer's partner
event bus.

AWS customers do not use this operation. Instead, AWS customers can use
PutEvents to write custom events from their own applications to an
event bus.


=head2 PutPermission

=over

=item Action => Str

=item Principal => Str

=item StatementId => Str

=item [Condition => L<Paws::CloudWatchEvents::Condition>]

=item [EventBusName => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::PutPermission>

Returns: nothing

Running C<PutPermission> permits the specified AWS account or AWS
organization to put events to the specified I<event bus>. Rules in your
account are triggered by these events arriving to an event bus in your
account.

For another account to send events to your account, that external
account must have a rule with your account's event bus as a target.

To enable multiple AWS accounts to put events to an event bus, run
C<PutPermission> once for each of these accounts. Or, if all the
accounts are members of the same AWS organization, you can run
C<PutPermission> once specifying C<Principal> as "*" and specifying the
AWS organization ID in C<Condition>, to grant permissions to all
accounts in that organization.

If you grant permissions using an organization, then accounts in that
organization must specify a C<RoleArn> with proper permissions when
they use C<PutTarget> to add your account's event bus as a target. For
more information, see Sending and Receiving Events Between AWS Accounts
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html)
in the I<Amazon EventBridge User Guide>.

The permission policy on an event bus can't exceed 10 KB in size.


=head2 PutRule

=over

=item Name => Str

=item [Description => Str]

=item [EventBusName => Str]

=item [EventPattern => Str]

=item [RoleArn => Str]

=item [ScheduleExpression => Str]

=item [State => Str]

=item [Tags => ArrayRef[L<Paws::CloudWatchEvents::Tag>]]


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::PutRule>

Returns: a L<Paws::CloudWatchEvents::PutRuleResponse> instance

Creates or updates the specified rule. Rules are enabled by default or
based on value of the state. You can disable a rule using DisableRule.

A single rule watches for events from a single event bus. Events
generated by AWS services go to your account's default event bus.
Events generated by SaaS partner services or applications go to the
matching partner event bus. If you have custom applications or
services, you can specify whether their events go to your default event
bus or a custom event bus that you have created. For more information,
see CreateEventBus.

If you're updating an existing rule, the rule is replaced with what you
specify in this C<PutRule> command. If you omit arguments in
C<PutRule>, the old values for those arguments aren't kept. Instead,
they're replaced with null values.

When you create or update a rule, incoming events might not immediately
start matching to new or updated rules. Allow a short period of time
for changes to take effect.

A rule must contain at least an C<EventPattern> or
C<ScheduleExpression>. Rules with C<EventPatterns> are triggered when a
matching event is observed. Rules with C<ScheduleExpressions>
self-trigger based on the given schedule. A rule can have both an
C<EventPattern> and a C<ScheduleExpression>, in which case the rule
triggers on matching events as well as on a schedule.

When you initially create a rule, you can optionally assign one or more
tags to the rule. Tags can help you organize and categorize your
resources. You can also use them to scope user permissions, by granting
a user permission to access or change only rules with certain tag
values. To use the C<PutRule> operation and assign tags, you must have
both the C<events:PutRule> and C<events:TagResource> permissions.

If you are updating an existing rule, any tags you specify in the
C<PutRule> operation are ignored. To update the tags of an existing
rule, use TagResource and UntagResource.

Most services in AWS treat C<:> or C</> as the same character in Amazon
Resource Names (ARNs). However, EventBridge uses an exact match in
event patterns and rules. Be sure to use the correct ARN characters
when creating event patterns so that they match the ARN syntax in the
event that you want to match.

In EventBridge, you could create rules that lead to infinite loops,
where a rule is fired repeatedly. For example, a rule might detect that
ACLs have changed on an S3 bucket, and trigger software to change them
to the desired state. If you don't write the rule carefully, the
subsequent change to the ACLs fires the rule again, creating an
infinite loop.

To prevent this, write the rules so that the triggered actions don't
refire the same rule. For example, your rule could fire only if ACLs
are found to be in a bad state, instead of after any change.

An infinite loop can quickly cause higher than expected charges. We
recommend that you use budgeting, which alerts you when charges exceed
your specified limit. For more information, see Managing Your Costs
with Budgets
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/budgets-managing-costs.html).


=head2 PutTargets

=over

=item Rule => Str

=item Targets => ArrayRef[L<Paws::CloudWatchEvents::Target>]

=item [EventBusName => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::PutTargets>

Returns: a L<Paws::CloudWatchEvents::PutTargetsResponse> instance

Adds the specified targets to the specified rule, or updates the
targets if they're already associated with the rule.

Targets are the resources that are invoked when a rule is triggered.

You can configure the following as targets in EventBridge:

=over

=item *

EC2 instances

=item *

SSM Run Command

=item *

SSM Automation

=item *

AWS Lambda functions

=item *

Data streams in Amazon Kinesis Data Streams

=item *

Data delivery streams in Amazon Kinesis Data Firehose

=item *

Amazon ECS tasks

=item *

AWS Step Functions state machines

=item *

AWS Batch jobs

=item *

AWS CodeBuild projects

=item *

Pipelines in AWS CodePipeline

=item *

Amazon Inspector assessment templates

=item *

Amazon SNS topics

=item *

Amazon SQS queues, including FIFO queues

=item *

The default event bus of another AWS account

=back

Creating rules with built-in targets is supported only on the AWS
Management Console. The built-in targets are C<EC2 CreateSnapshot API
call>, C<EC2 RebootInstances API call>, C<EC2 StopInstances API call>,
and C<EC2 TerminateInstances API call>.

For some target types, C<PutTargets> provides target-specific
parameters. If the target is a Kinesis data stream, you can optionally
specify which shard the event goes to by using the C<KinesisParameters>
argument. To invoke a command on multiple EC2 instances with one rule,
you can use the C<RunCommandParameters> field.

To be able to make API calls against the resources that you own, Amazon
EventBridge needs the appropriate permissions. For AWS Lambda and
Amazon SNS resources, EventBridge relies on resource-based policies.
For EC2 instances, Kinesis data streams, and AWS Step Functions state
machines, EventBridge relies on IAM roles that you specify in the
C<RoleARN> argument in C<PutTargets>. For more information, see
Authentication and Access Control
(https://docs.aws.amazon.com/eventbridge/latest/userguide/auth-and-access-control-eventbridge.html)
in the I<Amazon EventBridge User Guide>.

If another AWS account is in the same Region and has granted you
permission (using C<PutPermission>), you can send events to that
account. Set that account's event bus as a target of the rules in your
account. To send the matched events to the other account, specify that
account's event bus as the C<Arn> value when you run C<PutTargets>. If
your account sends events to another account, your account is charged
for each sent event. Each event sent to another account is charged as a
custom event. The account receiving the event isn't charged. For more
information, see Amazon EventBridge Pricing
(https://aws.amazon.com/eventbridge/pricing/).

If you're setting an event bus in another account as the target and
that account granted permission to your account through an organization
instead of directly by the account ID, you must specify a C<RoleArn>
with proper permissions in the C<Target> structure. For more
information, see Sending and Receiving Events Between AWS Accounts
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html)
in the I<Amazon EventBridge User Guide>.

For more information about enabling cross-account events, see
PutPermission.

C<Input>, C<InputPath>, and C<InputTransformer> are mutually exclusive
and optional parameters of a target. When a rule is triggered due to a
matched event:

=over

=item *

If none of the following arguments are specified for a target, the
entire event is passed to the target in JSON format (unless the target
is Amazon EC2 Run Command or Amazon ECS task, in which case nothing
from the event is passed to the target).

=item *

If C<Input> is specified in the form of valid JSON, then the matched
event is overridden with this constant.

=item *

If C<InputPath> is specified in the form of JSONPath (for example,
C<$.detail>), only the part of the event specified in the path is
passed to the target (for example, only the detail part of the event is
passed).

=item *

If C<InputTransformer> is specified, one or more specified JSONPaths
are extracted from the event and used as values in a template that you
specify as the input to the target.

=back

When you specify C<InputPath> or C<InputTransformer>, you must use JSON
dot notation, not bracket notation.

When you add targets to a rule and the associated rule triggers soon
after, new or updated targets might not be immediately invoked. Allow a
short period of time for changes to take effect.

This action can partially fail if too many requests are made at the
same time. If that happens, C<FailedEntryCount> is nonzero in the
response, and each entry in C<FailedEntries> provides the ID of the
failed target and the error code.


=head2 RemovePermission

=over

=item StatementId => Str

=item [EventBusName => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::RemovePermission>

Returns: nothing

Revokes the permission of another AWS account to be able to put events
to the specified event bus. Specify the account to revoke by the
C<StatementId> value that you associated with the account when you
granted it permission with C<PutPermission>. You can find the
C<StatementId> by using DescribeEventBus.


=head2 RemoveTargets

=over

=item Ids => ArrayRef[Str|Undef]

=item Rule => Str

=item [EventBusName => Str]

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::RemoveTargets>

Returns: a L<Paws::CloudWatchEvents::RemoveTargetsResponse> instance

Removes the specified targets from the specified rule. When the rule is
triggered, those targets are no longer be invoked.

When you remove a target, when the associated rule triggers, removed
targets might continue to be invoked. Allow a short period of time for
changes to take effect.

This action can partially fail if too many requests are made at the
same time. If that happens, C<FailedEntryCount> is non-zero in the
response and each entry in C<FailedEntries> provides the ID of the
failed target and the error code.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::CloudWatchEvents::Tag>]


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::TagResource>

Returns: a L<Paws::CloudWatchEvents::TagResourceResponse> instance

Assigns one or more tags (key-value pairs) to the specified EventBridge
resource. Tags can help you organize and categorize your resources. You
can also use them to scope user permissions by granting a user
permission to access or change only resources with certain tag values.
In EventBridge, rules can be tagged.

Tags don't have any semantic meaning to AWS and are interpreted
strictly as strings of characters.

You can use the C<TagResource> action with a rule that already has
tags. If you specify a new tag key for the rule, this tag is appended
to the list of tags associated with the rule. If you specify a tag key
that is already associated with the rule, the new tag value that you
specify replaces the previous value for that tag.

You can associate as many as 50 tags with a resource.


=head2 TestEventPattern

=over

=item Event => Str

=item EventPattern => Str


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::TestEventPattern>

Returns: a L<Paws::CloudWatchEvents::TestEventPatternResponse> instance

Tests whether the specified event pattern matches the provided event.

Most services in AWS treat C<:> or C</> as the same character in Amazon
Resource Names (ARNs). However, EventBridge uses an exact match in
event patterns and rules. Be sure to use the correct ARN characters
when creating event patterns so that they match the ARN syntax in the
event that you want to match.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CloudWatchEvents::UntagResource>

Returns: a L<Paws::CloudWatchEvents::UntagResourceResponse> instance

Removes one or more tags from the specified EventBridge resource. In
EventBridge, rules can be tagged.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllRuleNamesByTarget(sub { },TargetArn => Str, [EventBusName => Str, Limit => Int, NextToken => Str])

=head2 ListAllRuleNamesByTarget(TargetArn => Str, [EventBusName => Str, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RuleNames, passing the object as the first parameter, and the string 'RuleNames' as the second parameter 

If not, it will return a a L<Paws::CloudWatchEvents::ListRuleNamesByTargetResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRules(sub { },[EventBusName => Str, Limit => Int, NamePrefix => Str, NextToken => Str])

=head2 ListAllRules([EventBusName => Str, Limit => Int, NamePrefix => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Rules, passing the object as the first parameter, and the string 'Rules' as the second parameter 

If not, it will return a a L<Paws::CloudWatchEvents::ListRulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTargetsByRule(sub { },Rule => Str, [EventBusName => Str, Limit => Int, NextToken => Str])

=head2 ListAllTargetsByRule(Rule => Str, [EventBusName => Str, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Targets, passing the object as the first parameter, and the string 'Targets' as the second parameter 

If not, it will return a a L<Paws::CloudWatchEvents::ListTargetsByRuleResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

