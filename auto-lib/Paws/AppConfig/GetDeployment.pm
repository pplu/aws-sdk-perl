
package Paws::AppConfig::GetDeployment;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationId', required => 1);
  has DeploymentNumber => (is => 'ro', isa => 'Int', traits => ['ParamInURI'], uri_name => 'DeploymentNumber', required => 1);
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EnvironmentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeployment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::Deployment');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::GetDeployment - Arguments for method GetDeployment on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeployment on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method GetDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeployment.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    my $Deployment = $appconfig->GetDeployment(
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/GetDeployment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The ID of the application that includes the deployment you want to get.



=head2 B<REQUIRED> DeploymentNumber => Int

The sequence number of the deployment.



=head2 B<REQUIRED> EnvironmentId => Str

The ID of the environment that includes the deployment you want to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeployment in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

