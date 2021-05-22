
package Paws::AppConfig::StopDeployment;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationId', required => 1);
  has DeploymentNumber => (is => 'ro', isa => 'Int', traits => ['ParamInURI'], uri_name => 'DeploymentNumber', required => 1);
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EnvironmentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopDeployment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::Deployment');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::StopDeployment - Arguments for method StopDeployment on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopDeployment on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method StopDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopDeployment.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    my $Deployment = $appconfig->StopDeployment(
      ApplicationId    => 'MyId',
      DeploymentNumber => 1,
      EnvironmentId    => 'MyId',

    );

    # Results:
    my $ApplicationId               = $Deployment->ApplicationId;
    my $CompletedAt                 = $Deployment->CompletedAt;
    my $ConfigurationLocationUri    = $Deployment->ConfigurationLocationUri;
    my $ConfigurationName           = $Deployment->ConfigurationName;
    my $ConfigurationProfileId      = $Deployment->ConfigurationProfileId;
    my $ConfigurationVersion        = $Deployment->ConfigurationVersion;
    my $DeploymentDurationInMinutes = $Deployment->DeploymentDurationInMinutes;
    my $DeploymentNumber            = $Deployment->DeploymentNumber;
    my $DeploymentStrategyId        = $Deployment->DeploymentStrategyId;
    my $Description                 = $Deployment->Description;
    my $EnvironmentId               = $Deployment->EnvironmentId;
    my $EventLog                    = $Deployment->EventLog;
    my $FinalBakeTimeInMinutes      = $Deployment->FinalBakeTimeInMinutes;
    my $GrowthFactor                = $Deployment->GrowthFactor;
    my $GrowthType                  = $Deployment->GrowthType;
    my $PercentageComplete          = $Deployment->PercentageComplete;
    my $StartedAt                   = $Deployment->StartedAt;
    my $State                       = $Deployment->State;

    # Returns a L<Paws::AppConfig::Deployment> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/StopDeployment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The application ID.



=head2 B<REQUIRED> DeploymentNumber => Int

The sequence number of the deployment.



=head2 B<REQUIRED> EnvironmentId => Str

The environment ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopDeployment in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

