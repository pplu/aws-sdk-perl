
package Paws::ApiGateway::DeleteDeployment;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'deploymentId' , required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDeployment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/deployments/{deployment_id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DeleteDeployment - Arguments for method DeleteDeployment on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDeployment on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method DeleteDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDeployment.

As an example:

  $service_obj->DeleteDeployment(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> DeploymentId => Str

  The identifier of the Deployment resource to delete.

=head2 B<REQUIRED> RestApiId => Str

  The identifier of the RestApi resource for the Deployment resource to
delete.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDeployment in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

