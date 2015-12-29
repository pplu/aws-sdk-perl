
package Paws::ApiGateway::PutIntegrationResponse;
  use Moose;
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'httpMethod' , required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceId' , required => 1);
  has ResponseParameters => (is => 'ro', isa => 'HashRef[Str]');
  has ResponseTemplates => (is => 'ro', isa => 'HashRef[Str]');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId' , required => 1);
  has SelectionPattern => (is => 'ro', isa => 'Str');
  has StatusCode => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'statusCode' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutIntegrationResponse');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::IntegrationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PutIntegrationResponseResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::PutIntegrationResponse - Arguments for method PutIntegrationResponse on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutIntegrationResponse on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method PutIntegrationResponse.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutIntegrationResponse.

As an example:

  $service_obj->PutIntegrationResponse(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> HttpMethod => Str

  Specifies a put integration response request's HTTP method.


=head2 B<REQUIRED> ResourceId => Str

  Specifies a put integration response request's resource identifier.


=head2 ResponseParameters => HashRef[Str]

  Represents response parameters that can be read from the backend
response. Response parameters are represented as a key/value map, with
a destination as the key and a source as the value. A destination must
match an existing response parameter in the Method. The source can be a
header from the backend response, or a static value. Static values are
specified using enclosing single quotes, and backend response headers
can be read using the pattern C<integration.response.header.{name}>.


=head2 ResponseTemplates => HashRef[Str]

  Specifies a put integration response's templates.


=head2 B<REQUIRED> RestApiId => Str

  Specifies a put integration response request's API identifier.


=head2 SelectionPattern => Str

  Specifies the selection pattern of a put integration response.


=head2 B<REQUIRED> StatusCode => Str

  Specifies the status code that is used to map the integration response
to an existing MethodResponse.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutIntegrationResponse in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

