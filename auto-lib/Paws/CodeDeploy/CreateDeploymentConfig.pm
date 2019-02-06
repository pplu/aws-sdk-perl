
package Paws::CodeDeploy::CreateDeploymentConfig;
  use Moose;
  has ComputePlatform => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'computePlatform' );
  has DeploymentConfigName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentConfigName' , required => 1);
  has MinimumHealthyHosts => (is => 'ro', isa => 'Paws::CodeDeploy::MinimumHealthyHosts', traits => ['NameInRequest'], request_name => 'minimumHealthyHosts' );
  has TrafficRoutingConfig => (is => 'ro', isa => 'Paws::CodeDeploy::TrafficRoutingConfig', traits => ['NameInRequest'], request_name => 'trafficRoutingConfig' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeploymentConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::CreateDeploymentConfigOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateDeploymentConfig - Arguments for method CreateDeploymentConfig on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeploymentConfig on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method CreateDeploymentConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeploymentConfig.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $CreateDeploymentConfigOutput = $codedeploy->CreateDeploymentConfig(
      DeploymentConfigName => 'MyDeploymentConfigName',
      ComputePlatform      => 'Server',                   # OPTIONAL
      MinimumHealthyHosts  => {
        Type  => 'HOST_COUNT',    # values: HOST_COUNT, FLEET_PERCENT; OPTIONAL
        Value => 1,               # OPTIONAL
      },    # OPTIONAL
      TrafficRoutingConfig => {
        TimeBasedCanary => {
          CanaryInterval   => 1,    # OPTIONAL
          CanaryPercentage => 1,    # OPTIONAL
        },    # OPTIONAL
        TimeBasedLinear => {
          LinearInterval   => 1,    # OPTIONAL
          LinearPercentage => 1,    # OPTIONAL
        },    # OPTIONAL
        Type => 'TimeBasedCanary'
        ,     # values: TimeBasedCanary, TimeBasedLinear, AllAtOnce; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $DeploymentConfigId = $CreateDeploymentConfigOutput->DeploymentConfigId;

    # Returns a L<Paws::CodeDeploy::CreateDeploymentConfigOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/CreateDeploymentConfig>

=head1 ATTRIBUTES


=head2 ComputePlatform => Str

The destination platform type for the deployment (C<Lambda> or
C<Server>E<gt>).

Valid values are: C<"Server">, C<"Lambda">, C<"ECS">

=head2 B<REQUIRED> DeploymentConfigName => Str

The name of the deployment configuration to create.



=head2 MinimumHealthyHosts => L<Paws::CodeDeploy::MinimumHealthyHosts>

The minimum number of healthy instances that should be available at any
time during the deployment. There are two parameters expected in the
input: type and value.

The type parameter takes either of the following values:

=over

=item *

HOST_COUNT: The value parameter represents the minimum number of
healthy instances as an absolute value.

=item *

FLEET_PERCENT: The value parameter represents the minimum number of
healthy instances as a percentage of the total number of instances in
the deployment. If you specify FLEET_PERCENT, at the start of the
deployment, AWS CodeDeploy converts the percentage to the equivalent
number of instance and rounds up fractional instances.

=back

The value parameter takes an integer.

For example, to set a minimum of 95% healthy instance, specify a type
of FLEET_PERCENT and a value of 95.



=head2 TrafficRoutingConfig => L<Paws::CodeDeploy::TrafficRoutingConfig>

The configuration that specifies how the deployment traffic is routed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeploymentConfig in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

