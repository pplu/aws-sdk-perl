
package Paws::ApiGatewayV2::CreateApi;
  use Moose;
  has ApiKeySelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiKeySelectionExpression');
  has CorsConfiguration => (is => 'ro', isa => 'Paws::ApiGatewayV2::Cors', traits => ['NameInRequest'], request_name => 'corsConfiguration');
  has CredentialsArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'credentialsArn');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisableSchemaValidation => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'disableSchemaValidation');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ProtocolType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protocolType', required => 1);
  has RouteKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeKey');
  has RouteSelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeSelectionExpression');
  has Tags => (is => 'ro', isa => 'Paws::ApiGatewayV2::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has Target => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'target');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::CreateApiResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateApi - Arguments for method CreateApi on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApi on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method CreateApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApi.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $CreateApiResponse = $apigateway->CreateApi(
      Name                      => 'MyStringWithLengthBetween1And128',
      ProtocolType              => 'WEBSOCKET',
      ApiKeySelectionExpression => 'MySelectionExpression',           # OPTIONAL
      CorsConfiguration         => {
        AllowCredentials => 1,                                        # OPTIONAL
        AllowHeaders     => [ 'My__string', ... ],                    # OPTIONAL
        AllowMethods  => [ 'MyStringWithLengthBetween1And64', ... ],  # OPTIONAL
        AllowOrigins  => [ 'My__string', ... ],                       # OPTIONAL
        ExposeHeaders => [ 'My__string', ... ],                       # OPTIONAL
        MaxAge => 1,    # min: -1, max: 86400; OPTIONAL
      },    # OPTIONAL
      CredentialsArn          => 'MyArn',                             # OPTIONAL
      Description             => 'MyStringWithLengthBetween0And1024', # OPTIONAL
      DisableSchemaValidation => 1,                                   # OPTIONAL
      RouteKey                => 'MySelectionKey',                    # OPTIONAL
      RouteSelectionExpression => 'MySelectionExpression',            # OPTIONAL
      Tags => { 'My__string' => 'MyStringWithLengthBetween1And1600', }
      ,                                                               # OPTIONAL
      Target  => 'MyUriWithLengthBetween1And2048',                    # OPTIONAL
      Version => 'MyStringWithLengthBetween1And64',                   # OPTIONAL
    );

    # Results:
    my $ApiEndpoint = $CreateApiResponse->ApiEndpoint;
    my $ApiId       = $CreateApiResponse->ApiId;
    my $ApiKeySelectionExpression =
      $CreateApiResponse->ApiKeySelectionExpression;
    my $CorsConfiguration        = $CreateApiResponse->CorsConfiguration;
    my $CreatedDate              = $CreateApiResponse->CreatedDate;
    my $Description              = $CreateApiResponse->Description;
    my $DisableSchemaValidation  = $CreateApiResponse->DisableSchemaValidation;
    my $ImportInfo               = $CreateApiResponse->ImportInfo;
    my $Name                     = $CreateApiResponse->Name;
    my $ProtocolType             = $CreateApiResponse->ProtocolType;
    my $RouteSelectionExpression = $CreateApiResponse->RouteSelectionExpression;
    my $Tags                     = $CreateApiResponse->Tags;
    my $Version                  = $CreateApiResponse->Version;
    my $Warnings                 = $CreateApiResponse->Warnings;

    # Returns a L<Paws::ApiGatewayV2::CreateApiResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateApi>

=head1 ATTRIBUTES


=head2 ApiKeySelectionExpression => Str

An API key selection expression. Supported only for WebSocket APIs. See
API Key Selection Expressions
(https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions).



=head2 CorsConfiguration => L<Paws::ApiGatewayV2::Cors>

A CORS configuration. Supported only for HTTP APIs. See Configuring
CORS
(https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html)
for more information.



=head2 CredentialsArn => Str

This property is part of quick create. It specifies the credentials
required for the integration, if any. For a Lambda integration, three
options are available. To specify an IAM Role for API Gateway to
assume, use the role's Amazon Resource Name (ARN). To require that the
caller's identity be passed through from the request, specify
arn:aws:iam::*:user/*. To use resource-based permissions on supported
AWS services, specify null. Currently, this property is not used for
HTTP integrations. Supported only for HTTP APIs.



=head2 Description => Str

The description of the API.



=head2 DisableSchemaValidation => Bool

Avoid validating models when creating a deployment. Supported only for
WebSocket APIs.



=head2 B<REQUIRED> Name => Str

The name of the API.



=head2 B<REQUIRED> ProtocolType => Str

The API protocol.

Valid values are: C<"WEBSOCKET">, C<"HTTP">

=head2 RouteKey => Str

This property is part of quick create. If you don't specify a routeKey,
a default route of $default is created. The $default route acts as a
catch-all for any request made to your API, for a particular stage. The
$default route key can't be modified. You can add routes after creating
the API, and you can update the route keys of additional routes.
Supported only for HTTP APIs.



=head2 RouteSelectionExpression => Str

The route selection expression for the API. For HTTP APIs, the
routeSelectionExpression must be ${request.method} ${request.path}. If
not provided, this will be the default for HTTP APIs. This property is
required for WebSocket APIs.



=head2 Tags => L<Paws::ApiGatewayV2::Tags>

The collection of tags. Each tag element is associated with a given
resource.



=head2 Target => Str

This property is part of quick create. Quick create produces an API
with an integration, a default catch-all route, and a default stage
which is configured to automatically deploy changes. For HTTP
integrations, specify a fully qualified URL. For Lambda integrations,
specify a function ARN. The type of the integration will be HTTP_PROXY
or AWS_PROXY, respectively. Supported only for HTTP APIs.



=head2 Version => Str

A version identifier for the API.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApi in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

