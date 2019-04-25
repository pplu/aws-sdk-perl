
package Paws::Greengrass::CreateDeployment;
  use Moose;
  has AmznClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has DeploymentId => (is => 'ro', isa => 'Str');
  has DeploymentType => (is => 'ro', isa => 'Str');
  has GroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GroupId', required => 1);
  has GroupVersionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeployment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/groups/{GroupId}/deployments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::CreateDeploymentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateDeployment - Arguments for method CreateDeployment on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeployment on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method CreateDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeployment.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $CreateDeploymentResponse = $greengrass->CreateDeployment(
      GroupId         => 'My__string',
      AmznClientToken => 'My__string',       # OPTIONAL
      DeploymentId    => 'My__string',       # OPTIONAL
      DeploymentType  => 'NewDeployment',    # OPTIONAL
      GroupVersionId  => 'My__string',       # OPTIONAL
    );

    # Results:
    my $DeploymentArn = $CreateDeploymentResponse->DeploymentArn;
    my $DeploymentId  = $CreateDeploymentResponse->DeploymentId;

    # Returns a L<Paws::Greengrass::CreateDeploymentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/CreateDeployment>

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

A client token used to correlate requests and responses.



=head2 DeploymentId => Str

The ID of the deployment if you wish to redeploy a previous deployment.



=head2 DeploymentType => Str

The type of deployment. When used in ''CreateDeployment'', only
''NewDeployment'' and ''Redeployment'' are valid.

Valid values are: C<"NewDeployment">, C<"Redeployment">, C<"ResetDeployment">, C<"ForceResetDeployment">

=head2 B<REQUIRED> GroupId => Str

The ID of the Greengrass group.



=head2 GroupVersionId => Str

The ID of the group version to be deployed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeployment in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

