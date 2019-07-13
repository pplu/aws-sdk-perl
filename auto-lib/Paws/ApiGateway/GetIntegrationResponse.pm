
package Paws::ApiGateway::GetIntegrationResponse;
  use Moose;
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'http_method', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resource_id', required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);
  has StatusCode => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'status_code', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIntegrationResponse');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::IntegrationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetIntegrationResponse - Arguments for method GetIntegrationResponse on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIntegrationResponse on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetIntegrationResponse.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIntegrationResponse.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $IntegrationResponse = $apigateway->GetIntegrationResponse(
      HttpMethod => 'MyString',
      ResourceId => 'MyString',
      RestApiId  => 'MyString',
      StatusCode => 'MyStatusCode',

    );

    # Results:
    my $ContentHandling    = $IntegrationResponse->ContentHandling;
    my $ResponseParameters = $IntegrationResponse->ResponseParameters;
    my $ResponseTemplates  = $IntegrationResponse->ResponseTemplates;
    my $SelectionPattern   = $IntegrationResponse->SelectionPattern;
    my $StatusCode         = $IntegrationResponse->StatusCode;

    # Returns a L<Paws::ApiGateway::IntegrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetIntegrationResponse>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HttpMethod => Str

[Required] Specifies a get integration response request's HTTP method.



=head2 B<REQUIRED> ResourceId => Str

[Required] Specifies a get integration response request's resource
identifier.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.



=head2 B<REQUIRED> StatusCode => Str

[Required] Specifies a get integration response request's status code.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIntegrationResponse in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

