
use AWS::API;


package Aws::AutoScaling::CompleteLifecycleActionResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::AutoScaling::DeleteLifecycleHookResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::AutoScaling::DescribeAccountLimitsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has MaxNumberOfAutoScalingGroups => (is => 'ro', isa => 'Int');
  has MaxNumberOfLaunchConfigurations => (is => 'ro', isa => 'Int');

}
package Aws::AutoScaling::DescribeAdjustmentTypesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AdjustmentTypes => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::AdjustmentType]');

}
package Aws::AutoScaling::DescribeAutoScalingGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AutoScalingGroups => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::AutoScalingGroup]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

}
package Aws::AutoScaling::DescribeAutoScalingInstancesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AutoScalingInstances => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::AutoScalingInstanceDetails]');
  has NextToken => (is => 'ro', isa => 'Str');

}
package Aws::AutoScaling::DescribeAutoScalingNotificationTypesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AutoScalingNotificationTypes => (is => 'ro', isa => 'ArrayRef[Str]');

}
package Aws::AutoScaling::DescribeLaunchConfigurationsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LaunchConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::LaunchConfiguration]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

}
package Aws::AutoScaling::DescribeLifecycleHookTypesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LifecycleHookTypes => (is => 'ro', isa => 'ArrayRef[Str]');

}
package Aws::AutoScaling::DescribeLifecycleHooksResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LifecycleHooks => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::LifecycleHook]');

}
package Aws::AutoScaling::DescribeMetricCollectionTypesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Granularities => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::MetricGranularityType]');
  has Metrics => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::MetricCollectionType]');

}
package Aws::AutoScaling::DescribeNotificationConfigurationsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has NotificationConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::NotificationConfiguration]', required => 1);

}
package Aws::AutoScaling::DescribePoliciesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has ScalingPolicies => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::ScalingPolicy]');

}
package Aws::AutoScaling::DescribeScalingActivitiesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Activities => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::Activity]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

}
package Aws::AutoScaling::DescribeScalingProcessTypesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Processes => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::ProcessType]');

}
package Aws::AutoScaling::DescribeScheduledActionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has ScheduledUpdateGroupActions => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::ScheduledUpdateGroupAction]');

}
package Aws::AutoScaling::DescribeTagsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::TagDescription]');

}
package Aws::AutoScaling::DescribeTerminationPolicyTypesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TerminationPolicyTypes => (is => 'ro', isa => 'ArrayRef[Str]');

}
package Aws::AutoScaling::DetachInstancesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Activities => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::Activity]');

}
package Aws::AutoScaling::EnterStandbyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Activities => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::Activity]');

}
package Aws::AutoScaling::ExitStandbyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Activities => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::Activity]');

}
package Aws::AutoScaling::PutLifecycleHookResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::AutoScaling::PutScalingPolicyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has PolicyARN => (is => 'ro', isa => 'Str');

}
package Aws::AutoScaling::RecordLifecycleActionHeartbeatResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::AutoScaling::TerminateInstanceInAutoScalingGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Activity => (is => 'ro', isa => 'Aws::AutoScaling::Activity');

}

package Aws::AutoScaling {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'autoscaling');
  has version => (is => 'ro', isa => 'Str', default => '2011-01-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub AttachInstances {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::AttachInstances', @_);
  }
  sub CompleteLifecycleAction {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::CompleteLifecycleAction', @_);
  }
  sub CreateAutoScalingGroup {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::CreateAutoScalingGroup', @_);
  }
  sub CreateLaunchConfiguration {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::CreateLaunchConfiguration', @_);
  }
  sub CreateOrUpdateTags {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::CreateOrUpdateTags', @_);
  }
  sub DeleteAutoScalingGroup {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DeleteAutoScalingGroup', @_);
  }
  sub DeleteLaunchConfiguration {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DeleteLaunchConfiguration', @_);
  }
  sub DeleteLifecycleHook {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DeleteLifecycleHook', @_);
  }
  sub DeleteNotificationConfiguration {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DeleteNotificationConfiguration', @_);
  }
  sub DeletePolicy {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DeletePolicy', @_);
  }
  sub DeleteScheduledAction {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DeleteScheduledAction', @_);
  }
  sub DeleteTags {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DeleteTags', @_);
  }
  sub DescribeAccountLimits {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DescribeAccountLimits', @_);
  }
  sub DescribeAdjustmentTypes {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DescribeAdjustmentTypes', @_);
  }
  sub DescribeAutoScalingGroups {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DescribeAutoScalingGroups', @_);
  }
  sub DescribeAutoScalingInstances {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DescribeAutoScalingInstances', @_);
  }
  sub DescribeAutoScalingNotificationTypes {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DescribeAutoScalingNotificationTypes', @_);
  }
  sub DescribeLaunchConfigurations {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DescribeLaunchConfigurations', @_);
  }
  sub DescribeLifecycleHooks {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DescribeLifecycleHooks', @_);
  }
  sub DescribeLifecycleHookTypes {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DescribeLifecycleHookTypes', @_);
  }
  sub DescribeMetricCollectionTypes {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DescribeMetricCollectionTypes', @_);
  }
  sub DescribeNotificationConfigurations {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DescribeNotificationConfigurations', @_);
  }
  sub DescribePolicies {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DescribePolicies', @_);
  }
  sub DescribeScalingActivities {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DescribeScalingActivities', @_);
  }
  sub DescribeScalingProcessTypes {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DescribeScalingProcessTypes', @_);
  }
  sub DescribeScheduledActions {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DescribeScheduledActions', @_);
  }
  sub DescribeTags {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DescribeTags', @_);
  }
  sub DescribeTerminationPolicyTypes {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DescribeTerminationPolicyTypes', @_);
  }
  sub DetachInstances {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DetachInstances', @_);
  }
  sub DisableMetricsCollection {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::DisableMetricsCollection', @_);
  }
  sub EnableMetricsCollection {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::EnableMetricsCollection', @_);
  }
  sub EnterStandby {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::EnterStandby', @_);
  }
  sub ExecutePolicy {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::ExecutePolicy', @_);
  }
  sub ExitStandby {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::ExitStandby', @_);
  }
  sub PutLifecycleHook {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::PutLifecycleHook', @_);
  }
  sub PutNotificationConfiguration {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::PutNotificationConfiguration', @_);
  }
  sub PutScalingPolicy {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::PutScalingPolicy', @_);
  }
  sub PutScheduledUpdateGroupAction {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::PutScheduledUpdateGroupAction', @_);
  }
  sub RecordLifecycleActionHeartbeat {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::RecordLifecycleActionHeartbeat', @_);
  }
  sub ResumeProcesses {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::ResumeProcesses', @_);
  }
  sub SetDesiredCapacity {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::SetDesiredCapacity', @_);
  }
  sub SetInstanceHealth {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::SetInstanceHealth', @_);
  }
  sub SuspendProcesses {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::SuspendProcesses', @_);
  }
  sub TerminateInstanceInAutoScalingGroup {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::TerminateInstanceInAutoScalingGroup', @_);
  }
  sub UpdateAutoScalingGroup {
    my $self = shift;
    return $self->do_call('Aws::AutoScaling::UpdateAutoScalingGroup', @_);
  }
}
1;
