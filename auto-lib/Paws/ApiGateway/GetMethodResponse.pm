
package Paws::ApiGateway::GetMethodResponse;
  use Moose;
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'http_method', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resource_id', required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);
  has StatusCode => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'status_code', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMethodResponse');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::MethodResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetMethodResponse - Arguments for method GetMethodResponse on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMethodResponse on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetMethodResponse.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMethodResponse.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $MethodResponse = $apigateway->GetMethodResponse(
      HttpMethod => 'MyString',
      ResourceId => 'MyString',
      RestApiId  => 'MyString',
      StatusCode => 'MyStatusCode',

    );

    # Results:
    my $ResponseModels     = $MethodResponse->ResponseModels;
    my $ResponseParameters = $MethodResponse->ResponseParameters;
    my $StatusCode         = $MethodResponse->StatusCode;

    # Returns a L<Paws::ApiGateway::MethodResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetMethodResponse>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HttpMethod => Str

[Required] The HTTP verb of the Method resource.



=head2 B<REQUIRED> ResourceId => Str

[Required] The Resource identifier for the MethodResponse resource.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.



=head2 B<REQUIRED> StatusCode => Str

[Required] The status code for the MethodResponse resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMethodResponse in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

