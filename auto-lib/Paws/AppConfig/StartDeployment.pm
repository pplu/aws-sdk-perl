
package Paws::AppConfig::StartDeployment;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationId', required => 1);
  has ConfigurationProfileId => (is => 'ro', isa => 'Str', required => 1);
  has ConfigurationVersion => (is => 'ro', isa => 'Str', required => 1);
  has DeploymentStrategyId => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EnvironmentId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::AppConfig::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDeployment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{ApplicationId}/environments/{EnvironmentId}/deployments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::Deployment');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::StartDeployment - Arguments for method StartDeployment on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDeployment on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method StartDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDeployment.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    my $Deployment = $appconfig->StartDeployment(
      ApplicationId          => 'MyId',
      ConfigurationProfileId => 'MyId',
      ConfigurationVersion   => 'MyVersion',
      DeploymentStrategyId   => 'MyDeploymentStrategyId',
      EnvironmentId          => 'MyId',
      Description            => 'MyDescription',            # OPTIONAL
      Tags                   => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
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
    my $FinalBakeTimeInMinutes      = $Deployment->FinalBakeTimeInMinutes;
    my $GrowthFactor                = $Deployment->GrowthFactor;
    my $GrowthType                  = $Deployment->GrowthType;
    my $PercentageComplete          = $Deployment->PercentageComplete;
    my $StartedAt                   = $Deployment->StartedAt;
    my $State                       = $Deployment->State;

    # Returns a L<Paws::AppConfig::Deployment> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/StartDeployment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The application ID.



=head2 B<REQUIRED> ConfigurationProfileId => Str

The configuration profile ID.



=head2 B<REQUIRED> ConfigurationVersion => Str

The configuration version to deploy.



=head2 B<REQUIRED> DeploymentStrategyId => Str

The deployment strategy ID.



=head2 Description => Str

A description of the deployment.



=head2 B<REQUIRED> EnvironmentId => Str

The environment ID.



=head2 Tags => L<Paws::AppConfig::TagMap>

Metadata to assign to the deployment. Tags help organize and categorize
your AppConfig resources. Each tag consists of a key and an optional
value, both of which you define.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDeployment in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

