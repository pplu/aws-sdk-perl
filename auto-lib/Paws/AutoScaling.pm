
use Paws::API;


package Paws::AutoScaling {
  use Moose;
  sub service { 'autoscaling' }
  sub version { '2011-01-01' }
  sub flattened_arrays { 0 }

  with 'Paws::API::Caller', 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller', 'Paws::Net::XMLResponse';

  
  sub AttachInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::AttachInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CompleteLifecycleAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::CompleteLifecycleAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAutoScalingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::CreateAutoScalingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLaunchConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::CreateLaunchConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateOrUpdateTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::CreateOrUpdateTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAutoScalingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DeleteAutoScalingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLaunchConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DeleteLaunchConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLifecycleHook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DeleteLifecycleHook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNotificationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DeleteNotificationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DeletePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteScheduledAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DeleteScheduledAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DeleteTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountLimits {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DescribeAccountLimits', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAdjustmentTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DescribeAdjustmentTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAutoScalingGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DescribeAutoScalingGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAutoScalingInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DescribeAutoScalingInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAutoScalingNotificationTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DescribeAutoScalingNotificationTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLaunchConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DescribeLaunchConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLifecycleHooks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DescribeLifecycleHooks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLifecycleHookTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DescribeLifecycleHookTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMetricCollectionTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DescribeMetricCollectionTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNotificationConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DescribeNotificationConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DescribePolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScalingActivities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DescribeScalingActivities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScalingProcessTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DescribeScalingProcessTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScheduledActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DescribeScheduledActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DescribeTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTerminationPolicyTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DescribeTerminationPolicyTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DetachInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableMetricsCollection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DisableMetricsCollection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableMetricsCollection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::EnableMetricsCollection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnterStandby {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::EnterStandby', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExecutePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::ExecutePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExitStandby {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::ExitStandby', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutLifecycleHook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::PutLifecycleHook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutNotificationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::PutNotificationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutScalingPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::PutScalingPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutScheduledUpdateGroupAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::PutScheduledUpdateGroupAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RecordLifecycleActionHeartbeat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::RecordLifecycleActionHeartbeat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResumeProcesses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::ResumeProcesses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetDesiredCapacity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::SetDesiredCapacity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetInstanceHealth {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::SetInstanceHealth', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SuspendProcesses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::SuspendProcesses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateInstanceInAutoScalingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::TerminateInstanceInAutoScalingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAutoScalingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::UpdateAutoScalingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAllAutoScalingGroups {
    my $self = shift;

    my $result = $self->DescribeAutoScalingGroups(@_);
    my $array = [];
    push @$array, @{ $result->AutoScalingGroups };

    while ($result->NextToken) {
      $result = $self->DescribeAutoScalingGroups(@_, NextToken => $result->NextToken);
      push @$array, @{ $result->AutoScalingGroups };
    }

    return 'Paws::AutoScaling::DescribeAutoScalingGroups'->_returns->new(AutoScalingGroups => $array);
  }
  sub DescribeAllAutoScalingInstances {
    my $self = shift;

    my $result = $self->DescribeAutoScalingInstances(@_);
    my $array = [];
    push @$array, @{ $result->AutoScalingInstances };

    while ($result->NextToken) {
      $result = $self->DescribeAutoScalingInstances(@_, NextToken => $result->NextToken);
      push @$array, @{ $result->AutoScalingInstances };
    }

    return 'Paws::AutoScaling::DescribeAutoScalingInstances'->_returns->new(AutoScalingInstances => $array);
  }
  sub DescribeAllLaunchConfigurations {
    my $self = shift;

    my $result = $self->DescribeLaunchConfigurations(@_);
    my $array = [];
    push @$array, @{ $result->LaunchConfigurations };

    while ($result->NextToken) {
      $result = $self->DescribeLaunchConfigurations(@_, NextToken => $result->NextToken);
      push @$array, @{ $result->LaunchConfigurations };
    }

    return 'Paws::AutoScaling::DescribeLaunchConfigurations'->_returns->new(LaunchConfigurations => $array);
  }
  sub DescribeAllNotificationConfigurations {
    my $self = shift;

    my $result = $self->DescribeNotificationConfigurations(@_);
    my $array = [];
    push @$array, @{ $result->NotificationConfigurations };

    while ($result->NextToken) {
      $result = $self->DescribeNotificationConfigurations(@_, NextToken => $result->NextToken);
      push @$array, @{ $result->NotificationConfigurations };
    }

    return 'Paws::AutoScaling::DescribeNotificationConfigurations'->_returns->new(NotificationConfigurations => $array);
  }
  sub DescribeAllPolicies {
    my $self = shift;

    my $result = $self->DescribePolicies(@_);
    my $array = [];
    push @$array, @{ $result->ScalingPolicies };

    while ($result->NextToken) {
      $result = $self->DescribePolicies(@_, NextToken => $result->NextToken);
      push @$array, @{ $result->ScalingPolicies };
    }

    return 'Paws::AutoScaling::DescribePolicies'->_returns->new(ScalingPolicies => $array);
  }
  sub DescribeAllScalingActivities {
    my $self = shift;

    my $result = $self->DescribeScalingActivities(@_);
    my $array = [];
    push @$array, @{ $result->Activities };

    while ($result->NextToken) {
      $result = $self->DescribeScalingActivities(@_, NextToken => $result->NextToken);
      push @$array, @{ $result->Activities };
    }

    return 'Paws::AutoScaling::DescribeScalingActivities'->_returns->new(Activities => $array);
  }
  sub DescribeAllScheduledActions {
    my $self = shift;

    my $result = $self->DescribeScheduledActions(@_);
    my $array = [];
    push @$array, @{ $result->ScheduledUpdateGroupActions };

    while ($result->NextToken) {
      $result = $self->DescribeScheduledActions(@_, NextToken => $result->NextToken);
      push @$array, @{ $result->ScheduledUpdateGroupActions };
    }

    return 'Paws::AutoScaling::DescribeScheduledActions'->_returns->new(ScheduledUpdateGroupActions => $array);
  }
  sub DescribeAllTags {
    my $self = shift;

    my $result = $self->DescribeTags(@_);
    my $array = [];
    push @$array, @{ $result->Tags };

    while ($result->NextToken) {
      $result = $self->DescribeTags(@_, NextToken => $result->NextToken);
      push @$array, @{ $result->Tags };
    }

    return 'Paws::AutoScaling::DescribeTags'->_returns->new(Tags => $array);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling - Perl Interface to AWS Auto Scaling

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



Auto Scaling

Auto Scaling is designed to automatically launch or terminate EC2
instances based on user-defined policies, schedules, and health checks.
Use this service in conjunction with the Amazon CloudWatch and Elastic
Load Balancing services.










=head1 METHODS

=head2 AttachInstances()

  Arguments described in: L<Paws::AutoScaling::AttachInstances>

  Returns: nothing

  

Attaches one or more EC2 instances to the specified Auto Scaling group.

For more information, see Attach Amazon EC2 Instances to Your Existing
Auto Scaling Group in the I<Auto Scaling Developer Guide>.











=head2 CompleteLifecycleAction()

  Arguments described in: L<Paws::AutoScaling::CompleteLifecycleAction>

  Returns: L<Paws::AutoScaling::CompleteLifecycleActionAnswer>

  

Completes the lifecycle action for the associated token initiated under
the given lifecycle hook with the specified result.

This operation is a part of the basic sequence for adding a lifecycle
hook to an Auto Scaling group:

=over

=item 1. Create a notification target. A target can be either an Amazon
SQS queue or an Amazon SNS topic.

=item 2. Create an IAM role. This role allows Auto Scaling to publish
lifecycle notifications to the designated SQS queue or SNS topic.

=item 3. Create the lifecycle hook. You can create a hook that acts
when instances launch or when instances terminate.

=item 4. If necessary, record the lifecycle action heartbeat to keep
the instance in a pending state.

=item 5. B<Complete the lifecycle action>.

=back

For more information, see Auto Scaling Pending State and Auto Scaling
Terminating State in the I<Auto Scaling Developer Guide>.











=head2 CreateAutoScalingGroup()

  Arguments described in: L<Paws::AutoScaling::CreateAutoScalingGroup>

  Returns: nothing

  

Creates an Auto Scaling group with the specified name and attributes.

If you exceed your maximum limit of Auto Scaling groups, which by
default is 20 per region, the call fails. For information about viewing
and updating these limits, see DescribeAccountLimits.











=head2 CreateLaunchConfiguration()

  Arguments described in: L<Paws::AutoScaling::CreateLaunchConfiguration>

  Returns: nothing

  

Creates a launch configuration.

If you exceed your maximum limit of launch configurations, which by
default is 100 per region, the call fails. For information about
viewing and updating these limits, see DescribeAccountLimits.











=head2 CreateOrUpdateTags()

  Arguments described in: L<Paws::AutoScaling::CreateOrUpdateTags>

  Returns: nothing

  

Creates or updates tags for the specified Auto Scaling group.

A tag's definition is composed of a resource ID, resource type, key and
value, and the propagate flag. Value and the propagate flag are
optional parameters. See the Request Parameters for more information.

For more information, see Add, Modify, or Remove Auto Scaling Group
Tags in the I<Auto Scaling Developer Guide>.











=head2 DeleteAutoScalingGroup()

  Arguments described in: L<Paws::AutoScaling::DeleteAutoScalingGroup>

  Returns: nothing

  

Deletes the specified Auto Scaling group.

The group must have no instances and no scaling activities in progress.

To remove all instances before calling DeleteAutoScalingGroup, you can
call UpdateAutoScalingGroup to set the minimum and maximum size of the
AutoScalingGroup to zero.











=head2 DeleteLaunchConfiguration()

  Arguments described in: L<Paws::AutoScaling::DeleteLaunchConfiguration>

  Returns: nothing

  

Deletes the specified launch configuration.

The launch configuration must not be attached to an Auto Scaling group.
When this call completes, the launch configuration is no longer
available for use.











=head2 DeleteLifecycleHook()

  Arguments described in: L<Paws::AutoScaling::DeleteLifecycleHook>

  Returns: L<Paws::AutoScaling::DeleteLifecycleHookAnswer>

  

Deletes the specified lifecycle hook.

If there are any outstanding lifecycle actions, they are completed
first (C<ABANDON> for launching instances, C<CONTINUE> for terminating
instances).











=head2 DeleteNotificationConfiguration()

  Arguments described in: L<Paws::AutoScaling::DeleteNotificationConfiguration>

  Returns: nothing

  

Deletes the specified notification.











=head2 DeletePolicy()

  Arguments described in: L<Paws::AutoScaling::DeletePolicy>

  Returns: nothing

  

Deletes the specified Auto Scaling policy.











=head2 DeleteScheduledAction()

  Arguments described in: L<Paws::AutoScaling::DeleteScheduledAction>

  Returns: nothing

  

Deletes the specified scheduled action.











=head2 DeleteTags()

  Arguments described in: L<Paws::AutoScaling::DeleteTags>

  Returns: nothing

  

Deletes the specified tags.











=head2 DescribeAccountLimits()

  Arguments described in: L<Paws::AutoScaling::DescribeAccountLimits>

  Returns: L<Paws::AutoScaling::DescribeAccountLimitsAnswer>

  

Describes the current Auto Scaling resource limits for your AWS
account.

For information about requesting an increase in these limits, see AWS
Service Limits.











=head2 DescribeAdjustmentTypes()

  Arguments described in: L<Paws::AutoScaling::DescribeAdjustmentTypes>

  Returns: L<Paws::AutoScaling::DescribeAdjustmentTypesAnswer>

  

Lists the policy adjustment types for use with PutScalingPolicy.











=head2 DescribeAutoScalingGroups()

  Arguments described in: L<Paws::AutoScaling::DescribeAutoScalingGroups>

  Returns: L<Paws::AutoScaling::AutoScalingGroupsType>

  

Describes one or more Auto Scaling groups. If a list of names is not
provided, the call describes all Auto Scaling groups.

You can specify a maximum number of items to be returned with a single
call. If there are more items to return, the call returns a token. To
get the next set of items, repeat the call with the returned token in
the C<NextToken> parameter.











=head2 DescribeAutoScalingInstances()

  Arguments described in: L<Paws::AutoScaling::DescribeAutoScalingInstances>

  Returns: L<Paws::AutoScaling::AutoScalingInstancesType>

  

Describes one or more Auto Scaling instances. If a list is not
provided, the call describes all instances.

You can describe up to a maximum of 50 instances with a single call. By
default, a call returns up to 20 instances. If there are more items to
return, the call returns a token. To get the next set of items, repeat
the call with the returned token in the C<NextToken> parameter.











=head2 DescribeAutoScalingNotificationTypes()

  Arguments described in: L<Paws::AutoScaling::DescribeAutoScalingNotificationTypes>

  Returns: L<Paws::AutoScaling::DescribeAutoScalingNotificationTypesAnswer>

  

Lists the notification types that are supported by Auto Scaling.











=head2 DescribeLaunchConfigurations()

  Arguments described in: L<Paws::AutoScaling::DescribeLaunchConfigurations>

  Returns: L<Paws::AutoScaling::LaunchConfigurationsType>

  

Describes one or more launch configurations. If you omit the list of
names, then the call describes all launch configurations.

You can specify a maximum number of items to be returned with a single
call. If there are more items to return, the call returns a token. To
get the next set of items, repeat the call with the returned token in
the C<NextToken> parameter.











=head2 DescribeLifecycleHooks()

  Arguments described in: L<Paws::AutoScaling::DescribeLifecycleHooks>

  Returns: L<Paws::AutoScaling::DescribeLifecycleHooksAnswer>

  

Describes the lifecycle hooks for the specified Auto Scaling group.











=head2 DescribeLifecycleHookTypes()

  Arguments described in: L<Paws::AutoScaling::DescribeLifecycleHookTypes>

  Returns: L<Paws::AutoScaling::DescribeLifecycleHookTypesAnswer>

  

Describes the available types of lifecycle hooks.











=head2 DescribeMetricCollectionTypes()

  Arguments described in: L<Paws::AutoScaling::DescribeMetricCollectionTypes>

  Returns: L<Paws::AutoScaling::DescribeMetricCollectionTypesAnswer>

  

Returns a list of metrics and a corresponding list of granularities for
each metric.

The C<GroupStandbyInstances> metric is not returned by default. You
must explicitly request it when calling EnableMetricsCollection.











=head2 DescribeNotificationConfigurations()

  Arguments described in: L<Paws::AutoScaling::DescribeNotificationConfigurations>

  Returns: L<Paws::AutoScaling::DescribeNotificationConfigurationsAnswer>

  

Describes the notification actions associated with the specified Auto
Scaling group.











=head2 DescribePolicies()

  Arguments described in: L<Paws::AutoScaling::DescribePolicies>

  Returns: L<Paws::AutoScaling::PoliciesType>

  

Describes the policies for the specified Auto Scaling group.

You can specify a maximum number of items to be returned with a single
call. If there are more items to return, the call returns a token. To
get the next set of items, repeat the call with the returned token in
the C<NextToken> parameter.











=head2 DescribeScalingActivities()

  Arguments described in: L<Paws::AutoScaling::DescribeScalingActivities>

  Returns: L<Paws::AutoScaling::ActivitiesType>

  

Describes one or more scaling activities for the specified Auto Scaling
group. If you omit the C<ActivityIds>, the call returns all activities
from the past six weeks. Activities are sorted by the start time.
Activities still in progress appear first on the list.

You can specify a maximum number of items to be returned with a single
call. If there are more items to return, the call returns a token. To
get the next set of items, repeat the call with the returned token in
the C<NextToken> parameter.











=head2 DescribeScalingProcessTypes()

  Arguments described in: L<Paws::AutoScaling::DescribeScalingProcessTypes>

  Returns: L<Paws::AutoScaling::ProcessesType>

  

Returns scaling process types for use in the ResumeProcesses and
SuspendProcesses actions.











=head2 DescribeScheduledActions()

  Arguments described in: L<Paws::AutoScaling::DescribeScheduledActions>

  Returns: L<Paws::AutoScaling::ScheduledActionsType>

  

Lists the actions scheduled for your Auto Scaling group that haven't
been executed. To list the actions that were already executed, use
DescribeScalingActivities.











=head2 DescribeTags()

  Arguments described in: L<Paws::AutoScaling::DescribeTags>

  Returns: L<Paws::AutoScaling::TagsType>

  

Describes the specified tags.

You can use filters to limit the results. For example, you can query
for the tags for a specific Auto Scaling group. You can specify
multiple values for a filter. A tag must match at least one of the
specified values for it to be included in the results.

You can also specify multiple filters. The result includes information
for a particular tag only if it matches all the filters. If there's no
match, no special message is returned.











=head2 DescribeTerminationPolicyTypes()

  Arguments described in: L<Paws::AutoScaling::DescribeTerminationPolicyTypes>

  Returns: L<Paws::AutoScaling::DescribeTerminationPolicyTypesAnswer>

  

Lists the termination policies supported by Auto Scaling.











=head2 DetachInstances()

  Arguments described in: L<Paws::AutoScaling::DetachInstances>

  Returns: L<Paws::AutoScaling::DetachInstancesAnswer>

  

Removes one or more instances from the specified Auto Scaling group.
After the instances are detached, you can manage them independently
from the rest of the Auto Scaling group.

For more information, see Detach EC2 Instances from Your Auto Scaling
Group in the I<Auto Scaling Developer Guide>.











=head2 DisableMetricsCollection()

  Arguments described in: L<Paws::AutoScaling::DisableMetricsCollection>

  Returns: nothing

  

Disables monitoring of the specified metrics for the specified Auto
Scaling group.











=head2 EnableMetricsCollection()

  Arguments described in: L<Paws::AutoScaling::EnableMetricsCollection>

  Returns: nothing

  

Enables monitoring of the specified metrics for the specified Auto
Scaling group.

You can only enable metrics collection if C<InstanceMonitoring> in the
launch configuration for the group is set to C<True>.











=head2 EnterStandby()

  Arguments described in: L<Paws::AutoScaling::EnterStandby>

  Returns: L<Paws::AutoScaling::EnterStandbyAnswer>

  

Moves the specified instances into C<Standby> mode.

For more information, see Auto Scaling InService State in the I<Auto
Scaling Developer Guide>.











=head2 ExecutePolicy()

  Arguments described in: L<Paws::AutoScaling::ExecutePolicy>

  Returns: nothing

  

Executes the specified policy.











=head2 ExitStandby()

  Arguments described in: L<Paws::AutoScaling::ExitStandby>

  Returns: L<Paws::AutoScaling::ExitStandbyAnswer>

  

Moves the specified instances out of C<Standby> mode.

For more information, see Auto Scaling InService State in the I<Auto
Scaling Developer Guide>.











=head2 PutLifecycleHook()

  Arguments described in: L<Paws::AutoScaling::PutLifecycleHook>

  Returns: L<Paws::AutoScaling::PutLifecycleHookAnswer>

  

Creates or updates a lifecycle hook for the specified Auto Scaling
Group.

A lifecycle hook tells Auto Scaling that you want to perform an action
on an instance that is not actively in service; for example, either
when the instance launches or before the instance terminates.

This operation is a part of the basic sequence for adding a lifecycle
hook to an Auto Scaling group:

=over

=item 1. Create a notification target. A target can be either an Amazon
SQS queue or an Amazon SNS topic.

=item 2. Create an IAM role. This role allows Auto Scaling to publish
lifecycle notifications to the designated SQS queue or SNS topic.

=item 3. B<Create the lifecycle hook. You can create a hook that acts
when instances launch or when instances terminate.>

=item 4. If necessary, record the lifecycle action heartbeat to keep
the instance in a pending state.

=item 5. Complete the lifecycle action.

=back

For more information, see Auto Scaling Pending State and Auto Scaling
Terminating State in the I<Auto Scaling Developer Guide>.











=head2 PutNotificationConfiguration()

  Arguments described in: L<Paws::AutoScaling::PutNotificationConfiguration>

  Returns: nothing

  

Configures an Auto Scaling group to send notifications when specified
events take place. Subscribers to this topic can have messages for
events delivered to an endpoint such as a web server or email address.

For more information see Getting Notifications When Your Auto Scaling
Group Changes in the I<Auto Scaling Developer Guide>.

This configuration overwrites an existing configuration.











=head2 PutScalingPolicy()

  Arguments described in: L<Paws::AutoScaling::PutScalingPolicy>

  Returns: L<Paws::AutoScaling::PolicyARNType>

  

Creates or updates a policy for an Auto Scaling group. To update an
existing policy, use the existing policy name and set the parameters
you want to change. Any existing parameter not changed in an update to
an existing policy is not changed in this update request.











=head2 PutScheduledUpdateGroupAction()

  Arguments described in: L<Paws::AutoScaling::PutScheduledUpdateGroupAction>

  Returns: nothing

  

Creates or updates a scheduled scaling action for an Auto Scaling
group. When updating a scheduled scaling action, if you leave a
parameter unspecified, the corresponding value remains unchanged in the
affected Auto Scaling group.

For more information, see Scheduled Scaling in the I<Auto Scaling
Developer Guide>.

Auto Scaling supports the date and time expressed in
"YYYY-MM-DDThh:mm:ssZ" format in UTC/GMT only.











=head2 RecordLifecycleActionHeartbeat()

  Arguments described in: L<Paws::AutoScaling::RecordLifecycleActionHeartbeat>

  Returns: L<Paws::AutoScaling::RecordLifecycleActionHeartbeatAnswer>

  

Records a heartbeat for the lifecycle action associated with a specific
token. This extends the timeout by the length of time defined by the
C<HeartbeatTimeout> parameter of PutLifecycleHook.

This operation is a part of the basic sequence for adding a lifecycle
hook to an Auto Scaling group:

=over

=item 1. Create a notification target. A target can be either an Amazon
SQS queue or an Amazon SNS topic.

=item 2. Create an IAM role. This role allows Auto Scaling to publish
lifecycle notifications to the designated SQS queue or SNS topic.

=item 3. Create the lifecycle hook. You can create a hook that acts
when instances launch or when instances terminate.

=item 4. B<If necessary, record the lifecycle action heartbeat to keep
the instance in a pending state.>

=item 5. Complete the lifecycle action.

=back

For more information, see Auto Scaling Pending State and Auto Scaling
Terminating State in the I<Auto Scaling Developer Guide>.











=head2 ResumeProcesses()

  Arguments described in: L<Paws::AutoScaling::ResumeProcesses>

  Returns: nothing

  

Resumes the specified suspended Auto Scaling processes for the
specified Auto Scaling group. To resume specific processes, use the
C<ScalingProcesses> parameter. To resume all processes, omit the
C<ScalingProcesses> parameter. For more information, see Suspend and
Resume Auto Scaling Processes in the I<Auto Scaling Developer Guide>.











=head2 SetDesiredCapacity()

  Arguments described in: L<Paws::AutoScaling::SetDesiredCapacity>

  Returns: nothing

  

Sets the size of the specified AutoScalingGroup.











=head2 SetInstanceHealth()

  Arguments described in: L<Paws::AutoScaling::SetInstanceHealth>

  Returns: nothing

  

Sets the health status of the specified instance.

For more information, see Health Checks in the I<Auto Scaling Developer
Guide>.











=head2 SuspendProcesses()

  Arguments described in: L<Paws::AutoScaling::SuspendProcesses>

  Returns: nothing

  

Suspends the specified Auto Scaling processes for the specified Auto
Scaling group. To suspend specific processes, use the
C<ScalingProcesses> parameter. To suspend all processes, omit the
C<ScalingProcesses> parameter.

Note that if you suspend either the C<Launch> or C<Terminate> process
types, it can prevent other process types from functioning properly.

To resume processes that have been suspended, use ResumeProcesses.

For more information, see Suspend and Resume Auto Scaling Processes in
the I<Auto Scaling Developer Guide>.











=head2 TerminateInstanceInAutoScalingGroup()

  Arguments described in: L<Paws::AutoScaling::TerminateInstanceInAutoScalingGroup>

  Returns: L<Paws::AutoScaling::ActivityType>

  

Terminates the specified instance and optionally adjusts the desired
group size.

This call simply makes a termination request. The instances is not
terminated immediately.











=head2 UpdateAutoScalingGroup()

  Arguments described in: L<Paws::AutoScaling::UpdateAutoScalingGroup>

  Returns: nothing

  

Updates the configuration for the specified AutoScalingGroup.

To update an Auto Scaling group with a launch configuration that has
the C<InstanceMonitoring> flag set to C<False>, you must first ensure
that collection of group metrics is disabled. Otherwise, calls to
UpdateAutoScalingGroup will fail. If you have previously enabled group
metrics collection, you can disable collection of all group metrics by
calling DisableMetricsCollection.

The new settings are registered upon the completion of this call. Any
launch configuration settings take effect on any triggers after this
call returns. Scaling activities that are currently in progress aren't
affected.

=over

=item *

If a new value is specified for I<MinSize> without specifying the value
for I<DesiredCapacity>, and if the new I<MinSize> is larger than the
current size of the Auto Scaling group, there will be an implicit call
to SetDesiredCapacity to set the group to the new I<MinSize>.

=item *

If a new value is specified for I<MaxSize> without specifying the value
for I<DesiredCapacity>, and the new I<MaxSize> is smaller than the
current size of the Auto Scaling group, there will be an implicit call
to SetDesiredCapacity to set the group to the new I<MaxSize>.

=item *

All other optional parameters are left unchanged if not passed in the
request.

=back











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

