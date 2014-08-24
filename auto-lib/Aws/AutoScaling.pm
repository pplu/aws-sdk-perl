
use AWS::API;


package Aws::AutoScaling::Activity {
  use Moose;
  with ('AWS::API::ResultParser');
  has ActivityId => (is => 'ro', isa => 'Str', required => 1);
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Cause => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Details => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has Progress => (is => 'ro', isa => 'Int');
  has StartTime => (is => 'ro', isa => 'Str', required => 1);
  has StatusCode => (is => 'ro', isa => 'Str', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::AdjustmentType {
  use Moose;
  with ('AWS::API::ResultParser');
  has AdjustmentType => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::Alarm {
  use Moose;
  with ('AWS::API::ResultParser');
  has AlarmARN => (is => 'ro', isa => 'Str');
  has AlarmName => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::AutoScalingGroup {
  use Moose;
  with ('AWS::API::ResultParser');
  has AutoScalingGroupARN => (is => 'ro', isa => 'Str');
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has CreatedTime => (is => 'ro', isa => 'Str', required => 1);
  has DefaultCooldown => (is => 'ro', isa => 'Int', required => 1);
  has DesiredCapacity => (is => 'ro', isa => 'Int', required => 1);
  has EnabledMetrics => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::EnabledMetric]');
  has HealthCheckGracePeriod => (is => 'ro', isa => 'Int');
  has HealthCheckType => (is => 'ro', isa => 'Str', required => 1);
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::Instance]');
  has LaunchConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxSize => (is => 'ro', isa => 'Int', required => 1);
  has MinSize => (is => 'ro', isa => 'Int', required => 1);
  has PlacementGroup => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SuspendedProcesses => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::SuspendedProcess]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::TagDescription]');
  has TerminationPolicies => (is => 'ro', isa => 'ArrayRef[Str]');
  has VPCZoneIdentifier => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::AutoScalingInstanceDetails {
  use Moose;
  with ('AWS::API::ResultParser');
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has AvailabilityZone => (is => 'ro', isa => 'Str', required => 1);
  has HealthStatus => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has LaunchConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleState => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::AutoScaling::BlockDeviceMapping {
  use Moose;
  with ('AWS::API::ResultParser');
  has DeviceName => (is => 'ro', isa => 'Str', required => 1);
  has Ebs => (is => 'ro', isa => 'Aws::AutoScaling::Ebs');
  has NoDevice => (is => 'ro', isa => 'Bool');
  has VirtualName => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::Ebs {
  use Moose;
  with ('AWS::API::ResultParser');
  has DeleteOnTermination => (is => 'ro', isa => 'Bool');
  has Iops => (is => 'ro', isa => 'Int');
  has SnapshotId => (is => 'ro', isa => 'Str');
  has VolumeSize => (is => 'ro', isa => 'Int');
  has VolumeType => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::EnabledMetric {
  use Moose;
  with ('AWS::API::ResultParser');
  has Granularity => (is => 'ro', isa => 'Str');
  has Metric => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::Filter {
  use Moose;
  with ('AWS::API::ResultParser');
  has Name => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str]');
}

package Aws::AutoScaling::Instance {
  use Moose;
  with ('AWS::API::ResultParser');
  has AvailabilityZone => (is => 'ro', isa => 'Str', required => 1);
  has HealthStatus => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has LaunchConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleState => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::AutoScaling::InstanceMonitoring {
  use Moose;
  with ('AWS::API::ResultParser');
  has Enabled => (is => 'ro', isa => 'Bool');
}

package Aws::AutoScaling::LaunchConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Bool');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::BlockDeviceMapping]');
  has CreatedTime => (is => 'ro', isa => 'Str', required => 1);
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has IamInstanceProfile => (is => 'ro', isa => 'Str');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceMonitoring => (is => 'ro', isa => 'Aws::AutoScaling::InstanceMonitoring');
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has KernelId => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str');
  has LaunchConfigurationARN => (is => 'ro', isa => 'Str');
  has LaunchConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has PlacementTenancy => (is => 'ro', isa => 'Str');
  has RamdiskId => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has SpotPrice => (is => 'ro', isa => 'Str');
  has UserData => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::LifecycleHook {
  use Moose;
  with ('AWS::API::ResultParser');
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has DefaultResult => (is => 'ro', isa => 'Str');
  has GlobalTimeout => (is => 'ro', isa => 'Int');
  has HeartbeatTimeout => (is => 'ro', isa => 'Int');
  has LifecycleHookName => (is => 'ro', isa => 'Str');
  has LifecycleTransition => (is => 'ro', isa => 'Str');
  has NotificationMetadata => (is => 'ro', isa => 'Str');
  has NotificationTargetARN => (is => 'ro', isa => 'Str');
  has RoleARN => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::MetricCollectionType {
  use Moose;
  with ('AWS::API::ResultParser');
  has Metric => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::MetricGranularityType {
  use Moose;
  with ('AWS::API::ResultParser');
  has Granularity => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::NotificationConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has NotificationType => (is => 'ro', isa => 'Str');
  has TopicARN => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::ProcessType {
  use Moose;
  with ('AWS::API::ResultParser');
  has ProcessName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::AutoScaling::ScalingPolicy {
  use Moose;
  with ('AWS::API::ResultParser');
  has AdjustmentType => (is => 'ro', isa => 'Str');
  has Alarms => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::Alarm]');
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has Cooldown => (is => 'ro', isa => 'Int');
  has MinAdjustmentStep => (is => 'ro', isa => 'Int');
  has PolicyARN => (is => 'ro', isa => 'Str');
  has PolicyName => (is => 'ro', isa => 'Str');
  has ScalingAdjustment => (is => 'ro', isa => 'Int');
}

package Aws::AutoScaling::ScheduledUpdateGroupAction {
  use Moose;
  with ('AWS::API::ResultParser');
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has DesiredCapacity => (is => 'ro', isa => 'Int');
  has EndTime => (is => 'ro', isa => 'Str');
  has MaxSize => (is => 'ro', isa => 'Int');
  has MinSize => (is => 'ro', isa => 'Int');
  has Recurrence => (is => 'ro', isa => 'Str');
  has ScheduledActionARN => (is => 'ro', isa => 'Str');
  has ScheduledActionName => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has Time => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::SuspendedProcess {
  use Moose;
  with ('AWS::API::ResultParser');
  has ProcessName => (is => 'ro', isa => 'Str');
  has SuspensionReason => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::Tag {
  use Moose;
  with ('AWS::API::ResultParser');
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has PropagateAtLaunch => (is => 'ro', isa => 'Bool');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::TagDescription {
  use Moose;
  with ('AWS::API::ResultParser');
  has Key => (is => 'ro', isa => 'Str');
  has PropagateAtLaunch => (is => 'ro', isa => 'Bool');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}



package Aws::AutoScaling::AttachInstances {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachInstances');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::AutoScaling::CompleteLifecycleAction {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleActionResult => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleActionToken => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleHookName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CompleteLifecycleAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::CompleteLifecycleActionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CompleteLifecycleActionResult');
}
package Aws::AutoScaling::CreateAutoScalingGroup {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');
  has DefaultCooldown => (is => 'ro', isa => 'Int');
  has DesiredCapacity => (is => 'ro', isa => 'Int');
  has HealthCheckGracePeriod => (is => 'ro', isa => 'Int');
  has HealthCheckType => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has LaunchConfigurationName => (is => 'ro', isa => 'Str');
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxSize => (is => 'ro', isa => 'Int', required => 1);
  has MinSize => (is => 'ro', isa => 'Int', required => 1);
  has PlacementGroup => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::Tag]');
  has TerminationPolicies => (is => 'ro', isa => 'ArrayRef[Str]');
  has VPCZoneIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAutoScalingGroup');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::AutoScaling::CreateLaunchConfiguration {
  use Moose;
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Bool');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::BlockDeviceMapping]');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has IamInstanceProfile => (is => 'ro', isa => 'Str');
  has ImageId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has InstanceMonitoring => (is => 'ro', isa => 'Aws::AutoScaling::InstanceMonitoring');
  has InstanceType => (is => 'ro', isa => 'Str');
  has KernelId => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str');
  has LaunchConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has PlacementTenancy => (is => 'ro', isa => 'Str');
  has RamdiskId => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has SpotPrice => (is => 'ro', isa => 'Str');
  has UserData => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLaunchConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::AutoScaling::CreateOrUpdateTags {
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOrUpdateTags');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::AutoScaling::DeleteAutoScalingGroup {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ForceDelete => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAutoScalingGroup');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::AutoScaling::DeleteLaunchConfiguration {
  use Moose;
  has LaunchConfigurationName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLaunchConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::AutoScaling::DeleteLifecycleHook {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleHookName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLifecycleHook');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DeleteLifecycleHookResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLifecycleHookResult');
}
package Aws::AutoScaling::DeleteNotificationConfiguration {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has TopicARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNotificationConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::AutoScaling::DeletePolicy {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePolicy');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::AutoScaling::DeleteScheduledAction {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has ScheduledActionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteScheduledAction');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::AutoScaling::DeleteTags {
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTags');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::AutoScaling::DescribeAccountLimits {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccountLimits');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeAccountLimitsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAccountLimitsResult');
}
package Aws::AutoScaling::DescribeAdjustmentTypes {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAdjustmentTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeAdjustmentTypesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAdjustmentTypesResult');
}
package Aws::AutoScaling::DescribeAutoScalingGroups {
  use Moose;
  has AutoScalingGroupNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeAutoScalingGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingGroupsResult');
}
package Aws::AutoScaling::DescribeAutoScalingInstances {
  use Moose;
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeAutoScalingInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingInstancesResult');
}
package Aws::AutoScaling::DescribeAutoScalingNotificationTypes {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingNotificationTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeAutoScalingNotificationTypesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingNotificationTypesResult');
}
package Aws::AutoScaling::DescribeLaunchConfigurations {
  use Moose;
  has LaunchConfigurationNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLaunchConfigurations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeLaunchConfigurationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLaunchConfigurationsResult');
}
package Aws::AutoScaling::DescribeLifecycleHookTypes {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLifecycleHookTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeLifecycleHookTypesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLifecycleHookTypesResult');
}
package Aws::AutoScaling::DescribeLifecycleHooks {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleHookNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLifecycleHooks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeLifecycleHooksResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLifecycleHooksResult');
}
package Aws::AutoScaling::DescribeMetricCollectionTypes {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMetricCollectionTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeMetricCollectionTypesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeMetricCollectionTypesResult');
}
package Aws::AutoScaling::DescribeNotificationConfigurations {
  use Moose;
  has AutoScalingGroupNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNotificationConfigurations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeNotificationConfigurationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeNotificationConfigurationsResult');
}
package Aws::AutoScaling::DescribePolicies {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribePoliciesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribePoliciesResult');
}
package Aws::AutoScaling::DescribeScalingActivities {
  use Moose;
  has ActivityIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScalingActivities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeScalingActivitiesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeScalingActivitiesResult');
}
package Aws::AutoScaling::DescribeScalingProcessTypes {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScalingProcessTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeScalingProcessTypesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeScalingProcessTypesResult');
}
package Aws::AutoScaling::DescribeScheduledActions {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ScheduledActionNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has StartTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScheduledActions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeScheduledActionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeScheduledActionsResult');
}
package Aws::AutoScaling::DescribeTags {
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::Filter]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeTagsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTagsResult');
}
package Aws::AutoScaling::DescribeTerminationPolicyTypes {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTerminationPolicyTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DescribeTerminationPolicyTypesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTerminationPolicyTypesResult');
}
package Aws::AutoScaling::DetachInstances {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has ShouldDecrementDesiredCapacity => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::DetachInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DetachInstancesResult');
}
package Aws::AutoScaling::DisableMetricsCollection {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Metrics => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableMetricsCollection');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::AutoScaling::EnableMetricsCollection {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Granularity => (is => 'ro', isa => 'Str', required => 1);
  has Metrics => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableMetricsCollection');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::AutoScaling::EnterStandby {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has ShouldDecrementDesiredCapacity => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnterStandby');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::EnterStandbyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'EnterStandbyResult');
}
package Aws::AutoScaling::ExecutePolicy {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has HonorCooldown => (is => 'ro', isa => 'Bool');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecutePolicy');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::AutoScaling::ExitStandby {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExitStandby');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::ExitStandbyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ExitStandbyResult');
}
package Aws::AutoScaling::PutLifecycleHook {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has DefaultResult => (is => 'ro', isa => 'Str');
  has HeartbeatTimeout => (is => 'ro', isa => 'Int');
  has LifecycleHookName => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleTransition => (is => 'ro', isa => 'Str');
  has NotificationMetadata => (is => 'ro', isa => 'Str');
  has NotificationTargetARN => (is => 'ro', isa => 'Str');
  has RoleARN => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutLifecycleHook');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::PutLifecycleHookResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PutLifecycleHookResult');
}
package Aws::AutoScaling::PutNotificationConfiguration {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has NotificationTypes => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has TopicARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutNotificationConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::AutoScaling::PutScalingPolicy {
  use Moose;
  has AdjustmentType => (is => 'ro', isa => 'Str', required => 1);
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Cooldown => (is => 'ro', isa => 'Int');
  has MinAdjustmentStep => (is => 'ro', isa => 'Int');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingAdjustment => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutScalingPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::PutScalingPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PutScalingPolicyResult');
}
package Aws::AutoScaling::PutScheduledUpdateGroupAction {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has DesiredCapacity => (is => 'ro', isa => 'Int');
  has EndTime => (is => 'ro', isa => 'Str');
  has MaxSize => (is => 'ro', isa => 'Int');
  has MinSize => (is => 'ro', isa => 'Int');
  has Recurrence => (is => 'ro', isa => 'Str');
  has ScheduledActionName => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str');
  has Time => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutScheduledUpdateGroupAction');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::AutoScaling::RecordLifecycleActionHeartbeat {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleActionToken => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleHookName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RecordLifecycleActionHeartbeat');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::RecordLifecycleActionHeartbeatResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RecordLifecycleActionHeartbeatResult');
}
package Aws::AutoScaling::ResumeProcesses {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingProcesses => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResumeProcesses');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::AutoScaling::SetDesiredCapacity {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has DesiredCapacity => (is => 'ro', isa => 'Int', required => 1);
  has HonorCooldown => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetDesiredCapacity');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::AutoScaling::SetInstanceHealth {
  use Moose;
  has HealthStatus => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ShouldRespectGracePeriod => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetInstanceHealth');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::AutoScaling::SuspendProcesses {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingProcesses => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SuspendProcesses');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::AutoScaling::TerminateInstanceInAutoScalingGroup {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ShouldDecrementDesiredCapacity => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateInstanceInAutoScalingGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::AutoScaling::TerminateInstanceInAutoScalingGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'TerminateInstanceInAutoScalingGroupResult');
}
package Aws::AutoScaling::UpdateAutoScalingGroup {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');
  has DefaultCooldown => (is => 'ro', isa => 'Int');
  has DesiredCapacity => (is => 'ro', isa => 'Int');
  has HealthCheckGracePeriod => (is => 'ro', isa => 'Int');
  has HealthCheckType => (is => 'ro', isa => 'Str');
  has LaunchConfigurationName => (is => 'ro', isa => 'Str');
  has MaxSize => (is => 'ro', isa => 'Int');
  has MinSize => (is => 'ro', isa => 'Int');
  has PlacementGroup => (is => 'ro', isa => 'Str');
  has TerminationPolicies => (is => 'ro', isa => 'ArrayRef[Str]');
  has VPCZoneIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAutoScalingGroup');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

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
