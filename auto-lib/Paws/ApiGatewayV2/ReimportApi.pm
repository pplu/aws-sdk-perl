
package Paws::ApiGatewayV2::ReimportApi;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has Basepath => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'basepath');
  has Body => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'body', required => 1);
  has FailOnWarnings => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'failOnWarnings');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReimportApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::ReimportApiResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::ReimportApi - Arguments for method ReimportApi on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReimportApi on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method ReimportApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReimportApi.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $ReimportApiResponse = $apigateway->ReimportApi(
      ApiId          => 'My__string',
      Body           => 'My__string',
      Basepath       => 'My__string',    # OPTIONAL
      FailOnWarnings => 1,               # OPTIONAL
    );

    # Results:
    my $ApiEndpoint = $ReimportApiResponse->ApiEndpoint;
    my $ApiId       = $ReimportApiResponse->ApiId;
    my $ApiKeySelectionExpression =
      $ReimportApiResponse->ApiKeySelectionExpression;
    my $CorsConfiguration       = $ReimportApiResponse->CorsConfiguration;
    my $CreatedDate             = $ReimportApiResponse->CreatedDate;
    my $Description             = $ReimportApiResponse->Description;
    my $DisableSchemaValidation = $ReimportApiResponse->DisableSchemaValidation;
    my $ImportInfo              = $ReimportApiResponse->ImportInfo;
    my $Name                    = $ReimportApiResponse->Name;
    my $ProtocolType            = $ReimportApiResponse->ProtocolType;
    my $RouteSelectionExpression =
      $ReimportApiResponse->RouteSelectionExpression;
    my $Tags     = $ReimportApiResponse->Tags;
    my $Version  = $ReimportApiResponse->Version;
    my $Warnings = $ReimportApiResponse->Warnings;

    # Returns a L<Paws::ApiGatewayV2::ReimportApiResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/ReimportApi>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 Basepath => Str

Represents the base path of the imported API. Supported only for HTTP
APIs.



=head2 B<REQUIRED> Body => Str

The OpenAPI definition. Supported only for HTTP APIs.



=head2 FailOnWarnings => Bool

Specifies whether to rollback the API creation (true) or not (false)
when a warning is encountered. The default value is false.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReimportApi in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

