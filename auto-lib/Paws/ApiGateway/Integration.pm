
package Paws::ApiGateway::Integration;
  use Moose;
  has CacheKeyParameters => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'cacheKeyParameters');
  has CacheNamespace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheNamespace');
  has ContentHandling => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentHandling');
  has Credentials => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'credentials');
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'httpMethod');
  has IntegrationResponses => (is => 'ro', isa => 'Paws::ApiGateway::MapOfIntegrationResponse', traits => ['NameInRequest'], request_name => 'integrationResponses');
  has PassthroughBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'passthroughBehavior');
  has RequestParameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'requestParameters');
  has RequestTemplates => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'requestTemplates');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');
  has Uri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uri');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Integration

=head1 ATTRIBUTES


=head2 CacheKeyParameters => ArrayRef[Str|Undef]

Specifies the integration's cache key parameters.


=head2 CacheNamespace => Str

Specifies the integration's cache namespace.


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

=head1 Example: Get integration responses of a method

=head2 Request

 GET /restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200 HTTP/1.1 Content-Type: application/json Host: apigateway.us-east-1.amazonaws.com X-Amz-Date: 20160607T191449Z Authorization: AWS4-HMAC-SHA256 Credential={access_key_ID}/20160607/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature={sig4_hash} 

=head2 Response

The successful response returns C<200 OK> status and a payload as
follows:

 { "_links": { "curies": { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-{rel}.html", "name": "integrationresponse", "templated": true }, "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "title": "200" }, "integrationresponse:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" }, "integrationresponse:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" } }, "responseParameters": { "method.response.header.Content-Type": "'application/xml'" }, "responseTemplates": { "application/json": "$util.urlDecode(\"%3CkinesisStreams%3E#foreach($stream in $input.path('$.StreamNames'))%3Cstream%3E%3Cname%3E$stream%3C/name%3E%3C/stream%3E#end%3C/kinesisStreams%3E\")\n" }, "statusCode": "200" }

Creating an API


=head2 PassthroughBehavior => Str

Specifies how the method request body of an unmapped content type will
be passed through the integration request to the back end without
transformation. A content type is unmapped if no mapping template is
defined in the integration or the content type does not match any of
the mapped content types, as specified in C<requestTemplates>. There
are three valid values: C<WHEN_NO_MATCH>, C<WHEN_NO_TEMPLATES>, and
C<NEVER>.

=over

=item * C<WHEN_NO_MATCH> passes the method request body through the
integration request to the back end without transformation when the
method request content type does not match any content type associated
with the mapping templates defined in the integration request.

=item * C<WHEN_NO_TEMPLATES> passes the method request body through the
integration request to the back end without transformation when no
mapping template is defined in the integration request. If a template
is defined when this option is selected, the method request of an
unmapped content-type will be rejected with an HTTP C<415 Unsupported
Media Type> response.

=item * C<NEVER> rejects the method request with an HTTP C<415
Unsupported Media Type> response when either the method request content
type does not match any content type associated with the mapping
templates defined in the integration request or no mapping template is
defined in the integration request.

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


=head2 Type => Str

Specifies the integration's type. The valid value is C<HTTP> for
integrating with an HTTP back end, C<AWS> for any AWS service
endpoints, C<MOCK> for testing without actually invoking the back end,
C<HTTP_PROXY> for integrating with the HTTP proxy integration, or
C<AWS_PROXY> for integrating with the Lambda proxy integration type.

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


=head2 _request_id => Str


=cut

