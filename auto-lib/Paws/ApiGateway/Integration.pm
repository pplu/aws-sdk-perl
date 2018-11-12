
package Paws::ApiGateway::Integration;
  use Moose;
  has CacheKeyParameters => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'cacheKeyParameters');
  has CacheNamespace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheNamespace');
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId');
  has ConnectionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionType');
  has ContentHandling => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentHandling');
  has Credentials => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'credentials');
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'httpMethod');
  has IntegrationResponses => (is => 'ro', isa => 'Paws::ApiGateway::MapOfIntegrationResponse', traits => ['NameInRequest'], request_name => 'integrationResponses');
  has PassthroughBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'passthroughBehavior');
  has RequestParameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'requestParameters');
  has RequestTemplates => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'requestTemplates');
  has TimeoutInMillis => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'timeoutInMillis');
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


=head2 ConnectionId => Str

The (C<id>
(https://docs.aws.amazon.com/apigateway/api-reference/resource/vpc-link/#id))
of the VpcLink used for the integration when C<connectionType=VPC_LINK>
and undefined, otherwise.


=head2 ConnectionType => Str

The type of the network connection to the integration endpoint. The
valid value is C<INTERNET> for connections through the public routable
internet or C<VPC_LINK> for private connections between API Gateway and
a network load balancer in a VPC. The default value is C<INTERNET>.

Valid values are: C<"INTERNET">, C<"VPC_LINK">
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
API Gateway to assume, use the role's Amazon Resource Name (ARN). To
require that the caller's identity be passed through from the request,
specify the string C<arn:aws:iam::\*:user/\*>. To use resource-based
permissions on supported AWS services, specify null.


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

 { "_links": { "curies": { "href": "https://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-integration-response-{rel}.html", "name": "integrationresponse", "templated": true }, "self": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200", "title": "200" }, "integrationresponse:delete": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" }, "integrationresponse:update": { "href": "/restapis/fugvjdxtri/resources/3kzxbg5sa2/methods/GET/integration/responses/200" } }, "responseParameters": { "method.response.header.Content-Type": "'application/xml'" }, "responseTemplates": { "application/json": "$util.urlDecode(\"%3CkinesisStreams%3E#foreach($stream in $input.path('$.StreamNames'))%3Cstream%3E%3Cname%3E$stream%3C/name%3E%3C/stream%3E#end%3C/kinesisStreams%3E\")\n" }, "statusCode": "200" }

Creating an API
(https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-create-api.html)


=head2 PassthroughBehavior => Str

Specifies how the method request body of an unmapped content type will
be passed through the integration request to the back end without
transformation. A content type is unmapped if no mapping template is
defined in the integration or the content type does not match any of
the mapped content types, as specified in C<requestTemplates>. The
valid value is one of the following:

=over

=item * C<WHEN_NO_MATCH>: passes the method request body through the
integration request to the back end without transformation when the
method request content type does not match any content type associated
with the mapping templates defined in the integration request.

=item * C<WHEN_NO_TEMPLATES>: passes the method request body through
the integration request to the back end without transformation when no
mapping template is defined in the integration request. If a template
is defined when this option is selected, the method request of an
unmapped content-type will be rejected with an HTTP C<415 Unsupported
Media Type> response.

=item * C<NEVER>: rejects the method request with an HTTP C<415
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


=head2 TimeoutInMillis => Int

Custom timeout between 50 and 29,000 milliseconds. The default value is
29,000 milliseconds or 29 seconds.


=head2 Type => Str

Specifies an API method integration type. The valid value is one of the
following:

=over

=item * C<AWS>: for integrating the API method request with an AWS
service action, including the Lambda function-invoking action. With the
Lambda function-invoking action, this is referred to as the Lambda
custom integration. With any other AWS service action, this is known as
AWS integration.

=item * C<AWS_PROXY>: for integrating the API method request with the
Lambda function-invoking action with the client request passed through
as-is. This integration is also referred to as the Lambda proxy
integration.

=item * C<HTTP>: for integrating the API method request with an HTTP
endpoint, including a private HTTP endpoint within a VPC. This
integration is also referred to as the HTTP custom integration.

=item * C<HTTP_PROXY>: for integrating the API method request with an
HTTP endpoint, including a private HTTP endpoint within a VPC, with the
client request passed through as-is. This is also referred to as the
HTTP proxy integration.

=item * C<MOCK>: for integrating the API method request with API
Gateway as a "loop-back" endpoint without invoking any backend.

=back

For the HTTP and HTTP proxy integrations, each integration can specify
a protocol (C<http/https>), port and path. Standard 80 and 443 ports
are supported as well as custom ports above 1024. An HTTP or HTTP proxy
integration with a C<connectionType> of C<VPC_LINK> is referred to as a
private integration and uses a VpcLink to connect API Gateway to a
network load balancer of a VPC.

Valid values are: C<"HTTP">, C<"AWS">, C<"MOCK">, C<"HTTP_PROXY">, C<"AWS_PROXY">
=head2 Uri => Str

Specifies Uniform Resource Identifier (URI) of the integration
endpoint.

=over

=item *

For C<HTTP> or C<HTTP_PROXY> integrations, the URI must be a fully
formed, encoded HTTP(S) URL according to the RFC-3986 specification
(https://en.wikipedia.org/wiki/Uniform_Resource_Identifier), for either
standard integration, where C<connectionType> is not C<VPC_LINK>, or
private integration, where C<connectionType> is C<VPC_LINK>. For a
private HTTP integration, the URI is not used for routing.

=item *

For C<AWS> or C<AWS_PROXY> integrations, the URI is of the form
C<arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api}>.
Here, C<{Region}> is the API Gateway region (e.g., C<us-east-1>);
C<{service}> is the name of the integrated AWS service (e.g., C<s3>);
and C<{subdomain}> is a designated subdomain supported by certain AWS
service for fast host-name lookup. C<action> can be used for an AWS
service action-based API, using an
C<Action={name}&{p1}={v1}&p2={v2}...> query string. The ensuing
C<{service_api}> refers to a supported action C<{name}> plus any
required input parameters. Alternatively, C<path> can be used for an
AWS service path-based API. The ensuing C<service_api> refers to the
path to an AWS service resource, including the region of the integrated
AWS service, if applicable. For example, for integration with the S3
API of C<GetObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectGET.html)>,
the C<uri> can be either
C<arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}>
or C<arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}>

=back



=head2 _request_id => Str


=cut

