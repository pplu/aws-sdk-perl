
package Paws::ApiGateway::Integration;
  use Moose;
  has CacheKeyParameters => (is => 'ro', isa => 'ArrayRef[Str]');
  has CacheNamespace => (is => 'ro', isa => 'Str');
  has Credentials => (is => 'ro', isa => 'Str');
  has HttpMethod => (is => 'ro', isa => 'Str');
  has IntegrationResponses => (is => 'ro', isa => 'Paws::ApiGateway::MapOfIntegrationResponse');
  has RequestParameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString');
  has RequestTemplates => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString');
  has Type => (is => 'ro', isa => 'Str');
  has Uri => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Integration

=head1 ATTRIBUTES


=head2 CacheKeyParameters => ArrayRef[Str]

Specifies the integration's cache key parameters.



=head2 CacheNamespace => Str

Specifies the integration's cache namespace.



=head2 Credentials => Str

Specifies the credentials required for the integration, if any. For AWS
integrations, three options are available. To specify an IAM Role for
Amazon API Gateway to assume, use the role's Amazon Resource Name
(ARN). To require that the caller's identity be passed through from the
request, specify the string C<arn:aws:iam::\*:user/\*>. To use
resource-based permissions on supported AWS services, specify null.



=head2 HttpMethod => Str

Specifies the integration's HTTP method type.



=head2 IntegrationResponses => L<Paws::ApiGateway::MapOfIntegrationResponse>

Specifies the integration's responses.



=head2 RequestParameters => L<Paws::ApiGateway::MapOfStringToString>

Represents requests parameters that are sent with the backend request.
Request parameters are represented as a key/value map, with a
destination as the key and a source as the value. A source must match
an existing method request parameter, or a static value. Static values
must be enclosed with single quotes, and be pre-encoded based on their
destination in the request. The destination must match the pattern
C<integration.request.{location}.{name}>, where C<location> is either
querystring, path, or header. C<name> must be a valid, unique parameter
name.



=head2 RequestTemplates => L<Paws::ApiGateway::MapOfStringToString>

Specifies the integration's request templates.



=head2 Type => Str

Specifies the integration's type.

Valid values are: C<"HTTP">, C<"AWS">, C<"MOCK">

=head2 Uri => Str

Specifies the integration's Uniform Resource Identifier (URI). For HTTP
integrations, the URI must be a fully formed, encoded HTTP(S) URL
according to the RFC-3986 specification. For AWS integrations, the URI
should be of the form
C<arn:aws:apigateway:{region}:{service}:{path|action}/{service_api}>.
C<Region> and C<service> are used to determine the right endpoint. For
AWS services that use the C<Action=> query string parameter,
C<service_api> should be a valid action for the desired service. For
RESTful AWS service APIs, C<path> is used to indicate that the
remaining substring in the URI should be treated as the path to the
resource, including the initial C</>.




=cut

