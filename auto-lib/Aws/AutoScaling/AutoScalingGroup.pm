package Aws::AutoScaling::AutoScalingGroup {
  use Moose;
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
1;
