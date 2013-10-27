use MooseX::Declare;
use AWS::API;
use Moose::Util::TypeConstraints;

enum 'AWS::AutoScaling::ScalingActivityStatusCode', [qw(WaitingForSpotInstanceRequestId WaitingForSpotInstanceId WaitingForInstanceId PreInService InProgress Successful Failed Cancelled)];
enum 'AWS::AutoScaling::LifecycleState', [qw(Pending Quarantined InService Terminating Terminated)];

class AWS::AutoScaling::Activity with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ActivityId => (is => 'ro', isa => 'Str', required => 1);
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Cause => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Details => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has Progress => (is => 'ro', isa => 'Int');
  has StartTime => (is => 'ro', isa => 'Str', required => 1);
  has StatusCode => (is => 'ro', isa => 'AWS::AutoScaling::ScalingActivityStatusCode', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str');
}

class AWS::AutoScaling::AdjustmentType with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AdjustmentType => (is => 'ro', isa => 'Str');
}

class AWS::AutoScaling::Alarm with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AlarmARN => (is => 'ro', isa => 'Str');
  has AlarmName => (is => 'ro', isa => 'Str');
}

class AWS::AutoScaling::AutoScalingGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AutoScalingGroupARN => (is => 'ro', isa => 'Str');
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has CreatedTime => (is => 'ro', isa => 'Str', required => 1);
  has DefaultCooldown => (is => 'ro', isa => 'Int', required => 1);
  has DesiredCapacity => (is => 'ro', isa => 'Int', required => 1);
  has EnabledMetrics => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::EnabledMetric]');
  has HealthCheckGracePeriod => (is => 'ro', isa => 'Int');
  has HealthCheckType => (is => 'ro', isa => 'Str', required => 1);
  has Instances => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::Instance]');
  has LaunchConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxSize => (is => 'ro', isa => 'Int', required => 1);
  has MinSize => (is => 'ro', isa => 'Int', required => 1);
  has PlacementGroup => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SuspendedProcesses => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::SuspendedProcess]');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::TagDescription]');
  has TerminationPolicies => (is => 'ro', isa => 'ArrayRef[Str]');
  has VPCZoneIdentifier => (is => 'ro', isa => 'Str');
}

class AWS::AutoScaling::AutoScalingInstanceDetails with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has AvailabilityZone => (is => 'ro', isa => 'Str', required => 1);
  has HealthStatus => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has LaunchConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleState => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::AutoScaling::BlockDeviceMapping with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DeviceName => (is => 'ro', isa => 'Str', required => 1);
  has Ebs => (is => 'ro', isa => 'AWS::AutoScaling::Ebs');
  has VirtualName => (is => 'ro', isa => 'Str');
}

class AWS::AutoScaling::Ebs with (AWS::API::ResultParser, AWS::API::ToParams) {
  has SnapshotId => (is => 'ro', isa => 'Str');
  has VolumeSize => (is => 'ro', isa => 'Int');
}

class AWS::AutoScaling::EnabledMetric with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Granularity => (is => 'ro', isa => 'Str');
  has Metric => (is => 'ro', isa => 'Str');
}

class AWS::AutoScaling::Filter with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Name => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str]');
}

class AWS::AutoScaling::Instance with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AvailabilityZone => (is => 'ro', isa => 'Str', required => 1);
  has HealthStatus => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has LaunchConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleState => (is => 'ro', isa => 'AWS::AutoScaling::LifecycleState', required => 1);
}

class AWS::AutoScaling::InstanceMonitoring with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Enabled => (is => 'ro', isa => 'Str');
}

class AWS::AutoScaling::LaunchConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::BlockDeviceMapping]');
  has CreatedTime => (is => 'ro', isa => 'Str', required => 1);
  has EbsOptimized => (is => 'ro', isa => 'Str');
  has IamInstanceProfile => (is => 'ro', isa => 'Str');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceMonitoring => (is => 'ro', isa => 'AWS::AutoScaling::InstanceMonitoring');
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has KernelId => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str');
  has LaunchConfigurationARN => (is => 'ro', isa => 'Str');
  has LaunchConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has RamdiskId => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has SpotPrice => (is => 'ro', isa => 'Str');
  has UserData => (is => 'ro', isa => 'Str');
}

class AWS::AutoScaling::MetricCollectionType with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Metric => (is => 'ro', isa => 'Str');
}

class AWS::AutoScaling::MetricGranularityType with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Granularity => (is => 'ro', isa => 'Str');
}

class AWS::AutoScaling::NotificationConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has NotificationType => (is => 'ro', isa => 'Str');
  has TopicARN => (is => 'ro', isa => 'Str');
}

class AWS::AutoScaling::ProcessType with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ProcessName => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::AutoScaling::ScalingPolicy with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AdjustmentType => (is => 'ro', isa => 'Str');
  has Alarms => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::Alarm]');
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has Cooldown => (is => 'ro', isa => 'Int');
  has MinAdjustmentStep => (is => 'ro', isa => 'Int');
  has PolicyARN => (is => 'ro', isa => 'Str');
  has PolicyName => (is => 'ro', isa => 'Str');
  has ScalingAdjustment => (is => 'ro', isa => 'Int');
}

class AWS::AutoScaling::ScheduledUpdateGroupAction with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class AWS::AutoScaling::SuspendedProcess with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ProcessName => (is => 'ro', isa => 'Str');
  has SuspensionReason => (is => 'ro', isa => 'Str');
}

class AWS::AutoScaling::Tag with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has PropagateAtLaunch => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}

class AWS::AutoScaling::TagDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Key => (is => 'ro', isa => 'Str');
  has PropagateAtLaunch => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}

class AWS::AutoScaling::CreateAutoScalingGroup {
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');
  has DefaultCooldown => (is => 'ro', isa => 'Int');
  has DesiredCapacity => (is => 'ro', isa => 'Int');
  has HealthCheckGracePeriod => (is => 'ro', isa => 'Int');
  has HealthCheckType => (is => 'ro', isa => 'Str');
  has LaunchConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxSize => (is => 'ro', isa => 'Int', required => 1);
  has MinSize => (is => 'ro', isa => 'Int', required => 1);
  has PlacementGroup => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::Tag]');
  has TerminationPolicies => (is => 'ro', isa => 'ArrayRef[Str]');
  has VPCZoneIdentifier => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAutoScalingGroup');
  has _returns => (isa => 'AWS::AutoScaling::CreateAutoScalingGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateAutoScalingGroupResult');
}
class AWS::AutoScaling::CreateLaunchConfiguration {
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::BlockDeviceMapping]');
  has EbsOptimized => (is => 'ro', isa => 'Str');
  has IamInstanceProfile => (is => 'ro', isa => 'Str');
  has ImageId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceMonitoring => (is => 'ro', isa => 'AWS::AutoScaling::InstanceMonitoring');
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has KernelId => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str');
  has LaunchConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has RamdiskId => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has SpotPrice => (is => 'ro', isa => 'Str');
  has UserData => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLaunchConfiguration');
  has _returns => (isa => 'AWS::AutoScaling::CreateLaunchConfigurationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLaunchConfigurationResult');
}
class AWS::AutoScaling::CreateOrUpdateTags {
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::Tag]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOrUpdateTags');
  has _returns => (isa => 'AWS::AutoScaling::CreateOrUpdateTagsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateOrUpdateTagsResult');
}
class AWS::AutoScaling::DeleteAutoScalingGroup {
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ForceDelete => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAutoScalingGroup');
  has _returns => (isa => 'AWS::AutoScaling::DeleteAutoScalingGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteAutoScalingGroupResult');
}
class AWS::AutoScaling::DeleteLaunchConfiguration {
  has LaunchConfigurationName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLaunchConfiguration');
  has _returns => (isa => 'AWS::AutoScaling::DeleteLaunchConfigurationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLaunchConfigurationResult');
}
class AWS::AutoScaling::DeleteNotificationConfiguration {
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has TopicARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNotificationConfiguration');
  has _returns => (isa => 'AWS::AutoScaling::DeleteNotificationConfigurationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteNotificationConfigurationResult');
}
class AWS::AutoScaling::DeletePolicy {
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePolicy');
  has _returns => (isa => 'AWS::AutoScaling::DeletePolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeletePolicyResult');
}
class AWS::AutoScaling::DeleteScheduledAction {
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has ScheduledActionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteScheduledAction');
  has _returns => (isa => 'AWS::AutoScaling::DeleteScheduledActionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteScheduledActionResult');
}
class AWS::AutoScaling::DeleteTags {
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::Tag]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTags');
  has _returns => (isa => 'AWS::AutoScaling::DeleteTagsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteTagsResult');
}
class AWS::AutoScaling::DescribeAdjustmentTypes {

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAdjustmentTypes');
  has _returns => (isa => 'AWS::AutoScaling::DescribeAdjustmentTypesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAdjustmentTypesResult');
}
class AWS::AutoScaling::DescribeAutoScalingGroups {
  has AutoScalingGroupNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingGroups');
  has _returns => (isa => 'AWS::AutoScaling::DescribeAutoScalingGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingGroupsResult');
}
class AWS::AutoScaling::DescribeAutoScalingInstances {
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingInstances');
  has _returns => (isa => 'AWS::AutoScaling::DescribeAutoScalingInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingInstancesResult');
}
class AWS::AutoScaling::DescribeAutoScalingNotificationTypes {

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingNotificationTypes');
  has _returns => (isa => 'AWS::AutoScaling::DescribeAutoScalingNotificationTypesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingNotificationTypesResult');
}
class AWS::AutoScaling::DescribeLaunchConfigurations {
  has LaunchConfigurationNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLaunchConfigurations');
  has _returns => (isa => 'AWS::AutoScaling::DescribeLaunchConfigurationsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLaunchConfigurationsResult');
}
class AWS::AutoScaling::DescribeMetricCollectionTypes {

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMetricCollectionTypes');
  has _returns => (isa => 'AWS::AutoScaling::DescribeMetricCollectionTypesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeMetricCollectionTypesResult');
}
class AWS::AutoScaling::DescribeNotificationConfigurations {
  has AutoScalingGroupNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNotificationConfigurations');
  has _returns => (isa => 'AWS::AutoScaling::DescribeNotificationConfigurationsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeNotificationConfigurationsResult');
}
class AWS::AutoScaling::DescribePolicies {
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePolicies');
  has _returns => (isa => 'AWS::AutoScaling::DescribePoliciesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribePoliciesResult');
}
class AWS::AutoScaling::DescribeScalingActivities {
  has ActivityIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScalingActivities');
  has _returns => (isa => 'AWS::AutoScaling::DescribeScalingActivitiesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeScalingActivitiesResult');
}
class AWS::AutoScaling::DescribeScalingProcessTypes {

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScalingProcessTypes');
  has _returns => (isa => 'AWS::AutoScaling::DescribeScalingProcessTypesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeScalingProcessTypesResult');
}
class AWS::AutoScaling::DescribeScheduledActions {
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ScheduledActionNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has StartTime => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScheduledActions');
  has _returns => (isa => 'AWS::AutoScaling::DescribeScheduledActionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeScheduledActionsResult');
}
class AWS::AutoScaling::DescribeTags {
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::Filter]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTags');
  has _returns => (isa => 'AWS::AutoScaling::DescribeTagsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTagsResult');
}
class AWS::AutoScaling::DescribeTerminationPolicyTypes {

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTerminationPolicyTypes');
  has _returns => (isa => 'AWS::AutoScaling::DescribeTerminationPolicyTypesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTerminationPolicyTypesResult');
}
class AWS::AutoScaling::DisableMetricsCollection {
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Metrics => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisableMetricsCollection');
  has _returns => (isa => 'AWS::AutoScaling::DisableMetricsCollectionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisableMetricsCollectionResult');
}
class AWS::AutoScaling::EnableMetricsCollection {
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Granularity => (is => 'ro', isa => 'Str', required => 1);
  has Metrics => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'EnableMetricsCollection');
  has _returns => (isa => 'AWS::AutoScaling::EnableMetricsCollectionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EnableMetricsCollectionResult');
}
class AWS::AutoScaling::ExecutePolicy {
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has HonorCooldown => (is => 'ro', isa => 'Str');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ExecutePolicy');
  has _returns => (isa => 'AWS::AutoScaling::ExecutePolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ExecutePolicyResult');
}
class AWS::AutoScaling::PutNotificationConfiguration {
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has NotificationTypes => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has TopicARN => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutNotificationConfiguration');
  has _returns => (isa => 'AWS::AutoScaling::PutNotificationConfigurationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutNotificationConfigurationResult');
}
class AWS::AutoScaling::PutScalingPolicy {
  has AdjustmentType => (is => 'ro', isa => 'Str', required => 1);
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Cooldown => (is => 'ro', isa => 'Int');
  has MinAdjustmentStep => (is => 'ro', isa => 'Int');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingAdjustment => (is => 'ro', isa => 'Int', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutScalingPolicy');
  has _returns => (isa => 'AWS::AutoScaling::PutScalingPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutScalingPolicyResult');
}
class AWS::AutoScaling::PutScheduledUpdateGroupAction {
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
  has _returns => (isa => 'AWS::AutoScaling::PutScheduledUpdateGroupActionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutScheduledUpdateGroupActionResult');
}
class AWS::AutoScaling::ResumeProcesses {
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingProcesses => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResumeProcesses');
  has _returns => (isa => 'AWS::AutoScaling::ResumeProcessesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResumeProcessesResult');
}
class AWS::AutoScaling::SetDesiredCapacity {
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has DesiredCapacity => (is => 'ro', isa => 'Int', required => 1);
  has HonorCooldown => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetDesiredCapacity');
  has _returns => (isa => 'AWS::AutoScaling::SetDesiredCapacityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetDesiredCapacityResult');
}
class AWS::AutoScaling::SetInstanceHealth {
  has HealthStatus => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ShouldRespectGracePeriod => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetInstanceHealth');
  has _returns => (isa => 'AWS::AutoScaling::SetInstanceHealthResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetInstanceHealthResult');
}
class AWS::AutoScaling::SuspendProcesses {
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingProcesses => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'SuspendProcesses');
  has _returns => (isa => 'AWS::AutoScaling::SuspendProcessesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SuspendProcessesResult');
}
class AWS::AutoScaling::TerminateInstanceInAutoScalingGroup {
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ShouldDecrementDesiredCapacity => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateInstanceInAutoScalingGroup');
  has _returns => (isa => 'AWS::AutoScaling::TerminateInstanceInAutoScalingGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'TerminateInstanceInAutoScalingGroupResult');
}
class AWS::AutoScaling::UpdateAutoScalingGroup {
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
  has _returns => (isa => 'AWS::AutoScaling::UpdateAutoScalingGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateAutoScalingGroupResult');
}
class AWS::AutoScaling::DescribeAdjustmentTypesResult with AWS::API::ResultParser {
  has AdjustmentTypes => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::AdjustmentType]');
}
class AWS::AutoScaling::DescribeAutoScalingGroupsResult with AWS::API::ResultParser {
  has AutoScalingGroups => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::AutoScalingGroup]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
}
class AWS::AutoScaling::DescribeAutoScalingInstancesResult with AWS::API::ResultParser {
  has AutoScalingInstances => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::AutoScalingInstanceDetails]');
  has NextToken => (is => 'ro', isa => 'Str');
}
class AWS::AutoScaling::DescribeAutoScalingNotificationTypesResult with AWS::API::ResultParser {
  has AutoScalingNotificationTypes => (is => 'ro', isa => 'ArrayRef[Str]');
}
class AWS::AutoScaling::DescribeLaunchConfigurationsResult with AWS::API::ResultParser {
  has LaunchConfigurations => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::LaunchConfiguration]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
}
class AWS::AutoScaling::DescribeMetricCollectionTypesResult with AWS::API::ResultParser {
  has Granularities => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::MetricGranularityType]');
  has Metrics => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::MetricCollectionType]');
}
class AWS::AutoScaling::DescribeNotificationConfigurationsResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has NotificationConfigurations => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::NotificationConfiguration]', required => 1);
}
class AWS::AutoScaling::DescribePoliciesResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has ScalingPolicies => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::ScalingPolicy]');
}
class AWS::AutoScaling::DescribeScalingActivitiesResult with AWS::API::ResultParser {
  has Activities => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::Activity]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
}
class AWS::AutoScaling::DescribeScalingProcessTypesResult with AWS::API::ResultParser {
  has Processes => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::ProcessType]');
}
class AWS::AutoScaling::DescribeScheduledActionsResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has ScheduledUpdateGroupActions => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::ScheduledUpdateGroupAction]');
}
class AWS::AutoScaling::DescribeTagsResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::AutoScaling::TagDescription]');
}
class AWS::AutoScaling::DescribeTerminationPolicyTypesResult with AWS::API::ResultParser {
  has TerminationPolicyTypes => (is => 'ro', isa => 'ArrayRef[Str]');
}
class AWS::AutoScaling::PutScalingPolicyResult with AWS::API::ResultParser {
  has PolicyARN => (is => 'ro', isa => 'Str');
}
class AWS::AutoScaling::TerminateInstanceInAutoScalingGroupResult with AWS::API::ResultParser {
  has Activity => (is => 'ro', isa => 'AWS::AutoScaling::Activity');
}
class AWS::AutoScaling with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller) {
  has service => (is => 'ro', isa => 'Str', default => 'autoscaling');
  has version => (is => 'ro', isa => 'Str', default => '2011-01-01');

  method CreateAutoScalingGroup (%args) {
    my $call = AWS::AutoScaling::CreateAutoScalingGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }

  method CreateLaunchConfiguration (%args) {
    my $call = AWS::AutoScaling::CreateLaunchConfiguration->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }

  method CreateOrUpdateTags (%args) {
    my $call = AWS::AutoScaling::CreateOrUpdateTags->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }

  method DeleteAutoScalingGroup (%args) {
    my $call = AWS::AutoScaling::DeleteAutoScalingGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }

  method DeleteLaunchConfiguration (%args) {
    my $call = AWS::AutoScaling::DeleteLaunchConfiguration->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }

  method DeleteNotificationConfiguration (%args) {
    my $call = AWS::AutoScaling::DeleteNotificationConfiguration->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }

  method DeletePolicy (%args) {
    my $call = AWS::AutoScaling::DeletePolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }

  method DeleteScheduledAction (%args) {
    my $call = AWS::AutoScaling::DeleteScheduledAction->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }

  method DeleteTags (%args) {
    my $call = AWS::AutoScaling::DeleteTags->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }

  method DescribeAdjustmentTypes (%args) {
    my $call = AWS::AutoScaling::DescribeAdjustmentTypes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::AutoScaling::DescribeAdjustmentTypesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeAutoScalingGroups (%args) {
    my $call = AWS::AutoScaling::DescribeAutoScalingGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::AutoScaling::DescribeAutoScalingGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeAutoScalingInstances (%args) {
    my $call = AWS::AutoScaling::DescribeAutoScalingInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::AutoScaling::DescribeAutoScalingInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeAutoScalingNotificationTypes (%args) {
    my $call = AWS::AutoScaling::DescribeAutoScalingNotificationTypes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::AutoScaling::DescribeAutoScalingNotificationTypesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeLaunchConfigurations (%args) {
    my $call = AWS::AutoScaling::DescribeLaunchConfigurations->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::AutoScaling::DescribeLaunchConfigurationsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeMetricCollectionTypes (%args) {
    my $call = AWS::AutoScaling::DescribeMetricCollectionTypes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::AutoScaling::DescribeMetricCollectionTypesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeNotificationConfigurations (%args) {
    my $call = AWS::AutoScaling::DescribeNotificationConfigurations->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::AutoScaling::DescribeNotificationConfigurationsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribePolicies (%args) {
    my $call = AWS::AutoScaling::DescribePolicies->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::AutoScaling::DescribePoliciesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeScalingActivities (%args) {
    my $call = AWS::AutoScaling::DescribeScalingActivities->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::AutoScaling::DescribeScalingActivitiesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeScalingProcessTypes (%args) {
    my $call = AWS::AutoScaling::DescribeScalingProcessTypes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::AutoScaling::DescribeScalingProcessTypesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeScheduledActions (%args) {
    my $call = AWS::AutoScaling::DescribeScheduledActions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::AutoScaling::DescribeScheduledActionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeTags (%args) {
    my $call = AWS::AutoScaling::DescribeTags->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::AutoScaling::DescribeTagsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeTerminationPolicyTypes (%args) {
    my $call = AWS::AutoScaling::DescribeTerminationPolicyTypes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::AutoScaling::DescribeTerminationPolicyTypesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DisableMetricsCollection (%args) {
    my $call = AWS::AutoScaling::DisableMetricsCollection->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }

  method EnableMetricsCollection (%args) {
    my $call = AWS::AutoScaling::EnableMetricsCollection->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }

  method ExecutePolicy (%args) {
    my $call = AWS::AutoScaling::ExecutePolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }

  method PutNotificationConfiguration (%args) {
    my $call = AWS::AutoScaling::PutNotificationConfiguration->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }

  method PutScalingPolicy (%args) {
    my $call = AWS::AutoScaling::PutScalingPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::AutoScaling::PutScalingPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method PutScheduledUpdateGroupAction (%args) {
    my $call = AWS::AutoScaling::PutScheduledUpdateGroupAction->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }

  method ResumeProcesses (%args) {
    my $call = AWS::AutoScaling::ResumeProcesses->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }

  method SetDesiredCapacity (%args) {
    my $call = AWS::AutoScaling::SetDesiredCapacity->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }

  method SetInstanceHealth (%args) {
    my $call = AWS::AutoScaling::SetInstanceHealth->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }

  method SuspendProcesses (%args) {
    my $call = AWS::AutoScaling::SuspendProcesses->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }

  method TerminateInstanceInAutoScalingGroup (%args) {
    my $call = AWS::AutoScaling::TerminateInstanceInAutoScalingGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::AutoScaling::TerminateInstanceInAutoScalingGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method UpdateAutoScalingGroup (%args) {
    my $call = AWS::AutoScaling::UpdateAutoScalingGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }

}

