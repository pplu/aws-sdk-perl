
package Paws::ApiGatewayV2::ImportApi;
  use Moose;
  has Basepath => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'basepath');
  has Body => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'body', required => 1);
  has FailOnWarnings => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'failOnWarnings');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::ImportApiResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::ImportApi - Arguments for method ImportApi on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportApi on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method ImportApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportApi.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $ImportApiResponse = $apigateway->ImportApi(
      Body           => 'My__string',
      Basepath       => 'My__string',    # OPTIONAL
      FailOnWarnings => 1,               # OPTIONAL
    );

    # Results:
    my $ApiEndpoint       = $ImportApiResponse->ApiEndpoint;
    my $ApiGatewayManaged = $ImportApiResponse->ApiGatewayManaged;
    my $ApiId             = $ImportApiResponse->ApiId;
    my $ApiKeySelectionExpression =
      $ImportApiResponse->ApiKeySelectionExpression;
    my $CorsConfiguration = $ImportApiResponse->CorsConfiguration;
    my $CreatedDate       = $ImportApiResponse->CreatedDate;
    my $Description       = $ImportApiResponse->Description;
    my $DisableExecuteApiEndpoint =
      $ImportApiResponse->DisableExecuteApiEndpoint;
    my $DisableSchemaValidation  = $ImportApiResponse->DisableSchemaValidation;
    my $ImportInfo               = $ImportApiResponse->ImportInfo;
    my $Name                     = $ImportApiResponse->Name;
    my $ProtocolType             = $ImportApiResponse->ProtocolType;
    my $RouteSelectionExpression = $ImportApiResponse->RouteSelectionExpression;
    my $Tags                     = $ImportApiResponse->Tags;
    my $Version                  = $ImportApiResponse->Version;
    my $Warnings                 = $ImportApiResponse->Warnings;

    # Returns a L<Paws::ApiGatewayV2::ImportApiResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/ImportApi>

=head1 ATTRIBUTES


=head2 Basepath => Str

Specifies how to interpret the base path of the API during import.
Valid values are ignore, prepend, and split. The default value is
ignore. To learn more, see Set the OpenAPI basePath Property
(https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api-basePath.html).
Supported only for HTTP APIs.



=head2 B<REQUIRED> Body => Str

The OpenAPI definition. Supported only for HTTP APIs.



=head2 FailOnWarnings => Bool

Specifies whether to rollback the API creation when a warning is
encountered. By default, API creation continues if a warning is
encountered.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportApi in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

