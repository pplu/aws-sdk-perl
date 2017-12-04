
package Paws::Greengrass::GetDeploymentStatus;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DeploymentId', required => 1);
  has GroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GroupId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeploymentStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/groups/{GroupId}/deployments/{DeploymentId}/status');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::GetDeploymentStatusResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetDeploymentStatus - Arguments for method GetDeploymentStatus on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeploymentStatus on the 
AWS Greengrass service. Use the attributes of this class
as arguments to method GetDeploymentStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeploymentStatus.

As an example:

  $service_obj->GetDeploymentStatus(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeploymentId => Str

the deployment Id



=head2 B<REQUIRED> GroupId => Str

The unique Id of the AWS Greengrass Group




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeploymentStatus in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

