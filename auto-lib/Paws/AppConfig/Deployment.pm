
package Paws::AppConfig::Deployment;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has CompletedAt => (is => 'ro', isa => 'Str');
  has ConfigurationLocationUri => (is => 'ro', isa => 'Str');
  has ConfigurationName => (is => 'ro', isa => 'Str');
  has ConfigurationProfileId => (is => 'ro', isa => 'Str');
  has ConfigurationVersion => (is => 'ro', isa => 'Str');
  has DeploymentDurationInMinutes => (is => 'ro', isa => 'Int');
  has DeploymentNumber => (is => 'ro', isa => 'Int');
  has DeploymentStrategyId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has FinalBakeTimeInMinutes => (is => 'ro', isa => 'Int');
  has GrowthFactor => (is => 'ro', isa => 'Num');
  has GrowthType => (is => 'ro', isa => 'Str');
  has PercentageComplete => (is => 'ro', isa => 'Num');
  has StartedAt => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::Deployment

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The ID of the application that was deployed.


=head2 CompletedAt => Str

The time the deployment completed.


=head2 ConfigurationLocationUri => Str

Information about the source location of the configuration.


=head2 ConfigurationName => Str

The name of the configuration.


=head2 ConfigurationProfileId => Str

The ID of the configuration profile that was deployed.


=head2 ConfigurationVersion => Str

The configuration version that was deployed.


=head2 DeploymentDurationInMinutes => Int

Total amount of time the deployment lasted.


=head2 DeploymentNumber => Int

The sequence number of the deployment.


=head2 DeploymentStrategyId => Str

The ID of the deployment strategy that was deployed.


=head2 Description => Str

The description of the deployment.


=head2 EnvironmentId => Str

The ID of the environment that was deployed.


=head2 FinalBakeTimeInMinutes => Int

The amount of time AppConfig monitored for alarms before considering
the deployment to be complete and no longer eligible for automatic roll
back.


=head2 GrowthFactor => Num

The percentage of targets to receive a deployed configuration during
each interval.


=head2 GrowthType => Str

The algorithm used to define how percentage grew over time.

Valid values are: C<"LINEAR">
=head2 PercentageComplete => Num

The percentage of targets for which the deployment is available.


=head2 StartedAt => Str

The time the deployment started.


=head2 State => Str

The state of the deployment.

Valid values are: C<"BAKING">, C<"VALIDATING">, C<"DEPLOYING">, C<"COMPLETE">, C<"ROLLING_BACK">, C<"ROLLED_BACK">
=head2 _request_id => Str


=cut

