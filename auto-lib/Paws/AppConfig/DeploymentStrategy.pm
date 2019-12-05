
package Paws::AppConfig::DeploymentStrategy;
  use Moose;
  has DeploymentDurationInMinutes => (is => 'ro', isa => 'Int');
  has Description => (is => 'ro', isa => 'Str');
  has FinalBakeTimeInMinutes => (is => 'ro', isa => 'Int');
  has GrowthFactor => (is => 'ro', isa => 'Num');
  has GrowthType => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ReplicateTo => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::DeploymentStrategy

=head1 ATTRIBUTES


=head2 DeploymentDurationInMinutes => Int

Total amount of time the deployment lasted.


=head2 Description => Str

The description of the deployment strategy.


=head2 FinalBakeTimeInMinutes => Int

The amount of time AppConfig monitored for alarms before considering
the deployment to be complete and no longer eligible for automatic roll
back.


=head2 GrowthFactor => Num

The percentage of targets that received a deployed configuration during
each interval.


=head2 GrowthType => Str

The algorithm used to define how percentage grew over time.

Valid values are: C<"LINEAR">
=head2 Id => Str

The deployment strategy ID.


=head2 Name => Str

The name of the deployment strategy.


=head2 ReplicateTo => Str

Save the deployment strategy to a Systems Manager (SSM) document.

Valid values are: C<"NONE">, C<"SSM_DOCUMENT">
=head2 _request_id => Str


=cut

