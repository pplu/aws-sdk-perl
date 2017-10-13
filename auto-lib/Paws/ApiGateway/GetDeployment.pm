
package Paws::ApiGateway::GetDeployment;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'deploymentId', required => 1);
  has Embed => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'embed');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeployment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/deployments/{deployment_id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Deployment');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetDeployment - Arguments for method GetDeployment on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeployment on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method GetDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeployment.

As an example:

  $service_obj->GetDeployment(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeploymentId => Str

The identifier of the Deployment resource to get information about.



=head2 Embed => ArrayRef[Str|Undef]

A query parameter to retrieve the specified embedded resources of the
returned Deployment resource in the response. In a REST API call, this
C<embed> parameter value is a list of comma-separated strings, as in
C<GET
/restapis/{restapi_id}/deployments/{deployment_id}?embed=var1,var2>.
The SDK and other platform-dependent libraries might use a different
format for the list. Currently, this request supports only retrieval of
the embedded API summary this way. Hence, the parameter value must be a
single-valued list containing only the C<"apisummary"> string. For
example, C<GET
/restapis/{restapi_id}/deployments/{deployment_id}?embed=apisummary>.



=head2 B<REQUIRED> RestApiId => Str

The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeployment in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

