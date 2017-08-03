
package Paws::Greengrass::CreateDeployment;
  use Moose;
  has AmznClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token' );
  has DeploymentId => (is => 'ro', isa => 'Str');
  has DeploymentType => (is => 'ro', isa => 'Str');
  has GroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GroupId' , required => 1);
  has GroupVersionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeployment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/groups/{GroupId}/deployments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::CreateDeploymentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateDeployment - Arguments for method CreateDeployment on Paws::Greengrass

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeployment on the 
AWS Greengrass service. Use the attributes of this class
as arguments to method CreateDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeployment.

As an example:

  $service_obj->CreateDeployment(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

The client token used to request idempotent operations.



=head2 DeploymentId => Str

Id of the deployment if you wish to redeploy a previous deployment.



=head2 DeploymentType => Str

Type of deployment

Valid values are: C<"NewDeployment">, C<"Redeployment">

=head2 B<REQUIRED> GroupId => Str

The unique Id of the AWS Greengrass Group



=head2 GroupVersionId => Str

Group Version you wish to deploy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeployment in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

