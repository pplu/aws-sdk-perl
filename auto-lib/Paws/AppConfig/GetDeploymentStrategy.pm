
package Paws::AppConfig::GetDeploymentStrategy;
  use Moose;
  has DeploymentStrategyId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DeploymentStrategyId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeploymentStrategy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/deploymentstrategies/{DeploymentStrategyId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::DeploymentStrategy');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::GetDeploymentStrategy - Arguments for method GetDeploymentStrategy on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeploymentStrategy on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method GetDeploymentStrategy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeploymentStrategy.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    my $DeploymentStrategy = $appconfig->GetDeploymentStrategy(
      DeploymentStrategyId => 'MyDeploymentStrategyId',

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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/GetDeploymentStrategy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeploymentStrategyId => Str

The ID of the deployment strategy to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeploymentStrategy in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

