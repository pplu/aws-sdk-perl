package Paws::AutoScaling;
  use Moose;
  sub service { 'autoscaling' }
  sub version { '2011-01-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller', 'Paws::Net::XMLResponse';

  
  sub AttachInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::AttachInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachLoadBalancers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::AttachLoadBalancers', @_);
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
  sub DescribeLoadBalancers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DescribeLoadBalancers', @_);
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
  sub DetachLoadBalancers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::DetachLoadBalancers', @_);
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
  sub SetInstanceProtection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScaling::SetInstanceProtection', @_);
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

  sub operations { qw/AttachInstances AttachLoadBalancers CompleteLifecycleAction CreateAutoScalingGroup CreateLaunchConfiguration CreateOrUpdateTags DeleteAutoScalingGroup DeleteLaunchConfiguration DeleteLifecycleHook DeleteNotificationConfiguration DeletePolicy DeleteScheduledAction DeleteTags DescribeAccountLimits DescribeAdjustmentTypes DescribeAutoScalingGroups DescribeAutoScalingInstances DescribeAutoScalingNotificationTypes DescribeLaunchConfigurations DescribeLifecycleHooks DescribeLifecycleHookTypes DescribeLoadBalancers DescribeMetricCollectionTypes DescribeNotificationConfigurations DescribePolicies DescribeScalingActivities DescribeScalingProcessTypes DescribeScheduledActions DescribeTags DescribeTerminationPolicyTypes DetachInstances DetachLoadBalancers DisableMetricsCollection EnableMetricsCollection EnterStandby ExecutePolicy ExitStandby PutLifecycleHook PutNotificationConfiguration PutScalingPolicy PutScheduledUpdateGroupAction RecordLifecycleActionHeartbeat ResumeProcesses SetDesiredCapacity SetInstanceHealth SetInstanceProtection SuspendProcesses TerminateInstanceInAutoScalingGroup UpdateAutoScalingGroup / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling - Perl Interface to AWS Auto Scaling

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('AutoScaling');
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

Auto Scaling

Auto Scaling is designed to automatically launch or terminate EC2
instances based on user-defined policies, schedules, and health checks.
Use this service in conjunction with the Amazon CloudWatch and Elastic
Load Balancing services.

=head1 METHODS

=head2 AttachInstances(AutoScalingGroupName => Str, [InstanceIds => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::AutoScaling::AttachInstances>

Returns: nothing

  Attaches one or more EC2 instances to the specified Auto Scaling group.

When you attach instances, Auto Scaling increases the desired capacity
of the group by the number of instances being attached. If the number
of instances being attached plus the desired capacity of the group
exceeds the maximum size of the group, the operation fails.

For more information, see Attach EC2 Instances to Your Auto Scaling
Group in the I<Auto Scaling Developer Guide>.


=head2 AttachLoadBalancers([AutoScalingGroupName => Str, LoadBalancerNames => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::AutoScaling::AttachLoadBalancers>

Returns: a L<Paws::AutoScaling::AttachLoadBalancersResultType> instance

  Attaches one or more load balancers to the specified Auto Scaling
group.

To describe the load balancers for an Auto Scaling group, use
DescribeLoadBalancers. To detach the load balancer from the Auto
Scaling group, use DetachLoadBalancers.

For more information, see Attach a Load Balancer to Your Auto Scaling
Group in the I<Auto Scaling Developer Guide>.


=head2 CompleteLifecycleAction(AutoScalingGroupName => Str, LifecycleActionResult => Str, LifecycleHookName => Str, [InstanceId => Str, LifecycleActionToken => Str])

Each argument is described in detail in: L<Paws::AutoScaling::CompleteLifecycleAction>

Returns: a L<Paws::AutoScaling::CompleteLifecycleActionAnswer> instance

  Completes the lifecycle action for the specified token or instance with
the specified result.

This step is a part of the procedure for adding a lifecycle hook to an
Auto Scaling group:

=over

=item 1. (Optional) Create a Lambda function and a rule that allows
CloudWatch Events to invoke your Lambda function when Auto Scaling
launches or terminates instances.

=item 2. (Optional) Create a notification target and an IAM role. The
target can be either an Amazon SQS queue or an Amazon SNS topic. The
role allows Auto Scaling to publish lifecycle notifications to the
target.

=item 3. Create the lifecycle hook. Specify whether the hook is used
when the instances launch or terminate.

=item 4. If you need more time, record the lifecycle action heartbeat
to keep the instance in a pending state.

=item 5. B<If you finish before the timeout period ends, complete the
lifecycle action.>

=back

For more information, see Auto Scaling Lifecycle in the I<Auto Scaling
Developer Guide>.


=head2 CreateAutoScalingGroup(AutoScalingGroupName => Str, MaxSize => Int, MinSize => Int, [AvailabilityZones => ArrayRef[Str], DefaultCooldown => Int, DesiredCapacity => Int, HealthCheckGracePeriod => Int, HealthCheckType => Str, InstanceId => Str, LaunchConfigurationName => Str, LoadBalancerNames => ArrayRef[Str], NewInstancesProtectedFromScaleIn => Bool, PlacementGroup => Str, Tags => ArrayRef[L<Paws::AutoScaling::Tag>], TerminationPolicies => ArrayRef[Str], VPCZoneIdentifier => Str])

Each argument is described in detail in: L<Paws::AutoScaling::CreateAutoScalingGroup>

Returns: nothing

  Creates an Auto Scaling group with the specified name and attributes.

If you exceed your maximum limit of Auto Scaling groups, which by
default is 20 per region, the call fails. For information about viewing
and updating this limit, see DescribeAccountLimits.

For more information, see Auto Scaling Groups in the I<Auto Scaling
Developer Guide>.


=head2 CreateLaunchConfiguration(LaunchConfigurationName => Str, [AssociatePublicIpAddress => Bool, BlockDeviceMappings => ArrayRef[L<Paws::AutoScaling::BlockDeviceMapping>], ClassicLinkVPCId => Str, ClassicLinkVPCSecurityGroups => ArrayRef[Str], EbsOptimized => Bool, IamInstanceProfile => Str, ImageId => Str, InstanceId => Str, InstanceMonitoring => L<Paws::AutoScaling::InstanceMonitoring>, InstanceType => Str, KernelId => Str, KeyName => Str, PlacementTenancy => Str, RamdiskId => Str, SecurityGroups => ArrayRef[Str], SpotPrice => Str, UserData => Str])

Each argument is described in detail in: L<Paws::AutoScaling::CreateLaunchConfiguration>

Returns: nothing

  Creates a launch configuration.

If you exceed your maximum limit of launch configurations, which by
default is 100 per region, the call fails. For information about
viewing and updating this limit, see DescribeAccountLimits.

For more information, see Launch Configurations in the I<Auto Scaling
Developer Guide>.


=head2 CreateOrUpdateTags(Tags => ArrayRef[L<Paws::AutoScaling::Tag>])

Each argument is described in detail in: L<Paws::AutoScaling::CreateOrUpdateTags>

Returns: nothing

  Creates or updates tags for the specified Auto Scaling group.

When you specify a tag with a key that already exists, the operation
overwrites the previous tag definition, and you do not get an error
message.

For more information, see Tagging Auto Scaling Groups and Instances in
the I<Auto Scaling Developer Guide>.


=head2 DeleteAutoScalingGroup(AutoScalingGroupName => Str, [ForceDelete => Bool])

Each argument is described in detail in: L<Paws::AutoScaling::DeleteAutoScalingGroup>

Returns: nothing

  Deletes the specified Auto Scaling group.

If the group has instances or scaling activities in progress, you must
specify the option to force the deletion in order for it to succeed.

If the group has policies, deleting the group deletes the policies, the
underlying alarm actions, and any alarm that no longer has an
associated action.

To remove instances from the Auto Scaling group before deleting it,
call DetachInstances with the list of instances and the option to
decrement the desired capacity so that Auto Scaling does not launch
replacement instances.

To terminate all instances before deleting the Auto Scaling group, call
UpdateAutoScalingGroup and set the minimum size and desired capacity of
the Auto Scaling group to zero.


=head2 DeleteLaunchConfiguration(LaunchConfigurationName => Str)

Each argument is described in detail in: L<Paws::AutoScaling::DeleteLaunchConfiguration>

Returns: nothing

  Deletes the specified launch configuration.

The launch configuration must not be attached to an Auto Scaling group.
When this call completes, the launch configuration is no longer
available for use.


=head2 DeleteLifecycleHook(AutoScalingGroupName => Str, LifecycleHookName => Str)

Each argument is described in detail in: L<Paws::AutoScaling::DeleteLifecycleHook>

Returns: a L<Paws::AutoScaling::DeleteLifecycleHookAnswer> instance

  Deletes the specified lifecycle hook.

If there are any outstanding lifecycle actions, they are completed
first (C<ABANDON> for launching instances, C<CONTINUE> for terminating
instances).


=head2 DeleteNotificationConfiguration(AutoScalingGroupName => Str, TopicARN => Str)

Each argument is described in detail in: L<Paws::AutoScaling::DeleteNotificationConfiguration>

Returns: nothing

  Deletes the specified notification.


=head2 DeletePolicy(PolicyName => Str, [AutoScalingGroupName => Str])

Each argument is described in detail in: L<Paws::AutoScaling::DeletePolicy>

Returns: nothing

  Deletes the specified Auto Scaling policy.

Deleting a policy deletes the underlying alarm action, but does not
delete the alarm, even if it no longer has an associated action.


=head2 DeleteScheduledAction(ScheduledActionName => Str, [AutoScalingGroupName => Str])

Each argument is described in detail in: L<Paws::AutoScaling::DeleteScheduledAction>

Returns: nothing

  Deletes the specified scheduled action.


=head2 DeleteTags(Tags => ArrayRef[L<Paws::AutoScaling::Tag>])

Each argument is described in detail in: L<Paws::AutoScaling::DeleteTags>

Returns: nothing

  Deletes the specified tags.


=head2 DescribeAccountLimits( => )

Each argument is described in detail in: L<Paws::AutoScaling::DescribeAccountLimits>

Returns: a L<Paws::AutoScaling::DescribeAccountLimitsAnswer> instance

  Describes the current Auto Scaling resource limits for your AWS
account.

For information about requesting an increase in these limits, see AWS
Service Limits in the I<Amazon Web Services General Reference>.


=head2 DescribeAdjustmentTypes( => )

Each argument is described in detail in: L<Paws::AutoScaling::DescribeAdjustmentTypes>

Returns: a L<Paws::AutoScaling::DescribeAdjustmentTypesAnswer> instance

  Describes the policy adjustment types for use with PutScalingPolicy.


=head2 DescribeAutoScalingGroups([AutoScalingGroupNames => ArrayRef[Str], MaxRecords => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::AutoScaling::DescribeAutoScalingGroups>

Returns: a L<Paws::AutoScaling::AutoScalingGroupsType> instance

  Describes one or more Auto Scaling groups. If a list of names is not
provided, the call describes all Auto Scaling groups.


=head2 DescribeAutoScalingInstances([InstanceIds => ArrayRef[Str], MaxRecords => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::AutoScaling::DescribeAutoScalingInstances>

Returns: a L<Paws::AutoScaling::AutoScalingInstancesType> instance

  Describes one or more Auto Scaling instances. If a list is not
provided, the call describes all instances.


=head2 DescribeAutoScalingNotificationTypes( => )

Each argument is described in detail in: L<Paws::AutoScaling::DescribeAutoScalingNotificationTypes>

Returns: a L<Paws::AutoScaling::DescribeAutoScalingNotificationTypesAnswer> instance

  Describes the notification types that are supported by Auto Scaling.


=head2 DescribeLaunchConfigurations([LaunchConfigurationNames => ArrayRef[Str], MaxRecords => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::AutoScaling::DescribeLaunchConfigurations>

Returns: a L<Paws::AutoScaling::LaunchConfigurationsType> instance

  Describes one or more launch configurations. If you omit the list of
names, then the call describes all launch configurations.


=head2 DescribeLifecycleHooks(AutoScalingGroupName => Str, [LifecycleHookNames => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::AutoScaling::DescribeLifecycleHooks>

Returns: a L<Paws::AutoScaling::DescribeLifecycleHooksAnswer> instance

  Describes the lifecycle hooks for the specified Auto Scaling group.


=head2 DescribeLifecycleHookTypes( => )

Each argument is described in detail in: L<Paws::AutoScaling::DescribeLifecycleHookTypes>

Returns: a L<Paws::AutoScaling::DescribeLifecycleHookTypesAnswer> instance

  Describes the available types of lifecycle hooks.


=head2 DescribeLoadBalancers(AutoScalingGroupName => Str, [MaxRecords => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::AutoScaling::DescribeLoadBalancers>

Returns: a L<Paws::AutoScaling::DescribeLoadBalancersResponse> instance

  Describes the load balancers for the specified Auto Scaling group.


=head2 DescribeMetricCollectionTypes( => )

Each argument is described in detail in: L<Paws::AutoScaling::DescribeMetricCollectionTypes>

Returns: a L<Paws::AutoScaling::DescribeMetricCollectionTypesAnswer> instance

  Describes the available CloudWatch metrics for Auto Scaling.

Note that the C<GroupStandbyInstances> metric is not returned by
default. You must explicitly request this metric when calling
EnableMetricsCollection.


=head2 DescribeNotificationConfigurations([AutoScalingGroupNames => ArrayRef[Str], MaxRecords => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::AutoScaling::DescribeNotificationConfigurations>

Returns: a L<Paws::AutoScaling::DescribeNotificationConfigurationsAnswer> instance

  Describes the notification actions associated with the specified Auto
Scaling group.


=head2 DescribePolicies([AutoScalingGroupName => Str, MaxRecords => Int, NextToken => Str, PolicyNames => ArrayRef[Str], PolicyTypes => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::AutoScaling::DescribePolicies>

Returns: a L<Paws::AutoScaling::PoliciesType> instance

  Describes the policies for the specified Auto Scaling group.


=head2 DescribeScalingActivities([ActivityIds => ArrayRef[Str], AutoScalingGroupName => Str, MaxRecords => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::AutoScaling::DescribeScalingActivities>

Returns: a L<Paws::AutoScaling::ActivitiesType> instance

  Describes one or more scaling activities for the specified Auto Scaling
group. If you omit the C<ActivityIds>, the call returns all activities
from the past six weeks. Activities are sorted by the start time.
Activities still in progress appear first on the list.


=head2 DescribeScalingProcessTypes( => )

Each argument is described in detail in: L<Paws::AutoScaling::DescribeScalingProcessTypes>

Returns: a L<Paws::AutoScaling::ProcessesType> instance

  Describes the scaling process types for use with ResumeProcesses and
SuspendProcesses.


=head2 DescribeScheduledActions([AutoScalingGroupName => Str, EndTime => L<Paws::API::TimeStamp>, MaxRecords => Int, NextToken => Str, ScheduledActionNames => ArrayRef[Str], StartTime => L<Paws::API::TimeStamp>])

Each argument is described in detail in: L<Paws::AutoScaling::DescribeScheduledActions>

Returns: a L<Paws::AutoScaling::ScheduledActionsType> instance

  Describes the actions scheduled for your Auto Scaling group that
haven't run. To describe the actions that have already run, use
DescribeScalingActivities.


=head2 DescribeTags([Filters => ArrayRef[L<Paws::AutoScaling::Filter>], MaxRecords => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::AutoScaling::DescribeTags>

Returns: a L<Paws::AutoScaling::TagsType> instance

  Describes the specified tags.

You can use filters to limit the results. For example, you can query
for the tags for a specific Auto Scaling group. You can specify
multiple values for a filter. A tag must match at least one of the
specified values for it to be included in the results.

You can also specify multiple filters. The result includes information
for a particular tag only if it matches all the filters. If there's no
match, no special message is returned.


=head2 DescribeTerminationPolicyTypes( => )

Each argument is described in detail in: L<Paws::AutoScaling::DescribeTerminationPolicyTypes>

Returns: a L<Paws::AutoScaling::DescribeTerminationPolicyTypesAnswer> instance

  Describes the termination policies supported by Auto Scaling.


=head2 DetachInstances(AutoScalingGroupName => Str, ShouldDecrementDesiredCapacity => Bool, [InstanceIds => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::AutoScaling::DetachInstances>

Returns: a L<Paws::AutoScaling::DetachInstancesAnswer> instance

  Removes one or more instances from the specified Auto Scaling group.

After the instances are detached, you can manage them independently
from the rest of the Auto Scaling group.

If you do not specify the option to decrement the desired capacity,
Auto Scaling launches instances to replace the ones that are detached.

For more information, see Detach EC2 Instances from Your Auto Scaling
Group in the I<Auto Scaling Developer Guide>.


=head2 DetachLoadBalancers([AutoScalingGroupName => Str, LoadBalancerNames => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::AutoScaling::DetachLoadBalancers>

Returns: a L<Paws::AutoScaling::DetachLoadBalancersResultType> instance

  Removes one or more load balancers from the specified Auto Scaling
group.

When you detach a load balancer, it enters the C<Removing> state while
deregistering the instances in the group. When all instances are
deregistered, then you can no longer describe the load balancer using
DescribeLoadBalancers. Note that the instances remain running.


=head2 DisableMetricsCollection(AutoScalingGroupName => Str, [Metrics => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::AutoScaling::DisableMetricsCollection>

Returns: nothing

  Disables monitoring of the specified metrics for the specified Auto
Scaling group.


=head2 EnableMetricsCollection(AutoScalingGroupName => Str, Granularity => Str, [Metrics => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::AutoScaling::EnableMetricsCollection>

Returns: nothing

  Enables monitoring of the specified metrics for the specified Auto
Scaling group.

You can only enable metrics collection if C<InstanceMonitoring> in the
launch configuration for the group is set to C<True>.


=head2 EnterStandby(AutoScalingGroupName => Str, ShouldDecrementDesiredCapacity => Bool, [InstanceIds => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::AutoScaling::EnterStandby>

Returns: a L<Paws::AutoScaling::EnterStandbyAnswer> instance

  Moves the specified instances into C<Standby> mode.

For more information, see Auto Scaling Lifecycle in the I<Auto Scaling
Developer Guide>.


=head2 ExecutePolicy(PolicyName => Str, [AutoScalingGroupName => Str, BreachThreshold => Num, HonorCooldown => Bool, MetricValue => Num])

Each argument is described in detail in: L<Paws::AutoScaling::ExecutePolicy>

Returns: nothing

  Executes the specified policy.


=head2 ExitStandby(AutoScalingGroupName => Str, [InstanceIds => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::AutoScaling::ExitStandby>

Returns: a L<Paws::AutoScaling::ExitStandbyAnswer> instance

  Moves the specified instances out of C<Standby> mode.

For more information, see Auto Scaling Lifecycle in the I<Auto Scaling
Developer Guide>.


=head2 PutLifecycleHook(AutoScalingGroupName => Str, LifecycleHookName => Str, [DefaultResult => Str, HeartbeatTimeout => Int, LifecycleTransition => Str, NotificationMetadata => Str, NotificationTargetARN => Str, RoleARN => Str])

Each argument is described in detail in: L<Paws::AutoScaling::PutLifecycleHook>

Returns: a L<Paws::AutoScaling::PutLifecycleHookAnswer> instance

  Creates or updates a lifecycle hook for the specified Auto Scaling
Group.

A lifecycle hook tells Auto Scaling that you want to perform an action
on an instance that is not actively in service; for example, either
when the instance launches or before the instance terminates.

This step is a part of the procedure for adding a lifecycle hook to an
Auto Scaling group:

=over

=item 1. (Optional) Create a Lambda function and a rule that allows
CloudWatch Events to invoke your Lambda function when Auto Scaling
launches or terminates instances.

=item 2. (Optional) Create a notification target and an IAM role. The
target can be either an Amazon SQS queue or an Amazon SNS topic. The
role allows Auto Scaling to publish lifecycle notifications to the
target.

=item 3. B<Create the lifecycle hook. Specify whether the hook is used
when the instances launch or terminate.>

=item 4. If you need more time, record the lifecycle action heartbeat
to keep the instance in a pending state.

=item 5. If you finish before the timeout period ends, complete the
lifecycle action.

=back

For more information, see Auto Scaling Lifecycle in the I<Auto Scaling
Developer Guide>.

If you exceed your maximum limit of lifecycle hooks, which by default
is 50 per region, the call fails. For information about updating this
limit, see AWS Service Limits in the I<Amazon Web Services General
Reference>.


=head2 PutNotificationConfiguration(AutoScalingGroupName => Str, NotificationTypes => ArrayRef[Str], TopicARN => Str)

Each argument is described in detail in: L<Paws::AutoScaling::PutNotificationConfiguration>

Returns: nothing

  Configures an Auto Scaling group to send notifications when specified
events take place. Subscribers to this topic can have messages for
events delivered to an endpoint such as a web server or email address.

For more information see Getting Notifications When Your Auto Scaling
Group Changes in the I<Auto Scaling Developer Guide>.

This configuration overwrites an existing configuration.


=head2 PutScalingPolicy(AdjustmentType => Str, AutoScalingGroupName => Str, PolicyName => Str, [Cooldown => Int, EstimatedInstanceWarmup => Int, MetricAggregationType => Str, MinAdjustmentMagnitude => Int, MinAdjustmentStep => Int, PolicyType => Str, ScalingAdjustment => Int, StepAdjustments => ArrayRef[L<Paws::AutoScaling::StepAdjustment>]])

Each argument is described in detail in: L<Paws::AutoScaling::PutScalingPolicy>

Returns: a L<Paws::AutoScaling::PolicyARNType> instance

  Creates or updates a policy for an Auto Scaling group. To update an
existing policy, use the existing policy name and set the parameters
you want to change. Any existing parameter not changed in an update to
an existing policy is not changed in this update request.

If you exceed your maximum limit of step adjustments, which by default
is 20 per region, the call fails. For information about updating this
limit, see AWS Service Limits in the I<Amazon Web Services General
Reference>.


=head2 PutScheduledUpdateGroupAction(AutoScalingGroupName => Str, ScheduledActionName => Str, [DesiredCapacity => Int, EndTime => L<Paws::API::TimeStamp>, MaxSize => Int, MinSize => Int, Recurrence => Str, StartTime => L<Paws::API::TimeStamp>, Time => L<Paws::API::TimeStamp>])

Each argument is described in detail in: L<Paws::AutoScaling::PutScheduledUpdateGroupAction>

Returns: nothing

  Creates or updates a scheduled scaling action for an Auto Scaling
group. When updating a scheduled scaling action, if you leave a
parameter unspecified, the corresponding value remains unchanged in the
affected Auto Scaling group.

For more information, see Scheduled Scaling in the I<Auto Scaling
Developer Guide>.


=head2 RecordLifecycleActionHeartbeat(AutoScalingGroupName => Str, LifecycleHookName => Str, [InstanceId => Str, LifecycleActionToken => Str])

Each argument is described in detail in: L<Paws::AutoScaling::RecordLifecycleActionHeartbeat>

Returns: a L<Paws::AutoScaling::RecordLifecycleActionHeartbeatAnswer> instance

  Records a heartbeat for the lifecycle action associated with the
specified token or instance. This extends the timeout by the length of
time defined using PutLifecycleHook.

This step is a part of the procedure for adding a lifecycle hook to an
Auto Scaling group:

=over

=item 1. (Optional) Create a Lambda function and a rule that allows
CloudWatch Events to invoke your Lambda function when Auto Scaling
launches or terminates instances.

=item 2. (Optional) Create a notification target and an IAM role. The
target can be either an Amazon SQS queue or an Amazon SNS topic. The
role allows Auto Scaling to publish lifecycle notifications to the
target.

=item 3. Create the lifecycle hook. Specify whether the hook is used
when the instances launch or terminate.

=item 4. B<If you need more time, record the lifecycle action heartbeat
to keep the instance in a pending state.>

=item 5. If you finish before the timeout period ends, complete the
lifecycle action.

=back

For more information, see Auto Scaling Lifecycle in the I<Auto Scaling
Developer Guide>.


=head2 ResumeProcesses(AutoScalingGroupName => Str, [ScalingProcesses => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::AutoScaling::ResumeProcesses>

Returns: nothing

  Resumes the specified suspended Auto Scaling processes, or all
suspended process, for the specified Auto Scaling group.

For more information, see Suspending and Resuming Auto Scaling
Processes in the I<Auto Scaling Developer Guide>.


=head2 SetDesiredCapacity(AutoScalingGroupName => Str, DesiredCapacity => Int, [HonorCooldown => Bool])

Each argument is described in detail in: L<Paws::AutoScaling::SetDesiredCapacity>

Returns: nothing

  Sets the size of the specified Auto Scaling group.

For more information about desired capacity, see What Is Auto Scaling?
in the I<Auto Scaling Developer Guide>.


=head2 SetInstanceHealth(HealthStatus => Str, InstanceId => Str, [ShouldRespectGracePeriod => Bool])

Each argument is described in detail in: L<Paws::AutoScaling::SetInstanceHealth>

Returns: nothing

  Sets the health status of the specified instance.

For more information, see Health Checks in the I<Auto Scaling Developer
Guide>.


=head2 SetInstanceProtection(AutoScalingGroupName => Str, InstanceIds => ArrayRef[Str], ProtectedFromScaleIn => Bool)

Each argument is described in detail in: L<Paws::AutoScaling::SetInstanceProtection>

Returns: a L<Paws::AutoScaling::SetInstanceProtectionAnswer> instance

  Updates the instance protection settings of the specified instances.

For more information, see Instance Protection in the I<Auto Scaling
Developer Guide>.


=head2 SuspendProcesses(AutoScalingGroupName => Str, [ScalingProcesses => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::AutoScaling::SuspendProcesses>

Returns: nothing

  Suspends the specified Auto Scaling processes, or all processes, for
the specified Auto Scaling group.

Note that if you suspend either the C<Launch> or C<Terminate> process
types, it can prevent other process types from functioning properly.

To resume processes that have been suspended, use ResumeProcesses.

For more information, see Suspending and Resuming Auto Scaling
Processes in the I<Auto Scaling Developer Guide>.


=head2 TerminateInstanceInAutoScalingGroup(InstanceId => Str, ShouldDecrementDesiredCapacity => Bool)

Each argument is described in detail in: L<Paws::AutoScaling::TerminateInstanceInAutoScalingGroup>

Returns: a L<Paws::AutoScaling::ActivityType> instance

  Terminates the specified instance and optionally adjusts the desired
group size.

This call simply makes a termination request. The instance is not
terminated immediately.


=head2 UpdateAutoScalingGroup(AutoScalingGroupName => Str, [AvailabilityZones => ArrayRef[Str], DefaultCooldown => Int, DesiredCapacity => Int, HealthCheckGracePeriod => Int, HealthCheckType => Str, LaunchConfigurationName => Str, MaxSize => Int, MinSize => Int, NewInstancesProtectedFromScaleIn => Bool, PlacementGroup => Str, TerminationPolicies => ArrayRef[Str], VPCZoneIdentifier => Str])

Each argument is described in detail in: L<Paws::AutoScaling::UpdateAutoScalingGroup>

Returns: nothing

  Updates the configuration for the specified Auto Scaling group.

To update an Auto Scaling group with a launch configuration with
C<InstanceMonitoring> set to C<False>, you must first disable the
collection of group metrics. Otherwise, you will get an error. If you
have previously enabled the collection of group metrics, you can
disable it using DisableMetricsCollection.

The new settings are registered upon the completion of this call. Any
launch configuration settings take effect on any triggers after this
call returns. Scaling activities that are currently in progress aren't
affected.

Note the following:

=over

=item *

If you specify a new value for C<MinSize> without specifying a value
for C<DesiredCapacity>, and the new C<MinSize> is larger than the
current size of the group, we implicitly call SetDesiredCapacity to set
the size of the group to the new value of C<MinSize>.

=item *

If you specify a new value for C<MaxSize> without specifying a value
for C<DesiredCapacity>, and the new C<MaxSize> is smaller than the
current size of the group, we implicitly call SetDesiredCapacity to set
the size of the group to the new value of C<MaxSize>.

=item *

All other optional parameters are left unchanged if not specified.

=back



=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

