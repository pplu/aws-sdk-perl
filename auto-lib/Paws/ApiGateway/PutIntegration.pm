
package Paws::ApiGateway::PutIntegration;
  use Moose;
  has CacheKeyParameters => (is => 'ro', isa => 'ArrayRef[Str]');
  has CacheNamespace => (is => 'ro', isa => 'Str');
  has Credentials => (is => 'ro', isa => 'Str');
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'httpMethod' , required => 1);
  has IntegrationHttpMethod => (is => 'ro', isa => 'Str');
  has RequestParameters => (is => 'ro', isa => 'HashRef[Str]');
  has RequestTemplates => (is => 'ro', isa => 'HashRef[Str]');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceId' , required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId' , required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has Uri => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutIntegration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Integration');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::PutIntegration - Arguments for method PutIntegration on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutIntegration on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method PutIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutIntegration.

As an example:

  $service_obj->PutIntegration(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CacheKeyParameters => ArrayRef[Str]

Specifies a put integration input's cache key parameters.



=head2 CacheNamespace => Str

Specifies a put integration input's cache namespace.



=head2 Credentials => Str

Specifies whether credentials are required for a put integration.



=head2 B<REQUIRED> HttpMethod => Str

Specifies a put integration request's HTTP method.



=head2 IntegrationHttpMethod => Str

Specifies a put integration HTTP method.



=head2 RequestParameters => HashRef[Str]

Represents request parameters that are sent with the backend request.
Request parameters are represented as a key/value map, with a
destination as the key and a source as the value. A source must match
an existing method request parameter, or a static value. Static values
must be enclosed with single quotes, and be pre-encoded based on their
destination in the request. The destination must match the pattern
C<integration.request.{location}.{name}>, where C<location> is either
querystring, path, or header. C<name> must be a valid, unique parameter
name.



=head2 RequestTemplates => HashRef[Str]

Specifies the templates used to transform the method request body.
Request templates are represented as a key/value map, with a
content-type as the key and a template as the value.



=head2 B<REQUIRED> ResourceId => Str

Specifies a put integration request's resource ID.



=head2 B<REQUIRED> RestApiId => Str

Specifies a put integration request's API identifier.



=head2 B<REQUIRED> Type => Str

Specifies a put integration input's type.

Valid values are: C<"HTTP">, C<"AWS">, C<"MOCK">

=head2 Uri => Str

Specifies a put integration input's Uniform Resource Identifier (URI).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutIntegration in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

