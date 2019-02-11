
package Paws::ApiGatewayV2::UpdateApi;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has ApiKeySelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiKeySelectionExpression');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisableSchemaValidation => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'disableSchemaValidation');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has RouteSelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeSelectionExpression');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::UpdateApiResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateApi - Arguments for method UpdateApi on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApi on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method UpdateApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApi.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $UpdateApiResponse = $apigateway->UpdateApi(
      ApiId                     => 'My__string',
      ApiKeySelectionExpression => 'MySelectionExpression',    # OPTIONAL
      Description             => 'MyStringWithLengthBetween0And1024', # OPTIONAL
      DisableSchemaValidation => 1,                                   # OPTIONAL
      Name                    => 'MyStringWithLengthBetween1And128',  # OPTIONAL
      RouteSelectionExpression => 'MySelectionExpression',            # OPTIONAL
      Version                  => 'MyStringWithLengthBetween1And64',  # OPTIONAL
    );

    # Results:
    my $ApiEndpoint = $UpdateApiResponse->ApiEndpoint;
    my $ApiId       = $UpdateApiResponse->ApiId;
    my $ApiKeySelectionExpression =
      $UpdateApiResponse->ApiKeySelectionExpression;
    my $CreatedDate              = $UpdateApiResponse->CreatedDate;
    my $Description              = $UpdateApiResponse->Description;
    my $DisableSchemaValidation  = $UpdateApiResponse->DisableSchemaValidation;
    my $Name                     = $UpdateApiResponse->Name;
    my $ProtocolType             = $UpdateApiResponse->ProtocolType;
    my $RouteSelectionExpression = $UpdateApiResponse->RouteSelectionExpression;
    my $Version                  = $UpdateApiResponse->Version;
    my $Warnings                 = $UpdateApiResponse->Warnings;

    # Returns a L<Paws::ApiGatewayV2::UpdateApiResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateApi>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 ApiKeySelectionExpression => Str

An API key selection expression. See API Key Selection Expressions
(https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions).



=head2 Description => Str

The description of the API.



=head2 DisableSchemaValidation => Bool

Avoid validating models when creating a deployment.



=head2 Name => Str

The name of the API.



=head2 RouteSelectionExpression => Str

The route selection expression for the API.



=head2 Version => Str

A version identifier for the API.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApi in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

