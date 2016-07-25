
package Paws::ApiGateway::PutIntegration;
  use Moose;
  has CacheKeyParameters => (is => 'ro', isa => 'ArrayRef[Str]');
  has CacheNamespace => (is => 'ro', isa => 'Str');
  has Credentials => (is => 'ro', isa => 'Str');
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'httpMethod' , required => 1);
  has IntegrationHttpMethod => (is => 'ro', isa => 'Str');
  has PassthroughBehavior => (is => 'ro', isa => 'Str');
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

Specifies a put integration HTTP method. When the integration type is
HTTP or AWS, this field is required.



=head2 PassthroughBehavior => Str

Specifies the pass-through behavior for incoming requests based on the
Content-Type header in the request, and the available requestTemplates
defined on the Integration. There are three valid values:
C<WHEN_NO_MATCH>, C<WHEN_NO_TEMPLATES>, and C<NEVER>.

C<WHEN_NO_MATCH> passes the request body for unmapped content types
through to the Integration backend without transformation.

C<NEVER> rejects unmapped content types with an HTTP 415 'Unsupported
Media Type' response.

C<WHEN_NO_TEMPLATES> will allow pass-through when the Integration has
NO content types mapped to templates. However if there is at least one
content type defined, unmapped content types will be rejected with the
same 415 response.



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

Represents a map of Velocity templates that are applied on the request
payload based on the value of the Content-Type header sent by the
client. The content type value is the key in this map, and the template
(as a String) is the value.



=head2 B<REQUIRED> ResourceId => Str

Specifies a put integration request's resource ID.



=head2 B<REQUIRED> RestApiId => Str

Specifies a put integration request's API identifier.



=head2 B<REQUIRED> Type => Str

Specifies a put integration input's type.

Valid values are: C<"HTTP">, C<"AWS">, C<"MOCK">

=head2 Uri => Str

Specifies a put integration input's Uniform Resource Identifier (URI).
When the integration type is HTTP or AWS, this field is required. For
integration with Lambda as an AWS service proxy, this value is of the
'arn:aws:apigateway:E<lt>regionE<gt>:lambda:path/2015-03-31/functions/E<lt>functionArnE<gt>/invocations'
format.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutIntegration in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

