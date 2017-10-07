
package Paws::ApiGateway::PutIntegration;
  use Moose;
  has CacheKeyParameters => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CacheNamespace => (is => 'ro', isa => 'Str');
  has ContentHandling => (is => 'ro', isa => 'Str');
  has Credentials => (is => 'ro', isa => 'Str');
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'httpMethod' , required => 1);
  has IntegrationHttpMethod => (is => 'ro', isa => 'Str');
  has PassthroughBehavior => (is => 'ro', isa => 'Str');
  has RequestParameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString');
  has RequestTemplates => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceId' , required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId' , required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has Uri => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutIntegration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Integration');
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


=head2 CacheKeyParameters => ArrayRef[Str|Undef]

Specifies a put integration input's cache key parameters.



=head2 CacheNamespace => Str

Specifies a put integration input's cache namespace.



=head2 ContentHandling => Str

Specifies how to handle request payload content type conversions.
Supported values are C<CONVERT_TO_BINARY> and C<CONVERT_TO_TEXT>, with
the following behaviors:

=over

=item *

C<CONVERT_TO_BINARY>: Converts a request payload from a Base64-encoded
string to the corresponding binary blob.

=item *

C<CONVERT_TO_TEXT>: Converts a request payload from a binary blob to a
Base64-encoded string.

=back

If this property is not defined, the request payload will be passed
through from the method request to integration request without
modification, provided that the C<passthroughBehaviors> is configured
to support payload pass-through.

Valid values are: C<"CONVERT_TO_BINARY">, C<"CONVERT_TO_TEXT">

=head2 Credentials => Str

Specifies whether credentials are required for a put integration.



=head2 B<REQUIRED> HttpMethod => Str

Specifies a put integration request's HTTP method.



=head2 IntegrationHttpMethod => Str

Specifies a put integration HTTP method. When the integration type is
HTTP or AWS, this field is required.



=head2 PassthroughBehavior => Str

Specifies the pass-through behavior for incoming requests based on the
Content-Type header in the request, and the available mapping templates
specified as the C<requestTemplates> property on the Integration
resource. There are three valid values: C<WHEN_NO_MATCH>,
C<WHEN_NO_TEMPLATES>, and C<NEVER>.

=over

=item *

C<WHEN_NO_MATCH> passes the request body for unmapped content types
through to the integration back end without transformation.

=item *

C<NEVER> rejects unmapped content types with an HTTP 415 'Unsupported
Media Type' response.

=item *

C<WHEN_NO_TEMPLATES> allows pass-through when the integration has NO
content types mapped to templates. However if there is at least one
content type defined, unmapped content types will be rejected with the
same 415 response.

=back




=head2 RequestParameters => L<Paws::ApiGateway::MapOfStringToString>

A key-value map specifying request parameters that are passed from the
method request to the back end. The key is an integration request
parameter name and the associated value is a method request parameter
value or static value that must be enclosed within single quotes and
pre-encoded as required by the back end. The method request parameter
value must match the pattern of C<method.request.{location}.{name}>,
where C<location> is C<querystring>, C<path>, or C<header> and C<name>
must be a valid and unique method request parameter name.



=head2 RequestTemplates => L<Paws::ApiGateway::MapOfStringToString>

Represents a map of Velocity templates that are applied on the request
payload based on the value of the Content-Type header sent by the
client. The content type value is the key in this map, and the template
(as a String) is the value.



=head2 B<REQUIRED> ResourceId => Str

Specifies a put integration request's resource ID.



=head2 B<REQUIRED> RestApiId => Str

The string identifier of the associated RestApi.



=head2 B<REQUIRED> Type => Str

Specifies a put integration input's type.

Valid values are: C<"HTTP">, C<"AWS">, C<"MOCK">, C<"HTTP_PROXY">, C<"AWS_PROXY">

=head2 Uri => Str

Specifies the integration's Uniform Resource Identifier (URI). For HTTP
integrations, the URI must be a fully formed, encoded HTTP(S) URL
according to the RFC-3986 specification. For AWS integrations, the URI
should be of the form
C<arn:aws:apigateway:{region}:{subdomain.service|service}:{path|action}/{service_api}>.
C<Region>, C<subdomain> and C<service> are used to determine the right
endpoint. For AWS services that use the C<Action=> query string
parameter, C<service_api> should be a valid action for the desired
service. For RESTful AWS service APIs, C<path> is used to indicate that
the remaining substring in the URI should be treated as the path to the
resource, including the initial C</>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutIntegration in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

