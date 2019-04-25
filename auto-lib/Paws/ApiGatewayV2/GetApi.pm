
package Paws::ApiGatewayV2::GetApi;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::GetApiResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetApi - Arguments for method GetApi on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApi on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method GetApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApi.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $GetApiResponse = $apigateway->GetApi(
      ApiId => 'My__string',

    );

    # Results:
    my $ApiEndpoint               = $GetApiResponse->ApiEndpoint;
    my $ApiId                     = $GetApiResponse->ApiId;
    my $ApiKeySelectionExpression = $GetApiResponse->ApiKeySelectionExpression;
    my $CreatedDate               = $GetApiResponse->CreatedDate;
    my $Description               = $GetApiResponse->Description;
    my $DisableSchemaValidation   = $GetApiResponse->DisableSchemaValidation;
    my $Name                      = $GetApiResponse->Name;
    my $ProtocolType              = $GetApiResponse->ProtocolType;
    my $RouteSelectionExpression  = $GetApiResponse->RouteSelectionExpression;
    my $Version                   = $GetApiResponse->Version;
    my $Warnings                  = $GetApiResponse->Warnings;

    # Returns a L<Paws::ApiGatewayV2::GetApiResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetApi>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApi in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

