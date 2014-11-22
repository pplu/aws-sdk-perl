
use Paws::API;


package Paws::AutoScaling {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'autoscaling');
  has version => (is => 'ro', isa => 'Str', default => '2011-01-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::XMLResponse');

  
  sub AttachInstances {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::AttachInstances', @_);
  }
  sub CompleteLifecycleAction {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::CompleteLifecycleAction', @_);
  }
  sub CreateAutoScalingGroup {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::CreateAutoScalingGroup', @_);
  }
  sub CreateLaunchConfiguration {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::CreateLaunchConfiguration', @_);
  }
  sub CreateOrUpdateTags {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::CreateOrUpdateTags', @_);
  }
  sub DeleteAutoScalingGroup {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DeleteAutoScalingGroup', @_);
  }
  sub DeleteLaunchConfiguration {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DeleteLaunchConfiguration', @_);
  }
  sub DeleteLifecycleHook {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DeleteLifecycleHook', @_);
  }
  sub DeleteNotificationConfiguration {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DeleteNotificationConfiguration', @_);
  }
  sub DeletePolicy {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DeletePolicy', @_);
  }
  sub DeleteScheduledAction {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DeleteScheduledAction', @_);
  }
  sub DeleteTags {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DeleteTags', @_);
  }
  sub DescribeAccountLimits {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DescribeAccountLimits', @_);
  }
  sub DescribeAdjustmentTypes {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DescribeAdjustmentTypes', @_);
  }
  sub DescribeAutoScalingGroups {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DescribeAutoScalingGroups', @_);
  }
  sub DescribeAutoScalingInstances {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DescribeAutoScalingInstances', @_);
  }
  sub DescribeAutoScalingNotificationTypes {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DescribeAutoScalingNotificationTypes', @_);
  }
  sub DescribeLaunchConfigurations {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DescribeLaunchConfigurations', @_);
  }
  sub DescribeLifecycleHooks {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DescribeLifecycleHooks', @_);
  }
  sub DescribeLifecycleHookTypes {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DescribeLifecycleHookTypes', @_);
  }
  sub DescribeMetricCollectionTypes {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DescribeMetricCollectionTypes', @_);
  }
  sub DescribeNotificationConfigurations {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DescribeNotificationConfigurations', @_);
  }
  sub DescribePolicies {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DescribePolicies', @_);
  }
  sub DescribeScalingActivities {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DescribeScalingActivities', @_);
  }
  sub DescribeScalingProcessTypes {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DescribeScalingProcessTypes', @_);
  }
  sub DescribeScheduledActions {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DescribeScheduledActions', @_);
  }
  sub DescribeTags {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DescribeTags', @_);
  }
  sub DescribeTerminationPolicyTypes {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DescribeTerminationPolicyTypes', @_);
  }
  sub DetachInstances {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DetachInstances', @_);
  }
  sub DisableMetricsCollection {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::DisableMetricsCollection', @_);
  }
  sub EnableMetricsCollection {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::EnableMetricsCollection', @_);
  }
  sub EnterStandby {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::EnterStandby', @_);
  }
  sub ExecutePolicy {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::ExecutePolicy', @_);
  }
  sub ExitStandby {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::ExitStandby', @_);
  }
  sub PutLifecycleHook {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::PutLifecycleHook', @_);
  }
  sub PutNotificationConfiguration {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::PutNotificationConfiguration', @_);
  }
  sub PutScalingPolicy {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::PutScalingPolicy', @_);
  }
  sub PutScheduledUpdateGroupAction {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::PutScheduledUpdateGroupAction', @_);
  }
  sub RecordLifecycleActionHeartbeat {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::RecordLifecycleActionHeartbeat', @_);
  }
  sub ResumeProcesses {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::ResumeProcesses', @_);
  }
  sub SetDesiredCapacity {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::SetDesiredCapacity', @_);
  }
  sub SetInstanceHealth {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::SetInstanceHealth', @_);
  }
  sub SuspendProcesses {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::SuspendProcesses', @_);
  }
  sub TerminateInstanceInAutoScalingGroup {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::TerminateInstanceInAutoScalingGroup', @_);
  }
  sub UpdateAutoScalingGroup {
    my $self = shift;
    return $self->do_call('Paws::AutoScaling::UpdateAutoScalingGroup', @_);
  }
}
1;