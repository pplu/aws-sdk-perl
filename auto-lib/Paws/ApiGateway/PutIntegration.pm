
package Paws::ApiGateway::PutIntegration;
  use Moose;
  has CacheKeyParameters => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'cacheKeyParameters');
  has CacheNamespace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheNamespace');
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId');
  has ConnectionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionType');
  has ContentHandling => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentHandling');
  has Credentials => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'credentials');
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'http_method', required => 1);
  has IntegrationHttpMethod => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'httpMethod');
  has PassthroughBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'passthroughBehavior');
  has RequestParameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'requestParameters');
  has RequestTemplates => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'requestTemplates');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resource_id', required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);
  has TimeoutInMillis => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'timeoutInMillis');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);
  has Uri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uri');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutIntegration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Integration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::PutIntegration - Arguments for method PutIntegration on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutIntegration on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method PutIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutIntegration.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $Integration = $apigateway->PutIntegration(
      HttpMethod            => 'MyString',
      ResourceId            => 'MyString',
      RestApiId             => 'MyString',
      Type                  => 'HTTP',
      CacheKeyParameters    => [ 'MyString', ... ],              # OPTIONAL
      CacheNamespace        => 'MyString',                       # OPTIONAL
      ConnectionId          => 'MyString',                       # OPTIONAL
      ConnectionType        => 'INTERNET',                       # OPTIONAL
      ContentHandling       => 'CONVERT_TO_BINARY',              # OPTIONAL
      Credentials           => 'MyString',                       # OPTIONAL
      IntegrationHttpMethod => 'MyString',                       # OPTIONAL
      PassthroughBehavior   => 'MyString',                       # OPTIONAL
      RequestParameters     => { 'MyString' => 'MyString', },    # OPTIONAL
      RequestTemplates      => { 'MyString' => 'MyString', },    # OPTIONAL
      TimeoutInMillis       => 1,                                # OPTIONAL
      Uri                   => 'MyString',                       # OPTIONAL
    );

    # Results:
    my $CacheKeyParameters   = $Integration->CacheKeyParameters;
    my $CacheNamespace       = $Integration->CacheNamespace;
    my $ConnectionId         = $Integration->ConnectionId;
    my $ConnectionType       = $Integration->ConnectionType;
    my $ContentHandling      = $Integration->ContentHandling;
    my $Credentials          = $Integration->Credentials;
    my $HttpMethod           = $Integration->HttpMethod;
    my $IntegrationResponses = $Integration->IntegrationResponses;
    my $PassthroughBehavior  = $Integration->PassthroughBehavior;
    my $RequestParameters    = $Integration->RequestParameters;
    my $RequestTemplates     = $Integration->RequestTemplates;
    my $TimeoutInMillis      = $Integration->TimeoutInMillis;
    my $Type                 = $Integration->Type;
    my $Uri                  = $Integration->Uri;

    # Returns a L<Paws::ApiGateway::Integration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/PutIntegration>

=head1 ATTRIBUTES


=head2 CacheKeyParameters => ArrayRef[Str|Undef]

Specifies a put integration input's cache key parameters.



=head2 CacheNamespace => Str

Specifies a put integration input's cache namespace.



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

Specifies whether credentials are required for a put integration.



=head2 B<REQUIRED> HttpMethod => Str

[Required] Specifies a put integration request's HTTP method.



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

[Required] Specifies a put integration request's resource ID.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.



=head2 TimeoutInMillis => Int

Custom timeout between 50 and 29,000 milliseconds. The default value is
29,000 milliseconds or 29 seconds.



=head2 B<REQUIRED> Type => Str

[Required] Specifies a put integration input's type.

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





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutIntegration in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

