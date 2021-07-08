
package Paws::GreengrassV2::GetDeployment;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'deploymentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeployment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/v2/deployments/{deploymentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GreengrassV2::GetDeploymentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::GetDeployment - Arguments for method GetDeployment on L<Paws::GreengrassV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeployment on the
L<AWS IoT Greengrass V2|Paws::GreengrassV2> service. Use the attributes of this class
as arguments to method GetDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeployment.

=head1 SYNOPSIS

    my $greengrass = Paws->service('GreengrassV2');
    my $GetDeploymentResponse = $greengrass->GetDeployment(
      DeploymentId => 'MyNonEmptyString',

    );

    # Results:
    my $Components          = $GetDeploymentResponse->Components;
    my $CreationTimestamp   = $GetDeploymentResponse->CreationTimestamp;
    my $DeploymentId        = $GetDeploymentResponse->DeploymentId;
    my $DeploymentName      = $GetDeploymentResponse->DeploymentName;
    my $DeploymentPolicies  = $GetDeploymentResponse->DeploymentPolicies;
    my $DeploymentStatus    = $GetDeploymentResponse->DeploymentStatus;
    my $IotJobArn           = $GetDeploymentResponse->IotJobArn;
    my $IotJobConfiguration = $GetDeploymentResponse->IotJobConfiguration;
    my $IotJobId            = $GetDeploymentResponse->IotJobId;
    my $IsLatestForTarget   = $GetDeploymentResponse->IsLatestForTarget;
    my $RevisionId          = $GetDeploymentResponse->RevisionId;
    my $Tags                = $GetDeploymentResponse->Tags;
    my $TargetArn           = $GetDeploymentResponse->TargetArn;

    # Returns a L<Paws::GreengrassV2::GetDeploymentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/GetDeployment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeploymentId => Str

The ID of the deployment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeployment in L<Paws::GreengrassV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

