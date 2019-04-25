
package Paws::ApiGatewayV2::CreateApi;
  use Moose;
  has ApiKeySelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiKeySelectionExpression');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisableSchemaValidation => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'disableSchemaValidation');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ProtocolType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protocolType', required => 1);
  has RouteSelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeSelectionExpression', required => 1);
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
      RouteSelectionExpression  => 'MySelectionExpression',
      ApiKeySelectionExpression => 'MySelectionExpression',           # OPTIONAL
      Description             => 'MyStringWithLengthBetween0And1024', # OPTIONAL
      DisableSchemaValidation => 1,                                   # OPTIONAL
      Version                 => 'MyStringWithLengthBetween1And64',   # OPTIONAL
    );

    # Results:
    my $ApiEndpoint = $CreateApiResponse->ApiEndpoint;
    my $ApiId       = $CreateApiResponse->ApiId;
    my $ApiKeySelectionExpression =
      $CreateApiResponse->ApiKeySelectionExpression;
    my $CreatedDate              = $CreateApiResponse->CreatedDate;
    my $Description              = $CreateApiResponse->Description;
    my $DisableSchemaValidation  = $CreateApiResponse->DisableSchemaValidation;
    my $Name                     = $CreateApiResponse->Name;
    my $ProtocolType             = $CreateApiResponse->ProtocolType;
    my $RouteSelectionExpression = $CreateApiResponse->RouteSelectionExpression;
    my $Version                  = $CreateApiResponse->Version;
    my $Warnings                 = $CreateApiResponse->Warnings;

    # Returns a L<Paws::ApiGatewayV2::CreateApiResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateApi>

=head1 ATTRIBUTES


=head2 ApiKeySelectionExpression => Str

An API key selection expression. See API Key Selection Expressions
(https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions).



=head2 Description => Str

The description of the API.



=head2 DisableSchemaValidation => Bool

Avoid validating models when creating a deployment.



=head2 B<REQUIRED> Name => Str

The name of the API.



=head2 B<REQUIRED> ProtocolType => Str

The API protocol: HTTP or WEBSOCKET.

Valid values are: C<"WEBSOCKET">

=head2 B<REQUIRED> RouteSelectionExpression => Str

The route selection expression for the API.



=head2 Version => Str

A version identifier for the API.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApi in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

