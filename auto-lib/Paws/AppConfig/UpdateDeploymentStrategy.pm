
package Paws::AppConfig::UpdateDeploymentStrategy;
  use Moose;
  has DeploymentDurationInMinutes => (is => 'ro', isa => 'Int');
  has DeploymentStrategyId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DeploymentStrategyId', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has FinalBakeTimeInMinutes => (is => 'ro', isa => 'Int');
  has GrowthFactor => (is => 'ro', isa => 'Num');
  has GrowthType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDeploymentStrategy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/deploymentstrategies/{DeploymentStrategyId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::DeploymentStrategy');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::UpdateDeploymentStrategy - Arguments for method UpdateDeploymentStrategy on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDeploymentStrategy on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method UpdateDeploymentStrategy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDeploymentStrategy.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    my $DeploymentStrategy = $appconfig->UpdateDeploymentStrategy(
      DeploymentStrategyId        => 'MyDeploymentStrategyId',
      DeploymentDurationInMinutes => 1,                          # OPTIONAL
      Description                 => 'MyDescription',            # OPTIONAL
      FinalBakeTimeInMinutes      => 1,                          # OPTIONAL
      GrowthFactor                => 1.0,                        # OPTIONAL
      GrowthType                  => 'LINEAR',                   # OPTIONAL
    );

    # Results:
    my $DeploymentDurationInMinutes =
      $DeploymentStrategy->DeploymentDurationInMinutes;
    my $Description            = $DeploymentStrategy->Description;
    my $FinalBakeTimeInMinutes = $DeploymentStrategy->FinalBakeTimeInMinutes;
    my $GrowthFactor           = $DeploymentStrategy->GrowthFactor;
    my $GrowthType             = $DeploymentStrategy->GrowthType;
    my $Id                     = $DeploymentStrategy->Id;
    my $Name                   = $DeploymentStrategy->Name;
    my $ReplicateTo            = $DeploymentStrategy->ReplicateTo;

    # Returns a L<Paws::AppConfig::DeploymentStrategy> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/UpdateDeploymentStrategy>

=head1 ATTRIBUTES


=head2 DeploymentDurationInMinutes => Int

Total amount of time for a deployment to last.



=head2 B<REQUIRED> DeploymentStrategyId => Str

The deployment strategy ID.



=head2 Description => Str

A description of the deployment strategy.



=head2 FinalBakeTimeInMinutes => Int

The amount of time AppConfig monitors for alarms before considering the
deployment to be complete and no longer eligible for automatic roll
back.



=head2 GrowthFactor => Num

The percentage of targets to receive a deployed configuration during
each interval.



=head2 GrowthType => Str

The algorithm used to define how percentage grows over time. AWS
AppConfig supports the following growth types:

B<Linear>: For this type, AppConfig processes the deployment by
increments of the growth factor evenly distributed over the deployment
time. For example, a linear deployment that uses a growth factor of 20
initially makes the configuration available to 20 percent of the
targets. After 1/5th of the deployment time has passed, the system
updates the percentage to 40 percent. This continues until 100% of the
targets are set to receive the deployed configuration.

B<Exponential>: For this type, AppConfig processes the deployment
exponentially using the following formula: C<G*(2^N)>. In this formula,
C<G> is the growth factor specified by the user and C<N> is the number
of steps until the configuration is deployed to all targets. For
example, if you specify a growth factor of 2, then the system rolls out
the configuration as follows:

C<2*(2^0)>

C<2*(2^1)>

C<2*(2^2)>

Expressed numerically, the deployment rolls out as follows: 2% of the
targets, 4% of the targets, 8% of the targets, and continues until the
configuration has been deployed to all targets.

Valid values are: C<"LINEAR">, C<"EXPONENTIAL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDeploymentStrategy in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

