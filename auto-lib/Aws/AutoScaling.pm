
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::AutoScaling::LifecycleState', ['Pending','Quarantined','InService','Terminating','Terminated',];
enum 'Aws::AutoScaling::ScalingActivityStatusCode', ['WaitingForSpotInstanceRequestId','WaitingForSpotInstanceId','WaitingForInstanceId','PreInService','InProgress','Successful','Failed','Cancelled',];


package Aws::AutoScaling::Activity {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has ActivityId => (is => 'ro', isa => 'Str', required => 1);
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Cause => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Details => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has Progress => (is => 'ro', isa => 'Int');
  has StartTime => (is => 'ro', isa => 'Str', required => 1);
  has StatusCode => (is => 'ro', isa => 'Aws::AutoScaling::ScalingActivityStatusCode', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::AdjustmentType {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AdjustmentType => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::Alarm {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AlarmARN => (is => 'ro', isa => 'Str');
  has AlarmName => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::AutoScalingGroup {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
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
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has AvailabilityZone => (is => 'ro', isa => 'Str', required => 1);
  has HealthStatus => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has LaunchConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleState => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::AutoScaling::BlockDeviceMapping {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has DeviceName => (is => 'ro', isa => 'Str', required => 1);
  has Ebs => (is => 'ro', isa => 'Aws::AutoScaling::Ebs');
  has NoDevice => (is => 'ro', isa => 'Str');
  has VirtualName => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::Ebs {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has DeleteOnTermination => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has SnapshotId => (is => 'ro', isa => 'Str');
  has VolumeSize => (is => 'ro', isa => 'Int');
  has VolumeType => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::EnabledMetric {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Granularity => (is => 'ro', isa => 'Str');
  has Metric => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::Filter {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Name => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str]');
}

package Aws::AutoScaling::Instance {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AvailabilityZone => (is => 'ro', isa => 'Str', required => 1);
  has HealthStatus => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has LaunchConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleState => (is => 'ro', isa => 'Aws::AutoScaling::LifecycleState', required => 1);
}

package Aws::AutoScaling::InstanceMonitoring {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Enabled => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::LaunchConfiguration {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::BlockDeviceMapping]');
  has CreatedTime => (is => 'ro', isa => 'Str', required => 1);
  has EbsOptimized => (is => 'ro', isa => 'Str');
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

package Aws::AutoScaling::MetricCollectionType {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Metric => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::MetricGranularityType {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Granularity => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::NotificationConfiguration {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has NotificationType => (is => 'ro', isa => 'Str');
  has TopicARN => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::ProcessType {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has ProcessName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::AutoScaling::ScalingPolicy {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
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
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
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
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has ProcessName => (is => 'ro', isa => 'Str');
  has SuspensionReason => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::Tag {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has PropagateAtLaunch => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}

package Aws::AutoScaling::TagDescription {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Key => (is => 'ro', isa => 'Str');
  has PropagateAtLaunch => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}



package Aws::AutoScaling::AttachInstances {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AttachInstances');
  has _returns => (isa => 'Aws::AutoScaling::AttachInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AttachInstancesResult');  
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAutoScalingGroup');
  has _returns => (isa => 'Aws::AutoScaling::CreateAutoScalingGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateAutoScalingGroupResult');  
}
package Aws::AutoScaling::CreateLaunchConfiguration {
  use Moose;
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::BlockDeviceMapping]');
  has EbsOptimized => (is => 'ro', isa => 'Str');
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLaunchConfiguration');
  has _returns => (isa => 'Aws::AutoScaling::CreateLaunchConfigurationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLaunchConfigurationResult');  
}
package Aws::AutoScaling::CreateOrUpdateTags {
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::Tag]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOrUpdateTags');
  has _returns => (isa => 'Aws::AutoScaling::CreateOrUpdateTagsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateOrUpdateTagsResult');  
}
package Aws::AutoScaling::DeleteAutoScalingGroup {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ForceDelete => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAutoScalingGroup');
  has _returns => (isa => 'Aws::AutoScaling::DeleteAutoScalingGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteAutoScalingGroupResult');  
}
package Aws::AutoScaling::DeleteLaunchConfiguration {
  use Moose;
  has LaunchConfigurationName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLaunchConfiguration');
  has _returns => (isa => 'Aws::AutoScaling::DeleteLaunchConfigurationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLaunchConfigurationResult');  
}
package Aws::AutoScaling::DeleteNotificationConfiguration {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has TopicARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNotificationConfiguration');
  has _returns => (isa => 'Aws::AutoScaling::DeleteNotificationConfigurationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteNotificationConfigurationResult');  
}
package Aws::AutoScaling::DeletePolicy {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePolicy');
  has _returns => (isa => 'Aws::AutoScaling::DeletePolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeletePolicyResult');  
}
package Aws::AutoScaling::DeleteScheduledAction {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has ScheduledActionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteScheduledAction');
  has _returns => (isa => 'Aws::AutoScaling::DeleteScheduledActionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteScheduledActionResult');  
}
package Aws::AutoScaling::DeleteTags {
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::Tag]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTags');
  has _returns => (isa => 'Aws::AutoScaling::DeleteTagsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteTagsResult');  
}
package Aws::AutoScaling::DescribeAccountLimits {
  use Moose;

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccountLimits');
  has _returns => (isa => 'Aws::AutoScaling::DescribeAccountLimitsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAccountLimitsResult');  
}
package Aws::AutoScaling::DescribeAdjustmentTypes {
  use Moose;

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAdjustmentTypes');
  has _returns => (isa => 'Aws::AutoScaling::DescribeAdjustmentTypesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAdjustmentTypesResult');  
}
package Aws::AutoScaling::DescribeAutoScalingGroups {
  use Moose;
  has AutoScalingGroupNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingGroups');
  has _returns => (isa => 'Aws::AutoScaling::DescribeAutoScalingGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingGroupsResult');  
}
package Aws::AutoScaling::DescribeAutoScalingInstances {
  use Moose;
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingInstances');
  has _returns => (isa => 'Aws::AutoScaling::DescribeAutoScalingInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingInstancesResult');  
}
package Aws::AutoScaling::DescribeAutoScalingNotificationTypes {
  use Moose;

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingNotificationTypes');
  has _returns => (isa => 'Aws::AutoScaling::DescribeAutoScalingNotificationTypesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingNotificationTypesResult');  
}
package Aws::AutoScaling::DescribeLaunchConfigurations {
  use Moose;
  has LaunchConfigurationNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLaunchConfigurations');
  has _returns => (isa => 'Aws::AutoScaling::DescribeLaunchConfigurationsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLaunchConfigurationsResult');  
}
package Aws::AutoScaling::DescribeMetricCollectionTypes {
  use Moose;

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMetricCollectionTypes');
  has _returns => (isa => 'Aws::AutoScaling::DescribeMetricCollectionTypesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeMetricCollectionTypesResult');  
}
package Aws::AutoScaling::DescribeNotificationConfigurations {
  use Moose;
  has AutoScalingGroupNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNotificationConfigurations');
  has _returns => (isa => 'Aws::AutoScaling::DescribeNotificationConfigurationsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeNotificationConfigurationsResult');  
}
package Aws::AutoScaling::DescribePolicies {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePolicies');
  has _returns => (isa => 'Aws::AutoScaling::DescribePoliciesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribePoliciesResult');  
}
package Aws::AutoScaling::DescribeScalingActivities {
  use Moose;
  has ActivityIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScalingActivities');
  has _returns => (isa => 'Aws::AutoScaling::DescribeScalingActivitiesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeScalingActivitiesResult');  
}
package Aws::AutoScaling::DescribeScalingProcessTypes {
  use Moose;

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScalingProcessTypes');
  has _returns => (isa => 'Aws::AutoScaling::DescribeScalingProcessTypesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeScalingProcessTypesResult');  
}
package Aws::AutoScaling::DescribeScheduledActions {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ScheduledActionNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has StartTime => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScheduledActions');
  has _returns => (isa => 'Aws::AutoScaling::DescribeScheduledActionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeScheduledActionsResult');  
}
package Aws::AutoScaling::DescribeTags {
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::Filter]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTags');
  has _returns => (isa => 'Aws::AutoScaling::DescribeTagsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTagsResult');  
}
package Aws::AutoScaling::DescribeTerminationPolicyTypes {
  use Moose;

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTerminationPolicyTypes');
  has _returns => (isa => 'Aws::AutoScaling::DescribeTerminationPolicyTypesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTerminationPolicyTypesResult');  
}
package Aws::AutoScaling::DisableMetricsCollection {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Metrics => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisableMetricsCollection');
  has _returns => (isa => 'Aws::AutoScaling::DisableMetricsCollectionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisableMetricsCollectionResult');  
}
package Aws::AutoScaling::EnableMetricsCollection {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Granularity => (is => 'ro', isa => 'Str', required => 1);
  has Metrics => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'EnableMetricsCollection');
  has _returns => (isa => 'Aws::AutoScaling::EnableMetricsCollectionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EnableMetricsCollectionResult');  
}
package Aws::AutoScaling::ExecutePolicy {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has HonorCooldown => (is => 'ro', isa => 'Str');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ExecutePolicy');
  has _returns => (isa => 'Aws::AutoScaling::ExecutePolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ExecutePolicyResult');  
}
package Aws::AutoScaling::PutNotificationConfiguration {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has NotificationTypes => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has TopicARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutNotificationConfiguration');
  has _returns => (isa => 'Aws::AutoScaling::PutNotificationConfigurationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutNotificationConfigurationResult');  
}
package Aws::AutoScaling::PutScalingPolicy {
  use Moose;
  has AdjustmentType => (is => 'ro', isa => 'Str', required => 1);
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Cooldown => (is => 'ro', isa => 'Int');
  has MinAdjustmentStep => (is => 'ro', isa => 'Int');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingAdjustment => (is => 'ro', isa => 'Int', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutScalingPolicy');
  has _returns => (isa => 'Aws::AutoScaling::PutScalingPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutScalingPolicyResult');  
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutScheduledUpdateGroupAction');
  has _returns => (isa => 'Aws::AutoScaling::PutScheduledUpdateGroupActionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutScheduledUpdateGroupActionResult');  
}
package Aws::AutoScaling::ResumeProcesses {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingProcesses => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResumeProcesses');
  has _returns => (isa => 'Aws::AutoScaling::ResumeProcessesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResumeProcessesResult');  
}
package Aws::AutoScaling::SetDesiredCapacity {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has DesiredCapacity => (is => 'ro', isa => 'Int', required => 1);
  has HonorCooldown => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetDesiredCapacity');
  has _returns => (isa => 'Aws::AutoScaling::SetDesiredCapacityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetDesiredCapacityResult');  
}
package Aws::AutoScaling::SetInstanceHealth {
  use Moose;
  has HealthStatus => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ShouldRespectGracePeriod => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetInstanceHealth');
  has _returns => (isa => 'Aws::AutoScaling::SetInstanceHealthResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetInstanceHealthResult');  
}
package Aws::AutoScaling::SuspendProcesses {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingProcesses => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'SuspendProcesses');
  has _returns => (isa => 'Aws::AutoScaling::SuspendProcessesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SuspendProcessesResult');  
}
package Aws::AutoScaling::TerminateInstanceInAutoScalingGroup {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ShouldDecrementDesiredCapacity => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateInstanceInAutoScalingGroup');
  has _returns => (isa => 'Aws::AutoScaling::TerminateInstanceInAutoScalingGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'TerminateInstanceInAutoScalingGroupResult');  
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAutoScalingGroup');
  has _returns => (isa => 'Aws::AutoScaling::UpdateAutoScalingGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateAutoScalingGroupResult');  
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
package Aws::AutoScaling::PutScalingPolicyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has PolicyARN => (is => 'ro', isa => 'Str');

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
  with ('Net::AWS::Caller', 'AWS::API::RegionalEndpointCaller', 'Net::AWS::V4Signature', 'Net::AWS::QueryCaller', 'Net::AWS::XMLResponse');
  
  sub AttachInstances {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::AttachInstances', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub CreateAutoScalingGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::CreateAutoScalingGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub CreateLaunchConfiguration {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::CreateLaunchConfiguration', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub CreateOrUpdateTags {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::CreateOrUpdateTags', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteAutoScalingGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::DeleteAutoScalingGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteLaunchConfiguration {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::DeleteLaunchConfiguration', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteNotificationConfiguration {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::DeleteNotificationConfiguration', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeletePolicy {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::DeletePolicy', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteScheduledAction {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::DeleteScheduledAction', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteTags {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::DeleteTags', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DescribeAccountLimits {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::DescribeAccountLimits', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::AutoScaling::DescribeAccountLimitsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeAdjustmentTypes {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::DescribeAdjustmentTypes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::AutoScaling::DescribeAdjustmentTypesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeAutoScalingGroups {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::DescribeAutoScalingGroups', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::AutoScaling::DescribeAutoScalingGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeAutoScalingInstances {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::DescribeAutoScalingInstances', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::AutoScaling::DescribeAutoScalingInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeAutoScalingNotificationTypes {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::DescribeAutoScalingNotificationTypes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::AutoScaling::DescribeAutoScalingNotificationTypesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeLaunchConfigurations {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::DescribeLaunchConfigurations', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::AutoScaling::DescribeLaunchConfigurationsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeMetricCollectionTypes {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::DescribeMetricCollectionTypes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::AutoScaling::DescribeMetricCollectionTypesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeNotificationConfigurations {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::DescribeNotificationConfigurations', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::AutoScaling::DescribeNotificationConfigurationsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribePolicies {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::DescribePolicies', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::AutoScaling::DescribePoliciesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeScalingActivities {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::DescribeScalingActivities', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::AutoScaling::DescribeScalingActivitiesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeScalingProcessTypes {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::DescribeScalingProcessTypes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::AutoScaling::DescribeScalingProcessTypesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeScheduledActions {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::DescribeScheduledActions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::AutoScaling::DescribeScheduledActionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeTags {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::DescribeTags', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::AutoScaling::DescribeTagsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeTerminationPolicyTypes {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::DescribeTerminationPolicyTypes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::AutoScaling::DescribeTerminationPolicyTypesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DisableMetricsCollection {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::DisableMetricsCollection', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub EnableMetricsCollection {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::EnableMetricsCollection', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub ExecutePolicy {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::ExecutePolicy', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub PutNotificationConfiguration {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::PutNotificationConfiguration', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub PutScalingPolicy {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::PutScalingPolicy', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::AutoScaling::PutScalingPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub PutScheduledUpdateGroupAction {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::PutScheduledUpdateGroupAction', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub ResumeProcesses {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::ResumeProcesses', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub SetDesiredCapacity {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::SetDesiredCapacity', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub SetInstanceHealth {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::SetInstanceHealth', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub SuspendProcesses {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::SuspendProcesses', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub TerminateInstanceInAutoScalingGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::TerminateInstanceInAutoScalingGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::AutoScaling::TerminateInstanceInAutoScalingGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub UpdateAutoScalingGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::AutoScaling::UpdateAutoScalingGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
}
